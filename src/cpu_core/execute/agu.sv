`include "../cpu.svh"

module agu (
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_agu_valid,
    output logic agu_allowin,
    output logic agu_pre_allowin,

    input  logic cs_allowin,
    output logic agu_to_valid,

    input  issue_to_execute_bus_t issue_inst,
    input  logic       commit_store_valid,
    output logic       commit_store_ready,
    output exception_t commit_store_ex,

    // mmu
    output virt_t      data_vaddr,
    input  exception_t data_tlb_ex,

    // DBus
    output logic       dcache_req,
    output logic       dcache_wr,
    output logic [3:0] dcache_wstrb,
    output logic [2:0] dcache_size,
    output uint32_t    dcache_addr,
    output uint32_t    dcache_wdata,
    input  logic       dcache_addr_ok,
    input  logic       dcache_data_ok,
    input  uint32_t    dcache_rdata,

    output execute_to_commit_bus_t agu_to_commit_bus

);

// stage
typedef enum logic [2:0] { 
    AGU_addr,
    AGU_store,
    AGU_store_done,
    AGU_request,
    AGU_response,
    AGU_done
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

logic [3:0] rob_entry_num;

logic [3:0] store_num;
logic [3:0] pre_store;

// lookup
virt_t mem_addr;
logic [3:0] mem_we, rf_we;
logic mem_wr;
uint32_t mem_wdata, mem_rdata;
logic [2:0] load_size, store_size;

logic data_cancel;
logic load_wait;
// logic       data_exist;
// logic       data_wstrb_match;
// logic [3:0] data_wstrb, data_wstrb_r;
// uint32_t    data_result;

// storebuffer
logic select_store;
Storebuffer_Req_State_t storebuffer_req_state;
logic [3:0] storebuffer_req_wstrb, storebuffer_req_wstrb_r;
logic [2:0] storebuffer_req_size, storebuffer_req_size_r;
virt_t   storebuffer_req_addr, storebuffer_req_addr_r;
uint32_t storebuffer_req_data, storebuffer_req_data_r;

// writeback
uint32_t agu_result;

// exception
exception_t addr_ex, tlb_ex;

assign agu_readygo = (agu_stage == AGU_store) && mem_wr || addr_ex.ex
                  ||  agu_stage == AGU_done;
// assign agu_allowin = !agu_valid || agu_readygo && cs_allowin;
assign agu_allowin = !agu_valid || cs_allowin && (agu_readygo || mem_wr);
assign agu_pre_allowin = agu_stage == AGU_addr && agu_valid && mem_wr;
assign agu_to_valid = agu_valid && agu_readygo;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_valid <= 1'b0;
    end
    else if(!agu_valid || cs_allowin && agu_readygo) begin
        agu_valid <= issue_to_agu_valid;
    end

    if(reset || flush) begin
        agu_stage <= AGU_addr;
    end
    else begin
        case(agu_stage) 
            AGU_addr:        agu_stage <= agu_valid && !addr_ex.ex ? (mem_wr ? AGU_store : AGU_request) : AGU_addr;
            AGU_store:       agu_stage <= agu_readygo ? AGU_addr : AGU_request;
            AGU_request:     agu_stage <= !select_store && dcache_addr_ok && !data_cancel ? AGU_response : AGU_request;
            AGU_response:    agu_stage <= dcache_data_ok && !data_cancel ? AGU_done : AGU_response;
            AGU_done :       agu_stage <= cs_allowin ? AGU_addr : AGU_done;
            default:         agu_stage <= AGU_addr;
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
        rob_entry_num <= '0;
        store_num     <= '0;
        pre_store     <= '0;
    end
    else if(!agu_valid || cs_allowin && agu_readygo) begin
        phy_dest  <= issue_inst.phy_dest;
        rs_value  <= issue_inst.src1_value;
        rt_value  <= issue_inst.src2_value;
        imm_value <= { {16{issue_inst.inst.imm[15]}}, issue_inst.inst.imm };
        op        <= issue_inst.inst.operation;
        rob_entry_num <= issue_inst.rob_entry_num;
        store_num     <= issue_inst.store_num;
        pre_store     <= issue_inst.pre_store;
    end
end

// store
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

assign load_size = ({3{op_lb | op_lbu | ((op_lwl) & mem_addr[1:0] == 2'd0) | ((op_lwr) & mem_addr[1:0] == 2'd3)}} & 3'd0
                   |{3{op_lh | op_lhu | ((op_lwl) & mem_addr[1:0] == 2'd1) | ((op_lwr) & mem_addr[1:0] == 2'd1)}} & 3'd1
                   |{3{op_lw |          ((op_lwl) & mem_addr[1]   == 1'b1) | ((op_lwr) & mem_addr[1]   == 1'b0)}} & 3'd2 );

assign store_size = ({3{op_sb | ((op_swl) & mem_addr[1:0] == 2'd0) | ((op_swr) & mem_addr[1:0] == 2'd3)}} & 3'd0
                    |{3{op_sh | ((op_swl) & mem_addr[1:0] == 2'd1) | ((op_swr) & mem_addr[1:0] == 2'd1)}} & 3'd1
                    |{3{op_sw | ((op_swl) & mem_addr[1]   == 1'b1) | ((op_swr) & mem_addr[1]   == 1'b0)}} & 3'd2 );

assign mem_wr = op_sb | op_sh | op_sw | op_swl | op_swr;
assign mem_wdata = op_sb  ? {4{rt_value[7:0]}} :
                   op_sh  ? {2{rt_value[15:0]}} :
                   op_sw  ? rt_value :
                   op_swl ? mem_addr[1] ? mem_addr[0] ?  rt_value : { 8'h0, rt_value[31: 8]} :
                                          mem_addr[0] ? {16'h0, rt_value[31:16]} : {24'h0, rt_value[31:24]} :
                   op_swr ? mem_addr[1] ? mem_addr[0] ? {rt_value[ 7: 0], 24'h0} : {rt_value[15: 0], 16'h0} :
                                          mem_addr[0] ? {rt_value[23: 0],  8'h0} :  rt_value                :
                            rt_value;

assign mem_addr = rs_value + imm_value;

always_comb begin
    addr_ex = 'b0;
    if(agu_stage == AGU_addr && agu_valid) begin
        if((op_lh || op_lhu) && mem_addr[0] 
        ||  op_lw && mem_addr[1:0]) begin
            addr_ex.ex       = 1'b1;
            addr_ex.exccode  = `EXCCODE_ADEL;
            addr_ex.badvaddr = mem_addr;
        end
        else if(op_sh && mem_addr[0] || op_sw && mem_addr[1:0]) begin
            addr_ex.ex       = 1'b1;
            addr_ex.exccode  = `EXCCODE_ADES;
            addr_ex.badvaddr = mem_addr;
        end
    end
end

store_buffer store_buffer_u (
    .clk,
    .reset,

    .flush,

    .pre_store,
    .load_wait,

    .valid      (agu_stage == AGU_store && !addr_ex.ex),
    .wr         (mem_wr),
    .buffer_we  (mem_we),
    .buffer_size(store_size),
    // .rf_we      (rf_we ),
    .data_addr  (mem_addr),
    .mem_wdata  (mem_wdata),
    .store_num,

    // .data_exist,
    // .data_wstrb_match,
    // .data_wstrb,
    // .data_result,

    .commit_store_valid (commit_store_valid && storebuffer_req_state == Store_Req_Idle),
    .commit_store_wstrb (storebuffer_req_wstrb),
    .commit_store_size  (storebuffer_req_size ),
    .commit_store_addr  (storebuffer_req_addr ),
    .commit_store_data  (storebuffer_req_data )

);

// data request
assign data_vaddr   = dcache_addr;

assign commit_store_ready = storebuffer_req_state == Store_Req_Done;
assign select_store = load_wait || storebuffer_req_state == Store_Req_Addr;
assign dcache_req   = agu_stage == AGU_request && !select_store || storebuffer_req_state == Store_Req_Addr && select_store;
assign dcache_wr    = select_store;
assign dcache_wstrb = storebuffer_req_wstrb_r;
assign dcache_size  = select_store ? storebuffer_req_size_r : load_size;
assign dcache_addr  = select_store ? storebuffer_req_addr_r : mem_addr;
assign dcache_wdata = storebuffer_req_data_r;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        storebuffer_req_state   <= Store_Req_Idle;
        storebuffer_req_wstrb_r <= 'b0;
        storebuffer_req_addr_r  <= 'b0;
        storebuffer_req_data_r  <= 'b0;
    end
    else begin
        unique case(storebuffer_req_state)
            Store_Req_Idle: begin
                if(commit_store_valid) begin
                    storebuffer_req_state   <= Store_Req_Addr;
                    storebuffer_req_wstrb_r <= storebuffer_req_wstrb;
                    storebuffer_req_size_r  <= storebuffer_req_size;
                    storebuffer_req_addr_r  <= storebuffer_req_addr;
                    storebuffer_req_data_r  <= storebuffer_req_data;
                end
            end
            Store_Req_Addr: begin
                if(dcache_addr_ok)
                    storebuffer_req_state <= Store_Req_Data;
            end
            Store_Req_Data: begin
                if(dcache_data_ok && !data_cancel)
                    storebuffer_req_state <= Store_Req_Done;
            end
            Store_Req_Done: begin
                storebuffer_req_state <= Store_Req_Idle;
            end
            default: storebuffer_req_state <= Store_Req_Idle;
        endcase
    end

    if(reset || data_cancel && dcache_data_ok) begin
        data_cancel <= 1'b0;
    end
    else if(flush && (agu_stage == AGU_response && !dcache_data_ok
                //   || storebuffer_req_state == Store_Req_Data && !dcache_data_ok
                  || dcache_addr_ok)) begin
        data_cancel <= 1'b1;
    end

    if(reset || flush) begin
        mem_rdata <= 'b0;
    end
    else if(agu_stage == AGU_response && dcache_data_ok && !data_cancel) begin
        mem_rdata <= dcache_rdata;
    end
end


// to writeback
assign rf_we = {4{op_lb | op_lbu | op_lh | op_lhu | op_lw | op_lwl | op_lwr}};

always_comb begin
    agu_result = rt_value;
    // if((agu_stage == AGU_lookup || agu_stage == AGU_lookup_done) && data_exist && data_wstrb_match) begin
    //     agu_result = (op_lb ) ? mem_addr[1] ? mem_addr[0] ? {{24{data_result[31]}}, data_result[31:24]} : {{24{data_result[23]}}, data_result[23:16]}:
    //                                           mem_addr[0] ? {{24{data_result[15]}}, data_result[15: 8]} : {{24{data_result[ 7]}}, data_result[ 7: 0]}:
    //                  (op_lbu) ? mem_addr[1] ? mem_addr[0] ? { 24'b0,                data_result[31:24]} : { 24'b0,                data_result[23:16]}:
    //                                           mem_addr[0] ? { 24'b0,                data_result[15: 8]} : { 24'b0,                data_result[ 7: 0]}:
    //                  (op_lh ) ? mem_addr[1] ? {{16{data_result[31]}}, data_result[31:16]} : {{16{data_result[15]}}, data_result[15:0]} :
    //                  (op_lhu) ? mem_addr[1] ? { 16'b0,                data_result[31:16]} : { 16'b0,                data_result[15:0]} :
    //                  (op_lwl) ? mem_addr[1] ? mem_addr[0] ?  data_result                          : {data_result[23: 0], rt_value[ 7:0]} :
    //                                           mem_addr[0] ? {data_result[15: 0], rt_value[15: 0]} : {data_result[ 7: 0], rt_value[23:0]} :
    //                  (op_lwr) ? mem_addr[1] ? mem_addr[0] ? {rt_value[31: 8], data_result[31:24]} : {rt_value[31:16], data_result[31:16]} :
    //                                           mem_addr[0] ? {rt_value[31:24], data_result[31: 8]} :  data_result                :
    //                                                          data_result;
    // end
    if(agu_stage == AGU_done) begin
        agu_result = (op_lb ) ? mem_addr[1] ? mem_addr[0] ? {{24{mem_rdata[31]}}, mem_rdata[31:24]} : {{24{mem_rdata[23]}}, mem_rdata[23:16]}:
                                              mem_addr[0] ? {{24{mem_rdata[15]}}, mem_rdata[15: 8]} : {{24{mem_rdata[ 7]}}, mem_rdata[ 7: 0]}:
                     (op_lbu) ? mem_addr[1] ? mem_addr[0] ? { 24'b0,              mem_rdata[31:24]} : { 24'b0,              mem_rdata[23:16]}:
                                              mem_addr[0] ? { 24'b0,              mem_rdata[15: 8]} : { 24'b0,              mem_rdata[ 7: 0]}:
                     (op_lh ) ? mem_addr[1] ? {{16{mem_rdata[31]}}, mem_rdata[31:16]} : {{16{mem_rdata[15]}}, mem_rdata[15:0]} :
                     (op_lhu) ? mem_addr[1] ? { 16'b0,              mem_rdata[31:16]} : { 16'b0,              mem_rdata[15:0]} :
                     (op_lwl) ? mem_addr[1] ? mem_addr[0] ?  mem_rdata                          : {mem_rdata[23:0],  rt_value[ 7: 0]} :
                                              mem_addr[0] ? {mem_rdata[15:0], rt_value[15: 0]}  : {mem_rdata[ 7:0],  rt_value[23: 0]} :
                     (op_lwr) ? mem_addr[1] ? mem_addr[0] ? {rt_value[31: 8], mem_rdata[31:24]} : {rt_value[31:16], mem_rdata[31:16]} :
                                              mem_addr[0] ? {rt_value[31:24], mem_rdata[31: 8]} :  mem_rdata                :
                                                             mem_rdata;
    end
end

// tlb exception
always_ff @(posedge clk) begin
    if(reset || flush) begin
        tlb_ex <= 'b0;
    end
    else if(agu_stage == AGU_response && dcache_data_ok && !data_cancel) begin
        tlb_ex <= data_tlb_ex;
    end
end

// commit store exception
always_ff @(posedge clk) begin
    if(reset || flush) begin
        commit_store_ex <= 'b0;
    end
    else if(storebuffer_req_state == Store_Req_Data && dcache_data_ok && !data_cancel) begin
        commit_store_ex <= data_tlb_ex;
    end
end

assign agu_to_commit_bus.valid = agu_to_valid;
assign agu_to_commit_bus.rob_entry_num = rob_entry_num;

assign agu_to_commit_bus.rf_we    = rf_we;
assign agu_to_commit_bus.phy_dest = phy_dest;
assign agu_to_commit_bus.result   = agu_result;

assign agu_to_commit_bus.is_store_op = mem_wr;

assign agu_to_commit_bus.verify_result = 'b0;

assign agu_to_commit_bus.exception = agu_stage == AGU_done ? tlb_ex : addr_ex;

endmodule
