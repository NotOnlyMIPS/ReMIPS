`include "../cpu.svh"

module spu (
    input clk,
    input reset,

    input flush,

    input  logic issue_to_spu_valid,
    // output logic sp_allowin,

    // input  logic cs_allowin,
    output logic spu_to_valid,

    input  issue_to_execute_bus_t issue_inst,

    // mmu
    output logic  data_valid,
    output virt_t data_vaddr,
    input  phys_t data_paddr,

    // TLB op
    output logic [3:0] tlb_op,

    // Cache up
    output logic         cache_op_valid,
    output CacheCodeType cache_op,
    output virt_t        cache_vaddr,
    output phys_t        cache_paddr,

    // CP0
    output logic       cp0_we,
    output logic [7:0] cp0_addr,
    output uint32_t    cp0_wdata,
    input  uint32_t    cp0_rdata,

    output execute_to_commit_bus_t spu_to_commit_bus

);

logic spu_valid;
logic [3:0] rob_entry_num;

decoded_inst_t inst;
reg_addr_t phy_dest;
uint32_t src1_value, src2_value;

logic [3:0] rf_we;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        spu_valid  <= 1'b0;
        src1_value <= '0;
        src2_value <= '0;
        phy_dest   <= '0;
        inst       <= '0;
        rob_entry_num <= '0;
    end else if(spu_to_valid || !spu_valid) begin
        spu_valid  <= issue_to_spu_valid;
        src1_value <= issue_inst.src1_value;
        src2_value <= issue_inst.src2_value;
        phy_dest   <= issue_inst.phy_dest;
        inst       <= issue_inst.inst;
        rob_entry_num <= issue_inst.rob_entry_num;
    end
end

logic op_teq;
logic op_tne;
logic op_tlt;
logic op_tge;
logic op_tltu;
logic op_tgeu;

logic op_mfc0;
logic op_mtc0;

logic op_eret;

logic op_tlbp;
logic op_tlbwr;
logic op_tlbwi;
logic op_tlbr;

logic op_cache;

assign op_teq   = inst.operation == OP_TEQ;
assign op_tne   = inst.operation == OP_TNE;
assign op_tlt   = inst.operation == OP_TLT;
assign op_tge   = inst.operation == OP_TGE;
assign op_tltu  = inst.operation == OP_TLTU;
assign op_tgeu  = inst.operation == OP_TGEU;

assign op_mfc0  = inst.operation == OP_MFC0;
assign op_mtc0  = inst.operation == OP_MTC0;

assign op_eret  = inst.operation == OP_ERET;

assign op_tlbp  = inst.operation == OP_TLBP;
assign op_tlbwr = inst.operation == OP_TLBWR;
assign op_tlbwi = inst.operation == OP_TLBWI;
assign op_tlbr  = inst.operation == OP_TLBR;

assign op_cache = inst.operation == OP_CACHE;

assign rf_we = {4{op_mfc0}};

// CP0
assign cp0_we    = op_mtc0 && spu_valid;
assign cp0_addr  = inst.cp0_addr;
assign cp0_wdata = src2_value;

// TLB op
assign tlb_op = {4{spu_valid}} & {
                op_tlbwr,
                op_tlbwi,
                op_tlbr,
                op_tlbp};

// Cache op
logic wait_cache_op;

assign data_valid = spu_valid && op_cache && !wait_cache_op;
assign data_vaddr = src1_value + {{16{inst.imm[15]}}, inst.imm};

assign cache_op_valid = wait_cache_op;
assign cache_op    = wait_cache_op ? inst.cache_op : Cache_Code_EMPTY;
assign cache_vaddr = src1_value + {{16{inst.imm[15]}}, inst.imm};
assign cache_paddr = data_paddr;

always_ff @(posedge clk) begin
    if(reset || wait_cache_op) begin
        wait_cache_op <= 1'b0;
    end else if(spu_valid && op_cache) begin
        wait_cache_op <= 1'b1;
    end
end

// trap
uint32_t trap_src1, trap_src2;
logic trap_valid;

assign trap_src1 = src1_value;
assign trap_src2 = inst.src2_is_simm ? {{16{inst.imm[15]}}, inst.imm} : src2_value;

assign trap_valid = spu_valid && ( (op_teq && (trap_src1 == trap_src2))
                                 ||(op_tne && (trap_src1 != trap_src2))
                                 ||(op_tlt && ($signed(trap_src1) < $signed(trap_src2)))
                                 ||(op_tge && ($signed(trap_src1) >= $signed(trap_src2)))
                                 ||(op_tltu && (trap_src1 < trap_src2))
                                 ||(op_tgeu && (trap_src1 >= trap_src2)) );

// exception
exception_t exception;

always_comb begin
    exception = '0;
    if(spu_valid && trap_valid) begin
        exception.ex = 1'b1;
        exception.exccode = `EXCCODE_TR;
    end
end

uint32_t spu_result;

assign spu_result = cp0_rdata;

assign spu_to_valid = spu_valid && !op_cache || wait_cache_op;

assign spu_to_commit_bus.valid = spu_valid && !op_cache || wait_cache_op;
assign spu_to_commit_bus.rob_entry_num = rob_entry_num;

assign spu_to_commit_bus.rf_we    = rf_we;
assign spu_to_commit_bus.phy_dest = phy_dest;
assign spu_to_commit_bus.result   = spu_result;

assign spu_to_commit_bus.is_store_op = 1'b0;

assign spu_to_commit_bus.verify_result = 'b0;

assign spu_to_commit_bus.exception = exception;

endmodule
