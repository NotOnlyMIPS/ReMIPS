`include "../cpu.svh"

module commit_stage (
    input  clk,
    input  reset,

    output logic flush,
    output flush_src_t flush_src,

`ifdef GOLDEN_TRACE
    output commit_to_debug_bus_t commit_to_debug_bus1,
    output commit_to_debug_bus_t commit_to_debug_bus2,
`endif

    input  logic ds_to_rob_valid,
    output logic cs_allowin,
    output logic rob_empty,

    // map
    input  rob_entry_t map_to_rob_bus1,
    input  rob_entry_t map_to_rob_bus2,
    output logic [3:0] rob_tail_o,

    // execute
    input  execute_to_commit_bus_t execute_to_commit_bus1,
    input  execute_to_commit_bus_t execute_to_commit_bus2,

    output logic       commit_store1_valid,
    output logic       commit_store2_valid,
    // input  logic       commit_store_ready,
    // input  exception_t commit_store_ex,

    // busytable
    output writeback_to_busytable_bus_t writeback_to_busytable_bus1,
    output writeback_to_busytable_bus_t writeback_to_busytable_bus2,

    // RAT
    output commit_to_rat_bus_t commit_to_rat_bus1,
    output commit_to_rat_bus_t commit_to_rat_bus2,

    // BPU
    output verify_result_t bpu_verify_result,

    // regfile
    output writeback_to_rf_bus_t writeback_to_rf_bus1,
    output writeback_to_rf_bus_t writeback_to_rf_bus2,

    // exception
    output exception_t exception

);

parameter ROB_ENTRY_NUM = 16;

// flush
logic flush_r;
logic commit_flush;

// writeback
execute_to_commit_bus_t writeback_inst1, writeback_inst2;
writeback_to_commit_bus_t writeback_to_commit_bus1, writeback_to_commit_bus2;

always_ff @(posedge clk) begin
    if(reset || flush || commit_flush) begin
        writeback_inst1 <= '0;
        writeback_inst2 <= '0;
    end else begin
        writeback_inst1 <= execute_to_commit_bus1;
        writeback_inst2 <= execute_to_commit_bus2;
    end
end

// writeback to busytable
assign writeback_to_busytable_bus1 = { {6{execute_to_commit_bus1.valid && execute_to_commit_bus1.rf_we}} & execute_to_commit_bus1.phy_dest};
assign writeback_to_busytable_bus2 = { {6{execute_to_commit_bus2.valid && execute_to_commit_bus2.rf_we}} & execute_to_commit_bus2.phy_dest};

// writeback to regfile
// inst1
assign writeback_to_rf_bus1.valid  = writeback_inst1.valid;
assign writeback_to_rf_bus1.rf_we  = {4{writeback_inst1.valid}} & writeback_inst1.rf_we;
assign writeback_to_rf_bus1.dest   = writeback_inst1.phy_dest;
assign writeback_to_rf_bus1.result = writeback_inst1.result;

// inst2
assign writeback_to_rf_bus2.valid  = writeback_inst2.valid;
assign writeback_to_rf_bus2.rf_we  = {4{writeback_inst2.valid}} & writeback_inst2.rf_we;
assign writeback_to_rf_bus2.dest   = writeback_inst2.phy_dest;
assign writeback_to_rf_bus2.result = writeback_inst2.result;

// writeback to commit
// inst1
assign writeback_to_commit_bus1.valid = writeback_inst1.valid;
assign writeback_to_commit_bus1.rob_entry_num = writeback_inst1.rob_entry_num;

assign writeback_to_commit_bus1.is_store_op = writeback_inst1.is_store_op;

assign writeback_to_commit_bus1.verify_result = writeback_inst1.verify_result;
assign writeback_to_commit_bus1.exception     = writeback_inst1.exception;

// inst2
assign writeback_to_commit_bus2.valid = writeback_inst2.valid;
assign writeback_to_commit_bus2.rob_entry_num = writeback_inst2.rob_entry_num;

assign writeback_to_commit_bus2.is_store_op = writeback_inst2.is_store_op;

assign writeback_to_commit_bus2.verify_result = writeback_inst2.verify_result;
assign writeback_to_commit_bus2.exception     = writeback_inst2.exception;

// commit
// (*mark_debug = "true"*) rob_entry_t rob[ROB_ENTRY_NUM-1:0]; // debug
rob_entry_t rob[ROB_ENTRY_NUM-1:0];
logic [3:0] rob_head, rob_tail;
logic [3:0] rob_head_writeback, rob_head_bpu, rob_head_miss_predict, rob_head_flush;
logic [3:0] rob_head_commit_inst, rob_head_commit_store, rob_head_commit_rat;
logic [3:0] rob_head_next, rob_tail_next;
logic [3:0] rob_head_next_writeback, rob_head_next_bpu, rob_head_next_miss_predict, rob_head_next_flush;
logic [3:0] rob_head_next_commit_inst, rob_head_next_commit_store, rob_head_next_commit_rat;
logic [4:0] rob_num;
logic commit_inst1_valid, commit_inst2_valid;
logic map_to_rob_bus1_valid, map_to_rob_bus2_valid;

logic miss_predict;
logic wait_1bd, wait_2bd;

assign map_to_rob_bus1_valid = map_to_rob_bus1.state != Inst_Invalid;
assign map_to_rob_bus2_valid = map_to_rob_bus2.state != Inst_Invalid;

assign cs_allowin = rob_num < ROB_ENTRY_NUM-1;
assign rob_empty  = rob_num == 0 || rob_num == 1 && rob[rob_head].state == Inst_Complete;
assign rob_tail_o = rob_tail;
assign rob_head_next = rob_head+1;
assign rob_tail_next = rob_tail+1;

assign rob_head_next_writeback    = rob_head_writeback+1;
assign rob_head_next_bpu          = rob_head_bpu+1;
assign rob_head_next_miss_predict = rob_head_miss_predict+1;
assign rob_head_next_flush        = rob_head_flush+1;
assign rob_head_next_commit_inst  = rob_head_commit_inst+1;
assign rob_head_next_commit_store = rob_head_commit_store+1;
assign rob_head_next_commit_rat   = rob_head_commit_rat+1;

always_ff @(posedge clk) begin
    if(reset || flush || commit_flush) begin
        for(int i=0; i<ROB_ENTRY_NUM; i++) begin
            rob[i] <= '0;
        end
    end
    else begin
        if(commit_inst1_valid) begin
            rob[rob_head_writeback  ].state <= Inst_Invalid;
        end
        // else if(commit_store_ready && rob[rob_head].state == Store_Wait) begin
        //     rob[rob_head_writeback  ].state <= Inst_Complete;
        //     rob[rob_head_writeback  ].exception.ex        <= commit_store_ex.ex;
        //     rob[rob_head_writeback  ].exception.exccode   <= commit_store_ex.exccode;
        //     rob[rob_head_writeback  ].exception.badvaddr  <= commit_store_ex.badvaddr;
        //     rob[rob_head_writeback  ].exception.tlb_refill<= commit_store_ex.tlb_refill;
        // end
        if(commit_inst2_valid) begin
            rob[rob_head_next_writeback].state <= Inst_Invalid;
        end
        // else if(commit_store_ready && rob[rob_head].state != Store_Wait && rob[rob_head_next].state == Store_Wait) begin
        //     rob[rob_head_next_writeback].state <= Inst_Complete;
        // end

        if(ds_to_rob_valid && cs_allowin) begin
            rob[rob_tail     ]   <= map_to_rob_bus1;
            rob[rob_tail_next]   <= map_to_rob_bus2;
        end

        if(writeback_to_commit_bus1.valid) begin
            rob[writeback_to_commit_bus1.rob_entry_num].state         <= Inst_Complete;
            rob[writeback_to_commit_bus1.rob_entry_num].verify_result <= writeback_to_commit_bus1.verify_result;
            rob[writeback_to_commit_bus1.rob_entry_num].exception.ex      <= writeback_to_commit_bus1.exception.ex;
            rob[writeback_to_commit_bus1.rob_entry_num].exception.exccode <= writeback_to_commit_bus1.exception.exccode;
        end
        if(writeback_to_commit_bus2.valid) begin
            // rob[writeback_to_commit_bus2.rob_entry_num].state         <= writeback_to_commit_bus2.is_store_op &&
            //                                                             !writeback_to_commit_bus2.exception.ex ? Store_Wait : Inst_Complete;
            rob[writeback_to_commit_bus2.rob_entry_num].state         <= Inst_Complete;
            rob[writeback_to_commit_bus2.rob_entry_num].verify_result <= writeback_to_commit_bus2.verify_result;
            rob[writeback_to_commit_bus2.rob_entry_num].exception.ex        <= writeback_to_commit_bus2.exception.ex;
            rob[writeback_to_commit_bus2.rob_entry_num].exception.exccode   <= writeback_to_commit_bus2.exception.exccode;
            rob[writeback_to_commit_bus2.rob_entry_num].exception.badvaddr  <= writeback_to_commit_bus2.exception.badvaddr;
            rob[writeback_to_commit_bus2.rob_entry_num].exception.tlb_refill<= writeback_to_commit_bus2.exception.tlb_refill;
        end
    end

    if(reset || flush || commit_flush) begin
        rob_head <= '0;
        rob_tail <= '0;
        rob_num  <= '0;

        rob_head_writeback    <= '0;
        rob_head_bpu          <= '0;
        rob_head_miss_predict <= '0;
        rob_head_flush        <= '0;
        rob_head_commit_inst  <= '0;
        rob_head_commit_store <= '0;
        rob_head_commit_rat   <= '0;

    end
    else begin
        rob_head <= rob_head + commit_inst1_valid + commit_inst2_valid;

        rob_head_writeback    <= rob_head_writeback + commit_inst1_valid + commit_inst2_valid;
        rob_head_bpu          <= rob_head_bpu + commit_inst1_valid + commit_inst2_valid;
        rob_head_miss_predict <= rob_head_miss_predict + commit_inst1_valid + commit_inst2_valid;
        rob_head_flush        <= rob_head_flush + commit_inst1_valid + commit_inst2_valid;
        rob_head_commit_inst  <= rob_head_commit_inst + commit_inst1_valid + commit_inst2_valid;
        rob_head_commit_store <= rob_head_commit_store + commit_inst1_valid + commit_inst2_valid;
        rob_head_commit_rat   <= rob_head_commit_rat + commit_inst1_valid + commit_inst2_valid;

        if(cs_allowin && ds_to_rob_valid) begin
            rob_tail <= rob_tail + map_to_rob_bus1_valid + map_to_rob_bus2_valid;
        end

        rob_num  <= rob_num + {4'b0, map_to_rob_bus1_valid && cs_allowin} + {4'b0, map_to_rob_bus2_valid && cs_allowin}
                            - {4'b0, commit_inst1_valid} - {4'b0, commit_inst2_valid};
    end

    if(reset || flush) begin
        flush_r <= 1'b0;
    end
    else if(miss_predict) begin
        flush_r <= 1'b1;
    end

    if(reset || commit_flush) begin
        wait_1bd <= 1'b0;
        wait_2bd <= 1'b0;
    end
    else if(miss_predict && !flush_r) begin
        if(rob[rob_head_next_bpu].is_mul_div_op)
            wait_2bd <= 1'b1;
        else
            wait_1bd <= 1'b1;
    end

    if(reset || commit_flush || flush_src.exception)
        bpu_verify_result <= 'b0;
    else if(!flush_r && commit_inst1_valid)
        bpu_verify_result <= rob[rob_head_bpu].verify_result;
    else
        bpu_verify_result <= 'b0;
end

assign flush = flush_r && !wait_1bd && !wait_2bd || flush_src.exception || flush_src.eret || flush_src.privileged_inst;
assign commit_flush = (wait_1bd || wait_2bd) && rob[rob_head_miss_predict].state == Inst_Complete;

assign miss_predict = commit_inst1_valid && (!rob[rob_head_miss_predict].verify_result.predict_sucess && rob[rob_head_miss_predict].is_br_op);

assign flush_src.miss_predict    = rob[rob_head_flush].state == Inst_Complete && rob[rob_head_flush].is_br_op && !rob[rob_head_flush].verify_result.predict_sucess;
assign flush_src.eret            = rob[rob_head_flush].state == Inst_Complete && rob[rob_head_flush].is_eret;
assign flush_src.exception       = rob[rob_head_flush].state == Inst_Complete && rob[rob_head_flush].exception.ex;
assign flush_src.privileged_inst = rob[rob_head_flush].state == Inst_Complete && rob[rob_head_flush].is_privileged_op;

// exception
always_comb begin
    exception = '0;
    if(rob[rob_head_flush].state == Inst_Complete)
        exception = rob[rob_head_flush].exception;
end

always_comb begin
    commit_inst1_valid = rob[rob_head_commit_inst     ].state == Inst_Complete && !rob[rob_head_commit_inst].exception.ex;
    commit_inst2_valid = rob[rob_head_next_commit_inst].state == Inst_Complete && commit_inst1_valid;
    if(rob[rob_head_commit_inst].is_br_op && rob[rob_head_next_commit_inst].state != Inst_Complete)
        commit_inst1_valid = 1'b0;
    if(rob[rob_head_next_commit_inst].is_br_op
    || rob[rob_head_next_commit_inst].exception.ex
    || miss_predict || wait_1bd) begin
        commit_inst2_valid = 1'b0;
    end
end

assign commit_store1_valid = commit_inst1_valid && rob[rob_head_commit_store].is_store_op;
assign commit_store2_valid = commit_inst2_valid && rob[rob_head_next_commit_store].is_store_op;

assign commit_to_rat_bus1 = { commit_inst1_valid && rob[rob_head_commit_rat].rf_we,
                              rob[rob_head_commit_rat  ].dest,
                              rob[rob_head_commit_rat  ].phy_dest,
                              rob[rob_head_commit_rat  ].old_dest};
assign commit_to_rat_bus2 = { commit_inst2_valid && rob[rob_head_next_commit_rat].rf_we,
                              rob[rob_head_next_commit_rat].dest,
                              rob[rob_head_next_commit_rat].phy_dest,
                              rob[rob_head_next_commit_rat].old_dest};

`ifdef GOLDEN_TRACE

assign commit_to_debug_bus1.valid         = commit_inst1_valid && rob[rob_head].dest != `REG_HI && rob[rob_head].dest != `REG_LO;
assign commit_to_debug_bus1.rob_entry_num = rob_head;

assign commit_to_debug_bus1.br_op = commit_inst1_valid && rob[rob_head].is_br_op;
assign commit_to_debug_bus1.predict_sucess = commit_inst1_valid && rob[rob_head].verify_result.predict_sucess;

assign commit_to_debug_bus2.valid         = commit_inst2_valid && rob[rob_head_next].dest != `REG_HI && rob[rob_head_next].dest != `REG_LO;
assign commit_to_debug_bus2.rob_entry_num = rob_head_next;

assign commit_to_debug_bus2.br_op = commit_inst2_valid && rob[rob_head_next].is_br_op;
assign commit_to_debug_bus2.predict_sucess = commit_inst2_valid && rob[rob_head_next].verify_result.predict_sucess;

`endif

endmodule
