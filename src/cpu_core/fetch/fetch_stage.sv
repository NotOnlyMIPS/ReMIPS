`include "../cpu.svh"

module fetch_stage (
    input clk,
    input reset,

    // pipeline
    input  pfs_to_valid,
    output fs_allowin,
    input  ds_allowin,
    output fs_to_valid,

    input  pfs_to_fs_bus_t  pfs_to_fs_bus,
    input  icache_to_fetch_bus_t icache_to_fetch_bus,
    output fetch_to_decode_bus_t fetch_to_decode_bus1,
    output fetch_to_decode_bus_t fetch_to_decode_bus2

);

// IF
logic fs_valid;
logic fs_ready_go;
logic    fs_inst_valid;
inst_t fs_inst_ready_1;
inst_t fs_inst_ready_2;
logic  br_op_1;
logic  br_op_2;

// inst_queue

inst_t [7:0] fs_inst;
logic  [2:0] inst_queue_start;
logic  [2:0] inst_queue_end;
logic  [2:0] inst_num;
logic  [1:0] fs_to_ds_send_num;
logic  [2:0] pfs_send_num;

// from pre_IF
logic      pfs_inst_valid;
uint32_t   pfs_inst;
pfs_to_fs_bus_t pfs_to_fs_bus_r;

assign pfs_inst_valid = pfs_to_fs_bus_r.inst_valid;
assign pfs_inst       = pfs_to_fs_bus_r.inst;

// IF stage
assign fs_ready_go = (control.icache_data_ok || pfs_inst_valid || fs_inst_valid) && !control.data_cancel || pfs_to_fs_bus_r.exception.ex;
assign fs_allowin = !fs_valid || fs_ready_go && ds_allowin;
assign fs_to_valid = fs_valid && fs_ready_go && (!control.br_flush || control.bd);

assign control.valid    = fs_valid;
assign control.ready_go = fs_ready_go;
assign control.to_valid = fs_to_valid;
assign control.allowin  = fs_allowin;

always_ff @( posedge clk ) begin
    if (fs_allowin) begin
        fs_valid <= pfs_to_valid;
    end

    if(pfs_to_valid && fs_allowin)
        pfs_to_fs_bus_r <= pfs_to_fs_bus;

    if(reset || control.pipeline_flush || ds_allowin && fs_to_valid) begin
        fs_inst <= '0;
    end
end

fast_decode decoder1(
    .inst(fs_inst_ready_1.inst),
    .br_op(br_op_1)
);

fast_decode decoder2(
    .inst(fs_inst_ready_2.inst),
    .br_op(br_op_2)
);

assign fs_to_ds_send_num = (inst_num == 0 || (inst_num == 1 && br_op_1)) ? 2'b0 : (inst_num == 1 || br_op_2) ? 2'b1 : 2'b10; 
assign fs_inst_ready_1 = fs_inst[inst_queue_start];
assign fs_inst_ready_2 = fs_inst[inst_queue_start + 1];


always_ff @ (posedge clk) begin
    if(reset) begin
        inst_queue_start <= '0;
    end else if(fs_to_valid)  begin
        inst_queue_start <= inst_queue_start + fs_to_ds_send_num;
    end

    if(reset) begin
        inst_num <= '0;
    end else begin
        inst_num <= inst_num - (fs_to_ds_send_num & {4{fs_to_valid}}) + (pfs_send_num & {4{icache_to_fetch_bus.icache_data_ok}});
    end

    if(reset) begin
        inst_queue_end <= '1;
    end else if(icache_to_fetch_bus.icache_data_ok) begin
        inst_queue_end <= inst_queue_end + pfs_send_num;
    end

    if(reset) begin
        fs_inst <= '0;
    end else begin
        if(icache_to_fetch_bus.icache_data_ok) begin
            case(pfs_send_num)
                3'd1:begin
                    fs_inst[inst_queue_end + 1] <= icache_to_fetch_bus.data[127:96];
                end
                3'd2:begin
                    fs_inst[inst_queue_end + 1] <= icache_to_fetch_bus.data[ 95:64];
                    fs_inst[inst_queue_end + 2] <= icache_to_fetch_bus.data[127:96];
                end
                3'd3:begin
                    fs_inst[inst_queue_end + 1] <= icache_to_fetch_bus.data[ 63:32];
                    fs_inst[inst_queue_end + 2] <= icache_to_fetch_bus.data[ 95:64];
                    fs_inst[inst_queue_end + 3] <= icache_to_fetch_bus.data[127:96];
                end
                default:begin
                    fs_inst[inst_queue_end + 1] <= icache_to_fetch_bus.data[ 31: 0];
                    fs_inst[inst_queue_end + 2] <= icache_to_fetch_bus.data[ 63:32];
                    fs_inst[inst_queue_end + 3] <= icache_to_fetch_bus.data[ 95:64];
                    fs_inst[inst_queue_end + 4] <= icache_to_fetch_bus.data[127:96];
                end
            endcase
        end
    end
end

assign fetch_to_decode_bus1 = {
    (fs_to_ds_send_num >= 1),
    fs_inst_ready_1.inst,
    fs_inst_ready_1.pc,
    '0
};

assign fetch_to_decode_bus1 = {
    (fs_to_ds_send_num >= 2),
    fs_inst_ready_2.inst,
    fs_inst_ready_2.pc,
    '0
};

endmodule
