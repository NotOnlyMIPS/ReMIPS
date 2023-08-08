`include "../cpu.svh"

module busy_table (
    input clk,
    input reset,

    input flush,

    // read
    input reg_addr_t inst1_src1,
    input reg_addr_t inst1_src2,
    input reg_addr_t inst2_src1,
    input reg_addr_t inst2_src2,

    input  logic src1_raw_hazard,
    input  logic src2_raw_hazard,

    output logic inst1_src1_ready,
    output logic inst1_src2_ready,
    output logic inst2_src1_ready,
    output logic inst2_src2_ready,

    // map
    input logic map_inst1_rf_we,
    input logic map_inst2_rf_we,
    input reg_addr_t map_inst1_dest,
    input reg_addr_t map_inst2_dest,

    // select
    // input logic sel_inst1_rf_we,
    // input logic sel_inst2_rf_we,
    input reg_addr_t sel_inst1_dest,
    input reg_addr_t sel_inst2_dest,

    // writeback
    // input logic wb_inst1_rf_we,
    // input logic wb_inst2_rf_we,
    input reg_addr_t wb_inst1_dest,
    input reg_addr_t wb_inst2_dest
);

logic busy_table[`REG_NUM-1:0];

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i=0; i<`REG_NUM; i=i+1) begin
            busy_table[i] <= 1'b0;
        end
    end
    else begin
        if(map_inst1_rf_we && map_inst1_dest != 0) begin
            busy_table[map_inst1_dest] <= 1'b1;
        end
        if(map_inst2_rf_we && map_inst2_dest != 0) begin
            busy_table[map_inst2_dest] <= 1'b1;
        end
        if(sel_inst1_dest != 0) begin
            busy_table[sel_inst1_dest] <= 1'b0;
        end
        if(sel_inst2_dest != 0) begin
            busy_table[sel_inst2_dest] <= 1'b0;
        end
        if(wb_inst1_dest != 0) begin
            busy_table[wb_inst1_dest] <= 1'b0;
        end
        if(wb_inst2_dest != 0) begin
            busy_table[wb_inst2_dest] <= 1'b0;
        end
    end
end

// write first
always_comb begin
    inst1_src1_ready = 1'b1;
    inst1_src2_ready = 1'b1;
    inst2_src1_ready = !src1_raw_hazard;
    inst2_src2_ready = !src2_raw_hazard;

    if(inst1_src1 != 0 && busy_table[inst1_src1] == 1'b1
    && inst1_src1 != sel_inst1_dest && inst1_src1 != sel_inst2_dest
    && inst1_src1 != wb_inst1_dest  && inst1_src1 != wb_inst2_dest) begin
        inst1_src1_ready = 1'b0;
    end
    if(inst1_src2 != 0 && busy_table[inst1_src2] == 1'b1
    && inst1_src2 != sel_inst1_dest && inst1_src2 != sel_inst2_dest
    && inst1_src2 != wb_inst1_dest  && inst1_src2 != wb_inst2_dest) begin
        inst1_src2_ready = 1'b0;
    end
    if(inst2_src1 != 0 && busy_table[inst2_src1] == 1'b1
    && inst2_src1 != sel_inst1_dest && inst2_src1 != sel_inst2_dest
    && inst2_src1 != wb_inst1_dest  && inst2_src1 != wb_inst2_dest) begin
        inst2_src1_ready = 1'b0;
    end
    if(inst2_src2 != 0 && busy_table[inst2_src2] == 1'b1
    && inst2_src2 != sel_inst1_dest && inst2_src2 != sel_inst2_dest
    && inst2_src2 != wb_inst1_dest  && inst2_src2 != wb_inst2_dest) begin
        inst2_src2_ready = 1'b0;
    end
end

endmodule