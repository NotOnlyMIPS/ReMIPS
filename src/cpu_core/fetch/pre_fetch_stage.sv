`include "../cpu.svh"

module pre_fetch_stage (
    input  clk,
    input  reset,

    input  logic       flush,
    input  flush_src_t flush_src,
    input  virt_t      epc,

    input  logic fs_allowin,
    output logic pfs_to_valid,
    
    // BPU
    input  logic pfs_bd,
    input  bpu_to_prefetch_bus_t bpu_predict_result,

    // ICache
    output logic icache_req,
    output logic icache_addr,
    input  logic icache_addr_ok,

    output prefetch_to_fetch_bus_t prefetch_to_fetch_bus1,
    output prefetch_to_fetch_bus_t prefetch_to_fetch_bus2

);

logic pfs_valid;
logic pfs_readygo;
logic pfs_allowin;

virt_t pc, seq_pc;
virt_t next_pc;

assign icache_req  = pfs_valid && fs_allowin;
assign icache_addr = {next_pc[31:3], 3'b0};

assign pfs_readygo  = icache_req && icache_addr_ok;
assign pfs_to_valid = pfs_readygo && pfs_valid;

assign next_pc = pfs_bd                           ? seq_pc  :
                 bpu_predict_result.valid         ? 
                (bpu_predict_result.br_taken      ? bpu_predict_result.br_target 
                                                  : seq_pc) :
                 bpu_predict_result.is_correction ? bpu_predict_result.correction_target
                                                  : seq_pc;

always_ff @(posedge clk) begin
    if(reset) begin
        pfs_valid <= 0;
    end
    else if(pfs_allowin) begin
        pfs_valid <= ~reset;
    end

    if(reset) begin
        pc     <= 32'hbfc00380;
        seq_pc <= 32'hbfc00380;
    end
    else if(pfs_to_valid && fs_allowin) begin
        pc     <= next_pc;
        seq_pc <= next_pc[2] ? next_pc+4 : next_pc+8;
    end

end

assign prefetch_to_fetch_bus1.valid     = pfs_to_valid && !next_pc[2];
assign prefetch_to_fetch_bus1.pc        = {next_pc[31:3], 3'b000};
assign prefetch_to_fetch_bus1.bpu_entry = bpu_predict_result.entry;
assign prefetch_to_fetch_bus1.exception = '0;

assign prefetch_to_fetch_bus2.valid     = pfs_to_valid;
assign prefetch_to_fetch_bus2.pc        = {next_pc[31:3], 3'b100};
assign prefetch_to_fetch_bus2.bpu_entry = bpu_predict_result.entry;
assign prefetch_to_fetch_bus2.exception = '0;


endmodule
