`include "../cpu.svh"

module inst_decoder(
    input   logic           valid,
    input   uint32_t        inst,
    output  operation_t     operation

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

always_comb begin
    operation = OP_INVALID;
    if(valid) begin
        unique casez(op) 
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
        endcase
    end
end

endmodule

