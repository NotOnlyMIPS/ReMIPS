`include "../cpu.svh"

module inst_dispatch (
    input  logic ds_to_is_valid,
    input  logic ds_to_rob_valid,

    input  logic [3:0] rob_tail_o,

    input  logic [3:0] store_head,    
    input  logic [3:0] store_tail,

    input  logic  inst1_valid,
    input  virt_t inst1_pc,
    input  decoded_inst_t inst1_inst,

    input  logic  inst2_valid,
    input  virt_t inst2_pc,
    input  decoded_inst_t inst2_inst,

    // decode to issue
    // inst1
    input  logic  inst1_src1_ready,
    input  logic  inst1_src2_ready,
    input  reg_addr_t  inst1_phy_src1,
    input  reg_addr_t  inst1_phy_src2,
    input  reg_addr_t  inst1_phy_dest,

    input  logic inst1_is_store_op,

    input  logic inst1_br_taken,
    input  BHT_entry_t inst1_bpu_entry,

    output decode_to_issue_bus_t decode_to_issue_bus1,

    // inst2
    input  logic  inst2_src1_ready,
    input  logic  inst2_src2_ready,
    input  reg_addr_t  inst2_phy_src1,
    input  reg_addr_t  inst2_phy_src2,
    input  reg_addr_t  inst2_phy_dest,

    input  logic inst2_is_store_op,

    input  logic inst2_br_taken,
    input  BHT_entry_t inst2_bpu_entry,

    output decode_to_issue_bus_t decode_to_issue_bus2,

    // map to rob
    // inst1
    input  reg_addr_t  inst1_old_dest,

    input  logic       inst1_is_privileged_op,
    input  logic       inst1_is_eret,
    input  exception_t inst1_exception,

    // inst2
    input  reg_addr_t  inst2_old_dest,

    input  logic       inst2_is_privileged_op,
    input  logic       inst2_is_eret,
    input  exception_t inst2_exception,

    output rob_entry_t map_to_rob_bus1,
    output rob_entry_t map_to_rob_bus2

);

// select inst
decode_to_issue_bus_t pre_issue_inst1, pre_issue_inst2;
rob_entry_t dispatch_inst1, dispatch_inst2;

always_comb begin
    decode_to_issue_bus1 = pre_issue_inst1;
    decode_to_issue_bus2 = pre_issue_inst2;
    map_to_rob_bus1 = dispatch_inst1;
    map_to_rob_bus2 = dispatch_inst2;

    if(!inst1_valid) begin
        decode_to_issue_bus1 = pre_issue_inst2;
        map_to_rob_bus1      = dispatch_inst2;

        decode_to_issue_bus2 = 'b0;
        map_to_rob_bus2      = 'b0;
    end
end

// decode to issue
// inst1
assign pre_issue_inst1.valid = inst1_valid && ds_to_is_valid && !inst1_exception.ex;
assign pre_issue_inst1.pc    = inst1_pc;

assign pre_issue_inst1.src1_ready = inst1_src1_ready;
assign pre_issue_inst1.src2_ready = inst1_src2_ready;
assign pre_issue_inst1.phy_src1   = inst1_phy_src1;
assign pre_issue_inst1.phy_src2   = inst1_phy_src2;
assign pre_issue_inst1.phy_dest   = inst1_phy_dest;
assign pre_issue_inst1.old_dest   = inst1_old_dest;
assign pre_issue_inst1.inst       = inst1_inst;

assign pre_issue_inst1.rob_entry_num = rob_tail_o;

assign pre_issue_inst1.is_store_op     = inst1_is_store_op;
assign pre_issue_inst1.pre_store_ready = store_head == store_tail;
assign pre_issue_inst1.pre_store       = store_tail-1;
assign pre_issue_inst1.store_num       = store_tail;

assign pre_issue_inst1.br_taken  = inst1_br_taken;
assign pre_issue_inst1.bpu_entry = inst1_bpu_entry;

// inst2
assign pre_issue_inst2.valid = inst2_valid && ds_to_is_valid && !inst1_exception.ex && !inst2_exception.ex;
assign pre_issue_inst2.pc    = inst2_pc;

assign pre_issue_inst2.src1_ready = inst2_src1_ready;
assign pre_issue_inst2.src2_ready = inst2_src2_ready;
assign pre_issue_inst2.phy_src1   = inst2_phy_src1;
assign pre_issue_inst2.phy_src2   = inst2_phy_src2;
assign pre_issue_inst2.phy_dest   = inst2_phy_dest;
assign pre_issue_inst2.old_dest   = inst2_old_dest;
assign pre_issue_inst2.inst       = inst2_inst;

assign pre_issue_inst2.rob_entry_num = inst1_valid ? rob_tail_o + 1 : rob_tail_o;

assign pre_issue_inst2.is_store_op     = inst2_is_store_op;
assign pre_issue_inst2.pre_store_ready = (store_head == store_tail) && !(inst1_valid&&inst1_is_store_op);
assign pre_issue_inst2.pre_store       = inst1_valid&&inst1_is_store_op ? store_tail : store_tail-1;
assign pre_issue_inst2.store_num       = inst1_valid&&inst1_is_store_op ? store_tail+1 : store_tail;

assign pre_issue_inst2.br_taken  = inst2_br_taken;
assign pre_issue_inst2.bpu_entry = inst2_bpu_entry;

// map to rob
// inst1
assign dispatch_inst1.state = inst1_valid && ds_to_rob_valid ? 
                             (inst1_exception.ex             ? Inst_Complete : Inst_Wait) 
                                                             : Inst_Invalid;
assign dispatch_inst1.pc    = inst1_pc;

assign dispatch_inst1.rf_we = inst1_inst.rf_we;
assign dispatch_inst1.dest  = inst1_inst.rf_we ? inst1_inst.dest : 0;
assign dispatch_inst1.phy_dest = inst1_phy_dest;
assign dispatch_inst1.old_dest = inst1_old_dest;

assign dispatch_inst1.is_mul_div_op = inst1_inst.is_mul_div_op;
assign dispatch_inst1.is_br_op      = inst1_inst.is_br_op;
assign dispatch_inst1.is_store_op   = inst1_is_store_op;

assign dispatch_inst1.verify_result = '0;

assign dispatch_inst1.is_privileged_op = inst1_is_privileged_op;
assign dispatch_inst1.is_eret          = inst1_is_eret;
assign dispatch_inst1.exception        = inst1_exception;

// inst2
assign dispatch_inst2.state = inst2_valid && ds_to_rob_valid ? 
                             (inst2_exception.ex             ? Inst_Complete : Inst_Wait) 
                                                             : Inst_Invalid;
assign dispatch_inst2.pc    = inst2_pc;

assign dispatch_inst2.rf_we = inst2_inst.rf_we;
assign dispatch_inst2.dest  = inst2_inst.rf_we ? inst2_inst.dest : 0;
assign dispatch_inst2.phy_dest = inst2_phy_dest;
assign dispatch_inst2.old_dest = inst2_old_dest;

assign dispatch_inst2.is_mul_div_op = inst2_inst.is_mul_div_op;
assign dispatch_inst2.is_br_op      = inst2_inst.is_br_op;
assign dispatch_inst2.is_store_op   = inst2_is_store_op;

assign dispatch_inst2.verify_result = '0;

assign dispatch_inst2.is_privileged_op = inst2_is_privileged_op;
assign dispatch_inst2.is_eret          = inst2_is_eret;
assign dispatch_inst2.exception        = inst2_exception;

endmodule