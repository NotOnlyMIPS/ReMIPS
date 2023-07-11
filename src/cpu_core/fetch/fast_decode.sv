`include "../cpu.svh"
module fast_decode (
    input  uint32_t inst,
    output logic    br_op
);

uint32_t rt_d;
uint64_t op_d;
uint64_t func_d;
logic [ 5:0] op;
logic [ 4:0] rt;
logic [ 5:0] func;

assign op   = inst[31:26];
assign rt   = inst[20:16];
assign func = inst[ 5: 0];
decoder_6_64 u_dec0(.in(op  ), .out(op_d  ));
decoder_6_64 u_dec1(.in(func), .out(func_d));
decoder_5_32 u_dec3(.in(rt  ), .out(rt_d  ));
// branch
assign inst_beq    = op_d[6'h04];
assign inst_bne    = op_d[6'h05];
assign inst_bgez   = op_d[6'h01] & rt_d[5'h01];
assign inst_bgtz   = op_d[6'h07] & rt_d[5'h00];
assign inst_blez   = op_d[6'h06] & rt_d[5'h00];
assign inst_bltz   = op_d[6'h01] & rt_d[5'h00];
assign inst_bgezal = op_d[6'h01] & rt_d[5'h11];
assign inst_bltzal = op_d[6'h01] & rt_d[5'h10];
// jump
assign inst_j      = op_d[6'h02];
assign inst_jal    = op_d[6'h03]; // call
assign inst_jr     = op_d[6'h00] & func_d[6'h08];
assign inst_jalr   = op_d[6'h00] & func_d[6'h09];

assign br_op = inst_beq | inst_bne | inst_bgez | inst_bgtz | inst_blez | inst_bltz | inst_bgezal | inst_bltzal
              | inst_j   | inst_jal | inst_jr   | inst_jalr; 

endmodule