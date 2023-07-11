`include "../cpu.svh"

module pre_fetch_stage (
    input clk,
    input reset,
    input bpu_to_prefetch_t bpu_predict_result,
    output pre_fetch_to_icache_t pre_fetch_to_icache,
    output pre_fetch_to_decode_t pre_fetch_to_decode
);

uint32_t pc;
uint32_t nxt_pc;

always_ff (posedge clk, posedge reset) begin
    if(reset) begin
        pc <= 0;
    end else begin
        pc <= nxt_pc;
    end

    if (reset) begin
        nxt_pc <= 0;
    end else if(bpu_predict_result.br_taken) begin
        nxt_pc <= bpu_predict_result.nxt_pc;
    end else begin
        nxt_pc <= pc[2] ? pc + 4 : pc + 8;
    end
end



endmodule
