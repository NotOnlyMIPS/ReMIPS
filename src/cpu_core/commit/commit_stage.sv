`include "../cpu.svh"

module commit_stage (
    input  clk,
    input  reset,

    output flush,

    input  logic es_to_valid,
    output logic cs_allowin,

    // map
    input rob_entry_t map_to_rob_bus1,
    input rob_entry_t map_to_rob_bus2,

    // execute
    input  execute_to_commit_bus_t execute_bus1,
    input  execute_to_commit_bus_t execute_bus2,

    // busytable
    output writeback_to_busytable_bus_t writeback_to_busytable_bus1,
    output writeback_to_busytable_bus_t writeback_to_busytable_bus2,

    // RAT
    output commit_to_rat_bus_t commit_to_rat_bus1,
    output commit_to_rat_bus_t commit_to_rat_bus2,

    // regfile
    output writeback_to_rf_bus_t writeback_to_rf_bus1,
    output writeback_to_rf_bus_t writeback_to_rf_bus2

);

parameter ROB_ENTRY_NUM = 16;

// writeback
execute_to_commit_bus_t writeback_inst1, writeback_inst2;
writeback_to_commit_bus_t writeback_to_commit_bus1, writeback_to_commit_bus2;

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

always_ff @(posedge clk) begin
    if(reset || flush) begin
        writeback_inst1 <= '0;
        writeback_inst2 <= '0;
    end else begin
        writeback_inst1 <= execute_bus1;
        writeback_inst2 <= execute_bus2;
    end
end

// commit
rob_entry_t rob[ROB_ENTRY_NUM-1:0];
logic [3:0] rob_head, rob_tail;
logic [4:0] rob_num;
logic commit_inst1_valid, commit_inst2_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i=0; i<ROB_ENTRY_NUM; i++) begin
            rob[i] <= '0;
        end
    end
    else begin
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
            rob[writeback_to_commit_bus1.rob_entry_num].state         <= Inst_Complete;
            rob[writeback_to_commit_bus1.rob_entry_num].verify_result <= writeback_to_commit_bus1.verify_result;
            rob[writeback_to_commit_bus1.rob_entry_num].exception     <= writeback_to_commit_bus1.exception;
        end
        if(writeback_to_commit_bus2.valid) begin
            rob[writeback_to_commit_bus2.rob_entry_num].state         <= Inst_Complete;
            rob[writeback_to_commit_bus2.rob_entry_num].verify_result <= writeback_to_commit_bus2.verify_result;
            rob[writeback_to_commit_bus2.rob_entry_num].exception     <= writeback_to_commit_bus2.exception;
        end
    end

    if(reset || flush) begin
        rob_head <= '0;
        rob_tail <= '0;
    end
    else begin
        rob_head <= rob_head + commit_inst1_valid + commit_inst2_valid;
        rob_tail <= rob_tail + writeback_to_commit_bus1.valid + writeback_to_commit_bus2.valid;
    end
end

assign flush = rob[rob_head  ].state == Inst_Complete && rob[rob_head  ].exception.ex 
            || rob[rob_head+1].state == Inst_Complete && rob[rob_head+1].exception.ex;

always_comb begin
    commit_inst1_valid = rob[rob_head  ].state == Inst_Complete;
    commit_inst2_valid = rob[rob_head+1].state == Inst_Complete;
    if(rob[rob_head+1].is_br_op || rob[rob_head+1].is_store_op
    || rob[rob_head+1].exception.ex)
        commit_inst2_valid = 1'b0;

end

endmodule
