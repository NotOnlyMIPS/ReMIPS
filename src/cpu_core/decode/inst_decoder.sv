`include "../cpu.svh"

module inst_decoder(
    input   logic           valid,
    input   uint32_t        inst,
    output  operation_t     operation

);

logic [ 5:0] op, func;
logic [ 4:0] rs, rt, rd;
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

always_comb begin
    operation = OP_INVALID;
    if(valid) begin
        unique case(op) 
            6'b000000: begin // SPECIAL
            unique case(func)
                /* shift */
                6'b000000: operation = OP_SLL;
                6'b000010: operation = OP_SRL;
                6'b000011: operation = OP_SRA;
                6'b000100: operation = OP_SLLV;
                6'b000110: operation = OP_SRLV;
                6'b000111: operation = OP_SRAV;
                /* jump */
                6'b001000: operation = OP_JR;
                6'b001001: operation = OP_JALR;
                /* conditional move */
                6'b001010: operation = OP_MOVZ;
                6'b001011: operation = OP_MOVN;
                /* syscall and breakpoint */
                6'b001100: operation = OP_SYSCALL;
                6'b001101: operation = OP_BREAK;
                /* HI/LO move */
                6'b010000: operation = OP_MFHI;
                6'b010001: operation = OP_MTHI;
                6'b010010: operation = OP_MFLO;
                6'b010011: operation = OP_MTLO;
                /* multiplication and division */
                6'b011000: operation = OP_MULT;
                6'b011001: operation = OP_MULTU;
                6'b011010: operation = OP_DIV;
                6'b011011: operation = OP_DIVU;
                /* addition and subtraction */
                6'b100000: operation = OP_ADD;
                6'b100001: operation = OP_ADDU;
                6'b100010: operation = OP_SUB;
                6'b100011: operation = OP_SUBU;
                /* bitwise logical */
                6'b100100: operation = OP_AND;
                6'b100101: operation = OP_OR;
                6'b100110: operation = OP_XOR;
                6'b100111: operation = OP_NOR;
                /* set on less than */
                6'b101010: operation = OP_SLT;
                6'b101011: operation = OP_SLTU;
                /* trap */
                6'b110000: operation = OP_TGE;
                6'b110001: operation = OP_TGEU;
                6'b110010: operation = OP_TLT;
                6'b110011: operation = OP_TLTU;
                6'b110100: operation = OP_TEQ;
                6'b110110: operation = OP_TNE;
                /* invalid */
                default:   operation = OP_INVALID;
            endcase
            end
            6'b000001: begin // REGIMM
            unique case(rt)
                5'b00000: operation = OP_BLTZ;
                5'b00001: operation = OP_BGEZ;
                // 5'b00010: operation = OP_BLTZL;
                // 5'b00011: operation = OP_BGEZL;
                5'b01000: operation = OP_TGEI;
                5'b01001: operation = OP_TGEIU;
                5'b01010: operation = OP_TLTI;
                5'b01011: operation = OP_TLTIU;
                5'b01100: operation = OP_TEQI;
                5'b01110: operation = OP_TNEI;
                5'b10000: operation = OP_BLTZAL;
                5'b10001: operation = OP_BGEZAL;
                // 5'b10010: operation = OP_BLTZALL;
                // 5'b10011: operation = OP_BGEZALL;
                default:  operation = OP_INVALID;
            endcase
            end
            /* Jump */
            6'b000010: operation = OP_J;
            6'b000011: operation = OP_JAL;
            /* Branch */
            6'b000100: operation = OP_BEQ;
            6'b000101: operation = OP_BNE;
            6'b000110: operation = OP_BLEZ;
            6'b000111: operation = OP_BGTZ;
            /* Arithmetic */
            6'b001000: operation = OP_ADDI;
            6'b001001: operation = OP_ADDIU;
            6'b001010: operation = OP_SLTI;
            6'b001011: operation = OP_SLTIU;
            6'b001100: operation = OP_ANDI;
            6'b001101: operation = OP_ORI;
            6'b001110: operation = OP_XORI;
            /* set */
            6'b001111: operation = OP_LUI;
            /* CP0 */
            6'b010000: begin
            unique casez(rs)
                5'b00000: operation = OP_MFC0;
                5'b00100: operation = OP_MTC0;
                5'b10???, 5'b11???: begin // CO
                unique case(func)
                    6'b000001: operation = OP_TLBR;
                    6'b000010: operation = OP_TLBWI;
                    6'b000110: operation = OP_TLBWR;
                    6'b001000: operation = OP_TLBP;
                    6'b011000: operation = OP_ERET;
                    default:   operation = OP_INVALID;
                endcase
                end
                default:  operation = OP_INVALID;
            endcase
            end
            /* CP1 */
            6'b010001: operation = OP_FPU;
            /* Branch Likely */
            // 6'b010100: operation = OP_BEQL;
            // 6'b010101: operation = OP_BNEL;
            // 6'b010110: operation = OP_BLEZL;
            // 6'b010111: operation = OP_BGTZL;
            6'b011100: begin // SPECIAL2
            unique case(func)
                /* multiplication and division */
                6'b000000: operation = OP_MADD;
                6'b000001: operation = OP_MADDU;
                6'b000010: operation = OP_MUL;
                6'b000100: operation = OP_MSUB;
                6'b000101: operation = OP_MSUBU;
                /* count bits */
                6'b100000: operation = OP_CLZ;
                6'b100001: operation = OP_CLO;
                /* invalid */
                default:   operation = OP_INVALID;
            endcase
            end
            /* Load */
            6'b100000: operation = OP_LB;
            6'b100001: operation = OP_LH;
            6'b100010: operation = OP_LWL;
            6'b100011: operation = OP_LW;
            6'b100100: operation = OP_LBU;
            6'b100101: operation = OP_LHU;
            6'b100110: operation = OP_LWR;
            /* Store */
            6'b101000: operation = OP_SB;
            6'b101001: operation = OP_SH;
            6'b101010: operation = OP_SWL;
            6'b101011: operation = OP_SW;
            6'b101110: operation = OP_SWR;
            /* Cache */
            6'b101111: operation = OP_CACHE;
            default:   operation = OP_INVALID;
        endcase
    end
end

endmodule

