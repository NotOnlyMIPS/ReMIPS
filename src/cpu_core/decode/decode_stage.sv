`include "../cpu.svh"

module decode_stage (
    input  clk,
    input  reset,

    input  flush,

    input  logic fs_to_valid,
    output logic ds_allowin,

    input  logic is_allowin,
    input  logic cs_allowin,
    output logic ds_to_is_valid,
    output logic ds_to_rob_valid,

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

    input  logic commit_store_ready,
    input  logic [3:0] rob_tail,
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

logic decode_wait_1cycle_r, decode_wait_1cycle;
logic inst1_mul_div_op, inst2_mul_div_op;

assign decode_wait_1cycle = inst1_mul_div_op || inst2_mul_div_op;
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
    end
    else if(inst1_mul_div_op || inst2_mul_div_op) begin
        decode_wait_1cycle_r <= 1'b1;
    end

end

// decoder
logic inst1_is_store_op, inst2_is_store_op;
operation_t inst1_op, inst2_op;

decoded_inst_t sel_decode_inst1, sel_decode_inst2;
operation_t sel_inst1_op, sel_inst2_op;
virt_t  sel_inst1_pc, sel_inst2_pc;

inst_decoder inst_decoder1 (
    .valid(decode_inst1.valid),
    .inst (decode_inst1.inst),
    .op   (inst1_op)
);

inst_decoder inst_decoder2 (
    .valid(decode_inst2.valid),
    .inst (decode_inst2.inst),
    .op   (inst2_op)
);

control_signal inst_control1 (
    .valid  (decode_inst1.valid),

    .pc         (sel_inst1_pc),
    .operation  (sel_inst1_op),
    .inst       (sel_decode_inst1),
    .inst_d     (decode_inst1_d),

    .is_inst2(1'b0),
    .is_store_op(inst1_is_store_op),

    .exception   (decode_inst1.exception),
    .exception_d (decode_inst1_ex       )

);

control_signal inst_control2 (
    .valid  (decode_inst2.valid),

    .pc         (sel_inst2_pc),
    .operation  (sel_inst2_op),
    .inst       (sel_decode_inst2),
    .inst_d     (decode_inst2_d),

    .is_inst2(1'b1),
    .is_store_op(inst2_is_store_op),

    .exception   (decode_inst2.exception),
    .exception_d (decode_inst2_ex       )

);

// decode to map bus(for mul/div)
decode_to_map_bus_t decode_to_map_bus1, decode_to_map_bus2;

assign inst1_mul_div_op = inst1_op == OP_MUL  || inst1_op == OP_MULT || inst1_op == OP_MULTU
                       || inst1_op == OP_DIV  || inst1_op == OP_DIVU
                       || inst1_op == OP_MADD || inst1_op == OP_MADDU
                       || inst1_op == OP_MSUB || inst1_op == OP_MSUBU;
assign inst2_mul_div_op = inst2_op == OP_MUL  || inst2_op == OP_MULT || inst2_op == OP_MULTU
                       || inst2_op == OP_DIV  || inst2_op == OP_DIVU
                       || inst2_op == OP_MADD || inst2_op == OP_MADDU
                       || inst2_op == OP_MSUB || inst2_op == OP_MSUBU;

always_comb begin
    sel_decode_inst1 = decode_inst1.inst;
    sel_decode_inst2 = decode_inst2.inst;
    sel_inst1_op     = inst1_op;
    sel_inst2_op     = inst2_op;
    sel_inst1_pc     = decode_inst1.pc;
    sel_inst2_pc     = decode_inst2.pc;

    decode_to_map_bus1.valid = decode_inst1.valid;
    decode_to_map_bus1.inst  = decode_inst1_d;
    decode_to_map_bus1.pc    = decode_inst1.pc;
    decode_to_map_bus1.is_store_op = inst1_is_store_op;
    decode_to_map_bus1.exception   = 'b0;
    decode_to_map_bus2.valid = decode_inst2.valid;
    decode_to_map_bus2.inst  = decode_inst2_d;
    decode_to_map_bus2.pc    = decode_inst2.pc;
    decode_to_map_bus2.is_store_op = inst2_is_store_op;
    decode_to_map_bus2.exception   = 'b0;

    if(decode_wait_1cycle_r) begin
        if(inst2_mul_div_op) begin
            sel_decode_inst1 = decode_inst2.inst;
            sel_inst1_op     = inst2_op;
            sel_inst1_pc     = decode_inst2.pc;
            decode_to_map_bus1.valid = decode_inst2.valid;
        end
        else begin
            decode_to_map_bus1.valid = 1'b0;
        end
    end
    else if(decode_wait_1cycle) begin
        if(inst1_mul_div_op) begin
            sel_decode_inst2 = decode_inst1.inst;
            sel_inst2_op     = inst1_op;
            sel_inst2_pc     = decode_inst1.pc;
            decode_to_map_bus2.valid = decode_inst1.valid;
        end
        else begin
            decode_to_map_bus2.valid = 1'b0;
        end
    end
end


/* map stage */

map_to_ds_bus_t map_inst1, map_inst2;
logic  free_list_empty, map_done;
logic [2:0] store_head, store_tail;

assign map_stage_ready_go = !free_list_empty;
assign map_stage_allowin  = map_stage_ready_go && is_allowin && cs_allowin || !map_stage_valid;
assign ds_to_is_valid     = map_stage_valid && map_stage_ready_go && cs_allowin;
assign ds_to_rob_valid    = map_stage_valid && map_stage_ready_go && is_allowin;

assign map_done           = map_stage_allowin && decode_to_map_valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        map_stage_valid <= 1'b0;
        map_inst1 <= '0;
        map_inst2 <= '0;
    end
    else if(map_stage_allowin) begin
        map_stage_valid <= decode_to_map_valid;
        map_inst1 <= decode_to_map_bus1;
        map_inst2 <= decode_to_map_bus2;
    end

    // store
    if(reset || flush) begin
        store_head <= '0;
        store_tail <= '0;
    end
    else begin
        store_tail <= store_tail + map_inst1.valid&&map_inst1.is_store_op
                                 + map_inst2.valid&&map_inst2.is_store_op;
        store_head <= store_head + commit_store_ready;
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
    .sel_inst1_dest (select_to_busy_table_bus1.dest ),
    .sel_inst2_dest (select_to_busy_table_bus2.dest ),
    
    // writeback
    .wb_inst1_dest  (writeback_to_busy_table_bus1.dest),
    .wb_inst2_dest  (writeback_to_busy_table_bus2.dest)

);


// decode to issue
// inst1
assign decode_to_issue_bus1.valid = map_inst1.valid;
assign decode_to_issue_bus1.pc    = map_inst1.pc;

assign decode_to_issue_bus1.src1_ready = inst1_src1_ready;
assign decode_to_issue_bus1.src2_ready = inst1_src2_ready;
assign decode_to_issue_bus1.phy_src1   = inst1_phy_src1;
assign decode_to_issue_bus1.phy_src2   = inst1_phy_src2;
assign decode_to_issue_bus1.phy_dest   = inst1_phy_dest;
assign decode_to_issue_bus1.old_dest   = inst1_old_dest;
assign decode_to_issue_bus1.inst       = map_inst1.inst;

assign decode_to_issue_bus1.rob_entry_num = rob_tail;

assign decode_to_issue_bus1.is_store_op     = map_inst1.is_store_op;
assign decode_to_issue_bus1.pre_store_ready = store_head == store_tail;
assign decode_to_issue_bus1.pre_store       = store_tail-1;
assign decode_to_issue_bus1.store_num       = store_tail;

assign decode_to_issue_bus1.exception = map_inst1.exception;

// inst2
assign decode_to_issue_bus2.valid = map_inst2.valid;
assign decode_to_issue_bus2.pc    = map_inst2.pc;

assign decode_to_issue_bus2.src1_ready = inst2_src1_ready;
assign decode_to_issue_bus2.src2_ready = inst2_src2_ready;
assign decode_to_issue_bus2.phy_src1   = inst2_phy_src1;
assign decode_to_issue_bus2.phy_src2   = inst2_phy_src2;
assign decode_to_issue_bus2.phy_dest   = inst2_phy_dest;
assign decode_to_issue_bus2.old_dest   = inst2_old_dest;
assign decode_to_issue_bus2.inst       = map_inst2.inst;

assign decode_to_issue_bus2.rob_entry_num = map_inst1.valid ? rob_tail + 1 : rob_tail;

assign decode_to_issue_bus2.is_store_op     = map_inst2.is_store_op;
assign decode_to_issue_bus2.pre_store_ready = (store_head == store_tail) && !(map_inst1.valid&&map_inst1.is_store_op);
assign decode_to_issue_bus2.pre_store       = map_inst1.valid&&map_inst1.is_store_op ? store_tail : store_tail-1;
assign decode_to_issue_bus2.store_num       = map_inst1.valid&&map_inst1.is_store_op ? store_tail+1 : store_tail;

assign decode_to_issue_bus2.exception = map_inst2.exception;

// map to rob
// inst1
assign map_to_rob_bus1.state = map_inst1.valid ? Inst_Wait : Inst_Invalid;
assign map_to_rob_bus1.pc    = map_inst1.pc;

assign map_to_rob_bus1.rf_we = map_inst1.inst.rf_we;
assign map_to_rob_bus1.dest  = map_inst1.inst.rf_we ? inst1_phy_dest : 0;
assign map_to_rob_bus1.phy_dest = inst1_phy_dest;
assign map_to_rob_bus1.old_dest = inst1_old_dest;

assign map_to_rob_bus1.is_br_op    = map_inst1.inst.is_br_op;
assign map_to_rob_bus1.is_store_op = map_inst1.is_store_op;

assign map_to_rob_bus1.verify_result = '0;

assign map_to_rob_bus1.exception = map_inst1.exception;

// inst2
assign map_to_rob_bus2.state = map_inst2.valid ? Inst_Wait : Inst_Invalid;
assign map_to_rob_bus2.pc    = map_inst2.pc;

assign map_to_rob_bus2.rf_we = map_inst2.inst.rf_we;
assign map_to_rob_bus2.dest  = map_inst2.inst.rf_we ? inst2_phy_dest : 0;
assign map_to_rob_bus2.phy_dest = inst2_phy_dest;
assign map_to_rob_bus2.old_dest = inst2_old_dest;

assign map_to_rob_bus2.is_br_op    = map_inst2.inst.is_br_op;
assign map_to_rob_bus2.is_store_op = map_inst2.is_store_op;

assign map_to_rob_bus2.verify_result = '0;

assign map_to_rob_bus2.exception = map_inst2.exception;


endmodule
