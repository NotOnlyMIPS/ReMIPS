`include "../cpu.svh"

module agu (
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_agu_valid,
    output logic agu_allowin,

    input  logic cs_store_allowin,
    input  logic cs_lookup_allowin,
    input  logic cs_load_allowin,
    output logic agu_store_to_valid,
    output logic agu_lookup_to_valid,
    output logic agu_load_to_valid,

    input  issue_to_execute_bus_t issue_inst,
    input  logic       commit_store1_valid,
    input  logic       commit_store2_valid,
    // output logic       commit_store_ready,
    // output exception_t commit_store_ex,

    // mmu
    output virt_t      data_vaddr,
    output virt_t      data_vaddr2,
    input  exception_t data_tlb_ex,
    input  exception_t data_tlb_ex2,

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

    output bypass_bus_t lookup_bypass_bus,
    output bypass_bus_t load_bypass_bus,

    output execute_to_commit_bus_t agu_store_to_commit_bus,
    output execute_to_commit_bus_t agu_lookup_to_commit_bus,
    output execute_to_commit_bus_t agu_load_to_commit_bus

);

// stage
typedef enum logic [1:0] { 
    ADDR_EMPTY,
    ADDR_BUSY,
    ADDR_FULL1,
    ADDR_FULL2
} AGU_Addr_State_t;

// typedef enum logic [2:0] { 
//     AGU_addr,
//     AGU_store,
//     AGU_store_done,
//     AGU_request,
//     AGU_response,
//     AGU_done
// } AGU_Stage_t;

// typedef enum logic [1:0] { 
//     Store_Req_Idle,
//     Store_Req_Addr,
//     Store_Req_Data,
//     Store_Req_Done
// } Storebuffer_Req_State_t;

// control
logic agu_addr_valid, agu_store_valid, agu_load_req_valid, agu_load_resp_valid, agu_load_done_valid, agu_lookup_valid;
logic agu_store_allowin, agu_load_req_allowin, agu_load_resp_allowin, agu_load_done_allowin, agu_lookup_allowin;
logic agu_load_req_readygo, agu_load_resp_readygo;
logic agu_addr_to_valid, agu_load_req_to_valid, agu_load_resp_to_valid;
// AGU_Stage_t agu_stage;

logic data_exist;

logic data_cancel;

// storebuffer
// logic select_store;
logic select_load;

// writeback
// uint32_t agu_result;

/* AGU addr stage */

AGU_Addr_State_t agu_addr_state, agu_addr_state_next;
logic push, pop;
logic data_out_we, data_buffer_we, use_buffer_data;

reg_addr_t phy_dest;
uint32_t rs_value, rt_value, imm_value;
operation_t op;
logic       is_store_op;
logic [3:0] rob_entry_num;
logic [3:0] store_num;
logic [3:0] pre_store;

virt_t pre_lookup_addr;

reg_addr_t phy_dest_r[1:0];
uint32_t rs_value_r[1:0], rt_value_r[1:0], imm_value_r[1:0];
operation_t op_r[1:0];
logic       is_store_op_r[1:0];
logic [3:0] rob_entry_num_r[1:0];
logic [3:0] store_num_r[1:0];
logic [3:0] pre_store_r[1:0];

logic buffer_head, buffer_tail;


assign agu_addr_valid = agu_addr_state != ADDR_EMPTY;
assign agu_allowin    = agu_addr_state == ADDR_EMPTY || agu_addr_state == ADDR_BUSY
                    || (agu_addr_state == ADDR_FULL1 && !issue_to_agu_valid);
assign agu_addr_to_valid = agu_addr_state != ADDR_EMPTY;

assign push = issue_to_agu_valid && agu_addr_state != ADDR_FULL2;
assign pop  = agu_addr_to_valid && (agu_store_allowin && is_store_op 
                                || !is_store_op && (agu_lookup_allowin && data_exist || agu_load_req_allowin && !data_exist));

assign data_out_we = (agu_addr_state == ADDR_EMPTY && push)
                  || (agu_addr_state == ADDR_BUSY  && push && pop)
                  || (agu_addr_state == ADDR_FULL1 && pop)
                  || (agu_addr_state == ADDR_FULL2 && pop);
assign data_buffer_we  = (agu_addr_state == ADDR_BUSY  && push && !pop)
                      || (agu_addr_state == ADDR_FULL1 && push);
assign use_buffer_data = (agu_addr_state == ADDR_FULL1 && pop)
                      || (agu_addr_state == ADDR_FULL2 && pop);

always_comb begin
    unique case(agu_addr_state)
        ADDR_EMPTY: agu_addr_state_next = push ? ADDR_BUSY  : ADDR_EMPTY;
        ADDR_BUSY : agu_addr_state_next = push ? (pop ? ADDR_BUSY : ADDR_FULL1) : (pop ? ADDR_EMPTY : ADDR_BUSY);
        ADDR_FULL1: agu_addr_state_next = push ? (pop ? ADDR_FULL1: ADDR_FULL2) : (pop ? ADDR_BUSY : ADDR_FULL1);
        ADDR_FULL2: agu_addr_state_next = pop  ? ADDR_FULL1 : ADDR_FULL2;
    endcase
end

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_addr_state <= ADDR_EMPTY;
    end
    else if(push || pop) begin
        agu_addr_state <= agu_addr_state_next;
    end

    if(reset || flush) begin
        phy_dest  <= 6'h0;
        rs_value  <= 32'h0;
        rt_value  <= 32'h0;
        imm_value <= 32'h0;
        op        <= OP_NOP;
        rob_entry_num <= '0;
        is_store_op   <= '0;
        store_num     <= '0;
        pre_store     <= '0;
        buffer_head   <= '0;

        pre_lookup_addr <= '0;
    end
    else if(data_out_we) begin
        phy_dest  <= use_buffer_data ? phy_dest_r[buffer_head]  : issue_inst.phy_dest;
        rs_value  <= use_buffer_data ? rs_value_r[buffer_head]  : issue_inst.src1_value;
        rt_value  <= use_buffer_data ? rt_value_r[buffer_head]  : issue_inst.src2_value;
        imm_value <= use_buffer_data ? imm_value_r[buffer_head] : { {16{issue_inst.inst.imm[15]}}, issue_inst.inst.imm };
        op        <= use_buffer_data ? op_r[buffer_head]        : issue_inst.inst.operation;
        is_store_op   <= use_buffer_data ? is_store_op_r[buffer_head]   : issue_inst.is_store_op;
        rob_entry_num <= use_buffer_data ? rob_entry_num_r[buffer_head] : issue_inst.rob_entry_num;
        store_num     <= use_buffer_data ? store_num_r[buffer_head]     : issue_inst.store_num;
        pre_store     <= use_buffer_data ? pre_store_r[buffer_head]     : issue_inst.pre_store;
        buffer_head   <= use_buffer_data ? !buffer_head : buffer_head;

        pre_lookup_addr <= use_buffer_data ? rs_value_r[buffer_head]+imm_value_r[buffer_head] : issue_inst.src1_value+{ {16{issue_inst.inst.imm[15]}}, issue_inst.inst.imm };
    end

    if(reset || flush) begin
        buffer_tail <= 'b0;
    end
    else if(data_buffer_we) begin
        phy_dest_r[buffer_tail]  <= issue_inst.phy_dest;
        rs_value_r[buffer_tail]  <= issue_inst.src1_value;
        rt_value_r[buffer_tail]  <= issue_inst.src2_value;
        imm_value_r[buffer_tail] <= { {16{issue_inst.inst.imm[15]}}, issue_inst.inst.imm };
        op_r[buffer_tail]        <= issue_inst.inst.operation;
        is_store_op_r[buffer_tail]   <= issue_inst.is_store_op;
        rob_entry_num_r[buffer_tail] <= issue_inst.rob_entry_num;
        store_num_r[buffer_tail]     <= issue_inst.store_num;
        pre_store_r[buffer_tail]     <= issue_inst.pre_store;
        buffer_tail <= !buffer_tail;
    end
end

// pre lookup
logic op_lb;
logic op_lbu;
logic op_lh;
logic op_lhu;
logic op_lw;
logic op_lwl;
logic op_lwr;

// virt_t      pre_lookup_addr;
logic [3:0] pre_lookup_wstrb;

assign op_lb  = op == OP_LB;
assign op_lbu = op == OP_LBU;
assign op_lh  = op == OP_LH;
assign op_lhu = op == OP_LHU;
assign op_lw  = op == OP_LW;
assign op_lwl = op == OP_LWL;
assign op_lwr = op == OP_LWR;

// assign pre_lookup_addr = rs_value + imm_value;

assign pre_lookup_wstrb = (op_lb  || op_lbu) ? 4'h1 << pre_lookup_addr[1:0]
                        : (op_lh  || op_lhu) ? 4'h3 << pre_lookup_addr[1:0]
                        : (op_lw  || op_lwr) ? 4'hf
                        : 0;

/* AGU store stage */
operation_t store_op;
virt_t store_addr;
logic [2:0] store_size;
logic [3:0] store_we;
uint32_t    store_value, store_data;
logic [3:0] agu_store_num;
logic [3:0] store_rob_entry_num;

logic       store_wait;
logic       store_buffer_full;

exception_t data_tlb_ex2_r;
exception_t store_exception;

logic        op_sb ;
logic        op_sh ;
logic        op_sw ;
logic        op_swl;
logic        op_swr;

assign op_sb  = store_op == OP_SB;
assign op_sh  = store_op == OP_SH;
assign op_sw  = store_op == OP_SW;
assign op_swl = store_op == OP_SWL;
assign op_swr = store_op == OP_SWR;


assign store_we = op_sb  ? (store_addr[1] ? store_addr[0] ? 4'h8 : 4'h4  :
                                            store_addr[0] ? 4'h2 : 4'h1) :
                  op_sh  ? (store_addr[1] ? 4'hc : 4'h3 )                :
                  op_swl ? (store_addr[1] ? store_addr[0] ? 4'hf : 4'h7  :
                                            store_addr[0] ? 4'h3 : 4'h1) :
                  op_swr ? (store_addr[1] ? store_addr[0] ? 4'h8 : 4'hc  :
                                            store_addr[0] ? 4'he : 4'hf) :
                  op_sw  ? 4'hf                                      :
                           4'h0                                      ;

assign store_size = ({3{op_sb | ((op_swl) & store_addr[1:0] == 2'd0) | ((op_swr) & store_addr[1:0] == 2'd3)}} & 3'd0
                    |{3{op_sh | ((op_swl) & store_addr[1:0] == 2'd1) | ((op_swr) & store_addr[1:0] == 2'd1)}} & 3'd1
                    |{3{op_sw | ((op_swl) & store_addr[1]   == 1'b1) | ((op_swr) & store_addr[1]   == 1'b0)}} & 3'd2 );

assign store_data  = op_sb  ? {4{store_value[7:0]}} :
                     op_sh  ? {2{store_value[15:0]}} :
                     op_sw  ? store_value :
                     op_swl ? store_addr[1] ? store_addr[0] ?  store_value : { 8'h0, store_value[31: 8]} :
                                              store_addr[0] ? {16'h0, store_value[31:16]} : {24'h0, store_value[31:24]} :
                     op_swr ? store_addr[1] ? store_addr[0] ? {store_value[ 7: 0], 24'h0} : {store_value[15: 0], 16'h0} :
                                              store_addr[0] ? {store_value[23: 0],  8'h0} :  store_value                :
                              store_value;

assign data_vaddr2 = rs_value+imm_value;

always_comb begin
    store_exception = '0;
    if(op_sh && store_addr[0] || op_sw && store_addr[1:0]) begin
        store_exception.ex       = 1'b1;
        store_exception.exccode  = `EXCCODE_ADES;
        store_exception.badvaddr = store_addr;
    end
    else if(data_tlb_ex2_r.ex) begin
        store_exception = data_tlb_ex2_r;
    end
end

assign agu_store_to_valid = agu_store_valid;
assign agu_store_allowin  = !agu_store_valid || cs_store_allowin && !store_buffer_full;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_store_valid <= 1'b0;
    end
    else if(agu_store_allowin) begin
        agu_store_valid <= is_store_op && agu_addr_to_valid;
    end

    if(reset || flush) begin
        store_wait <= 1'b1;
    end
    else if(agu_store_allowin && agu_addr_to_valid && is_store_op) begin
        store_wait <= 1'b0;
    end
    else if(agu_store_valid && !agu_store_allowin) begin
        store_wait <= 1'b1;
    end

    if(reset || flush) begin
        store_op   <= OP_NOP;
        store_addr <= 32'h0;
        store_value<= 32'h0;
        agu_store_num <= 4'h0;
        store_rob_entry_num <= 4'h0;
        data_tlb_ex2_r <= '0;
    end
    else if(agu_store_allowin) begin
        store_op   <= op;
        store_addr <= rs_value + imm_value;
        store_value<= rt_value;
        agu_store_num <= store_num;
        store_rob_entry_num <= rob_entry_num;
        data_tlb_ex2_r <= data_tlb_ex2;
    end
end


assign agu_store_to_commit_bus.valid = agu_store_valid;
assign agu_store_to_commit_bus.rob_entry_num = store_rob_entry_num;

assign agu_store_to_commit_bus.rf_we    = '0;
assign agu_store_to_commit_bus.phy_dest = '0;
assign agu_store_to_commit_bus.result   = store_data;

assign agu_store_to_commit_bus.is_store_op = 1'b1;

assign agu_store_to_commit_bus.verify_result = '0;

assign agu_store_to_commit_bus.exception = store_exception;


/* AGU lookup */
operation_t lookup_op;
virt_t      lookup_addr;
reg_addr_t  lookup_phy_dest;
uint32_t    lookup_rt_value;
uint32_t    lookup_data;
uint32_t    lookup_value;
uint32_t    lookup_result;

logic [3:0] lookup_rob_entry_num;

exception_t lookup_exception;

logic       lookup_lb;
logic       lookup_lbu;
logic       lookup_lh;
logic       lookup_lhu;
logic       lookup_lw;
logic       lookup_lwl;
logic       lookup_lwr;

assign lookup_lb  = lookup_op == OP_LB;
assign lookup_lbu = lookup_op == OP_LBU;
assign lookup_lh  = lookup_op == OP_LH;
assign lookup_lhu = lookup_op == OP_LHU;
assign lookup_lw  = lookup_op == OP_LW;
assign lookup_lwl = lookup_op == OP_LWL;
assign lookup_lwr = lookup_op == OP_LWR;

always_comb begin
    lookup_exception = '0;
    if((lookup_lh || lookup_lhu) && lookup_addr[0] 
     || lookup_lw && lookup_addr[1:0]) begin
        lookup_exception.ex       = 1'b1;
        lookup_exception.exccode  = `EXCCODE_ADEL;
        lookup_exception.badvaddr = lookup_addr;
    end
end

assign agu_lookup_allowin = !agu_lookup_valid || cs_lookup_allowin;
assign agu_lookup_to_valid = agu_lookup_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_lookup_valid <= 1'b0;
    end
    else if(agu_lookup_allowin) begin
        agu_lookup_valid <= agu_addr_to_valid && data_exist && !is_store_op;
    end

    if(reset) begin
        lookup_op   <= OP_NOP;
        lookup_addr <= 32'h0;
        lookup_phy_dest <= 5'h0;
        lookup_rt_value <= 32'h0;
        lookup_value <= 32'h0;
        lookup_rob_entry_num <= 4'h0;
    end
    else if(agu_lookup_allowin) begin
        lookup_op   <= op;
        lookup_addr <= rs_value + imm_value;
        lookup_phy_dest <= phy_dest;
        lookup_rt_value <= rt_value;
        lookup_value <= lookup_data;
        lookup_rob_entry_num <= rob_entry_num;
    end
end

assign lookup_result = (lookup_lb ) ? lookup_addr[1] ? lookup_addr[0] ? {{24{lookup_value[31]}}, lookup_value[31:24]} : {{24{lookup_value[23]}}, lookup_value[23:16]}:
                                                       lookup_addr[0] ? {{24{lookup_value[15]}}, lookup_value[15: 8]} : {{24{lookup_value[ 7]}}, lookup_value[ 7: 0]}:
                       (lookup_lbu) ? lookup_addr[1] ? lookup_addr[0] ? { 24'b0,                 lookup_value[31:24]} : { 24'b0,                 lookup_value[23:16]}:
                                                       lookup_addr[0] ? { 24'b0,                 lookup_value[15: 8]} : { 24'b0,                 lookup_value[ 7: 0]}:
                       (lookup_lh ) ? lookup_addr[1] ? {{16{lookup_value[31]}}, lookup_value[31:16]} : {{16{lookup_value[15]}}, lookup_value[15:0]} :
                       (lookup_lhu) ? lookup_addr[1] ? { 16'b0,                 lookup_value[31:16]} : { 16'b0,                 lookup_value[15:0]} :
                       (lookup_lwl) ? lookup_addr[1] ? lookup_addr[0] ?  lookup_value                                        : {lookup_value[23:0],       lookup_rt_value[ 7: 0]} :
                                                       lookup_addr[0] ? {lookup_value[15:0],      lookup_rt_value[15: 0]}    : {lookup_value[ 7:0],       lookup_rt_value[23: 0]} :
                       (lookup_lwr) ? lookup_addr[1] ? lookup_addr[0] ? {lookup_rt_value[31: 8] , lookup_value[31:24]}       : {lookup_rt_value[31:16],   lookup_value[31:16]} :
                                                       lookup_addr[0] ? {lookup_rt_value[31:24] , lookup_value[31: 8]}       :  lookup_value                :
                                                                         lookup_value;

// bypass
assign lookup_bypass_bus.rf_we = {4{agu_lookup_valid}};
assign lookup_bypass_bus.dest = lookup_phy_dest;
assign lookup_bypass_bus.result = lookup_result;

assign agu_lookup_to_commit_bus.valid = agu_lookup_valid;
assign agu_lookup_to_commit_bus.rob_entry_num = lookup_rob_entry_num;

assign agu_lookup_to_commit_bus.rf_we = 4'b1111;
assign agu_lookup_to_commit_bus.phy_dest = lookup_phy_dest;
assign agu_lookup_to_commit_bus.result = lookup_result;

assign agu_lookup_to_commit_bus.is_store_op = 1'b0;

assign agu_lookup_to_commit_bus.verify_result = 'b0;

assign agu_lookup_to_commit_bus.exception = lookup_exception;


/* AGU load request */
operation_t load_op;
virt_t      load_addr;
logic [2:0] load_size;
reg_addr_t  req_phy_dest;
uint32_t    req_load_value;
logic [3:0] req_pre_store;
logic       pre_load_wait;
logic       load_wait;
logic       load_wait_r;

logic       load_req;

logic [3:0] req_rob_entry_num;

exception_t req_exception;

logic        req_lb;
logic        req_lbu;
logic        req_lh;
logic        req_lhu;
logic        req_lw;
logic        req_lwl;
logic        req_lwr;

assign req_lb  = load_op == OP_LB;
assign req_lbu = load_op == OP_LBU;
assign req_lh  = load_op == OP_LH;
assign req_lhu = load_op == OP_LHU;
assign req_lw  = load_op == OP_LW;
assign req_lwl = load_op == OP_LWL;
assign req_lwr = load_op == OP_LWR;

assign load_size = ({3{req_lb | req_lbu | ((req_lwl) & load_addr[1:0] == 2'd0) | ((req_lwr) & load_addr[1:0] == 2'd3)}} & 3'd0
                   |{3{req_lh | req_lhu | ((req_lwl) & load_addr[1:0] == 2'd1) | ((req_lwr) & load_addr[1:0] == 2'd1)}} & 3'd1
                   |{3{req_lw |           ((req_lwl) & load_addr[1]   == 1'b1) | ((req_lwr) & load_addr[1]   == 1'b0)}} & 3'd2 );

assign load_req = agu_load_req_valid && !req_exception.ex && (!agu_load_resp_valid || cs_load_allowin);

always_comb begin
    req_exception = '0;
    if((req_lh || req_lhu) && load_addr[0] 
    ||  req_lw && load_addr[1:0]) begin
        req_exception.ex       = 1'b1;
        req_exception.exccode  = `EXCCODE_ADEL;
        req_exception.badvaddr = load_addr;
    end
end

assign agu_load_req_readygo = select_load && load_req && dcache_addr_ok || req_exception.ex;
assign agu_load_req_allowin = !agu_load_req_valid || agu_load_req_readygo && agu_load_resp_allowin;
assign agu_load_req_to_valid = agu_load_req_valid && agu_load_req_readygo;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_load_req_valid <= 1'b0;
    end
    else if(agu_load_req_allowin) begin
        agu_load_req_valid <= !is_store_op && !data_exist && agu_addr_to_valid;
    end

    if(reset || flush) begin
        load_op   <= OP_NOP;
        load_addr <= 32'h0;
        req_phy_dest <= 6'h0;
        req_load_value    <= 32'h0;
        req_pre_store     <= 4'h0;
        req_rob_entry_num <= 4'h0;
    end
    else if(agu_load_req_allowin) begin
        load_op   <= op;
        load_addr <= rs_value + imm_value;
        load_wait_r  <= pre_load_wait;
        req_phy_dest <= phy_dest;
        req_load_value    <= rt_value;
        req_pre_store     <= pre_store;
        req_rob_entry_num <= rob_entry_num;
    end

end


/* AGU load response */
uint32_t    load_value;
uint32_t    load_result;
reg_addr_t  resp_phy_dest;
virt_t      resp_addr;
logic [3:0] resp_rob_entry_num;
exception_t addr_ex;
exception_t exception;

logic       load_ready;
uint32_t    load_result_r;
exception_t exception_r;

logic       resp_lb;
logic       resp_lbu;
logic       resp_lh;
logic       resp_lhu;
logic       resp_lw;
logic       resp_lwl;
logic       resp_lwr;

always_comb begin
    exception = '0;
    if(addr_ex.ex) begin
        exception = addr_ex;
    end
    else if(data_tlb_ex.ex) begin
        exception = data_tlb_ex;
    end
end

assign agu_load_resp_readygo = dcache_data_ok && !data_cancel || exception.ex || load_ready;
assign agu_load_resp_allowin = !agu_load_resp_valid || agu_load_resp_readygo && agu_load_done_allowin;
assign agu_load_resp_to_valid = agu_load_resp_valid && agu_load_resp_readygo;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_load_resp_valid <= 1'b0;
    end
    else if(agu_load_resp_allowin) begin
        agu_load_resp_valid <= agu_load_req_to_valid;
    end

    if(reset || flush) begin
        load_value <= 32'h0;
        resp_addr  <= 32'h0;
        resp_phy_dest      <= 6'h0;
        resp_rob_entry_num <= 4'h0;
        addr_ex            <= '0;

        resp_lb  <= 1'b0;
        resp_lbu <= 1'b0;
        resp_lh  <= 1'b0;
        resp_lhu <= 1'b0;
        resp_lw  <= 1'b0;
        resp_lwl <= 1'b0;
        resp_lwr <= 1'b0;
    end
    else if(agu_load_resp_allowin) begin
        load_value <= req_load_value;
        resp_addr  <= load_addr;
        resp_phy_dest      <= req_phy_dest;
        resp_rob_entry_num <= req_rob_entry_num;
        addr_ex            <= req_exception;

        resp_lb  <= req_lb;
        resp_lbu <= req_lbu;
        resp_lh  <= req_lh;
        resp_lhu <= req_lhu;
        resp_lw  <= req_lw;
        resp_lwl <= req_lwl;
        resp_lwr <= req_lwr;
    end

    if(reset || flush) begin
        load_ready    <= 1'b0;
        load_result_r <= '0;
        exception_r   <= '0;
    end
    else if(agu_load_resp_allowin) begin
        load_ready    <= 1'b0;
    end
    else if(agu_load_resp_to_valid && !agu_load_done_allowin && !load_ready) begin
        load_ready    <= 1'b1;
        load_result_r <= load_result;
        exception_r   <= exception;
    end
end

assign load_result = (resp_lb ) ? resp_addr[1] ? resp_addr[0] ? {{24{dcache_rdata[31]}}, dcache_rdata[31:24]} : {{24{dcache_rdata[23]}}, dcache_rdata[23:16]}:
                                                 resp_addr[0] ? {{24{dcache_rdata[15]}}, dcache_rdata[15: 8]} : {{24{dcache_rdata[ 7]}}, dcache_rdata[ 7: 0]}:
                     (resp_lbu) ? resp_addr[1] ? resp_addr[0] ? { 24'b0,                 dcache_rdata[31:24]} : { 24'b0,                 dcache_rdata[23:16]}:
                                                 resp_addr[0] ? { 24'b0,                 dcache_rdata[15: 8]} : { 24'b0,                 dcache_rdata[ 7: 0]}:
                     (resp_lh ) ? resp_addr[1] ? {{16{dcache_rdata[31]}}, dcache_rdata[31:16]} : {{16{dcache_rdata[15]}}, dcache_rdata[15:0]} :
                     (resp_lhu) ? resp_addr[1] ? { 16'b0,                 dcache_rdata[31:16]} : { 16'b0,                 dcache_rdata[15:0]} :
                     (resp_lwl) ? resp_addr[1] ? resp_addr[0] ?  dcache_rdata                             : {dcache_rdata[23:0],  load_value[ 7: 0]} :
                                                 resp_addr[0] ? {dcache_rdata[15:0], load_value[15: 0]}   : {dcache_rdata[ 7:0],  load_value[23: 0]} :
                     (resp_lwr) ? resp_addr[1] ? resp_addr[0] ? {load_value[31: 8] , dcache_rdata[31:24]} : {load_value[31:16],   dcache_rdata[31:16]} :
                                                 resp_addr[0] ? {load_value[31:24] , dcache_rdata[31: 8]} :  dcache_rdata                :
                                                                dcache_rdata;

/* AGU load done */
reg_addr_t  load_done_phy_dest;
uint32_t    load_done_result;
logic [3:0] load_done_rob_entry_num;

exception_t load_done_exception;

assign agu_load_done_allowin = !agu_load_done_valid || cs_load_allowin;
assign agu_load_to_valid = agu_load_done_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_load_done_valid     <= 1'b0;
        load_done_phy_dest      <= 6'h0;
        load_done_result        <= 32'h0;
        load_done_rob_entry_num <= 4'h0;
        load_done_exception     <= '0;
    end
    else if(agu_load_done_allowin) begin
        agu_load_done_valid     <= agu_load_resp_to_valid;
        load_done_phy_dest      <= resp_phy_dest;
        load_done_result        <= load_ready ? load_result_r : load_result;
        load_done_rob_entry_num <= resp_rob_entry_num;
        load_done_exception     <= load_ready ? exception_r : exception;
    end
end

// bypass
assign load_bypass_bus.rf_we  = {4{agu_load_done_valid}};
assign load_bypass_bus.dest   = load_done_phy_dest;
assign load_bypass_bus.result = load_done_result;

assign agu_load_to_commit_bus.valid = agu_load_done_valid;
assign agu_load_to_commit_bus.rob_entry_num = load_done_rob_entry_num;

assign agu_load_to_commit_bus.rf_we    = 4'b1111;
assign agu_load_to_commit_bus.phy_dest = load_done_phy_dest;
assign agu_load_to_commit_bus.result   = load_done_result;

assign agu_load_to_commit_bus.is_store_op = 1'b0;

assign agu_load_to_commit_bus.verify_result = 'b0;

assign agu_load_to_commit_bus.exception = load_done_exception;


/* store buffer */
logic store_req;
logic [3:0] storebuffer_req_wstrb;
logic [2:0] storebuffer_req_size;
virt_t   storebuffer_req_addr;
uint32_t storebuffer_req_data;

store_buffer store_buffer_u (
    .clk,
    .reset,

    .flush,

    .pre_lookup_addr,
    .pre_lookup_wstrb,
    .data_exist,
    .pre_load_wait,

    .pre_store (req_pre_store),
    .load_wait,

    // .lookup_addr,
    .lookup_data,

    .valid      (agu_store_valid && !store_exception.ex && !store_wait),
    // .wr         (mem_wr),
    .buffer_we  (store_we),
    .buffer_size(store_size),
    // .rf_we      (rf_we ),
    .data_addr  (store_addr),
    .mem_wdata  (store_data),
    .store_num  (agu_store_num),

    .store_buffer_full,

    .store_req,
    .dcache_addr_ok(dcache_addr_ok && !select_load),
    .dcache_data_ok,

    .commit_store1_valid,
    .commit_store2_valid,
    .commit_store_wstrb (storebuffer_req_wstrb),
    .commit_store_size  (storebuffer_req_size ),
    .commit_store_addr  (storebuffer_req_addr ),
    .commit_store_data  (storebuffer_req_data )

);

// always_ff @(posedge clk) begin
//     if(reset || flush) begin
//         storebuffer_req_state   <= Store_Req_Idle;
//         storebuffer_req_wstrb_r <= 'b0;
//         storebuffer_req_addr_r  <= 'b0;
//         storebuffer_req_data_r  <= 'b0;
//     end
//     else begin
//         unique case(storebuffer_req_state)
//             Store_Req_Idle: begin
//                 if(commit_store_valid) begin
//                     storebuffer_req_state   <= Store_Req_Addr;
//                     storebuffer_req_wstrb_r <= storebuffer_req_wstrb;
//                     storebuffer_req_size_r  <= storebuffer_req_size;
//                     storebuffer_req_addr_r  <= storebuffer_req_addr;
//                     storebuffer_req_data_r  <= storebuffer_req_data;
//                 end
//             end
//             Store_Req_Addr: begin
//                 if(dcache_addr_ok)
//                     storebuffer_req_state <= Store_Req_Data;
//             end
//             Store_Req_Data: begin
//                 if(dcache_data_ok && !data_cancel)
//                     storebuffer_req_state <= Store_Req_Done;
//             end
//             Store_Req_Done: begin
//                 storebuffer_req_state <= Store_Req_Idle;
//             end
//             default: storebuffer_req_state <= Store_Req_Idle;
//         endcase
//     end

//     if(reset || flush) begin
//         commit_store_ex <= 'b0;
//     end
//     else if(storebuffer_req_state == Store_Req_Data && dcache_data_ok && !data_cancel) begin
//         commit_store_ex <= data_tlb_ex;
//     end
// end

// DBus and mmu
assign data_vaddr   = dcache_addr;

// assign commit_store_ready = storebuffer_req_state == Store_Req_Done;
// assign select_store = load_wait || store_req;
assign select_load  = agu_load_req_valid && (!load_wait_r || !load_wait);
assign dcache_req   = load_req && select_load || store_req && !select_load;
assign dcache_wr    = !select_load;
assign dcache_wstrb = storebuffer_req_wstrb;
assign dcache_size  = !select_load ? storebuffer_req_size : load_size;
assign dcache_addr  = !select_load ? storebuffer_req_addr : load_addr;
assign dcache_wdata = storebuffer_req_data;

always_ff @(posedge clk) begin
    if(reset || data_cancel && dcache_data_ok) begin
        data_cancel <= 1'b0;
    end
    else if(flush && (agu_load_resp_valid && !dcache_data_ok && !load_ready
                  || dcache_addr_ok && select_load)) begin
        data_cancel <= 1'b1;
    end
end


endmodule
