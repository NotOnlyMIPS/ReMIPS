`include "../cpu.svh"

module pre_fetch_stage (
    input  clk,
    input  reset,

    input  logic flush,
    // input  flush_src_t flush_src,
    // input  virt_t      epc,

    input  logic fs_allowin,
    output logic pfs_to_valid,
    
    // BPU
    input  bpu_to_prefetch_bus_t bpu_predict_result,

    // ICache
    output logic  icache_req,
    output virt_t icache_addr,
    input  logic  icache_addr_ok,

    // mmu
    output virt_t inst_vaddr,

    output prefetch_to_fetch_bus_t prefetch_to_fetch_bus1,
    output prefetch_to_fetch_bus_t prefetch_to_fetch_bus2

);

typedef enum logic [1:0] { 
    Seq_PC,
    Branch_Delay,
    Branch_Target,
    Correction_Target
} next_pc_src_t;

logic pfs_valid;
logic pfs_readygo;
logic pfs_allowin;

virt_t pc, seq_pc;
virt_t next_pc;
virt_t branch_target, correction_target;
next_pc_src_t next_pc_src;

assign icache_req  = pfs_valid && fs_allowin && !flush;
assign icache_addr = {next_pc[31:3], 3'b0};
assign inst_vaddr  = icache_addr;

assign pfs_readygo  = icache_req && icache_addr_ok;
assign pfs_allowin  = !pfs_valid || pfs_readygo && fs_allowin;
assign pfs_to_valid = pfs_readygo && pfs_valid;

assign next_pc = {32{next_pc_src == Seq_PC           }} & seq_pc           |
                 {32{next_pc_src == Branch_Delay     }} & seq_pc           |
                 {32{next_pc_src == Branch_Target    }} & branch_target    |
                 {32{next_pc_src == Correction_Target}} & correction_target;

always_ff @(posedge clk) begin
    if(reset) begin
        pfs_valid <= 1'b0;
    end
    else if(pfs_allowin) begin
        pfs_valid <= ~reset;
    end

    if(reset) begin
        pc     <= 32'hbfbf_fff8;
        seq_pc <= 32'hbfc0_0000;
    end
    else if(pfs_to_valid && fs_allowin) begin
        pc     <= next_pc;
        seq_pc <= next_pc[2] ? next_pc+4 : next_pc+8;
    end

    if(reset) begin
        next_pc_src <= Seq_PC;
    end
    else begin
        case (next_pc_src)
            Seq_PC: begin
                if(bpu_predict_result.is_correction) begin
                    next_pc_src <= Correction_Target;
                end
                else if(bpu_predict_result.valid && bpu_predict_result.br_taken) begin
                    next_pc_src <= icache_addr_ok ? Branch_Target : Branch_Delay;
                end
                else begin
                    next_pc_src <= Seq_PC;
                end
            end
            Branch_Delay     : next_pc_src <= Branch_Target;
            Branch_Target    : next_pc_src <= icache_addr_ok ? Seq_PC : Branch_Target;
            Correction_Target: next_pc_src <= icache_addr_ok ? Seq_PC : Correction_Target;
            default          : next_pc_src <= Seq_PC;
        endcase
    end

    if(reset) begin
        branch_target     <= 32'h0;
        correction_target <= 32'h0;
    end
    else begin
        if(bpu_predict_result.valid && bpu_predict_result.br_taken)
            branch_target     <= bpu_predict_result.br_target;
        if(bpu_predict_result.is_correction)
            correction_target <= bpu_predict_result.correction_target;
    end

end

assign prefetch_to_fetch_bus1.valid     = pfs_to_valid && !next_pc[2];
assign prefetch_to_fetch_bus1.pc        = {next_pc[31:3], 3'b000};
assign prefetch_to_fetch_bus1.exception      = '0;

assign prefetch_to_fetch_bus2.valid     = pfs_to_valid;
assign prefetch_to_fetch_bus2.pc        = {next_pc[31:3], 3'b100};
assign prefetch_to_fetch_bus2.exception      = '0;


endmodule
