`include "../cpu.svh"

module decode_stage (
    input clk,
    input reset,

    input  fs_to_valid,
    output ds_allowin,

    input   is_allowin,
    input   cs_allowin,
    output  ds_to_valid,

    input  fetch_to_decode_bus_t fetch_to_decode_bus1,
    input  fetch_to_decode_bus_t fetch_to_decode_bus2,

    // busy table
    input  select_to_busy_table_bus_t select_to_busy_table_bus1,
    input  select_to_busy_table_bus_t select_to_busy_table_bus2,

    input  writeback_to_busytable_bus_t writeback_to_busytable_bus1,
    input  writeback_to_busytable_bus_t writeback_to_busytable_bus2,

    // rat
    input  commit_to_rat_bus_t commit_to_rat_bus1,
    input  commit_to_rat_bus_t commit_to_rat_bus2,

    // dispatch
    output decode_to_issue_bus_t decode_to_issue_bus1,
    output decode_to_issue_bus_t decode_to_issue_bus2,

    output rob_entry_t map_to_rob_bus1,
    output rob_entry_t map_to_rob_bus2

);

// pipeline registers
logic decode_stage_valid;
logic decode_stage_ready_go;
logic decode_to_map_valid;

logic map_stage_valid;
logic map_stage_ready_go;
logic map_stage_allowin;


/* decode stage */

fs_to_ds_bus_t decode_inst1, decode_inst2;
decoded_inst_t decode_inst1_d, decode_inst2_d;
exception_t    decode_inst1_ex, decode_inst2_ex;

logic decode_wait_1cycle, decode_wait_1cycle_r, wait_mul_div_op;

assign decode_wait_1cycle    = decode_inst1_d.is_mul_div_op || decode_inst2_d.is_mul_div_op;
assign decode_stage_ready_go = 1'b1;
assign ds_allowin            = decode_stage_ready_go && map_stage_allowin && (!decode_wait_1cycle || decode_wait_1cycle_r)
                            || !decode_stage_valid;
assign decode_to_map_valid   = decode_stage_valid    && decode_stage_ready_go;

always_ff @(posedge clk) begin
    if(reset) begin
        decode_stage_valid <= 1'b0;
        decode_inst1 <= '0;
        decode_inst2 <= '0;
    end
    else if(ds_allowin) begin
        decode_stage_valid <= fs_to_valid;
        decode_inst1 <= fetch_to_decode_bus1;
        decode_inst2 <= fetch_to_decode_bus2;
    end

    // wait 1 cycle
    if(reset || decode_wait_1cycle_r && map_stage_allowin) begin
        decode_wait_1cycle_r <= 1'b0;
        wait_mul_div_op      <= 1'b0;
    end
    else if(decode_inst1_d.is_mul_div_op || decode_inst2_d.is_mul_div_op) begin
        decode_wait_1cycle_r <= 1'b1;
        wait_mul_div_op      <= decode_inst2_d.is_mul_div_op;
    end

end

// decoder
inst_decoder decoder1 (
    .clk,
    .reset,

    .pc     (decode_inst1.pc),
    .inst   (decode_inst1.inst & {32{decode_inst1.valid}}),
    .inst_d (decode_inst1_d),

    .exception   (decode_inst1.exception),
    .exception_d (decode_inst1_ex       )

);

inst_decoder decoder2 (
    .clk,
    .reset,

    .pc     (decode_inst2.pc),
    .inst   (decode_inst2.inst & {32{decode_inst2.valid}}),
    .inst_d (decode_inst2_d),

    .exception   (decode_inst2.exception),
    .exception_d (decode_inst2_ex       )

);

// decode to map bus(for mul/div)
decoded_inst_t      decode_dest_hi, decode_dest_lo;
decode_to_map_bus_t decode_to_map_bus1, decode_to_map_bus2;

always_comb begin
    decode_dest_hi = '0;
    decode_dest_lo = '0;
    decode_to_map_bus1.valid = decode_inst1.valid;
    decode_to_map_bus1.pc    = decode_inst1.pc;
    decode_to_map_bus1.inst  = decode_inst1_d;
    decode_to_map_bus1.ex    = decode_inst1.ex;
    decode_to_map_bus2.valid = decode_inst2.valid;
    decode_to_map_bus2.pc    = decode_inst2.pc;
    decode_to_map_bus2.inst  = decode_inst2_d;
    decode_to_map_bus2.ex    = decode_inst2.ex;
    if(decode_wait_1cycle_r) begin
        if(wait_mul_div_op) begin
            decode_dest_hi.dest = 32;
            decode_dest_lo.dest = 33;
            decode_to_map_bus1.valid = decode_inst2.valid;
            decode_to_map_bus1.pc    = decode_inst2.pc;
            decode_to_map_bus1.inst  = decode_inst2_d | decode_dest_hi;
            decode_to_map_bus1.ex    = decode_inst2.ex;
            decode_to_map_bus2.inst  = decode_inst2_d | decode_dest_lo;
        end
        else begin
            decode_to_map_bus1.valid = 1'b0;
        end
    end
    else if(decode_wait_1cycle) begin
        if(inst1_d.is_mul_div_op) begin
            decode_dest_hi.dest = 32;
            decode_dest_lo.dest = 33;
            decode_to_map_bus1.inst  = decode_inst1_d | decode_dest_hi;
            decode_to_map_bus2.valid = decode_inst1.valid;
            decode_to_map_bus2.pc    = decode_inst1.pc;
            decode_to_map_bus2.inst  = decode_inst1_d | decode_dest_lo;
            decode_to_map_bus2.ex    = decode_inst1.ex;
        end
        else begin
            decode_to_map_bus2.valid = 1'b0;
        end
    end
end


/* map stage */

map_to_ds_bus_t map_inst1, map_inst2;
logic  free_list_empty, map_done;

assign map_stage_ready_go = !free_list_empty;
assign map_stage_allowin  = map_stage_ready_go && is_allowin && cs_allowin || !map_stage_valid;
assign ds_to_valid        = map_stage_valid && map_stage_ready_go;

assign map_done           = map_stage_allowin && decode_to_map_valid;

always_ff @(posedge clk) begin
    if(reset) begin
        map_stage_valid <= 1'b0;
        map_inst1 <= '0;
        map_inst2 <= '0;
    end
    else if(map_stage_allowin) begin
        map_stage_valid <= decode_to_map_valid;
        map_inst1 <= decode_to_map_bus1;
        map_inst2 <= decode_to_map_bus2;
    end
end

// correlation check
logic src1_raw_hazard, scr2_raw_hazard, dest_waw_hazard;
reg_addr_t inst1_src1, inst1_src2, inst1_dest;
reg_addr_t inst2_src1, inst2_src2, inst2_dest;
reg_addr_t inst1_phy_src1, inst1_phy_src2, inst1_phy_dest;
reg_addr_t inst2_phy_src1, inst2_phy_src2, inst2_phy_dest;
reg_addr_t inst1_old_dest, inst2_old_dest;

always_comb begin
    src1_raw_hazard = 0;
    scr2_raw_hazard = 0;
    dest_waw_hazard = 0;
    if(map_stage_valid) begin
        if(map_inst1.valid && map_inst2.valid) begin
            if(map_inst2.use_src1 && map_inst1.inst.rf_we && map_inst2.inst.src1 == map_inst1.inst.dest) begin
                src1_raw_hazard = 1;
            end
            if(map_inst2.use_src2 && map_inst1.inst.rf_we && map_inst2.inst.src2 == map_inst1.inst.dest) begin
                scr2_raw_hazard = 1;
            end
            if(map_inst1.inst.rf_we && map_inst2.inst.rf_we && map_inst1.inst.dest == map_inst2.inst.dest) begin
                dest_waw_hazard = 1;
            end
        end
    end
end

RAT rat (
    .clk,
    .reset,

    .flush,
    .map_done,
    .free_list_empty,

    // speculative rat
    .src1_raw_hazard,
    .scr2_raw_hazard,
    .dest_waw_hazard,

    .inst1_rf_we(map_inst1.valid && map_inst1.inst.rf_we),
    .inst1_src1 (map_inst1.inst.src1),
    .inst1_src2 (map_inst1.inst.src2),
    .inst1_dest (map_inst1.inst.dest),

    .inst1_phy_src1,
    .inst1_phy_src2,
    .inst1_phy_dest,
    .inst1_old_dest,

    .inst2_rf_we(map_inst2.valid && map_inst2.inst.rf_we),
    .inst2_src1 (map_inst2.inst.src1),
    .inst2_src2 (map_inst2.inst.src2),
    .inst2_dest (map_inst2.inst.dest),

    .inst2_phy_src1,
    .inst2_phy_src2,
    .inst2_phy_dest,
    .inst2_old_dest,

    // commit rat
    .retire_inst1_rf_we   (commit_to_rat_bus1.rf_we   ),
    .retire_inst2_rf_we   (commit_to_rat_bus2.rf_we   ),
    .retire_inst1_dest    (commit_to_rat_bus1.dest    ),
    .retire_inst2_dest    (commit_to_rat_bus2.dest    ),
    .retire_inst1_old_dest(commit_to_rat_bus1.old_dest),
    .retire_inst2_old_dest(commit_to_rat_bus2.old_dest),
    .retire_inst1_phy_dest(commit_to_rat_bus1.phy_dest),
    .retire_inst2_phy_dest(commit_to_rat_bus2.phy_dest)

);

// busy table
logic inst1_src1_ready, inst1_src2_ready;
logic inst2_src1_ready, inst2_src2_ready;

busy_table busy_table_u (
    .clk,
    .reset,

    .flush,

    .inst1_src1(inst1_phy_src1),
    .inst1_src2(inst1_phy_src2),
    .inst2_src1(inst2_phy_src1),
    .inst2_src2(inst2_phy_src2),

    .src1_raw_hazard,
    .scr2_raw_hazard,

    .inst1_src1_ready,
    .inst1_src2_ready,
    .inst2_src1_ready,
    .inst2_src2_ready,

    // map
    .map_inst1_rf_we(map_inst1.valid && map_inst1.inst.rf_we),
    .map_inst1_dest (map_inst1.inst.dest),
    .map_inst2_rf_we(map_inst2.valid && map_inst2.inst.rf_we),
    .map_inst2_dest (map_inst2.inst.dest),

    // select
    // .sel_inst1_rf_we(select_to_busy_table_bus1.rf_we),
    .sel_inst1_dest (select_to_busy_table_bus1.dest ),
    // .sel_inst2_rf_we(select_to_busy_table_bus2.rf_we),
    .sel_inst2_dest (select_to_busy_table_bus2.dest ),
    
    // writeback
    // .wb_inst1_rf_we (writeback_to_busy_table_bus1.rf_we),
    .wb_inst1_dest  (writeback_to_busy_table_bus1.dest),
    // .wb_inst2_rf_we (writeback_to_busy_table_bus2.rf_we),
    .wb_inst2_dest  (writeback_to_busy_table_bus2.dest)

);


// decode to issue
assign decode_to_issue_bus1 = { map_inst1.valid,
                                map_inst1.pc,
                                inst1_src1_ready,
                                inst1_src2_ready,
                                inst1_phy_src1,
                                inst1_phy_src2,
                                inst1_phy_dest,
                                inst1_old_dest,
                                map_inst1.inst,
                                map_inst1.exception };

assign decode_to_issue_bus2 = { map_inst2.valid,
                                map_inst2.pc,
                                inst2_src1_ready,
                                inst2_src2_ready,
                                inst2_phy_src1,
                                inst2_phy_src2,
                                inst2_phy_dest,
                                inst2_old_dest,
                                map_inst2.inst,
                                map_inst2.exception };

// map to rob
assign map_to_rob_bus1.state = map_inst1.valid ? Inst_Wait : Inst_Invalid;
assign map_to_rob_bus1.pc    = map_inst1.pc;


endmodule
