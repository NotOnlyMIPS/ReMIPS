`include "../cpu.svh"

module bru(
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_bru_valid,
    output logic bru_allowin,

    input  logic cs_allowin,
    output logic bru_to_valid,

    input  issue_to_execute_bus_t issue_inst,

    output bypass_bus_t bru_bypass_bus,

    output execute_to_commit_bus_t bru_to_commit_bus
);

// control
logic bru_valid;

virt_t inst_pc;
decoded_inst_t inst;
reg_addr_t  phy_dest;
uint32_t rs_value, rt_value;
exception_t exception;

assign bru_allowin  = cs_allowin || !bru_valid;
assign bru_to_valid = bru_valid;

always_ff @(posedge clk) begin
    if(reset) begin
        bru_valid <= 1'b0;
        inst      <= 'b0;
        phy_dest  <= 'b0;
        // old_dest  <= 'b0;
        rs_value  <= 'b0;
        rt_value  <= 'b0;
        inst_pc   <= 'b0;
        exception <= 'b0;
    end else if(bru_allowin) begin
        bru_valid <= issue_to_bru_valid;
        inst      <= issue_inst.inst;
        phy_dest  <= issue_inst.phy_dest;
        // old_dest  <= issue_inst.old_dest;
        rs_value  <= issue_inst.src1_value;
        rt_value  <= issue_inst.src2_value;
        inst_pc   <= issue_inst.pc;
        exception <= issue_inst.exception;
    end
end

logic  inst_beq;
logic  inst_bne;
logic  inst_bgez;
logic  inst_bgtz;
logic  inst_blez;
logic  inst_bltz;
logic  inst_bgezal;
logic  inst_bltzal;
logic  inst_j;
logic  inst_jal;
logic  inst_jr;
logic  inst_jalr;

logic  target_branch, target_jump, target_jump_r;
logic  predict_is_taken, predict_target, predict_sucess;
BHT_entry_t bht_entry;
verify_result_t verify_result;

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


assign target_jump   = inst_j;
assign target_jump_r = inst_jr;
assign target_branch = inst.branch_type == Branch_Branch;
assign br_target = {32{target_jump  }} & inst.jump_target |
                   {32{target_jump_r}} & rs_value         |
                   {32{target_branch}} & inst.branch_target;

assign predict_is_taken = inst.predict_result.is_taken;
assign predict_target   = inst.predict_result.target;

assign predict_sucess = br_taken && predict_is_taken && (br_target == predict_target) || !(br_taken || predict_is_taken);
assign bht_entry      = {inst.predict_result.tag,
                         inst.br_type,
                         inst.predict_result.count,
                         br_target};
                        
assign verify_result = {1'b0,
                        predict_sucess,
                        bht_entry,
                        br_taken,
                        inst_pc};

assign bru_bypass_bus = { bru_valid&inst.rf_we, phy_dest, inst_pc+8};

assign bru_to_commit_bus = { bru_valid,
                             inst_pc,
                             {4{inst.rf_we}},
                             phy_dest,
                             inst_pc+8,
                             verify_result,
                             exception};

endmodule
