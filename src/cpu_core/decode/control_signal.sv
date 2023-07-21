`include "../cpu.svh"

module inst_decoder(
    input   logic           valid,
    input   virt_t          pc,
    input   operation_t     operation,
    input   uint32_t        inst,
    output  decoded_inst_t  inst_d,

    input   logic is_inst2,
    output  logic is_store_op,

    input   exception_t     exception,
    output  exception_t     exception_d

);

logic [ 5:0] op, func;
logic [ 5:0] rs, rt, rd;
logic [ 4:0] sa;
logic [15:0] imm;
logic [ 2:0] sel;
logic [25:0] jidx;

assign op   = inst[31:26];
assign rs   = inst[25:21];
assign rt   = inst[20:16];
assign rd   = inst[15:11];
assign sa   = inst[10: 6];
assign sel  = inst[ 2: 0];
assign func = inst[ 5: 0];
assign imm  = inst[15: 0];
assign jidx = inst[25: 0];

virt_t next_pc;

assign next_pc = pc + 4;
assign inst_d.jump_target = {next_pc[31:28], jidx, 2'b0};
assign inst_d.branch_target = next_pc + {{14{imm[15]}}, imm, 2'b0 };

assign exception_d = 'b0;

always_comb begin
    inst_d = '0;
    inst_d.src1 = rs;
    inst_d.src2 = rt;
    inst_d.dest = rd;
    inst_d.sel  = sel;
    inst_d.imm  = imm;

    // operation
    unique case(operation) 
        OP_ADD, OP_ADDI: begin
            inst_d.operation = OP_ADD;
        end
        OP_ADDU, OP_ADDIU: begin
            inst_d.operation = OP_ADDU;
        end
        OP_SUB, OP_SUBI: begin
            inst_d.operation = OP_SUB;
        end
        OP_SUBU, OP_SUBIU: begin
            inst_d.operation = OP_SUBU;
        end
        OP_SLT, OP_SLTI: begin
            inst_d.operation = OP_SLT;
        end
        OP_SLTU, OP_SLTIU: begin
            inst_d.operation = OP_SLTU;
        end
        OP_AND, OP_ANDI: begin
            inst_d.operation = OP_AND;
        end
        OP_OR, OP_ORI: begin
            inst_d.operation = OP_OR;
        end
        OP_XOR, OP_XORI: begin
            inst_d.operation = OP_XOR;
        end
        OP_SLL, OP_SLLV: begin
            inst_d.operation = OP_SLL;
        end
        OP_SRL, OP_SRLV: begin
            inst_d.operation = OP_SRL;
        end
        OP_SRA, OP_SRAV: begin
            inst_d.operation = OP_SRA;
        end
        OP_BGEZ, OP_BGEZAL: begin
            inst_d.operation = OP_BGEZ;
        end
        OP_BLTZ, OP_BLTZAL: begin
            inst_d.operation = OP_BLTZ;
        end
        OP_J, OP_JAL: begin
            inst_d.operation = OP_J;
        end
        OP_JR, OP_JALR: begin
            inst_d.operation = OP_JR;
        end
        default: begin
            inst_d.operation = operation;
        end
    endcase

    unique case(operation)
        OP_JAL, OP_BLTZAL, OP_BGEZAL: begin
            inst_d.branch_type = Branch_Call;
        end
        OP_JALR: begin
            inst_d.branch_type = inst_d.dest == `REG_RA ? Branch_Call : Branch_Jump;
        end
        OP_JR: begin
            inst_d.branch_type = inst_d.dest == `REG_RA ? Branch_Return : Branch_Jump;
        end
        OP_J: begin
            inst_d.branch_type = Branch_Jump;
        end
        OP_BEQ, OP_BNE, OP_BLEZ, OP_BGEZ, OP_BLTZ, OP_BGTZ: begin
            inst_d.branch_type = Branch_Cond;
        end
        default: begin
            inst_d.branch_type = Branch_None;
        end
    endcase

    // FU
    unique case(operation)
        /* arithmetic */
        OP_ADD, OP_ADDU, OP_SUB, OP_SUBU,
        OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
        OP_SLT, OP_SLTU,
        OP_SLTI, OP_SLTIU,
        /* logical */
        OP_AND, OP_OR, OP_XOR, OP_NOR,
        OP_ANDI, OP_ORI, OP_XORI,
        /* shift */
        OP_SLL, OP_SRL, OP_SRA, OP_SLLV, OP_SRLV, OP_SRAV,
        /* set */
        OP_LUI,
        /* count bits */
        OP_CLZ, OP_CLO,
        /* conditional move */
        OP_MOVN, OP_MOVZ,
        /* HI/LO move */
        OP_MFHI, OP_MFLO, OP_MTHI, OP_MTLO: begin
            inst_d.is_alu1_op =  pc[0];
            inst_d.is_alu2_op = ~pc[0];
        end
        /* multiplication and division */
        OP_MULT, OP_MULTU, OP_DIV, OP_DIVU,
        OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU, OP_MUL: begin
            inst_d.is_mul_div_op = 1'b1;
        end
        /* branch */
        OP_BLTZ, OP_BGEZ, OP_BEQ, OP_BNE, OP_BLEZ, OP_BGTZ,
        OP_BLTZAL, OP_BGEZAL,
        /* jump */
        OP_J, OP_JR, OP_JALR, OP_JAL: begin
            inst_d.is_br_op = 1'b1;
        end
        /* load */
        OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR: begin
            inst_d.is_load_store_op = 1'b1;
        end
        /* store */
        OP_SB, OP_SH, OP_SWL, OP_SW, OP_SWR: begin
            inst_d.is_load_store_op = 1'b1;
            is_store_op = 1'b1;
        end
        /* breakpoint and syscall */
        OP_SYSCALL, OP_BREAK,
        /* trap */
        OP_TGE, OP_TGEU, OP_TLT, OP_TLTU, OP_TEQ, OP_TNE,
        /* privileged instructions */
        OP_CACHE, OP_ERET, OP_MFC0, OP_MTC0,
        OP_TLBP, OP_TLBR, OP_TLBWI, OP_TLBWR, OP_WAIT: begin
            inst_d.is_sp_op = 1'b1;
        end
    endcase

    // src choose
    unique case(operation) 
        OP_ADD, OP_ADDU, OP_SUB, OP_SUBU, 
        OP_SLT, OP_SLTU, OP_AND, OP_OR, OP_XOR, OP_NOR, 
        OP_SLLV, OP_SRLV, OP_SRAV, 
        OP_MOVN, OP_MOVZ,
        OP_MULT, OP_MULTU, OP_DIV, OP_DIVU, OP_MUL,
        OP_BEQ, OP_BNE,
        OP_SB, OP_SH, OP_SWL, OP_SW, OP_SWR: begin
            inst_d.use_src1 = 1'b1;
            inst_d.use_src2 = 1'b1;
        end
        OP_MFHI: begin
            inst_d.use_src1 = 1'b1;
            inst_d.src1 = `REG_HI;
        end
        OP_MFLO: begin
            inst_d.use_src1 = 1'b1;
            inst_d.src1 = `REG_LO;
        end
        OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
        OP_SLTI, OP_SLTIU,
        OP_ANDI, OP_ORI, OP_XORI,
        OP_CLO, OP_CLZ,
        OP_MTHI, OP_MTLO,
        OP_JR, OP_JALR,
        OP_BLTZ, OP_BGEZ, OP_BLEZ, OP_BGTZ,
        OP_BLTZAL, OP_BGEZAL,
        OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR
        : begin
            inst_d.use_src1 = 1'b1;
        end
        OP_SLL, OP_SRL, OP_SRA: begin
            inst_d.use_src2 = 1'b1;
        end
        OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU: begin
            inst_d.use_src1 = 1'b1;
            inst_d.use_src2 = 1'b1;
            inst_d.src1 = is_inst2 ? `REG_HI : rs;
            inst_d.src2 = is_inst2 ? `REG_LO : rt;
        end
    endcase

    unique case(operation) 
        OP_SLL, OP_SRL, OP_SRA: inst_d.src1_is_sa = 1'b1;
        OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU: inst_d.src1_is_hi = 1'b1;
    endcase
    unique case(operation)
        OP_ADDI, OP_ADDIU, OP_SLTI, OP_SLTIU: begin
            inst_d.src2_is_simm = 1'b1;
        end
        OP_ANDI, OP_ORI, OP_XORI: begin
            inst_d.src2_is_zimm = 1'b1;
        end
    endcase

    // dest choose
    unique case(operation) 
        OP_ADD, OP_ADDU, OP_SUB, OP_SUBU,
        OP_SLT, OP_SLTU,
        OP_AND, OP_OR, OP_XOR, OP_NOR,
        OP_SLL, OP_SRL, OP_SRA, OP_SLLV, OP_SRLV, OP_SRAV,
        OP_CLZ, OP_CLO,
        OP_MFHI, OP_MFLO,
        OP_MOVN, OP_MOVZ,
        OP_JALR: begin
            inst_d.rf_we = 1'b1;
            inst_d.dest = rd;
        end
        OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
        OP_SLTI, OP_SLTIU,
        OP_ANDI, OP_ORI, OP_XORI,
        OP_LUI,
        OP_SLL, OP_SRL, OP_SRA,
        OP_CLO, OP_CLZ,
        OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR
        : begin
            inst_d.rf_we = 1'b1;
            inst_d.dest = rt;
        end
        OP_MTHI:begin
            inst_d.rf_we = 1'b1;
            inst_d.dest  = `REG_HI;
        end 
        OP_MTLO: begin
            inst_d.rf_we = 1'b1;
            inst_d.dest  = `REG_LO;
        end
        OP_MULT, OP_MULTU, OP_DIV, OP_DIVU,
        OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU: begin
            inst_d.rf_we = 1'b1;
            inst_d.dest  = is_inst2 ? `REG_HI : `REG_LO;
        end
        OP_MUL: begin
            inst_d.rf_we = !is_inst2;
            inst_d.dest  = is_inst2 ? 0 : rd;
        end
        OP_BLTZAL, OP_BGEZAL, OP_JAL: begin
            inst_d.rf_we = 1'b1;
            inst_d.dest = `REG_RA;
        end
    endcase
end

endmodule

