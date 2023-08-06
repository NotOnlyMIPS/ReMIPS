`include "../cpu.svh"

module bru(
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_bru_valid,
    // output logic bru_allowin,

    // input  logic cs_allowin,
    output logic bru_to_valid,

    input  issue_to_execute_bus_t issue_inst,

    output bypass_bus_t bru_bypass_bus,

    output execute_to_commit_bus_t bru_to_commit_bus
);

// control
logic bru_valid;
logic [3:0] rob_entry_num;

virt_t inst_pc, next_pc, pc_add8;
virt_t branch_target, jump_target;
virt_t predict_target, br_target;
decoded_inst_t inst;
reg_addr_t  phy_dest;
uint32_t rs_value, rt_value;

logic  target_branch, target_jump, target_jump_r, target_not_taken;
logic  predict_is_taken,  predict_sucess;
BHT_entry_t bpu_entry, verify_entry;
verify_result_t verify_result;

// assign bru_allowin  = cs_allowin || !bru_valid;
assign bru_to_valid = bru_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        bru_valid <= 1'b0;
        inst      <= 'b0;
        phy_dest  <= 'b0;
        // old_dest  <= 'b0;
        rs_value  <= 'b0;
        rt_value  <= 'b0;
        inst_pc   <= 'b0;
        next_pc   <= 'b0;
        pc_add8   <= 'b0;
        bpu_entry <= 'b0;
        predict_is_taken <= 'b0;
        rob_entry_num    <= 'b0;
    end 
    else begin
        bru_valid <= issue_to_bru_valid;
        inst      <= issue_inst.inst;
        phy_dest  <= issue_inst.phy_dest;
        // old_dest  <= issue_inst.old_dest;
        rs_value  <= issue_inst.src1_value;
        rt_value  <= issue_inst.src2_value;
        inst_pc   <= issue_inst.pc;
        next_pc   <= issue_inst.pc + 4;
        pc_add8   <= issue_inst.pc + 8;
        bpu_entry <= issue_inst.bpu_entry;
        predict_is_taken <= issue_inst.br_taken;
        rob_entry_num    <= issue_inst.rob_entry_num;
    end
end

logic  inst_beq;
logic  inst_bne;
logic  inst_bgez;
logic  inst_bgtz;
logic  inst_blez;
logic  inst_bltz;
logic  inst_j;
logic  inst_jr;


assign  inst_beq     = inst.operation == OP_BEQ;
assign  inst_bne     = inst.operation == OP_BNE;
assign  inst_bgez    = inst.operation == OP_BGEZ;
assign  inst_bgtz    = inst.operation == OP_BGTZ;
assign  inst_blez    = inst.operation == OP_BLEZ;
assign  inst_bltz    = inst.operation == OP_BLTZ;
assign  inst_j       = inst.operation == OP_J;
assign  inst_jr      = inst.operation == OP_JR;

assign rs_eq_rt = (rs_value == rt_value);
assign rs_eq_z  = ~|rs_value;
assign rs_lt_z  = rs_value[31];
assign rs_ge_z  = ~rs_lt_z;
assign rs_gt_z  = ~rs_lt_z & ~rs_eq_z;
assign rs_le_z  = rs_lt_z | rs_eq_z;

assign br_taken = (    inst_beq  &&  rs_eq_rt
                   ||  inst_bne  && !rs_eq_rt
                   ||  inst_bgez &&  rs_ge_z
                   ||  inst_bgtz &&  rs_gt_z
                   ||  inst_blez &&  rs_le_z
                   ||  inst_bltz &&  rs_lt_z
                   ||  inst_j
                   ||  inst_jr
                 ) &&  bru_valid;

assign target_not_taken = (    inst_beq  && !rs_eq_rt
                            ||  inst_bne  &&  rs_eq_rt
                            ||  inst_bgez &&  rs_lt_z
                            ||  inst_bgtz &&  rs_le_z
                            ||  inst_blez &&  rs_gt_z
                            ||  inst_bltz &&  rs_ge_z
                          ) &&  bru_valid;
assign target_jump   = inst_j;
assign target_jump_r = inst_jr;
assign target_branch = (inst_beq || inst_bne || inst_bgez || inst_bgtz || inst_blez || inst_bltz) && br_taken;

assign jump_target = {next_pc[31:28], inst.jidx, 2'b0};
assign branch_target = next_pc + {{14{inst.imm[15]}}, inst.imm, 2'b0 };

assign br_target = {32{target_jump     }} & jump_target  |
                   {32{target_jump_r   }} & rs_value     |
                   {32{target_branch   }} & branch_target|
                   {32{target_not_taken}} & pc_add8      ;


assign predict_target   = bpu_entry.target;

assign predict_sucess = br_taken && predict_is_taken && (br_target == predict_target) || !(br_taken || predict_is_taken);
                        
assign verify_entry = {inst_pc[31:10], inst.branch_type, bpu_entry.count, br_target};

assign verify_result = {bru_valid,
                        predict_sucess,
                        verify_entry,
                        br_taken,
                        br_target,
                        inst_pc};

assign bru_bypass_bus = { {4{bru_valid&inst.rf_we}}, phy_dest, pc_add8};

assign bru_to_commit_bus.valid = bru_valid;
assign bru_to_commit_bus.rob_entry_num = rob_entry_num;

assign bru_to_commit_bus.rf_we    = {4{inst.rf_we}};
assign bru_to_commit_bus.phy_dest = phy_dest;
assign bru_to_commit_bus.result   = pc_add8;

assign bru_to_commit_bus.is_store_op = 1'b0;

assign bru_to_commit_bus.verify_result = verify_result;
assign bru_to_commit_bus.exception     = 'b0;

endmodule
