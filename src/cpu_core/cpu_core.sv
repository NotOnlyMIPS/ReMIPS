`include "cpu.svh"

module cpu_core(
    input logic clk,
    input logic reset,
    // ex
    input logic [5:0] ext_int,

    // Debug
`ifdef GOLDEN_TRACE
    output debug_bus_t debug_bus1,
    output debug_bus_t debug_bus2,
`endif

    // ICache
    CPU_ICache_Interface.CPU IBus,
    // DCache
    CPU_DCache_Interface.CPU DBus

);

// reset
// logic prefetch_reset, fetch_reset, decode_reset, issue_reset, execute_reset, commit_reset;
logic bpu_reset, cp0_reset, mmu_reset;

// always_ff @(posedge clk) begin
//     prefetch_reset <= reset;
//     fetch_reset    <= reset;
//     decode_reset   <= reset;
//     issue_reset    <= reset;
//     execute_reset  <= reset;
//     commit_reset   <= reset;
//     bpu_reset      <= reset;
//     cp0_reset      <= reset;
//     mmu_reset      <= reset;
// end

logic       flush;
flush_src_t flush_src;
virt_t      epc;

// pipeline
prefetch_to_fetch_bus_t prefetch_to_fetch_bus1, prefetch_to_fetch_bus2;
fetch_to_decode_bus_t   fetch_to_decode_bus1,   fetch_to_decode_bus2;
decode_to_issue_bus_t   decode_to_issue_bus1,   decode_to_issue_bus2;
rob_entry_t             map_to_rob_bus1,        map_to_rob_bus2;
issue_to_execute_bus_t  issue_to_execute_bus1,  issue_to_execute_bus2;
execute_to_commit_bus_t execute_to_commit_bus1, execute_to_commit_bus2;

logic pfs_to_valid, fs_to_valid, ds_to_is_valid, ds_to_rob_valid;
logic fs_allowin, ds_allowin, is_allowin, cs_allowin;
// logic alu1_allowin, bru_allowin, mul_div_allowin, alu2_allowin, agu_allowin, sp_allowin;
logic mul_div_allowin, agu_allowin;

// BPU
bpu_to_prefetch_bus_t bpu_predict_result;
fetch_to_bpu_bus_t    fetch_to_bpu_bus;
verify_result_t       bpu_verify_result;

// store
logic select_store_ready;

// writeback
writeback_to_rf_bus_t writeback_to_rf_bus1, writeback_to_rf_bus2;

// commit
// exception_t commit_store_ex;
logic       commit_store1_valid;
logic       commit_store2_valid;
logic       rob_empty;
logic [3:0] rob_tail_o;
commit_to_rat_bus_t   commit_to_rat_bus1, commit_to_rat_bus2;

// busy table
select_to_busy_table_bus_t   select_to_busy_table_bus1, select_to_busy_table_bus2;
execute_to_busytable_bus_t   execute_to_busytable_bus1, execute_to_busytable_bus2;
// writeback_to_busytable_bus_t writeback_to_busytable_bus1, writeback_to_busytable_bus2;

// bypass
bypass_bus_t       alu1_bypass_bus;
bypass_bus_t       alu2_bypass_bus;
bypass_bus_t        bru_bypass_bus;
bypass_bus_t     lookup_bypass_bus;
bypass_bus_t       load_bypass_bus;

`ifdef GOLDEN_TRACE
commit_to_debug_bus_t commit_to_debug_bus1, commit_to_debug_bus2;
`endif

// tlb/mmu
logic[3:0]       tlb_op;

logic            data_valid;
logic            kseg0_uncached;
virt_t           inst_vaddr;
virt_t           data_vaddr;
virt_t           data_vaddr2;
mmu_result_t     inst_result;
mmu_result_t     data_result;
logic            load_op;
logic            store_op;
exception_t      inst_tlb_ex;
exception_t      data_tlb_ex;
exception_t      data_tlb_ex2;
virt_t           tlb_cache_pc;
tlb_index_t      tlbrw_index;
logic            tlbrw_we;
tlb_entry_t      tlbrw_wdata;
tlb_entry_t      tlbrw_rdata;
uint32_t         tlbp_entry_hi;
uint32_t         tlbp_index;
logic[7:0]       tlb_asid;

/* IBus */
logic            icache_req;
logic            icache_addr_ok;
logic            icache_data_ok;
virt_t           icache_addr;
uint32_t         icache_rdata1;
uint32_t         icache_rdata2;

logic         cache_op_valid;
logic         cache_valid;
logic [19:0]  cache_tag;
logic         cache_way;
logic [ 7:0]  cache_index;
logic         cache_dirty;

CacheCodeType cache_op;
virt_t        cache_vaddr;
phys_t        cache_paddr;

assign IBus.req     = icache_req;
assign IBus.iscache = ~inst_result.uncached;
assign IBus.offset  = icache_addr[3:0];
assign IBus.index   = icache_addr[11:4];
assign IBus.tag     = inst_result.phy_addr[31:12];

assign icache_addr_ok = IBus.addr_ok;
assign icache_data_ok = IBus.data_ok;
assign icache_rdata1  = IBus.rdata[31:0];
assign icache_rdata2  = IBus.rdata[63:32];

assign IBus.cache_type = {cache_op, cache_op_valid, 1'b0};
assign IBus.cache_valid = cache_valid;
assign IBus.cache_tag   = cache_tag;
assign IBus.cache_index = cache_index;

assign IBus.tlb_ex = inst_tlb_ex.ex;

/* DBus */
logic       dcache_req;
logic       dcache_wr;
logic [3:0] dcache_wstrb;
logic [2:0] dcache_size;
uint32_t    dcache_addr;
uint32_t    dcache_wdata;
logic       dcache_addr_ok;
logic       dcache_data_ok;
uint32_t    dcache_rdata;

assign DBus.req     = dcache_req;
assign DBus.iscache = ~data_result.uncached;
assign DBus.wr      = dcache_wr;
assign DBus.wstrb   = dcache_wstrb;
assign DBus.size    = dcache_size;
assign DBus.offset  = dcache_addr[3:0];
assign DBus.index   = dcache_addr[11:4];
assign DBus.tag     = data_result.phy_addr[31:12];
assign DBus.wdata   = dcache_wdata;

assign dcache_addr_ok = DBus.addr_ok;
assign dcache_data_ok = DBus.data_ok;
assign dcache_rdata   = DBus.rdata;

assign DBus.cache_type = {cache_op, 1'b0, cache_op != Cache_Code_EMPTY};
assign DBus.cache_valid = cache_valid;
assign DBus.cache_tag   = cache_tag;
assign DBus.cache_way   = cache_way;
assign DBus.cache_dirty = cache_dirty;
assign DBus.cache_index = cache_index;

assign DBus.tlb_ex = data_tlb_ex.ex;

// CP0
logic [1:0] cp0_sw;
logic [5:0] cp0_hw;

logic       cp0_we;
logic [7:0] cp0_addr;
uint32_t    cp0_wdata;
uint32_t    cp0_rdata;

exception_t exception;

// BPU
BPU u_BPU (
    .clk  ,
    .reset,
    // .reset(bpu_reset),

    .flush,
    .flush_src,

    .bpu_verify_result,
    .fetch_to_bpu_bus,
    .bpu_predict_result
);

// PreFetch stage
pre_fetch_stage u_prefetch_stage (
    .clk  ,
    .reset,
    // .reset(prefetch_reset),

    .flush,
    .flush_src,
    .epc,

    // pipeline control
    .fs_allowin,
    .pfs_to_valid,

    // branch prediction
    .bpu_predict_result,

    // ICache
    .icache_req,
    .icache_addr,
    .icache_addr_ok,

    // tlb/mmu
    .inst_vaddr,

    // to IF
    .prefetch_to_fetch_bus1,
    .prefetch_to_fetch_bus2

);

// Fetch stage
fetch_stage u_fetch_stage (
    .clk  ,
    .reset,
    // .reset(fetch_reset),
    .flush,

    // pipeline control
    .pfs_to_valid,
    .fs_allowin,
    .ds_allowin,
    .fs_to_valid,
    
    // from pre_IF
    .prefetch_to_fetch_bus1,
    .prefetch_to_fetch_bus2,

    // ICache
    .icache_addr_ok,
    .icache_data_ok,
    .icache_rdata1,
    .icache_rdata2,

    // BPU
    .br_taken (bpu_predict_result.br_taken),
    .br_target(bpu_predict_result.br_target),
    .bpu_entry(bpu_predict_result.entry),
    .fetch_to_bpu_bus,

    // tlb exception
    .inst_tlb_ex     (inst_tlb_ex.ex),
    .inst_tlb_exccode(inst_tlb_ex.exccode),
    .inst_tlb_refill (inst_tlb_ex.tlb_refill),

    // to ID
    .fetch_to_decode_bus1,
    .fetch_to_decode_bus2

);

// Decode stage
decode_stage u_decode_stage (
    .clk,
    .reset,
    // .reset(decode_reset),
    
    .flush,

    // exception
    .cp0_sw,
    .cp0_hw,
    
    .fs_to_valid,
    .ds_allowin,
    
    .is_allowin,
    .cs_allowin,
    .ds_to_is_valid,
    .ds_to_rob_valid,
    
    .fetch_to_decode_bus1,
    .fetch_to_decode_bus2,
    
    // busy table
    .select_to_busy_table_bus1,
    .select_to_busy_table_bus2,
    
    .execute_to_busytable_bus1,
    .execute_to_busytable_bus2,
    
    // rat
    .commit_to_rat_bus1,
    .commit_to_rat_bus2,
    
    // dispatch
    .decode_to_issue_bus1,
    .decode_to_issue_bus2,
    
    .select_store_ready,

    .rob_empty,
    .rob_tail_o,
    .map_to_rob_bus1,
    .map_to_rob_bus2
);

// Issue stage
issue_stage u_issue_stage (
    .clk,
    .reset,
    // .reset(issue_reset),
    
    .flush,
    
    .ds_to_is_valid,
    .is_allowin,
    
    // .alu1_allowin,
    // .alu2_allowin
    // .bru_allowin,
    .mul_div_allowin,
    .agu_allowin,
    // .sp_allowin,
    
    // bypass
    .alu1_bypass_bus,
    .alu2_bypass_bus,
    .bru_bypass_bus,
    .lookup_bypass_bus,
    .load_bypass_bus,
    
    // store num
    .select_store_ready,

    // wakeup
    .execute_to_busytable_bus1,
    .execute_to_busytable_bus2,

    // select
    .select_to_busy_table_bus1,
    .select_to_busy_table_bus2,
    
    // writeback
    .writeback_to_rf_bus1,
    .writeback_to_rf_bus2,
    
    .decode_to_issue_bus1,
    .decode_to_issue_bus2,
    
    .issue_to_execute_bus1,
    .issue_to_execute_bus2

);

// Execute stage
execute_stage u_execute_stage (
    .clk,
    .reset,
    // .reset(execute_reset),
    
    .flush,
    
    // .alu1_allowin,
    // .alu2_allowin,
    .mul_div_allowin,
    // .bru_allowin,
    .agu_allowin,
    // .sp_allowin,

    // mmu
    .data_valid,
    .data_vaddr,
    .data_paddr(data_result.phy_addr),
    .data_tlb_ex,

    .data_vaddr2,
    .data_tlb_ex2,

    // DCache
    .dcache_req,
    .dcache_wr,
    .dcache_wstrb,
    .dcache_size,
    .dcache_addr,
    .dcache_wdata,
    .dcache_addr_ok,
    .dcache_data_ok,
    .dcache_rdata,
    
    // bypass
    .alu1_bypass_bus,
    .alu2_bypass_bus,
    .bru_bypass_bus,
    .lookup_bypass_bus,
    .load_bypass_bus,
    
    .issue_to_execute_bus1,
    .issue_to_execute_bus2,

    // busy table
    .execute_to_busytable_bus1,
    .execute_to_busytable_bus2,

    // CP0
    .cp0_we,
    .cp0_addr,
    .cp0_wdata,
    .cp0_rdata,

    // TLB op
    .tlb_op,

    // Cache op
    .cache_op_valid,
    .cache_op,
    .cache_vaddr,
    .cache_paddr,
    
    // commit store
    .commit_store1_valid,
    .commit_store2_valid,
    // .commit_store_ready,
    // .commit_store_ex,
    
    // commit
    .execute_to_commit_bus1,
    .execute_to_commit_bus2

);

// Commit stage
commit_stage u_commit_stage (
    .clk,
    .reset,
    // .reset(commit_reset),
    
    .flush,
    .flush_src,

`ifdef GOLDEN_TRACE
    .commit_to_debug_bus1,
    .commit_to_debug_bus2,
`endif
    
    .ds_to_rob_valid,
    .cs_allowin,
    .rob_empty,
    
    .map_to_rob_bus1,
    .map_to_rob_bus2,
    .rob_tail_o,
    
    .execute_to_commit_bus1,
    .execute_to_commit_bus2,

    // .commit_store_ready,
    .commit_store1_valid,
    .commit_store2_valid,
    // .commit_store_ex,
    
    // .writeback_to_busytable_bus1,
    // .writeback_to_busytable_bus2,
    
    .commit_to_rat_bus1,
    .commit_to_rat_bus2,
    
    .bpu_verify_result,
    
    .writeback_to_rf_bus1,
    .writeback_to_rf_bus2,

    .exception

);

// MMU
mmu u_mmu (
    .clk,
    .reset,
    // .reset(mmu_reset),

    .tlb_asid,
    .kseg0_uncached,
    .is_user_mode('0),
    .inst_valid(icache_req),
    .inst_vaddr,
    .data_valid,
    .data_vaddr,
    .data_vaddr2,
    
    .inst_result,
    .data_result,
    
    // for TLBR/TLBWI/TLBWR
    .tlbrw_index,
    .tlbrw_we,
    .tlbrw_wdata,
    .tlbrw_rdata,
    
    .tlbp_entry_hi,
    .tlbp_index,
    
    .load_op  (dcache_req && !dcache_wr),
    .store_op (dcache_req &&  dcache_wr),
    .inst_tlb_ex,
    .data_tlb_ex,
    .data_tlb_ex2

);

// CP0
reg_cp0 u_reg_cp0 (
    .clk,
    .reset,
    // .reset(cp0_reset),

    // interrupt
    .ext_int,
    .cp0_hw,
    .cp0_sw,

    // TLB
    .kseg0_uncached,

    .tlb_op,

    .tlb_asid,
    .tlbrw_index,
    .tlbrw_we,
    .tlbrw_wdata,
    .tlbrw_rdata,
    .tlbp_entry_hi,
    .tlbp_index,

    // Cache
    .cache_op,
    .cache_vaddr,
    .cache_paddr,

    .cache_valid,
    .cache_tag,
    .cache_dirty,
    .cache_index,
    .cache_way,

    // Exception
    .cp0_we,
    .cp0_addr,
    .cp0_wdata,
    .cp0_rdata,

    .flush_src,
    .exception,

    .epc

);

`ifdef GOLDEN_TRACE

test_write u_test_write (

    .clk,
    .reset,
    // .reset(commit_reset),

    .flush,

    .ds_to_rob_valid,
    .cs_allowin,
    .rob_tail_o,
    .map_to_rob_bus1,
    .map_to_rob_bus2,

    .execute_to_commit_bus1,
    .execute_to_commit_bus2,

    .commit_to_debug_bus1,
    .commit_to_debug_bus2,

    .debug_bus1,
    .debug_bus2
);


`endif

endmodule
