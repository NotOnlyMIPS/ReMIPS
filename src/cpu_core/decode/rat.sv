`include "../cpu.svh"

module RAT(
    input clk,
    input reset,

    input  logic flush,
    input  logic map_done,
    output logic free_list_empty,

    // speculative rat
    input  logic      inst1_rf_we,
    input  reg_addr_t inst1_src1,
    output reg_addr_t inst1_phy_src1,
    input  reg_addr_t inst1_src2,
    output reg_addr_t inst1_phy_src2,
    input  reg_addr_t inst1_dest,
    output reg_addr_t inst1_phy_dest,
    output reg_addr_t inst1_old_dest,

    input  logic      inst2_rf_we,
    input  reg_addr_t inst2_src1,
    output reg_addr_t inst2_phy_src1,
    input  reg_addr_t inst2_src2,
    output reg_addr_t inst2_phy_src2,
    input  reg_addr_t inst2_dest,
    output reg_addr_t inst2_phy_dest,
    output reg_addr_t inst2_old_dest,

    input  logic      src1_raw_hazard,
    input  logic      src2_raw_hazard,
    input  logic      dest_waw_hazard,

    // commit rat
    input  logic      retire_inst1_rf_we,
    input  reg_addr_t retire_inst1_dest,
    input  reg_addr_t retire_inst1_old_dest,
    input  reg_addr_t retire_inst1_phy_dest,
    input  logic      retire_inst2_rf_we,
    input  reg_addr_t retire_inst2_dest,
    input  reg_addr_t retire_inst2_old_dest,
    input  reg_addr_t retire_inst2_phy_dest

);

logic retire_dest1_valid, retire_dest2_valid;
assign retire_dest1_valid = retire_inst1_rf_we && retire_inst1_old_dest != 6'd0;
assign retire_dest2_valid = retire_inst2_rf_we && retire_inst2_old_dest != 6'd0;

// speculative 
rat_entry_t rat[33:0];
free_list_entry_t free_list[`REG_NUM-1:0];
logic[5:0] free_list_head, free_list_head_commit;
logic[5:0] free_list_tail, free_list_tail_commit;
logic[5:0] free_list_size, free_list_size_commit;
logic[5:0] free_list_head_next, free_list_tail_next;

assign free_list_empty = free_list_size < 2;
assign free_list_head_next = free_list_head + 1;
assign free_list_tail_next = free_list_tail + 1;

always_ff @(posedge clk) begin
    // speculative rat
    if(reset) begin
        for(int i=0; i<=33; i++) begin
            rat[i].speculative_state <= '0;
        end
    end
    else if(flush) begin
        for(int i=0; i <=33; i++) begin
            rat[i].speculative_state <= rat[i].commit_state;
        end
    end
    else if(inst1_rf_we && inst2_rf_we && map_done) begin
        if(dest_waw_hazard) begin
            rat[inst2_dest].speculative_state <= inst2_phy_dest;
        end
        else begin
            rat[inst1_dest].speculative_state <= inst1_phy_dest;
            rat[inst2_dest].speculative_state <= inst2_phy_dest;
        end
    end
    else if(inst1_rf_we && map_done) begin
        rat[inst1_dest].speculative_state <= inst1_phy_dest;
    end
    else if(inst2_rf_we && map_done) begin
        rat[inst2_dest].speculative_state <= inst2_phy_dest;
    end

    // free list speculative state
    if(reset) begin
        free_list_size <= 6'd63;
        free_list_head <= 6'd1;
        free_list_tail <= 6'd0;
        for(int j=0; j<=63; j++) begin
            free_list[j].speculative_state <= j;
            // free_list[j].commit_state      <= j;
        end
    end
    else if(flush) begin
        free_list_size <= free_list_size_commit;
        free_list_head <= free_list_head_commit;
        free_list_tail <= free_list_tail_commit;
        // for(int j=0; j<=63; j++) begin
        //     free_list[j].speculative_state <= free_list[j].commit_state;
        // end
    end
    else begin
        if(map_done) begin
            free_list_head <= free_list_head + inst1_rf_we + inst2_rf_we;
        end

        free_list_tail <= free_list_tail + retire_dest1_valid + retire_dest2_valid;

        if(retire_dest1_valid && retire_dest2_valid) begin
            free_list[free_list_tail     ].speculative_state <= retire_inst1_old_dest;
            free_list[free_list_tail_next].speculative_state <= retire_inst2_old_dest;
        end
        else if(retire_dest1_valid) begin
            free_list[free_list_tail].speculative_state <= retire_inst1_old_dest;
        end
        else if(retire_dest2_valid) begin
            free_list[free_list_tail].speculative_state <= retire_inst2_old_dest;
        end

        free_list_size <= free_list_size + retire_dest1_valid + retire_dest2_valid 
                                         - {6'b0, inst1_rf_we&&map_done} - {6'b0, inst2_rf_we&&map_done};
    end
end


// speculative rat
assign inst1_phy_src1 = inst1_src1 == 0 ? 6'd0 : rat[inst1_src1].speculative_state;
assign inst1_phy_src2 = inst1_src2 == 0 ? 6'd0 : rat[inst1_src2].speculative_state;
assign inst1_old_dest = inst1_dest == 0 ? 6'd0 : rat[inst1_dest].speculative_state;
assign inst2_phy_src1 = src1_raw_hazard ? inst1_phy_dest : (inst2_src1 == 0 ? 6'd0 : rat[inst2_src1].speculative_state);
assign inst2_phy_src2 = src2_raw_hazard ? inst1_phy_dest : (inst2_src2 == 0 ? 6'd0 : rat[inst2_src2].speculative_state);
assign inst2_old_dest = dest_waw_hazard ? inst1_phy_dest : (inst2_dest == 0 ? 6'd0 : rat[inst2_dest].speculative_state);

always_comb begin
    inst1_phy_dest = '0;
    inst2_phy_dest = '0;
    // free list speculative state
    if(inst1_rf_we && inst2_rf_we) begin
        inst1_phy_dest = inst1_dest == 0 ? 6'd0 : free_list[free_list_head     ].speculative_state;
        inst2_phy_dest = inst2_dest == 0 ? 6'd0 : free_list[free_list_head_next].speculative_state;
    end
    else if(inst1_rf_we) begin
        inst1_phy_dest = inst1_dest == 0 ? 6'd0 : free_list[free_list_head].speculative_state;
    end
    else if(inst2_rf_we) begin
        inst2_phy_dest = inst2_dest == 0 ? 6'd0 : free_list[free_list_head].speculative_state;
    end
end


// commit

always_ff @(posedge clk) begin
    // rat
    if(reset) begin
        for(int i=0; i<=33; i++) begin
            rat[i].commit_state <= '0;
        end
    end
    else begin
        if(retire_inst1_rf_we && retire_inst2_rf_we) begin
            if(retire_inst1_dest == retire_inst2_dest) begin
                rat[retire_inst2_dest].commit_state <= retire_inst2_phy_dest;
            end
            else begin
                rat[retire_inst1_dest].commit_state <= retire_inst1_phy_dest;
                rat[retire_inst2_dest].commit_state <= retire_inst2_phy_dest;
            end
        end
        else if(retire_inst1_rf_we) begin
            rat[retire_inst1_dest].commit_state <= retire_inst1_phy_dest;
        end
        else if(retire_inst2_rf_we) begin
            rat[retire_inst2_dest].commit_state <= retire_inst2_phy_dest;
        end
    end
    
    // free list
    if(reset) begin
        free_list_head_commit <= 6'd1;
        free_list_tail_commit <= 6'd0;
        free_list_size_commit <= 7'd63;
    end
    else begin
        free_list_head_commit <= free_list_head_commit + retire_inst1_rf_we + retire_inst2_rf_we;

        free_list_tail_commit <= free_list_tail_commit + retire_dest1_valid + retire_dest2_valid;

        free_list_size_commit <= free_list_size_commit + retire_dest1_valid + retire_dest2_valid 
                                                       - retire_inst1_rf_we - retire_inst2_rf_we;
    end
end

`ifdef GOLDEN_TRACE
logic phy_dest_error;
logic free_list_error;
logic [2:0] free_list_num[`REG_NUM-1:0];

assign phy_dest_error =  map_done && (inst1_phy_dest != 0) && (inst1_phy_dest == inst2_phy_dest);

always_comb begin
    free_list_error = 0;
    for(int i=0; i<64; i++) begin
        if(free_list_num[i] > 1) begin
            free_list_error = 1'b1;
        end
    end
end

always_ff @(posedge clk) begin
    if(reset) begin
        for(int i=0; i<64; i=i+1)
            free_list_num[i] <= 3'd1;
    end
    else begin
        if(retire_inst1_rf_we)
            free_list_num[retire_inst1_phy_dest]--;
        if(retire_inst2_rf_we)
            free_list_num[retire_inst2_phy_dest]--;
        if(retire_dest1_valid)
            free_list_num[retire_inst1_old_dest]++;
        if(retire_dest2_valid)
            free_list_num[retire_inst2_old_dest]++;
    end
end

`endif

endmodule
