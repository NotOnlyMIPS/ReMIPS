`include "../cpu.svh"

module inst_decoder(
    input   logic           valid,
    input   virt_t          pc,
    input   uint32_t        inst,
    output  decoded_inst_t  inst_d,

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


always_comb begin
    inst_d = '0;
    if(valid) begin
        unique casez(op) 
            6'b000000: begin // SPECIAL
            unique case(func)
                6'b000100, 6'b000110, 6'b000111, // SLLV, SRLV, SRAV
                6'b001010, 6'b001011,          // MOVZ, MOVN
                6'b100000, 6'b100001, 6'b100010, 6'b100011, // ADD, ADDU, SUB, SUBU
                6'b100100, 6'b100101, 6'b100110, 6'b100111, // AND, OR, XOR, NOR
                6'b101010, 6'b101011: begin // SLT, SLTU
                    inst_d.is_alu0_op = ~pc[0] & 1'b1;
                    inst_d.is_alu1_op =  pc[0] & 1'b1;
                    inst_d.use_src1 = 1'b1;
                    inst_d.use_src2 = 1'b1;
                    inst_d.src1   = rs;
                    inst_d.src2   = rt;
                    inst_d.dest   = rd;
                    inst_d.rf_we  = 1'b1;
                end
                6'b000000, 6'b000010, 6'b000011: begin // SLL, SRL, SRA
                    inst_d.is_alu0_op = ~pc[0] & 1'b1;
                    inst_d.is_alu1_op =  pc[0] & 1'b1;
                    inst_d.use_src1 = 1'b0;
                    inst_d.use_src2 = 1'b1;
                    inst_d.src2   = rt;
                    inst_d.dest   = rd;
                    inst_d.rf_we  = 1'b1;
                    inst_d.src1_is_sa = 1'b1;
                end
                6'b010000, 6'b010001, 6'b010010, 6'b010011: begin // MFHI, MTHI, MFLO, MTLO
                    inst_d.is_alu0_op = ~pc[0] & 1'b1;
                    inst_d.is_alu1_op =  pc[0] & 1'b1;
                    inst_d.use_src1 = 1'b1;
                    inst_d.use_src2 = 1'b0;
                    inst_d.src1   = func[0] ? rd : (func[1] ? 33 : 32);
                    inst_d.dest   = func[0] ? (func[1] ? 33 : 32) : rd;
                    inst_d.rf_we  = 1'b1;
                end
                6'b001000, 6'b001001: begin // JR, JALR
                    inst_d.is_br_op = 1'b1;
                    inst_d.use_src1 = 1'b1;
                    inst_d.use_src2 = 1'b0;
                    inst_d.src1     = rs;
                    inst_d.dest     = rd;
                    inst_d.rf_we    = func[0];
                end
                6'b011000, 6'b011001, // MULT, MULTU
                6'b011010, 6'b011011 : begin // DIV, DIVU
                    inst_d.is_mul_div_op = 1'b1;
                    inst_d.use_src1 = 1'b1;
                    inst_d.use_src2 = 1'b1;
                    inst_d.src1   = rs;
                    inst_d.src2   = rt;
                    inst_d.dest   = 6'b00000;
                    inst_d.rf_we  = 1'b1;
                end
                6'b110000, 6'b110001, 6'b110010, 6'b110011, // TGE, TGEU, TLT, TLTU
                6'b110100, 6'b110110, // TEQ, TNE
                6'b001100, 6'b001101: begin // SYSCALL, BREAK
                    inst_d.is_sp_op = 1'b1;
                    inst_d.use_src1 = 1'b1;
                    inst_d.use_src2 = 1'b1;
                    inst_d.src1   = rs;
                    inst_d.src2   = rt;
                end
            endcase
            unique case(func)
                /* shift */
                6'b000000: inst_d.operation = OP_SLL;
                6'b000010: inst_d.operation = OP_SRL;
                6'b000011: inst_d.operation = OP_SRA;
                6'b000100: inst_d.operation = OP_SLLV;
                6'b000110: inst_d.operation = OP_SRLV;
                6'b000111: inst_d.operation = OP_SRAV;
                /* jump */
                6'b001000: inst_d.operation = OP_JR;
                6'b001001: inst_d.operation = OP_JALR;
                /* conditional move */
                6'b001010: inst_d.operation = OP_MOVZ;
                6'b001011: inst_d.operation = OP_MOVN;
                /* syscall and breakpoint */
                6'b001100: inst_d.operation = OP_SYSCALL;
                6'b001101: inst_d.operation = OP_BREAK;
                /* HI/LO move */
                6'b010000: inst_d.operation = OP_MFHI;
                6'b010001: inst_d.operation = OP_MTHI;
                6'b010010: inst_d.operation = OP_MFLO;
                6'b010011: inst_d.operation = OP_MTLO;
                /* multiplication and division */
                6'b011000: inst_d.operation = OP_MULT;
                6'b011001: inst_d.operation = OP_MULTU;
                6'b011010: inst_d.operation = OP_DIV;
                6'b011011: inst_d.operation = OP_DIVU;
                /* addition and subtraction */
                6'b100000: inst_d.operation = OP_ADD;
                6'b100001: inst_d.operation = OP_ADDU;
                6'b100010: inst_d.operation = OP_SUB;
                6'b100011: inst_d.operation = OP_SUBU;
                /* bitwise logical */
                6'b100100: inst_d.operation = OP_AND;
                6'b100101: inst_d.operation = OP_OR;
                6'b100110: inst_d.operation = OP_XOR;
                6'b100111: inst_d.operation = OP_NOR;
                /* set on less than */
                6'b101010: inst_d.operation = OP_SLT;
                6'b101011: inst_d.operation = OP_SLTU;
                /* trap */
                6'b110000: inst_d.operation = OP_TGE;
                6'b110001: inst_d.operation = OP_TGEU;
                6'b110010: inst_d.operation = OP_TLT;
                6'b110011: inst_d.operation = OP_TLTU;
                6'b110100: inst_d.operation = OP_TEQ;
                6'b110110: inst_d.operation = OP_TNE;
                /* invalid */
                default:   inst_d.operation = OP_INVALID;
            endcase
            end
        endcase
    end
end

endmodule

