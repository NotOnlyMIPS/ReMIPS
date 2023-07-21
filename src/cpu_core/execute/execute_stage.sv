`include "../cpu.svh"

module execute_stage(
    input clk,
    input reset,

    input flush,

    output logic es_to_valid,

    input  logic is_to_valid,
    output logic alu1_allowin,
    output logic alu2_allowin,
    output logic mul_div_allowin,
    output logic bru_allowin,
    output logic agu_allowin,
    output logic sp_allowin,

    // bypass
    output bypass_bus_t alu1_bypass_bus,
    output bypass_bus_t alu2_bypass_bus,
    output bypass_bus_t bru_bypass_bus,

    input  issue_to_execute_bus_t issue_to_execute_bus1,
    input  issue_to_execute_bus_t issue_to_execute_bus2,

    // commit store
    input  logic commit_store_valid,
    output logic commit_store_ready,

    // commit
    output execute_to_commit_bus_t execute_to_commit_bus1,
    output execute_to_commit_bus_t execute_to_commit_bus2
);

// pipeline registers
logic es_valid;
logic es_allowin;

assign es_allowin = (alu1_allowin || alu2_allowin || mul_div_allowin || bru_allowin || agu_allowin || sp_allowin);

always_ff @(posedge clk) begin
    if(reset || flush) begin
        es_valid <= 1'b0;
    end else if(es_allowin) begin
        es_valid <= es_to_valid;
    end
end

// issue to FU
logic issue_to_mul_div_valid;
logic issue_to_alu1_valid;
logic issue_to_bru_valid;
logic issue_to_alu2_valid;
logic issue_to_agu_valid;
logic issue_to_sp_valid;

assign issue_to_mul_div_valid = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_mul_div_op;
assign issue_to_alu1_valid    = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_alu1_op;
assign issue_to_bru_valid     = issue_to_execute_bus1.valid && issue_to_execute_bus1.inst.is_bru_op;
assign issue_to_alu2_valid    = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_alu2_op;
assign issue_to_agu_valid     = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_agu_op;
assign issue_to_sp_valid      = issue_to_execute_bus2.valid && issue_to_execute_bus2.inst.is_sp_op;

// cs_allowin
logic alu1_to_cs_allowin;
logic alu2_to_cs_allowin;
logic mul_div_to_cs_allowin;
logic bru_to_cs_allowin;
logic agu_to_cs_allowin;
logic sp_to_cs_allowin;

logic alu1_to_valid;
logic alu2_to_valid;
logic mul_div_to_valid;
logic bru_to_valid;
logic agu_to_valid;
logic sp_to_valid;

assign alu1_to_cs_allowin    = !mul_div_to_valid;
assign bru_to_cs_allowin     = !mul_div_to_valid;
assign mul_div_to_cs_allowin = mul_div_to_valid;

assign alu2_to_cs_allowin    = !mul_div_to_valid && !agu_to_valid;
assign agu_to_cs_allowin     = !mul_div_to_valid;
assign sp_to_cs_allowin      = !mul_div_to_valid;

// commit
execute_to_commit_bus_t alu1_to_commit_bus;
execute_to_commit_bus_t alu2_to_commit_bus;
execute_to_commit_bus_t mul_div_to_commit_bus1;
execute_to_commit_bus_t mul_div_to_commit_bus2;
execute_to_commit_bus_t bru_to_commit_bus;
execute_to_commit_bus_t agu_to_commit_bus;
execute_to_commit_bus_t sp_to_commit_bus;

always_comb begin
    execute_to_commit_bus1 = 'b0;
    execute_to_commit_bus2 = 'b0;

    if(mul_div_to_valid) begin
        execute_to_commit_bus1 = mul_div_to_commit_bus1;
        execute_to_commit_bus2 = mul_div_to_commit_bus2;
    end
    else begin
        execute_to_commit_bus1 = alu1_to_valid ? alu1_to_commit_bus : bru_to_commit_bus;
        execute_to_commit_bus1 = agu_to_valid  ? agu_to_commit_bus  : alu2_to_commit_bus;
    end
end

// alu1
alu alu1 (
    .clk,
    .reset,
    .flush,

    .issue_to_alu_valid(issue_to_alu1_valid),
    .alu_allowin       (alu1_allowin       ),

    .cs_allowin        (alu1_to_cs_allowin ),
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
    .bru_allowin       (bru_allowin       ),

    .cs_allowin        (bru_to_cs_allowin ),
    .bru_to_valid,

    .issue_inst         (issue_to_execute_bus1),
    .bru_bypass_bus     (bru_bypass_bus       ),
    .bru_to_commit_bus
);

// alu2
alu alu2 (
    .clk,
    .reset,
    .flush,

    .issue_to_alu_valid(issue_to_alu2_valid),
    .alu_allowin       (alu2_allowin       ),

    .cs_allowin        (alu2_to_cs_allowin ),
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

    .cs_allowin        (agu_to_cs_allowin ),
    .agu_to_valid,

    .issue_inst         (issue_to_execute_bus2),
    
    // commit store
    .commit_store_valid,
    .commit_store_ready,

    // DBus
    .dcache_req,
    .dcache_wr,
    .dcache_wstrb,
    .dcache_addr,
    .dcache_wdata,
    .dcache_rdata,
    .dcache_addr_ok,
    .dcache_data_ok,

    .agu_to_commit_bus
);


// special unit


endmodule
