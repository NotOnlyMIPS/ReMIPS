`include "../cpu.svh"

module test_write(
    input  clk,
    input  reset,

    input  flush,

    // dispatch
    input  logic ds_to_rob_valid, 
    input  logic cs_allowin,
    input  logic [3:0] rob_tail_o,
    input  rob_entry_t map_to_rob_bus1,
    input  rob_entry_t map_to_rob_bus2,

    // writeback
    input  execute_to_commit_bus_t execute_to_commit_bus1,
    input  execute_to_commit_bus_t execute_to_commit_bus2,

    // commit
    input  commit_to_debug_bus_t commit_to_debug_bus1,
    input  commit_to_debug_bus_t commit_to_debug_bus2,

    // debug
    output debug_bus_t debug_bus1,
    output debug_bus_t debug_bus2

);

debug_bus_t test_queue[15:0];

logic [3:0] rob_tail_o_next;

debug_bus_t debug_bus1_r, debug_bus2_r;

assign rob_tail_o_next = rob_tail_o + 1;

assign debug_bus1 = debug_bus1_r;
assign debug_bus2 = debug_bus2_r;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i=0; i<16; i=i+1) begin
            test_queue[i] <= 0;
        end
    end else begin
        if(ds_to_rob_valid && cs_allowin) begin
            test_queue[rob_tail_o  ].valid    <= map_to_rob_bus1.state == Inst_Wait;
            test_queue[rob_tail_o  ].pc       <= map_to_rob_bus1.pc;
            test_queue[rob_tail_o  ].dest     <= map_to_rob_bus1.dest;
            test_queue[rob_tail_o  ].phy_dest <= map_to_rob_bus1.phy_dest;
            test_queue[rob_tail_o_next].valid    <= map_to_rob_bus2.state == Inst_Wait;
            test_queue[rob_tail_o_next].pc       <= map_to_rob_bus2.pc;
            test_queue[rob_tail_o_next].dest     <= map_to_rob_bus2.dest;
            test_queue[rob_tail_o_next].phy_dest <= map_to_rob_bus2.phy_dest;
        end

        if(execute_to_commit_bus1.valid) begin
            test_queue[execute_to_commit_bus1.rob_entry_num].wstrb <= execute_to_commit_bus1.rf_we;
            test_queue[execute_to_commit_bus1.rob_entry_num].wdata <= execute_to_commit_bus1.result;
        end
        if(execute_to_commit_bus2.valid) begin
            test_queue[execute_to_commit_bus2.rob_entry_num].wstrb <= execute_to_commit_bus2.rf_we;
            test_queue[execute_to_commit_bus2.rob_entry_num].wdata <= execute_to_commit_bus2.result;
        end
    end

    if(reset || flush) begin
        debug_bus1_r <= '0;
        debug_bus2_r <= '0;
    end else begin
        if(commit_to_debug_bus1.valid) begin
            debug_bus1_r.valid    <= test_queue[commit_to_debug_bus1.rob_entry_num].valid;
            debug_bus1_r.pc       <= test_queue[commit_to_debug_bus1.rob_entry_num].pc;
            debug_bus1_r.wstrb    <= test_queue[commit_to_debug_bus1.rob_entry_num].wstrb;
            debug_bus1_r.dest     <= test_queue[commit_to_debug_bus1.rob_entry_num].dest;
            debug_bus1_r.phy_dest <= test_queue[commit_to_debug_bus1.rob_entry_num].phy_dest;
            debug_bus1_r.wdata    <= test_queue[commit_to_debug_bus1.rob_entry_num].wdata;

            debug_bus1_r.br_op          <= commit_to_debug_bus1.br_op;
            debug_bus1_r.predict_sucess <= commit_to_debug_bus1.predict_sucess;
        end
        else
            debug_bus1_r.valid = 1'b0;

        if(commit_to_debug_bus2.valid)  begin
            debug_bus2_r.valid    <= test_queue[commit_to_debug_bus2.rob_entry_num].valid;
            debug_bus2_r.pc       <= test_queue[commit_to_debug_bus2.rob_entry_num].pc;
            debug_bus2_r.wstrb    <= test_queue[commit_to_debug_bus2.rob_entry_num].wstrb;
            debug_bus2_r.dest     <= test_queue[commit_to_debug_bus2.rob_entry_num].dest;
            debug_bus2_r.phy_dest <= test_queue[commit_to_debug_bus2.rob_entry_num].phy_dest;
            debug_bus2_r.wdata    <= test_queue[commit_to_debug_bus2.rob_entry_num].wdata;

            debug_bus2_r.br_op          <= commit_to_debug_bus2.br_op;
            debug_bus2_r.predict_sucess <= commit_to_debug_bus2.predict_sucess;
        end
        else
            debug_bus2_r.valid = 1'b0;
    end
end

endmodule
