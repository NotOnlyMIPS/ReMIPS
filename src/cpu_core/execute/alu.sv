`include "../cpu.svh"

module alu(
    input clk,
    input reset,

    input flush,

    input  logic issue_to_alu_valid,
    // output logic alu_allowin,

    // input  logic cs_allowin,
    output logic alu_to_valid,

    input  issue_to_execute_bus_t issue_inst,

    output bypass_bus_t alu_bypass_bus,
    
    output execute_to_commit_bus_t alu_to_commit_bus

);

// control code
logic alu_valid;
logic [3:0] rob_entry_num;

decoded_inst_t inst;
reg_addr_t phy_dest;
uint32_t src1_value, src2_value;
exception_t exception;

// assign alu_allowin  = cs_allowin || !alu_valid;
assign alu_to_valid = alu_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        alu_valid  <= 1'b0;
        inst       <= 'b0;
        phy_dest   <= 'b0;
        src1_value <= 'b0;
        src2_value <= 'b0;
        // old_value  <= 'b0;
        rob_entry_num <= 'b0;
    end
    else begin
        alu_valid  <= issue_to_alu_valid;
        inst       <= issue_inst.inst;
        phy_dest   <= issue_inst.phy_dest;
        src1_value <= issue_inst.src1_value;
        src2_value <= issue_inst.src2_value;
        // old_value  <= issue_inst.old_value;
        rob_entry_num <= issue_inst.rob_entry_num;
    end
end

logic op_add;   //符号加法操作 (溢出检测)
logic op_addu;  //无符号加法操作
logic op_sub;   //符号减法操作 (溢出检测)
logic op_subu;  //无符号加法操作
logic op_slt;   //有符号比较，小于置位
logic op_sltu;  //无符号比较，小于置位
logic op_and;   //按位与
logic op_nor;   //按位或非
logic op_or;    //按位或
logic op_xor;   //按位异或
logic op_sll;   //逻辑左移
logic op_srl;   //逻辑右移
logic op_sra;   //算术右移
logic op_lui;   //立即数置于高半部分

logic op_clz;
logic op_clo;

// logic op_movn;
// logic op_movz;

logic op_mfhi;
logic op_mflo;
logic op_mtlo;
logic op_mthi;

uint32_t alu_src1;
uint32_t alu_src2;

uint32_t alu_result;

assign alu_src1 = inst.src1_is_sa  ? {27'b0, inst.imm[10:6]} :
                                     src1_value;
assign alu_src2 = inst.src2_is_simm ? {{16{inst.imm[15]}}, inst.imm[15:0]} :
                  inst.src2_is_zimm ? {16'h0, inst.imm[15:0]}              :
                                      src2_value;

assign op_add  = inst.operation == OP_ADD;
assign op_addu = inst.operation == OP_ADDU;
assign op_sub  = inst.operation == OP_SUB;
assign op_subu = inst.operation == OP_SUBU;
assign op_slt  = inst.operation == OP_SLT;
assign op_sltu = inst.operation == OP_SLTU;
assign op_and  = inst.operation == OP_AND;
assign op_nor  = inst.operation == OP_NOR;
assign op_or   = inst.operation == OP_OR;
assign op_xor  = inst.operation == OP_XOR;
assign op_sll  = inst.operation == OP_SLL;
assign op_srl  = inst.operation == OP_SRL;
assign op_sra  = inst.operation == OP_SRA;
assign op_lui  = inst.operation == OP_LUI;

assign op_clz  = inst.operation == OP_CLZ;
assign op_clo  = inst.operation == OP_CLO;

// assign op_movn = inst.operation == OP_MOVN;
// assign op_movz = inst.operation == OP_MOVZ;

assign op_mfhi = inst.operation == OP_MFHI;
assign op_mflo = inst.operation == OP_MFLO;
assign op_mtlo = inst.operation == OP_MTLO;
assign op_mthi = inst.operation == OP_MTHI;

uint32_t add_sub_result;
uint32_t slt_result;
uint32_t sltu_result;
uint32_t and_result;
uint32_t nor_result;
uint32_t or_result;
uint32_t xor_result;
uint32_t lui_result;
uint32_t sll_result;
uint64_t sr64_result;
uint32_t sr_result;
uint32_t clo_result;
uint32_t clz_result;
// uint32_t cond_move_result;

// 32-bit adder
wire [32:0] adder_a;
wire [32:0] adder_b;
wire        adder_cin;
wire [32:0] adder_result;
wire        adder_cout;

assign adder_a   = {alu_src1[31], alu_src1};
assign adder_b   = (op_sub | op_subu | op_slt | op_sltu) ? ~({alu_src2[31], alu_src2}) : {alu_src2[31], alu_src2};
assign adder_cin = (op_sub | op_subu | op_slt | op_sltu) ? 1'b1                        : 1'b0                    ;
assign {adder_cout, adder_result} = adder_a + adder_b + adder_cin;

//溢出
assign alu_ex = (op_add | op_sub ) & (adder_result[32] ^ adder_result[31]);

// ADD, SUB result
assign add_sub_result = adder_result[31:0];

// SLT result
assign slt_result[31:1] = 31'b0;
assign slt_result[0]    = (alu_src1[31] & ~alu_src2[31])
                        | ((alu_src1[31] ~^ alu_src2[31]) & adder_result[31]);

// SLTU result
assign sltu_result[31:1] = 31'b0;
assign sltu_result[0]    = ~adder_cout;

// bitwise operation
assign and_result = alu_src1 & alu_src2;
assign or_result  = alu_src1 | alu_src2;
assign nor_result = ~or_result;
assign xor_result = alu_src1 ^ alu_src2;
assign lui_result = {inst.imm, 16'b0};

// SLL result
assign sll_result = alu_src2 << alu_src1[4:0];

// SRL, SRA result
assign sr64_result = {{32{op_sra & alu_src2[31]}}, alu_src2[31:0]} >> alu_src1[4:0];

assign sr_result   = sr64_result[31:0]; //最高有效位由30改为31

// CLO, CLZ result

count_bit count_clz(
    .bit_sel (1'b0),
    .val(src1_value),
    .count(clz_result)
);

count_bit count_clo(
    .bit_sel (1'b1),
    .val(src1_value),
    .count(clo_result)
);

// conditional move
// always_comb begin
//     cond_move_result = old_value;
//     if(op_movz && src2_value == 0 
//     || op_movn && src2_value != 0)
//         cond_move_result = src1_value;
// end

// final result mux
assign alu_result = ({32{op_add|op_addu|op_sub|op_subu  }} & add_sub_result)
                  | ({32{op_slt                         }} & slt_result)
                  | ({32{op_sltu                        }} & sltu_result)
                  | ({32{op_and                         }} & and_result)
                  | ({32{op_nor                         }} & nor_result)
                  | ({32{op_or                          }} & or_result)
                  | ({32{op_xor                         }} & xor_result)
                  | ({32{op_lui                         }} & lui_result)
                  | ({32{op_sll                         }} & sll_result)
                  | ({32{op_srl|op_sra                  }} & sr_result)
                  | ({32{op_clz                         }} & clz_result)
                  | ({32{op_clo                         }} & clo_result)
                //   | ({32{op_movn|op_movz                }} & cond_move_result)
                  | ({32{op_mfhi|op_mflo|op_mthi|op_mtlo}} & src1_value);

// exception
always_comb begin
    exception = '0;
    if(alu_valid && alu_ex) begin
        exception.ex      = 1'b1;
        exception.exccode = `EXCCODE_OV;
    end
end

// bypass
assign alu_bypass_bus = {{4{inst.rf_we&alu_valid}}, phy_dest, alu_result};

assign alu_to_commit_bus.valid = alu_valid;
assign alu_to_commit_bus.rob_entry_num = rob_entry_num;

assign alu_to_commit_bus.rf_we    = {4{inst.rf_we}};
assign alu_to_commit_bus.phy_dest = phy_dest;
assign alu_to_commit_bus.result   = alu_result;

assign alu_to_commit_bus.is_store_op = 1'b0;

assign alu_to_commit_bus.verify_result = 'b0;

assign alu_to_commit_bus.exception = exception;

endmodule
