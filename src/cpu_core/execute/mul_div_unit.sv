`include "../cpu.svh"

module mul_div_unit (
    input clk,
    input reset,

    input flush,

    input  logic issue_to_mul_div_valid,
    output logic mul_div_allowin,

    input  logic cs_allowin,
    output logic mul_div_to_valid,

    input  issue_to_execute_bus_t issue_inst1,
    input  issue_to_execute_bus_t issue_inst2,

    output execute_to_commit_bus_t mul_div_to_commit_bus1,
    output execute_to_commit_bus_t mul_div_to_commit_bus2

);

// control

logic mul_div_valid;
logic mul_div_readygo;
logic [3:0] rob_entry_num1, rob_entry_num2;

decoded_inst_t inst1, inst2;
reg_addr_t phy_dest1, phy_dest2;
uint32_t src1_value, src2_value, hi, lo;
exception_t exception;

assign mul_div_allowin  = cs_allowin && mul_div_readygo || !mul_div_valid;
assign mul_div_to_valid = mul_div_valid && mul_div_readygo;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        mul_div_valid <= 1'b0;
        inst1       <= 'b0;
        inst2       <= 'b0;
        src1_value  <= 'b0;
        src2_value  <= 'b0;
        hi          <= 'b0;
        lo          <= 'b0;
        phy_dest1   <= 'b0;
        phy_dest2   <= 'b0;
        rob_entry_num1 <= 'b0;
        rob_entry_num2 <= 'b0;
    end
    else if(mul_div_allowin) begin
        mul_div_valid <= issue_to_mul_div_valid;
        inst1         <= issue_inst1.inst;
        inst2         <= issue_inst2.inst;
        src1_value    <= issue_inst1.src1_value;
        src2_value    <= issue_inst1.src2_value;
        hi            <= issue_inst2.src1_value;
        lo            <= issue_inst2.src2_value;
        phy_dest1     <= issue_inst1.phy_dest;
        phy_dest2     <= issue_inst2.phy_dest;
        rob_entry_num1 <= issue_inst1.rob_entry_num;
        rob_entry_num2 <= issue_inst2.rob_entry_num;
    end
end

wire        op_div  ;
wire        op_divu ;
wire        op_mult ;
wire        op_multu;
wire        op_mul  ;
wire        op_madd ;
wire        op_maddu;
wire        op_msub ;
wire        op_msubu;

assign op_div   = mul_div_valid && inst1.operation == OP_DIV;
assign op_divu  = mul_div_valid && inst1.operation == OP_DIVU;
assign op_mult  = mul_div_valid && inst1.operation == OP_MULT;
assign op_multu = mul_div_valid && inst1.operation == OP_MULTU;
assign op_mul   = mul_div_valid && inst1.operation == OP_MUL;
assign op_madd  = mul_div_valid && inst1.operation == OP_MADD;
assign op_maddu = mul_div_valid && inst1.operation == OP_MADDU;
assign op_msub  = mul_div_valid && inst1.operation == OP_MSUB;
assign op_msubu = mul_div_valid && inst1.operation == OP_MSUBU;

// mul
logic        mul_op;
logic        mul_add;
logic        mul_sub;
logic        is_signed;
logic        negtive_result;
logic [1:0]  mul_count;
logic        mul_ready;
uint32_t     abs_src1, abs_src2;
uint64_t     abs_prod;
uint64_t     mul_prod;
uint64_t     mul_res;

assign mul_op    = op_mul  | op_mult | op_madd | op_msub | op_multu | op_maddu | op_msubu;
assign mul_add   = op_madd | op_maddu;
assign mul_sub   = op_msub | op_msubu;

assign is_signed = op_mul  | op_mult | op_madd | op_msub;

assign negtive_result = is_signed && (src1_value[31] ^ src2_value[31]);

assign abs_src1 = (is_signed && src1_value[31]) ? -src1_value : src1_value;
assign abs_src2 = (is_signed && src2_value[31]) ? -src2_value : src2_value;

assign mul_ready = mul_count == 3;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        mul_count <= 2'b0;
    end
    else begin
        unique case(mul_count) 
            2'd0:       mul_count <= mul_op ? 2'd1 : 2'd0;
            2'd1, 2'd2: mul_count <= mul_count + 2'd1;
            2'd3:       mul_count <= cs_allowin ? 2'd0 : 2'd3;
            default:    mul_count <= 2'd0;
        endcase
    end
end

multu u_multu (
    .CLK(clk     ),
    .A  (abs_src1),
    .B  (abs_src2),
    .P  (abs_prod)
);

assign mul_prod = negtive_result ? -abs_prod : abs_prod;
assign mul_res  = mul_add ? {hi, lo} + mul_prod :
                  mul_sub ? {hi, lo} - mul_prod :
                            mul_prod;

// div
reg  [ 1:0] div_state;

wire        dividend_tvalid  ;
wire        dividend_tvalid_u;
wire        dividend_tready  ;
wire        dividend_tready_u;
wire        divisor_tvalid   ;
wire        divisor_tvalid_u ;
wire        divisor_tready   ;
wire        divisor_tready_u ;
wire        div_res_tvalid   ;
wire        divu_res_tvalid  ;
wire [63:0] div_res          ;
wire [63:0] divu_res         ;

always @(posedge clk) begin
    if(reset || flush) begin
        div_state <= 2'b0;
    end
    else begin
        unique case(div_state)
            2'd0: div_state <= (dividend_tvalid   && dividend_tready
                             || dividend_tvalid_u && dividend_tready_u) ? 2'd1 : 2'd0;
            2'd1: div_state <= (div_res_tvalid    || divu_res_tvalid  ) ? 2'd2 : 2'd1;
            2'd2: div_state <= cs_allowin ? 2'd0 : 2'd2;
            default: div_state <= div_state;
        endcase
    end
end

assign dividend_tvalid   = (op_div  && !div_state);
assign dividend_tvalid_u = (op_divu && !div_state);
assign divisor_tvalid    = (op_div  && !div_state);
assign divisor_tvalid_u  = (op_divu && !div_state);

div u_div(
    .aclk                   (clk            ),
    .s_axis_dividend_tvalid (dividend_tvalid),
    .s_axis_dividend_tready (dividend_tready),
    .s_axis_dividend_tdata  (src1_value     ),
    .s_axis_divisor_tvalid  (divisor_tvalid ),
    .s_axis_divisor_tready  (divisor_tready ),
    .s_axis_divisor_tdata   (src2_value     ),
    .m_axis_dout_tvalid     (div_res_tvalid ),
    .m_axis_dout_tdata      (div_res        )
);

divu u_divu(
    .aclk                   (clk              ),
    .s_axis_dividend_tvalid (dividend_tvalid_u),
    .s_axis_dividend_tready (dividend_tready_u),
    .s_axis_dividend_tdata  (src1_value       ),
    .s_axis_divisor_tvalid  (divisor_tvalid_u ),
    .s_axis_divisor_tready  (divisor_tready_u ),
    .s_axis_divisor_tdata   (src2_value       ),
    .m_axis_dout_tvalid     (divu_res_tvalid  ),
    .m_axis_dout_tdata      (divu_res         )
);

assign mul_div_readygo = (op_div || op_divu) && (div_state == 2'd2) 
                        || mul_op && mul_ready;

uint64_t hi_lo_result;

assign hi_lo_result = ({64{op_div           }} & div_res )
                    | ({64{op_divu          }} & divu_res)
                    | ({64{mul_op           }} & mul_res );

// inst1
assign mul_div_to_commit_bus1.valid = mul_div_to_valid;
assign mul_div_to_commit_bus1.rob_entry_num = rob_entry_num1;

assign mul_div_to_commit_bus1.rf_we    = {4{inst1.rf_we}};
assign mul_div_to_commit_bus1.phy_dest = phy_dest1;
assign mul_div_to_commit_bus1.result   = mul_op ? hi_lo_result[63:32] : hi_lo_result[31: 0];

assign mul_div_to_commit_bus1.is_store_op   = 1'b0;

assign mul_div_to_commit_bus1.verify_result = '0;

assign mul_div_to_commit_bus1.exception     = '0;


// inst2
assign mul_div_to_commit_bus2.valid = mul_div_to_valid;
assign mul_div_to_commit_bus2.rob_entry_num = rob_entry_num2;

assign mul_div_to_commit_bus2.rf_we    = {4{inst2.rf_we}};
assign mul_div_to_commit_bus2.phy_dest = phy_dest2;
assign mul_div_to_commit_bus2.result   = mul_op ? hi_lo_result[31: 0] : hi_lo_result[63:32];

assign mul_div_to_commit_bus2.is_store_op   = 1'b0;

assign mul_div_to_commit_bus2.verify_result = '0;

assign mul_div_to_commit_bus2.exception     = '0;

endmodule
