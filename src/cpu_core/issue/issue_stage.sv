`include "../cpu.svh"

module issue_stage (
    input clk,
    input reset,

    input flush,

    input  logic ds_to_valid,
    output logic is_allowin,

    // bypass
    input  bypass_bus_t alu1_bypass_bus,
    input  bypass_bus_t alu2_bypass_bus,
    input  bypass_bus_t bru_bypass_bus,

    // select
    output select_to_busy_table_bus_t select_to_busy_table_bus1,
    output select_to_busy_table_bus_t select_to_busy_table_bus2,

    // writeback
    input  writeback_to_rf_bus_t writeback_to_rf_bus1,
    input  writeback_to_rf_bus_t writeback_to_rf_bus2,

    input  decode_to_issue_bus_t decode_to_issue_bus1,
    input  decode_to_issue_bus_t decode_to_issue_bus2,

    output issue_to_execute_bus_t issue_to_execute_bus1,
    output issue_to_execute_bus_t issue_to_execute_bus2
);

parameter ISSUE_QUEUE_SIZE = 8;

// pipeline registers
logic select_stage_valid;
logic select_stage_ready_go;
logic select_to_issue_valid;

logic issue_stage_valid;
logic issue_stage_allowin;


// issue queue
issue_entry_t issue_queue[ISSUE_QUEUE_SIZE-1:0]; // alu1, mul_div, branch; alu2, load_store, spcial
issue_entry_t issue_queue_bus[ISSUE_QUEUE_SIZE-1:0]; 
logic issue_queue_full;
logic [2:0] issue_queue_num;
logic [1:0] compress_entry_num[ISSUE_QUEUE_SIZE-1:0];


logic select_inst1_valid, select_inst2_valid;
logic [2:0] select_inst1_num, select_inst2_num;
reg_addr_t  select_inst1_dest, select_inst2_dest;

logic mul_div_busy;
logic select_mul_div_valid;
logic [2:0] select_mul_div_num;
logic select_exe1_valid, select_exe2_valid;
logic [2:0] select_exe1_num, select_exe2_num;


assign issue_queue_full = (issue_queue_num == ISSUE_QUEUE_SIZE-1 || issue_queue_num == ISSUE_QUEUE_SIZE-2);

always_ff @(posedge clk) begin
    // issue queue
    if(reset || flush) begin
        for(int i=0; i<ISSUE_QUEUE_SIZE; i++) begin
            issue_queue[i].valid <= 1'b0;
        end
    end
    else begin
        issue_queue[ISSUE_QUEUE_SIZE-1] <= decode_to_issue_bus1;
        issue_queue[ISSUE_QUEUE_SIZE-2] <= decode_to_issue_bus2;
        for(int i=0; i<ISSUE_QUEUE_SIZE-2; i++) begin
            issue_queue[i] <= issue_queue[i  ].valid ? issue_queue_bus[i+compress_entry_num[i  ]] :
                              issue_queue[i+1].valid ? issue_queue_bus[i+compress_entry_num[i+1]] :
                              issue_queue[i+2].valid ? issue_queue_bus[i+compress_entry_num[i+2]] :
                                                       issue_queue[i];
        end
    end

    if(reset || flush) begin
        issue_queue_num <= 3'd0;
    end else if(is_allowin && ds_to_valid) begin
        issue_queue_num <= issue_queue_num + {2'b0, decode_to_issue_bus1.valid} + {2'b0, decode_to_issue_bus2.valid}
                                           - {2'b0, select_inst1_valid}         - {2'b0, select_inst2_valid};
    end

    // select
    if(reset || flush) begin
        mul_div_busy <= 1'b0;
    end
    else if(select_mul_div_valid) begin
        mul_div_busy <= 1'b1;
    end
end

always_comb begin
    compress_entry_num[0] = !issue_queue[0].valid;
    for(int i=1; i<ISSUE_QUEUE_SIZE; i++) begin
        if(compress_entry_num[i-1] == 2'd2) begin
            compress_entry_num[i] = 2'd2;
        end else begin
            compress_entry_num[i] = compress_entry_num[i-1] + !issue_queue[i].valid;
        end
    end
end


// select and wakeup stage

assign select_stage_valid = (issue_queue_num != 3'd0);
assign select_stage_ready_go = select_inst1_valid || select_inst2_valid;
assign is_allowin = select_stage_ready_go && issue_stage_allowin && !issue_queue_full || !select_stage_valid;
assign select_to_issue_valid = select_stage_ready_go && select_stage_valid;

// select
assign select_to_busy_table_bus1 = select_inst1_dest;
assign select_to_busy_table_bus2 = select_inst2_dest;

always_comb begin

    // selcet_mul_div
    select_mul_div_valid = 1'b0;
    select_mul_div_num = 3'd0;
    for(int i=0; i<ISSUE_QUEUE_SIZE; i=i+2) begin
        if(issue_queue[i].valid        && issue_queue[i].is_mul_div_op
        && issue_queue[i].src1_ready   && issue_queue[i].src2_ready
        && issue_queue[i+1].valid      && issue_queue[i+1].is_mul_div_op
        && issue_queue[i+1].src1_ready && issue_queue[i+1].src2_ready
        ) begin
            select_mul_div_valid = 1'b1;
            select_mul_div_num = i;
            break;
        end
    end

    // select_exe1: alu1, branch
    select_exe1_valid = 1'b0;
    select_exe1_num = 3'd0;
    for(int i=0; i<ISSUE_QUEUE_SIZE; i++) begin
        if(issue_queue[i].valid &&
          (issue_queue[i].is_alu1_op || issue_queue[i].is_branch_op)
        && issue_queue[i].src1_ready && issue_queue[i].src2_ready) begin
            select_exe1_valid = 1'b1;
            select_exe1_num = i;
            break;
        end
    end

    // select_exe2: alu2, load_store, special
    select_exe2_valid = 1'b0;
    select_exe2_num = 3'd0;
    for(int i=0; i<ISSUE_QUEUE_SIZE; i++) begin
        if(issue_queue[i].valid &&
          (issue_queue[i].is_alu2_op || issue_queue[i].is_load_store_op || issue_queue[i].is_special_op)
        && issue_queue[i].src1_ready && issue_queue[i].src2_ready) begin
            select_exe2_valid = 1'b1;
            select_exe2_num = i;
            break;
        end
    end

    // select
    select_inst1_valid = 1'b0;
    select_inst2_valid = 1'b0;
    select_inst1_num = 3'd0;
    select_inst2_num = 3'd0;
    if(select_mul_div_valid && !mul_div_busy) begin
        select_inst1_valid = 1'b1;
        select_inst1_num = select_mul_div_num;
        select_inst2_valid = 1'b1;
        select_inst2_num = select_mul_div_num + 1;
    end
    else begin
        select_inst1_valid = select_exe1_valid;
        select_inst1_num = select_exe1_num;
        select_inst1_valid = select_exe2_valid;
        select_inst1_num = select_exe2_num;
    end

    select_inst1_dest = 6'd0;
    select_inst2_dest = 6'd0;
    if(select_inst1_valid && issue_queue[select_inst1_num].inst.rf_we
    && !issue_queue[select_inst1_num].inst.is_mul_div_op
    && !issue_queue[select_inst1_num].inst.is_load_store_op) begin
        select_inst1_dest = issue_queue[select_inst1_num].inst.dest;
    end
    if(select_inst2_valid && issue_queue[select_inst2_num].inst.rf_we
    && !issue_queue[select_inst2_num].inst.is_mul_div_op
    && !issue_queue[select_inst2_num].inst.is_load_store_op) begin
        select_inst2_dest = issue_queue[select_inst2_num].inst.dest;
    end
end

// wakeup
always_comb begin
    issue_queue_bus = issue_queue;
    for(int i=0; i<ISSUE_QUEUE_SIZE; i++) begin
        if((select_inst1_valid && i == select_inst1_num) || (select_inst2_valid && i == select_inst2_num)) begin
            issue_queue_bus[i].valid = 1'b0;
        end
        else begin
            if(select_inst1_valid && issue_queue[i].valid && issue_queue[i].phy_src1 == select_inst1_dest
            && !issue_queue[select_inst1_num].inst.is_mul_div_op 
            && !issue_queue[select_inst1_num].inst.is_load_store_op
            || select_inst2_valid && issue_queue[i].valid && issue_queue[i].phy_src1 == select_inst2_dest
            && !issue_queue[select_inst2_num].inst.is_mul_div_op
            && !issue_queue[select_inst2_num].inst.is_load_store_op
            || issue_inst1.valid  && issue_queue[i].valid && issue_queue[i].phy_src1 == issue_inst1.dest
            && !issue_inst1.inst.is_mul_div_op
            && !issue_inst1.inst.is_load_store_op
            || issue_inst2.valid  && issue_queue[i].valid && issue_queue[i].phy_src1 == issue_inst2.dest
            && !issue_inst2.inst.is_mul_div_op
            && !issue_inst2.inst.is_load_store_op
            || writeback_to_rf_bus1.rf_we && issue_queue[i].valid && issue_queue[i].phy_src1 == writeback_to_rf_bus1.dest
            || writeback_to_rf_bus2.rf_we && issue_queue[i].valid && issue_queue[i].phy_src1 == writeback_to_rf_bus2.dest) begin
                issue_queue_bus[i].src1_ready = 1'b1;
            end
            if(select_inst1_valid && issue_queue[i].valid && issue_queue[i].phy_src2 == select_inst1_dest
            && !issue_queue[select_inst1_num].is_mul_div_op
            && !issue_queue[select_inst1_num].is_load_store_op
            || select_inst2_valid && issue_queue[i].valid && issue_queue[i].phy_src2 == select_inst2_dest
            && !issue_queue[select_inst2_num].is_mul_div_op
            && !issue_queue[select_inst2_num].is_load_store_op
            || issue_inst1.valid  && issue_queue[i].valid && issue_queue[i].phy_src2 == issue_inst1.dest
            && !issue_inst1.inst.is_mul_div_op
            && !issue_inst1.inst.is_load_store_op
            || issue_inst2.valid  && issue_queue[i].valid && issue_queue[i].phy_src2 == issue_inst2.dest
            && !issue_inst2.inst.is_mul_div_op
            && !issue_inst2.inst.is_load_store_op
            || writeback_to_rf_bus1.rf_we && issue_queue[i].valid && issue_queue[i].phy_src2 == writeback_to_rf_bus1.dest
            || writeback_to_rf_bus2.rf_we && issue_queue[i].valid && issue_queue[i].phy_src2 == writeback_to_rf_bus2.dest) begin
                issue_queue_bus[i].src2_ready = 1'b1;
            end
        end
    end
end

// select to issue bus
select_to_issue_bus_t select_to_issue_bus1, select_to_issue_bus2;

assign select_to_issue_bus1 = { select_inst1_valid,
                                issue_queue[select_inst1_num].pc,
                                issue_queue[select_inst1_num].inst,
                                issue_queue[select_inst1_num].phy_src1,
                                issue_queue[select_inst1_num].phy_src2,
                                issue_queue[select_inst1_num].phy_dest,
                                issue_queue[select_inst1_num].old_dest,
                                issue_queue[select_inst1_num].exception};

assign select_to_issue_bus2 = { select_inst2_valid,
                                issue_queue[select_inst2_num].pc,
                                issue_queue[select_inst2_num].inst,
                                issue_queue[select_inst2_num].phy_src1,
                                issue_queue[select_inst2_num].phy_src2,
                                issue_queue[select_inst2_num].phy_dest,
                                issue_queue[select_inst2_num].old_dest,
                                issue_queue[select_inst2_num].exception};

// issue stage

select_to_issue_bus_t issue_inst1, issue_inst2;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        issue_stage_valid <= 1'b0;
        issue_inst1 <= 'b0;
        issue_inst2 <= 'b0;
    end
    else if(issue_stage_allowin) begin
        issue_stage_valid <= select_to_issue_valid;
        issue_inst1 <= select_to_issue_bus1;
        issue_inst2 <= select_to_issue_bus2;
    end
end

// regfile
uint32_t inst1_rdata1, inst1_rdata2, inst2_rdata1, inst2_rdata2;

regfile regfile_u (
    .clk,

    // read
    .inst1_raddr1(issue_inst1.phy_src1),
    .inst1_raddr2(issue_inst1.phy_src2),

    .inst1_rdata1,
    .inst1_rdata2,

    .inst2_raddr1(issue_inst2.phy_src1),
    .inst2_raddr2(issue_inst2.phy_src2),

    .inst2_rdata1,
    .inst2_rdata2,

    // write
    .inst1_we    (writeback_to_rf_bus1.rf_we   ),
    .inst1_waddr (writeback_to_rf_bus1.phy_dest),
    .inst1_wdata (writeback_to_rf_bus1.result  ),

    .inst2_we    (writeback_to_rf_bus2.rf_we   ),
    .inst2_waddr (writeback_to_rf_bus2.phy_dest),
    .inst2_wdata (writeback_to_rf_bus2.result  )

);

// bypass
logic inst1_src1_wait, inst1_src2_wait, inst2_src1_wait, inst2_src2_wait;
uint32_t inst1_src1_value, inst1_src2_value, inst2_src1_value, inst2_src2_value;

always_comb begin
    inst1_src1_wait = 1'b0;
    inst1_src2_wait = 1'b0;
    inst2_src1_wait = 1'b0;
    inst2_src2_wait = 1'b0;

    if(issue_inst1.valid) begin
        if(issue_inst1.phy_src1 != 0 && 
        (  alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src1
        || alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src1
        || bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src1)) begin
            inst1_src1_wait = 1;
        end
        if(issue_inst1.phy_src2 != 0 && 
        (  alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src2
        || alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src2
        || bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src2)) begin
            inst1_src2_wait = 1;
        end
    end

    if(issue_inst2.valid) begin
        if(issue_inst2.phy_src1 != 0 && 
        (  alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src1
        || alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src1
        || bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src1)) begin
            inst2_src1_wait = 1;
        end
        if(issue_inst2.phy_src2 != 0 && 
        (  alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src2
        || alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src2
        || bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src2)) begin
            inst2_src2_wait = 1;
        end
    end

    if(inst1_src1_wait) begin
        inst1_src1_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src1}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src1}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src1}} & bru_bypass_bus.result;
        inst1_src2_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src2}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src2}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src2}} & bru_bypass_bus.result;
    end
    else begin
        inst1_src1_value = inst1_rdata1;
    end
    if(inst1_src2_wait) begin
        inst1_src2_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src2}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src2}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src2}} & bru_bypass_bus.result;
        inst1_src2_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst1.phy_src2}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst1.phy_src2}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst1.phy_src2}} & bru_bypass_bus.result;
    end
    else begin
        inst1_src2_value = inst1_rdata2;
    end

    if(inst2_src1_wait) begin
        inst2_src1_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src1}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src1}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src1}} & bru_bypass_bus.result;
        inst2_src1_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src1}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src1}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src1}} & bru_bypass_bus.result;
    end
    else begin
        inst2_src1_value = inst2_rdata1;
    end
    if(inst2_src2_wait) begin
        inst2_src2_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src2}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src2}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src2}} & bru_bypass_bus.result;
        inst2_src2_value = {32{alu1_bypass_bus.rf_we   && alu1_bypass_bus.dest   == issue_inst2.phy_src2}} & alu1_bypass_bus.result |
                           {32{alu2_bypass_bus.rf_we   && alu2_bypass_bus.dest   == issue_inst2.phy_src2}} & alu2_bypass_bus.result |
                           {32{bru_bypass_bus.rf_we    && bru_bypass_bus.dest    == issue_inst2.phy_src2}} & bru_bypass_bus.result;
    end
    else begin
        inst2_src2_value = inst2_rdata2;
    end
end

// issue to execute
assign issue_to_execute_bus1 = { issue_inst1.valid,
                                issue_inst1.pc,
                                issue_inst1.phy_src1,
                                issue_inst1.phy_src2,
                                issue_inst1.phy_dest,
                                issue_inst1.inst,
                                inst1_src1_value,
                                inst1_src2_value,
                                issue_inst1.exception };
                    
assign issue_to_execute_bus2 = { issue_inst2.valid,
                                issue_inst2.pc,
                                issue_inst2.phy_src1,
                                issue_inst2.phy_src2,
                                issue_inst2.phy_dest,
                                issue_inst2.inst,
                                inst2_src1_value,
                                inst2_src2_value,
                                issue_inst2.exception };

endmodule
