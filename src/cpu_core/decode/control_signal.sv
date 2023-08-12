`include "../cpu.svh"

module control_signal(
    input   logic           valid,
    input   virt_t          pc,
    input   operation_t     operation,
    input   uint32_t        inst,
    output  decoded_inst_t  inst_d,

    input   logic is_inst2,
    output  logic is_store_op,
    output  logic is_move_cond_op,

    output  logic is_privileged_op,
    output  logic is_eret,

    input   logic [1:0]     cp0_sw,
    input   logic [5:0]     cp0_hw,
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
assign rs   = {1'b0, inst[25:21]};
assign rt   = {1'b0, inst[20:16]};
assign rd   = {1'b0, inst[15:11]};
assign sa   = inst[10: 6];
assign sel  = inst[ 2: 0];
assign func = inst[ 5: 0];
assign imm  = inst[15: 0];
assign jidx = inst[25: 0];

// logic use_src1, use_src2;

// exception
always_comb begin
    exception_d = exception;

    if(cp0_hw || cp0_sw) begin
        exception_d.ex      = 1'b1;
        exception_d.exccode = `EXCCODE_INT;
    end
    else if(!exception.ex && valid) begin
        unique case(operation)
            OP_INVALID: begin
                exception_d.ex      = 1'b1;
                exception_d.exccode = `EXCCODE_RI;
            end
            OP_SYSCALL: begin
                exception_d.ex      = 1'b1;
                exception_d.exccode = `EXCCODE_SYS;
            end
            OP_BREAK: begin
                exception_d.ex      = 1'b1;
                exception_d.exccode = `EXCCODE_BP;
            end
            OP_FPU: begin
                exception_d.ex      = 1'b1;
                exception_d.exccode = `EXCCODE_CpU;
            end
            default: begin
                exception_d.ex = 1'b0;
                exception_d.exccode = '0;
            end
        endcase
    end

    if(!exception.ex && valid && is_privileged_op) begin
        exception_d.epc = pc+4;
    end
end

always_comb begin
    inst_d = '0;
    inst_d.sel  = sel;
    inst_d.imm  = imm;
    inst_d.jidx = jidx;

    // inst_d.use_old_dest = operation == OP_MOVN || operation == OP_MOVZ;
    
    inst_d.cache_op  = Cache_Code_EMPTY;

    inst_d.cp0_addr  = {sel, rd};

    is_store_op      = 1'b0;
    is_move_cond_op  = 1'b0;

    is_privileged_op = 1'b0;
    is_eret          = 1'b0;

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
        OP_TEQ, OP_TEQI: begin
            inst_d.operation = OP_TEQ;
        end
        OP_TNE, OP_TNEI: begin
            inst_d.operation = OP_TNE;
        end
        OP_TGE, OP_TGEI: begin
            inst_d.operation = OP_TGE;
        end
        OP_TLT, OP_TLTI: begin
            inst_d.operation = OP_TLT;
        end
        OP_TGEU, OP_TGEIU: begin
            inst_d.operation = OP_TGEU;
        end
        OP_TLTU, OP_TLTIU: begin
            inst_d.operation = OP_TLTU;
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
            inst_d.branch_type = rd == `REG_RA ? Branch_Call : Branch_Jump;
        end
        OP_JR: begin
            inst_d.branch_type = rs == `REG_RA ? Branch_Return : Branch_Jump;
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
    case(operation)
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
        /* HI/LO move */
        OP_MFHI, OP_MFLO, OP_MTHI, OP_MTLO: begin
            inst_d.is_alu1_op = !is_inst2;
            inst_d.is_alu2_op =  is_inst2;
        end
        /* conditional move */
        OP_MOVN, OP_MOVZ:begin
            inst_d.is_sp_op = 1'b1;
            is_move_cond_op = 1'b1;
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
        OP_TGEI, OP_TGEIU, OP_TLTI, OP_TLTIU, OP_TEQI, OP_TNEI,
        /* CP0 */
        OP_MFC0, OP_MTC0: begin
            inst_d.is_sp_op = 1'b1;
        end
        /* eret */
        OP_ERET: begin
            inst_d.is_sp_op = 1'b1;
            is_eret = 1'b1;
        end
        /* privileged instructions */
        OP_CACHE, OP_TLBP, OP_TLBR, OP_TLBWI, OP_TLBWR: begin
            inst_d.is_sp_op  = 1'b1;
            is_privileged_op = 1'b1;
        end
    endcase

    // src choose
    case(operation) 
        OP_ADD, OP_ADDU, OP_SUB, OP_SUBU, 
        OP_SLT, OP_SLTU, OP_AND, OP_OR, OP_XOR, OP_NOR, 
        OP_SLLV, OP_SRLV, OP_SRAV, 
        OP_MOVN, OP_MOVZ,
        OP_MULT, OP_MULTU, OP_DIV, OP_DIVU, OP_MUL,
        OP_BEQ, OP_BNE,
        OP_LWL, OP_LWR,
        OP_SB, OP_SH, OP_SWL, OP_SW, OP_SWR: begin
            // use_src1 = 1'b1;
            // use_src2 = 1'b1;
            inst_d.src1 = rs;
            inst_d.src2 = rt;
        end
        OP_TGE, OP_TGEU, OP_TLT, OP_TLTU, OP_TEQ, OP_TNE: begin
            // use_src1 = 1'b1;
            // use_src2 = 1'b1;
            inst_d.src1 = rs;
            inst_d.src2 = rt;
        end
        OP_MFHI: begin
            // use_src1 = 1'b1;
            inst_d.src1 = `REG_HI;
            inst_d.src2 = '0;
        end
        OP_MFLO: begin
            // use_src1 = 1'b1;
            inst_d.src1 = `REG_LO;
            inst_d.src2 = '0;
        end
        OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
        OP_SLTI, OP_SLTIU,
        OP_ANDI, OP_ORI, OP_XORI,
        OP_CLO, OP_CLZ,
        OP_MTHI, OP_MTLO,
        OP_JR, OP_JALR,
        OP_BLTZ, OP_BGEZ, OP_BLEZ, OP_BGTZ,
        OP_BLTZAL, OP_BGEZAL,
        OP_LB, OP_LH, OP_LW, OP_LBU, OP_LHU,
        OP_TGEI, OP_TGEIU, OP_TLTI, OP_TLTIU, OP_TEQI, OP_TNEI,
        OP_CACHE
        : begin
            // use_src1 = 1'b1;
            inst_d.src1 = rs;
            inst_d.src2 = '0;
        end
        OP_SLL, OP_SRL, OP_SRA: begin
            // use_src2 = 1'b1;
            inst_d.src1 = '0;
            inst_d.src2 = rt;
        end
        OP_MTC0: begin
            // use_src2 = 1'b1;
            inst_d.src1 = '0;
            inst_d.src2 = rt;
        end
        OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU: begin
            // use_src1 = 1'b1;
            // use_src2 = 1'b1;
            inst_d.src1 = !is_inst2 ? `REG_HI : rs;
            inst_d.src2 = !is_inst2 ? `REG_LO : rt;
        end
        default: begin
            inst_d.src1 = '0;
            inst_d.src2 = '0;
        end
    endcase

    case(operation) 
        OP_SLL, OP_SRL, OP_SRA: inst_d.src1_is_sa = 1'b1;
    endcase
    case(operation)
        OP_TGEI, OP_TGEIU, OP_TLTI, OP_TLTIU, OP_TEQI, OP_TNEI,
        OP_ADDI, OP_ADDIU, OP_SLTI, OP_SLTIU: begin
            inst_d.src2_is_simm = 1'b1;
        end
        OP_ANDI, OP_ORI, OP_XORI: begin
            inst_d.src2_is_zimm = 1'b1;
        end
    endcase

    // dest choose
    case(operation) 
        OP_ADD, OP_ADDU, OP_SUB, OP_SUBU,
        OP_SLT, OP_SLTU,
        OP_AND, OP_OR, OP_XOR, OP_NOR,
        OP_SLL, OP_SRL, OP_SRA, OP_SLLV, OP_SRLV, OP_SRAV,
        OP_CLZ, OP_CLO,
        OP_MFHI, OP_MFLO,
        OP_MOVN, OP_MOVZ,
        OP_JALR: begin
            inst_d.rf_we = rd != 0;
            inst_d.dest  = rd;
        end
        OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
        OP_SLTI, OP_SLTIU,
        OP_ANDI, OP_ORI, OP_XORI,
        OP_LUI,
        OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR
        : begin
            inst_d.rf_we = rt != 0;
            inst_d.dest  = rt;
        end
        OP_MFC0: begin
            inst_d.rf_we = rt != 0;
            inst_d.dest  = rt;
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
            inst_d.dest  = is_inst2 ? `REG_LO : `REG_HI;
        end
        OP_MUL: begin
            inst_d.rf_we = is_inst2;
            inst_d.dest  = !is_inst2 ? 0 : rd;
        end
        OP_BLTZAL, OP_BGEZAL, OP_JAL: begin
            inst_d.rf_we = 1'b1;
            inst_d.dest = `REG_RA;
        end
        default: begin
            inst_d.rf_we = 1'b0;
            inst_d.dest  = 0;
        end
    endcase

    // Cache op
    if(operation == OP_CACHE) begin
        case(inst[20:16])
            5'b00000: inst_d.cache_op = I_Index_Invalid;
            5'b01000: inst_d.cache_op = I_Index_Store_Tag;
            5'b10000: inst_d.cache_op = I_Hit_Invalid;
            5'b00001: inst_d.cache_op = D_Index_Writeback_Invalid;
            5'b01001: inst_d.cache_op = D_Index_Store_Tag;
            5'b10001: inst_d.cache_op = D_Hit_Invalid;
            5'b10101: inst_d.cache_op = D_Hit_Writeback_Invalid;
            default:  inst_d.cache_op = Cache_Code_EMPTY;
        endcase
    end
end

endmodule

