`include "../cpu.svh"

module branch_control (
    input  es_valid,

    input  logic [11:0] br_op,
    output logic [ 2:0] br_type,

    input  uint32_t rs_value,
    input  uint32_t rt_value,

    input  virt_t       jump_target,
    input  virt_t       branch_target,

    input  logic        predict_is_taken,
    input  virt_t       predict_target  ,
    output logic        predict_sucess  ,
    output logic        br_taken,
    output virt_t       br_target
);

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

logic type_branch, type_jump, type_call, type_return;
logic target_jump, target_jump_r, target_branch;

assign  inst_beq        = br_op[0];
assign  inst_bne        = br_op[1];
assign  inst_bgez       = br_op[2];
assign  inst_bgtz       = br_op[3];
assign  inst_blez       = br_op[4];
assign  inst_bltz       = br_op[5];
assign  inst_bgezal     = br_op[6];
assign  inst_bltzal     = br_op[7];
assign  inst_j          = br_op[8];
assign  inst_jal        = br_op[9];
assign  inst_jr         = br_op[10];
assign  inst_jalr       = br_op[11];

assign type_branch = inst_beq    || inst_bne 
                  || inst_bgez   || inst_bgtz || inst_blez || inst_bltz
                  || inst_bgezal || inst_bltzal;
assign type_jump   = inst_j;
assign type_call   = inst_jal || inst_jalr;
assign type_return = inst_jr;
assign br_type = {3{type_jump  }} & `B_IS_J     
               | {3{type_call  }} & `B_IS_CALL
               | {3{type_return}} & `B_IS_RET
               | {3{type_branch}} & `B_IS_BRA;

assign rs_eq_rt = (rs_value == rt_value);
assign rs_eq_z  = ~|rs_value;
assign rs_lt_z  = rs_value[31];
assign rs_ge_z  = ~rs_lt_z;
assign rs_gt_z  = ~rs_lt_z & ~rs_eq_z;
assign rs_le_z  = rs_lt_z | rs_eq_z;

assign br_taken = (    inst_beq                  &&  rs_eq_rt
                   ||  inst_bne                  && !rs_eq_rt
                   || (inst_bgez | inst_bgezal)  &&  rs_ge_z
                   ||  inst_bgtz                 &&  rs_gt_z
                   ||  inst_blez                 &&  rs_le_z
                   || (inst_bltz | inst_bltzal)  &&  rs_lt_z
                   ||  inst_j
                   ||  inst_jal
                   ||  inst_jr
                   ||  inst_jalr
                  ) && es_valid;


assign target_jump   = inst_j   || inst_jal;
assign target_jump_r = inst_jr  || inst_jalr;
assign target_branch = type_branch;
assign br_target = {32{target_jump  }} & jump_target |
                   {32{target_jump_r}} & rs_value    |
                   {32{target_branch}} & branch_target;

assign predict_sucess = br_taken && predict_is_taken && (br_target == predict_target) || !(br_taken || predict_is_taken);

endmodule
