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

always_ff @(posedge clk) begin
    // speculative rat
    if(reset) begin
        for(int i=0; i<=33; i++) begin
            rat[i] <= '0;
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
        free_list_head <= 6'd0;
        free_list_tail <= 6'd0;
        for(int j=0; j<=63; j++) begin
            free_list[j].speculative_state <= j;
            free_list[j].commit_state      <= j;
        end
    end
    else if(flush) begin
        free_list_head <= free_list_head_commit;
        free_list_tail <= free_list_tail_commit;
        for(int j=0; j<=63; j++) begin
            free_list[j].speculative_state <= free_list[j].commit_state;
        end
    end
    else if(map_done) begin
        if(inst1_rf_we && inst2_rf_we) begin
            free_list_head <= free_list_head + 2;
        end
        else if(inst1_rf_we) begin
            free_list_head <= free_list_head + 1;
        end
        else if(inst2_rf_we) begin
            free_list_head <= free_list_head + 1;
        end

        if(retire_dest1_valid && retire_dest2_valid) begin
            free_list[free_list_tail  ].speculative_state <= retire_inst1_phy_dest;
            free_list[free_list_tail+1].speculative_state <= retire_inst2_phy_dest;
        end
        else if(retire_dest1_valid) begin
            free_list[free_list_tail].speculative_state <= retire_inst1_phy_dest;
        end
        else if(retire_dest2_valid) begin
            free_list[free_list_tail].speculative_state <= retire_inst2_phy_dest;
        end
    end
end

always_comb begin
    // speculative rat
    inst1_phy_src1 = inst1_src1 == 0 ? 6'd0 : rat[inst1_src1].speculative_state;
    inst1_phy_src2 = inst1_src2 == 0 ? 6'd0 : rat[inst1_src2].speculative_state;
    inst1_old_dest = inst1_dest == 0 ? 6'd0 : rat[inst1_dest].speculative_state;
    inst2.phy_src1 = src1_raw_hazard ? inst1_phy_dest : inst1_src1 == 0 ? 6'd0 : rat[inst2_src1].speculative_state;
    inst2.phy_src2 = src2_raw_hazard ? inst1_phy_dest : inst1_src2 == 0 ? 6'd0 : rat[inst2_src2].speculative_state;
    inst2_old_dest = dest_waw_hazard ? inst1_phy_dest : inst1_dest == 0 ? 6'd0 : rat[inst2_dest].speculative_state;

    // free list speculative state
    if(inst1_rf_we && inst2_rf_we) begin
        inst1_phy_dest = free_list[free_list_head  ].speculative_state;
        inst2_phy_dest = free_list[free_list_head+1].speculative_state;
    end
    else if(inst1_rf_we) begin
        inst1_phy_dest = free_list[free_list_head].speculative_state;
    end
    else if(inst2_rf_we) begin
        inst2_phy_dest = free_list[free_list_head].speculative_state;
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
        if(retire_dest1_valid && retire_dest2_valid) begin
            if(retire_inst1_dest == retire_inst2_dest) begin
                rat[retire_inst1_dest].commit_state <= retire_inst1_phy_dest;
            end
            else begin
                rat[retire_inst1_dest].commit_state <= retire_inst1_phy_dest;
                rat[retire_inst2_dest].commit_state <= retire_inst2_phy_dest;
            end
        end
        else if(retire_dest1_valid) begin
            rat[retire_inst1_dest].commit_state <= retire_inst1_phy_dest;
        end
        else if(retire_dest2_valid) begin
            rat[retire_inst2_dest].commit_state <= retire_inst2_phy_dest;
        end
    end
    
    // free list
    if(reset) begin
        free_list_head_commit <= 6'd0;
        free_list_tail_commit <= 6'd0;
    end
    else begin
        if(retire_inst1_rf_we && retire_inst2_rf_we) begin
            free_list_head_commit <= free_list_head_commit + 2;
        end
        else if(retire_inst1_rf_we) begin
            free_list_head_commit <= free_list_head_commit + 1;
        end
        else if(retire_inst2_rf_we) begin
            free_list_head_commit <= free_list_head_commit + 1;
        end

        if(retire_dest1_valid && retire_dest2_valid) begin
            free_list_tail_commit <= free_list_tail_commit + 2;
        end
        else if(retire_dest1_valid) begin
            free_list_tail_commit <= free_list_tail_commit + 1;
        end
        else if(retire_dest2_valid) begin
            free_list_tail_commit <= free_list_tail_commit + 1;
        end
    end
end

endmodule
