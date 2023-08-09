`include "../cpu.svh"

module execute_stage(
    input  clk,
    input  reset,

    input  flush,

    // output logic alu1_allowin,
    // output logic alu2_allowin,
    output logic mul_div_allowin,
    // output logic bru_allowin,
    output logic agu_allowin,
    // output logic sp_allowin,

    // MMU
    output logic       data_valid,
    output virt_t      data_vaddr,
    input  phys_t      data_paddr,
    input  exception_t data_tlb_ex,

    // DCache
    output logic       dcache_req,
    output logic       dcache_wr,
    output logic [3:0] dcache_wstrb,
    output logic [2:0] dcache_size,
    output uint32_t    dcache_addr,
    output uint32_t    dcache_wdata,
    input  logic       dcache_addr_ok,
    input  logic       dcache_data_ok,
    input  uint32_t    dcache_rdata,

    // bypass
    output bypass_bus_t alu1_bypass_bus,
    output bypass_bus_t alu2_bypass_bus,
    output bypass_bus_t bru_bypass_bus,

    input  issue_to_execute_bus_t issue_to_execute_bus1,
    input  issue_to_execute_bus_t issue_to_execute_bus2,

    // CP0
    output logic       cp0_we,
    output logic [7:0] cp0_addr,
    output uint32_t    cp0_wdata,
    input  uint32_t    cp0_rdata,

    // TLB op
    output logic [3:0] tlb_op,

    // Cache up
    output logic         cache_op_valid,
    output CacheCodeType cache_op,
    output virt_t        cache_vaddr,
    output phys_t        cache_paddr,

    // commit store
    input  logic       commit_store_valid,
    output logic       commit_store_ready,
    output exception_t commit_store_ex,

    // commit
    output execute_to_commit_bus_t execute_to_commit_bus1,
    output execute_to_commit_bus_t execute_to_commit_bus2
);


// issue to FU
logic issue_to_mul_div_valid;
logic issue_to_alu1_valid;
logic issue_to_bru_valid;
logic issue_to_alu2_valid;
logic issue_to_agu_valid;
logic issue_to_spu_valid;

assign issue_to_mul_div_valid = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_mul_div_op;
assign issue_to_alu1_valid    = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_alu1_op;
assign issue_to_bru_valid     = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_br_op;
assign issue_to_alu2_valid    = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_alu2_op;
assign issue_to_agu_valid     = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_load_store_op;
assign issue_to_spu_valid     = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_sp_op;

// cs_allowin
logic alu1_to_cs_allowin;
logic alu2_to_cs_allowin;
logic mul_div_to_cs_allowin;
logic bru_to_cs_allowin;
logic agu_to_cs_allowin;
logic spu_to_cs_allowin;

logic alu1_to_valid;
logic alu2_to_valid;
logic mul_div_to_valid;
logic bru_to_valid;
logic agu_to_valid;
logic spu_to_valid;

assign alu1_to_cs_allowin    = 1'b1;
assign bru_to_cs_allowin     = 1'b1;
assign mul_div_to_cs_allowin = !alu1_to_valid && !bru_to_valid && !alu2_to_valid && !agu_to_valid && !spu_to_valid;

assign alu2_to_cs_allowin    = 1'b1;
assign agu_to_cs_allowin     = !alu2_to_valid;
assign spu_to_cs_allowin     = 1'b1;

// commit
execute_to_commit_bus_t alu1_to_commit_bus;
execute_to_commit_bus_t alu2_to_commit_bus;
execute_to_commit_bus_t mul_div_to_commit_bus1;
execute_to_commit_bus_t mul_div_to_commit_bus2;
execute_to_commit_bus_t bru_to_commit_bus;
execute_to_commit_bus_t agu_to_commit_bus;
execute_to_commit_bus_t spu_to_commit_bus;

logic agu_store_to_valid, agu_load_to_valid;
execute_to_commit_bus_t agu_commit_queue[7:0];
execute_to_commit_bus_t agu_store_to_commit_bus, agu_load_to_commit_bus;
logic [2:0] agu_commit_queue_head, agu_commit_queue_tail, agu_commit_queue_tail_next;

assign agu_to_valid = agu_commit_queue_head != agu_commit_queue_tail;
assign agu_to_commit_bus = agu_commit_queue[agu_commit_queue_head];

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_commit_queue_head <= 'b0;
        agu_commit_queue_tail <= 'b0;
        agu_commit_queue_tail_next <= 3'd1;
    end
    else begin
        if(agu_to_cs_allowin && agu_commit_queue_head != agu_commit_queue_tail) begin
            agu_commit_queue_head <= agu_commit_queue_head + 3'b1;
        end

        if(agu_store_to_valid && agu_load_to_valid) begin
            agu_commit_queue_tail      <= agu_commit_queue_tail + 3'd2;
            agu_commit_queue_tail_next <= agu_commit_queue_tail_next + 3'd2;
            agu_commit_queue[agu_commit_queue_tail]      <= agu_store_to_commit_bus;
            agu_commit_queue[agu_commit_queue_tail_next] <= agu_load_to_commit_bus;
        end
        else if(agu_store_to_valid) begin
            agu_commit_queue_tail <= agu_commit_queue_tail + 3'd1;
            agu_commit_queue_tail_next <= agu_commit_queue_tail_next + 3'd1;
            agu_commit_queue[agu_commit_queue_tail] <= agu_store_to_commit_bus;
        end
        else if(agu_load_to_valid) begin
            agu_commit_queue_tail <= agu_commit_queue_tail + 3'd1;
            agu_commit_queue_tail_next <= agu_commit_queue_tail_next + 3'd1;
            agu_commit_queue[agu_commit_queue_tail] <= agu_load_to_commit_bus;
        end
    end
end

// MMU
logic spu_data_valid;
virt_t spu_data_vaddr, agu_data_vaddr;

assign data_valid = spu_data_valid || dcache_req;
assign data_vaddr = spu_data_valid ? spu_data_vaddr : agu_data_vaddr;

always_comb begin
    execute_to_commit_bus1 = 'b0;
    execute_to_commit_bus2 = 'b0;

    if(!mul_div_to_cs_allowin)begin
        execute_to_commit_bus1 = alu1_to_valid ? alu1_to_commit_bus : bru_to_commit_bus;
        execute_to_commit_bus2 = spu_to_valid  ? spu_to_commit_bus :
                                 alu2_to_valid ? alu2_to_commit_bus:
                                 agu_to_valid  ? agu_to_commit_bus :
                                                 'b0;
    end
    else begin
        execute_to_commit_bus1 = mul_div_to_commit_bus1;
        execute_to_commit_bus2 = mul_div_to_commit_bus2;
    end
end

// alu1
alu alu1 (
    .clk,
    .reset,
    .flush,

    .issue_to_alu_valid(issue_to_alu1_valid),
    // .alu_allowin       (alu1_allowin       ),

    // .cs_allowin        (alu1_to_cs_allowin ),
    .alu_to_valid      (alu1_to_valid      ),

    .issue_inst         (issue_to_execute_bus1),
    .alu_bypass_bus     (alu1_bypass_bus      ),
    .alu_to_commit_bus  (alu1_to_commit_bus   )
);

// mul/div unit
mul_div_unit mul_div_unit_u (
    .clk,
    .reset,
    .flush,

    .issue_to_mul_div_valid(issue_to_mul_div_valid),
    .mul_div_allowin       (mul_div_allowin       ),

    .cs_allowin            (mul_div_to_cs_allowin ),
    .mul_div_to_valid,

    .issue_inst1           (issue_to_execute_bus1),
    .issue_inst2           (issue_to_execute_bus2),
    
    .mul_div_to_commit_bus1,
    .mul_div_to_commit_bus2
);

// branch unit
bru bru_u (
    .clk,
    .reset,
    .flush,

    .issue_to_bru_valid(issue_to_bru_valid),
    // .bru_allowin       (bru_allowin       ),

    // .cs_allowin        (bru_to_cs_allowin ),
    .bru_to_valid,

    .issue_inst         (issue_to_execute_bus1),
    .bru_bypass_bus     (bru_bypass_bus       ),
    .bru_to_commit_bus
);

// alu2
alu2 alu2_u (
    .clk,
    .reset,
    .flush,

    .issue_to_alu_valid(issue_to_alu2_valid),
    // .alu_allowin       (alu2_allowin       ),

    // .cs_allowin        (alu2_to_cs_allowin ),
    .alu_to_valid      (alu2_to_valid      ),

    .issue_inst         (issue_to_execute_bus2),
    .alu_bypass_bus     (alu2_bypass_bus      ),
    .alu_to_commit_bus  (alu2_to_commit_bus   )

);

// agu
agu agu_u (
    .clk,
    .reset,
    .flush,

    .issue_to_agu_valid(issue_to_agu_valid),
    .agu_allowin       (agu_allowin       ),

    // .cs_allowin        (1'b1),
    .agu_store_to_valid,
    .agu_load_to_valid,

    .issue_inst         (issue_to_execute_bus2),
    
    // commit store
    .commit_store_valid,
    .commit_store_ready,
    .commit_store_ex,

    // mmu
    .data_vaddr(agu_data_vaddr),
    .data_tlb_ex,

    // DBus
    .dcache_req,
    .dcache_wr,
    .dcache_wstrb,
    .dcache_size,
    .dcache_addr,
    .dcache_wdata,
    .dcache_rdata,
    .dcache_addr_ok,
    .dcache_data_ok,

    .agu_store_to_commit_bus,
    .agu_load_to_commit_bus
);


// special unit
spu spu_u (
    .clk,
    .reset,
    .flush,

    .issue_to_spu_valid(issue_to_spu_valid),
    // .spu_allowin       (spu_allowin       ),

    // .cs_allowin        (spu_to_cs_allowin ),
    .spu_to_valid,

    .issue_inst        (issue_to_execute_bus2),

    // mmu
    .data_valid(spu_data_valid),
    .data_vaddr(spu_data_vaddr),
    .data_paddr,

    // TLB op
    .tlb_op,

    // Cache op
    .cache_op_valid,
    .cache_op,
    .cache_vaddr,
    .cache_paddr,

    // cp0
    .cp0_we,
    .cp0_addr,
    .cp0_wdata,
    .cp0_rdata,

    .spu_to_commit_bus
);

endmodule
