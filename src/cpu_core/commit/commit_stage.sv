`include "../cpu.svh"

module commit_stage (
    input  clk,
    input  reset,

    output logic flush,
    output flush_src_t flush_src,

    input  logic es_to_valid,
    output logic cs_allowin,
    output logic rob_empty,

    // map
    input  rob_entry_t map_to_rob_bus1,
    input  rob_entry_t map_to_rob_bus2,
    output logic [3:0] rob_tail_o,

    // execute
    input  execute_to_commit_bus_t execute_bus1,
    input  execute_to_commit_bus_t execute_bus2,
    input  logic commit_store_ready,
    output logic commit_store_valid,

    // bypass
    output bypass_bus_t writeback_bypass_bus1,
    output bypass_bus_t writeback_bypass_bus2,

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
    output writeback_to_rf_bus_t writeback_to_rf_bus2

);

parameter ROB_ENTRY_NUM = 16;

// writeback
execute_to_commit_bus_t writeback_inst1, writeback_inst2;
writeback_to_commit_bus_t writeback_to_commit_bus1, writeback_to_commit_bus2;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        writeback_inst1 <= '0;
        writeback_inst2 <= '0;
    end else begin
        writeback_inst1 <= execute_bus1;
        writeback_inst2 <= execute_bus2;
    end
end

assign writeback_to_busytable_bus1 = { {6{execute_bus1.valid & execute_bus1.rf_we}} & execute_bus1.phy_dest};
assign writeback_to_busytable_bus2 = { {6{execute_bus2.valid & execute_bus2.rf_we}} & execute_bus2.phy_dest};

assign writeback_to_rf_bus1 = { {4{writeback_inst1.valid}} & writeback_inst1.rf_we,
                                writeback_inst1.phy_dest,
                                writeback_inst1.result};
assign writeback_to_rf_bus2 = { {4{writeback_inst2.valid}} & writeback_inst2.rf_we,
                                writeback_inst2.phy_dest,
                                writeback_inst2.result};

assign writeback_to_commit_bus1 = { writeback_inst1.valid,
                                    writeback_inst1.rob_entry_num,
                                    writeback_inst1.verify_result,
                                    writeback_inst1.exception};
assign writeback_to_commit_bus2 = { writeback_inst2.valid,
                                    writeback_inst2.rob_entry_num,
                                    writeback_inst2.verify_result,
                                    writeback_inst2.exception};

// commit
rob_entry_t rob[ROB_ENTRY_NUM-1:0];
logic [3:0] rob_head, rob_tail;
logic [4:0] rob_num;
logic commit_inst1_valid, commit_inst2_valid;

assign cs_allowin = rob_num < ROB_ENTRY_NUM-1;
assign rob_empty  = rob_num == 0;
assign rob_tail_o = rob_tail;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i=0; i<ROB_ENTRY_NUM; i++) begin
            rob[i] <= '0;
        end
    end
    else begin
        if(commit_inst1_valid) begin
            rob[rob_head  ].state <= Inst_Invalid;
        end
        else if(commit_store_ready) begin
            rob[rob_head].state <= Inst_Complete;
        end
        if(commit_inst2_valid) begin
            rob[rob_head+1].state <= Inst_Invalid;
        end

        if(map_to_rob_bus1.state && map_to_rob_bus2.state) begin
            rob[rob_tail]   <= map_to_rob_bus1;
            rob[rob_tail+1] <= map_to_rob_bus2;
        end
        else if(map_to_rob_bus1.state) begin
            rob[rob_tail] <= map_to_rob_bus1;
        end
        else if(map_to_rob_bus2.state) begin
            rob[rob_tail] <= map_to_rob_bus2;
        end

        if(writeback_to_commit_bus1.valid) begin
            rob[writeback_to_commit_bus1.rob_entry_num].state         <= writeback_to_commit_bus1.is_store_op ? Store_Wait : Inst_Complete;
            rob[writeback_to_commit_bus1.rob_entry_num].verify_result <= writeback_to_commit_bus1.verify_result;
            rob[writeback_to_commit_bus1.rob_entry_num].exception     <= writeback_to_commit_bus1.exception;
        end
        if(writeback_to_commit_bus2.valid) begin
            rob[writeback_to_commit_bus2.rob_entry_num].state         <= writeback_to_commit_bus2.is_store_op ? Store_Wait : Inst_Complete;
            rob[writeback_to_commit_bus2.rob_entry_num].verify_result <= writeback_to_commit_bus2.verify_result;
            rob[writeback_to_commit_bus2.rob_entry_num].exception     <= writeback_to_commit_bus2.exception;
        end
    end

    if(reset || flush) begin
        rob_head <= '0;
        rob_tail <= '0;
        rob_num  <= '0;
    end
    else begin
        rob_head <= rob_head + commit_inst1_valid + commit_inst2_valid;
        rob_tail <= rob_tail + writeback_to_commit_bus1.valid + writeback_to_commit_bus2.valid;
        rob_num  <= rob_num  + commit_inst1_valid + commit_inst2_valid
                            - writeback_to_commit_bus1.valid - writeback_to_commit_bus2.valid;
    end
end

assign flush = rob[rob_head].state == Inst_Complete 
            && (rob[rob_head].exception.ex || !rob[rob_head].verify_result.predict_sucess);
assign flush_src.miss_predict    = rob[rob_head].state == Inst_Complete && rob[rob_head].is_br_op && !rob[rob_head].verify_result.predict_sucess;
assign flush_src.exception       = rob[rob_head].state == Inst_Complete && rob[rob_head].exception.ex;
assign flush_src.privileged_inst = 1'b0;

always_comb begin
    commit_inst1_valid = rob[rob_head  ].state == Inst_Complete && !rob[rob_head].exception.ex;
    commit_inst2_valid = rob[rob_head+1].state == Inst_Complete;
    if(rob[rob_head+1].is_br_op || rob[rob_head+1].is_store_op
    || rob[rob_head+1].exception.ex)
        commit_inst2_valid = 1'b0;
end

assign bpu_verify_result = rob[rob_head].verify_result;

assign commit_store_valid = rob[rob_head].state == Store_Wait && !rob[rob_head].exception.ex;

assign commit_to_rat_bus1 = { commit_inst1_valid && rob[rob_head  ].rf_we,
                              rob[rob_head  ].dest,
                              rob[rob_head  ].phy_dest,
                              rob[rob_head  ].old_dest};
assign commit_to_rat_bus2 = { commit_inst2_valid && rob[rob_head+1].rf_we,
                              rob[rob_head+1].dest,
                              rob[rob_head+1].phy_dest,
                              rob[rob_head+1].old_dest};

endmodule
