`include "../cpu.svh"

module agu (
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_agu_valid,
    output logic agu_allowin,

    input  logic cs_allowin,
    output logic agu_to_valid,

    input  issue_to_execute_bus_t issue_inst,
    input  logic commit_store_valid,
    output logic commit_store_ready,

    // DBus
    output logic       dcache_req,
    output logic       dcache_wr,
    output logic [3:0] dcache_wstrb,
    output uint32_t    dcache_addr,
    output uint32_t    dcache_wdata,
    input  logic       dcache_addr_ok,
    input  logic       dcache_data_ok,
    input  uint32_t    dcache_rdata,

    output execute_to_commit_bus_t agu_to_commit_bus

);

// stage
typedef enum logic [1:0] { 
    AGU_addr,
    AGU_lookup,
    AGU_request,
    AGU_response
} AGU_Stage_t;

typedef enum logic [1:0] { 
    Store_Req_Idle,
    Store_Req_Addr,
    Store_Req_Data,
    Store_Req_Done
} Storebuffer_Req_State_t;

// control
logic agu_valid;
logic agu_readygo;
AGU_Stage_t agu_stage;

// address
reg_addr_t phy_dest;
uint32_t rs_value, rt_value, imm_value;
operation_t op;

// lookup
virt_addr_t mem_addr;
logic [3:0] mem_we, rf_we;
logic mem_wr;
uint32_t mem_wdata, mem_rdata;

logic       data_exist;
logic       data_wstrb_match;
logic [3:0] data_wstrb, data_wstrb_r;
uint32_t    data_result, data_result_r;

// storebuffer
logic select_store;
Storebuffer_Req_State_t storebuffer_req_state;
logic [3:0] storebuffer_req_wstrb, storebuffer_req_wstrb_r;
virt_t   storebuffer_req_addr, storebuffer_req_addr_r;
uint32_t storebuffer_req_data, storebuffer_req_data_r;

// writeback
uint32_t agu_result;


assign agu_readygo = agu_stage == AGU_lookup && (mem_wr || !mem_wr && data_exist && data_wstrb_match)
                  || agu_stage == AGU_response && dcache_data_ok;
assign agu_allowin = !agu_valid || agu_readygo && cs_allowin;
assign agu_to_valid = agu_valid && agu_readygo;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_valid <= 1'b0;
    end
    else if(agu_allowin) begin
        agu_valid <= issue_to_agu_valid;
    end

    if(reset || flush) begin
        agu_stage <= AGU_addr;
    end
    else begin
        unique case(agu_stage) 
            AGU_addr: agu_stage <= agu_valid   ? AGU_lookup : AGU_addr;
            AGU_lookup: agu_stage <= agu_readygo ? AGU_addr : AGU_request;
            AGU_request: agu_stage <= !select_store && dcache_addr_ok ? AGU_response : AGU_request;
            AGU_response: agu_stage <= dcache_data_ok ? AGU_response : AGU_addr;
        endcase
    end
end


always_ff @(posedge clk) begin
    if(reset || flush) begin
        phy_dest  <= 6'h0;
        rs_value  <= 32'h0;
        rt_value  <= 32'h0;
        imm_value <= 32'h0;
        op        <= OP_NOP;
    end
    else if(agu_allowin) begin
        phy_dest  <= issue_inst.phy_dest;
        rs_value  <= issue_inst.src1_value;
        rt_value  <= issue_inst.src2_value;
        imm_value <= { {16{issue_inst.inst.imm[15]}}, issue_inst.inst.imm };
        op        <= issue_inst.inst.operation;
    end
end

// look up
logic        op_sb ;
logic        op_sh ;
logic        op_sw ;
logic        op_swl;
logic        op_swr;

logic        op_lb;
logic        op_lbu;
logic        op_lh;
logic        op_lhu;
logic        op_lw;
logic        op_lwl;
logic        op_lwr;

assign op_sb  = op == OP_SB;
assign op_sh  = op == OP_SH;
assign op_sw  = op == OP_SW;
assign op_swl = op == OP_SWL;
assign op_swr = op == OP_SWR;

assign op_lb  = op == OP_LB;
assign op_lbu = op == OP_LBU;
assign op_lh  = op == OP_LH;
assign op_lhu = op == OP_LHU;
assign op_lw  = op == OP_LW;
assign op_lwl = op == OP_LWL;
assign op_lwr = op == OP_LWR;

assign mem_we = op_sb  ? (mem_addr[1] ? mem_addr[0] ? 4'h8 : 4'h4  :
                                        mem_addr[0] ? 4'h2 : 4'h1) :
                op_sh  ? (mem_addr[1] ? 4'hc : 4'h3 )              :
                op_swl ? (mem_addr[1] ? mem_addr[0] ? 4'hf : 4'h7  :
                                        mem_addr[0] ? 4'h3 : 4'h1) :
                op_swr ? (mem_addr[1] ? mem_addr[0] ? 4'h8 : 4'hc  :
                                        mem_addr[0] ? 4'he : 4'hf) :
                op_sw  ? 4'hf                                      :
                         4'h0                                      ;

assign mem_wr = op_sb | op_sh | op_sw | op_swl | op_swr;
assign mem_wdata = op_sb  ? {4{rt_value[7:0]}} :
                   op_sh  ? {2{rt_value[15:0]}} :
                   op_sw  ? rt_value :
                   op_swl ? mem_addr[1] ? mem_addr[0] ?  rt_value : { 8'h0, rt_value[31: 8]} :
                                          mem_addr[0] ? {16'h0, rt_value[31:16]} : {24'h0, rt_value[31:24]} :
                   op_swr ? mem_addr[1] ? mem_addr[0] ? {rt_value[ 7: 0], 24'h0} : {rt_value[15: 0], 16'h0} :
                                          mem_addr[0] ? {rt_value[23: 0],  8'h0} :  rt_value                :
                            rt_value;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        mem_addr <= 32'h0;
    end
    else if(agu_stage == AGU_addr) begin
        mem_addr <= rs_value + imm_value;
    end
end

store_buffer store_buffer_u (
    .clk,
    .reset,

    .valid      (agu_stage == AGU_lookup),
    .wr         (mem_wr),
    .buffer_we  (mem_we),
    .rf_we      (rf_we ),
    .data_addr  (mem_addr),
    .mem_wdata  (mem_wdata),

    .data_exist,
    .data_wstrb_match,
    .data_wstrb,
    .data_result,

    .commit_store_valid (commit_store_valid && storebuffer_req_state == Store_Req_Idle),
    .commit_store_wstrb (storebuffer_req_wstrb),
    .commit_store_addr  (storebuffer_req_addr ),
    .commit_store_data  (storebuffer_req_data )

);

// data request
assign commit_store_ready = storebuffer_req_state == Store_Req_Done;
assign select_store = storebuffer_req_state == Store_Req_Addr;
assign dcache_req   = agu_stage == AGU_request || storebuffer_req_state == Store_Req_Addr;
assign dcache_wr    = select_store;
assign dcache_wstrb = storebuffer_req_wstrb_r;
assign dcache_addr  = select_store ? storebuffer_req_addr_r : mem_addr;
assign dcache_wdata = storebuffer_req_data_r;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        storebuffer_req_state <= Store_Req_Idle;
    end
    else begin
        unique case(storebuffer_req_state)
            Store_Req_Idle: begin
                if(commit_store_valid) begin
                    storebuffer_req_state   <= Store_Req_Addr;
                    storebuffer_req_addr_r  <= storebuffer_req_addr;
                    storebuffer_req_data_r  <= storebuffer_req_data;
                end
            end
            Store_Req_Addr: begin
                if(dcache_addr_ok)
                    storebuffer_req_state <= Store_Req_Data;
            end
            Store_Req_Data: begin
                if(dcache_data_ok)
                    storebuffer_req_state <= Store_Req_Done;
            end
            Store_Req_Done: begin
                storebuffer_req_state <= Store_Req_Idle;
            end
        endcase
    end

    if(reset || flush) begin
        data_result_r <= 'b0;
        data_wstrb_r  <= 'b0;
    end
    else if(data_exist && !data_wstrb_match) begin
        data_result_r <= data_result;
        data_wstrb_r  <= data_wstrb;
    end
    else begin
        data_result_r <= 'b0;
        data_wstrb_r  <= 'b0;
    end

end


// to writeback
assign rf_we =  op_lwl   ?  mem_addr[1] ? mem_addr[0] ? 4'hf : 4'he :
                                          mem_addr[0] ? 4'hc : 4'h8 :
                op_lwr   ?  mem_addr[1] ? mem_addr[0] ? 4'h1 : 4'h3 :
                                          mem_addr[0] ? 4'h7 : 4'hf :
                        {4{op_lb | op_lbu | op_lh | op_lhu | op_lw}};

always_comb begin
    mem_rdata[ 7: 0] = data_wstrb_r[0] ? data_result_r[ 7: 0] : dcache_rdata[ 7: 0];
    mem_rdata[15: 8] = data_wstrb_r[1] ? data_result_r[15: 8] : dcache_rdata[15: 8];
    mem_rdata[23:16] = data_wstrb_r[2] ? data_result_r[23:16] : dcache_rdata[23:16];
    mem_rdata[31:24] = data_wstrb_r[3] ? data_result_r[31:24] : dcache_rdata[31:24];

    agu_result = rt_value;
    if(agu_stage == AGU_lookup && data_exist && data_wstrb_match) begin
        agu_result = (op_lb | op_lbu) ? mem_addr[1] ? mem_addr[0] ? {{24{data_result[31]}}, data_result[31:24]} : {{24{data_result[23]}}, data_result[23:16]}:
                                                      mem_addr[0] ? {{24{data_result[15]}}, data_result[15: 8]} : {{24{data_result[ 7]}}, data_result[ 7: 0]}:
                     (op_lh | op_lhu) ? mem_addr[1] ? {{24{data_result[31]}}, data_result[31:16]} : {{24{data_result[15]}}, data_result[15:0]} :
                     (op_lwl)         ? mem_addr[1] ? mem_addr[0] ?  data_result                : {data_result[23: 0],  8'h0} :
                                                      mem_addr[0] ? {data_result[15: 0], 16'h0} : {data_result[ 7: 0], 24'h0} :
                     (op_lwr)         ? mem_addr[1] ? mem_addr[0] ? {24'h0, data_result[31:24]} : {16'h0, data_result[31:16]} :
                                                      mem_addr[0] ? { 8'h0, data_result[31: 8]} :  data_result                :
                                        data_result;
    end
    else if(agu_stage == AGU_response) begin
        agu_result = (op_lb | op_lbu) ? mem_addr[1] ? mem_addr[0] ? {{24{mem_rdata[31]}}, mem_rdata[31:24]} : {{24{mem_rdata[23]}}, mem_rdata[23:16]}:
                                                      mem_addr[0] ? {{24{mem_rdata[15]}}, mem_rdata[15: 8]} : {{24{mem_rdata[ 7]}}, mem_rdata[ 7: 0]}:
                     (op_lh | op_lhu) ? mem_addr[1] ? {{24{mem_rdata[31]}}, mem_rdata[31:16]} : {{24{mem_rdata[15]}}, mem_rdata[15:0]} :
                     (op_lwl)         ? mem_addr[1] ? mem_addr[0] ?  mem_rdata                : {mem_rdata[23: 0],  8'h0} :
                                                      mem_addr[0] ? {mem_rdata[15: 0], 16'h0} : {mem_rdata[ 7: 0], 24'h0} :
                     (op_lwr)         ? mem_addr[1] ? mem_addr[0] ? {24'h0, mem_rdata[31:24]} : {16'h0, mem_rdata[31:16]} :
                                                      mem_addr[0] ? { 8'h0, mem_rdata[31: 8]} :  mem_rdata                :
                                        mem_rdata;
    end
end

assign agu_to_commit_bus.valid    = agu_valid;
assign agu_to_commit_bus.rf_we    = rf_we;
assign agu_to_commit_bus.phy_dest = phy_dest;
assign agu_to_commit_bus.result   = agu_result;

assign agu_to_commit_bus.verify_result = 'b0;

assign agu_to_commit_bus.exception = 'b0;

endmodule
