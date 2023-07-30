`include "../cpu.svh"

module fetch_stage (
    input  clk,
    input  reset,

    input  flush,

    // pipeline
    input  logic pfs_to_valid,
    output logic fs_allowin,
    input  logic ds_allowin,
    output logic fs_to_valid,

    input  prefetch_to_fetch_bus_t prefetch_to_fetch_bus1,
    input  prefetch_to_fetch_bus_t prefetch_to_fetch_bus2,

    // ICache
    input  logic    icache_addr_ok,
    input  logic    icache_data_ok,
    input  uint32_t icache_rdata1,
    input  uint32_t icache_rdata2,

    // BPU
    input  logic       br_taken,
    input  BHT_entry_t bpu_entry,

    output fetch_to_bpu_bus_t fetch_to_bpu_bus,

    output fetch_to_decode_bus_t fetch_to_decode_bus1,
    output fetch_to_decode_bus_t fetch_to_decode_bus2

);

// pipeline registers
logic fs1_valid, fs2_valid, fs_valid;
logic fs_ready_go;

logic data_cancel;

fetch_queue_entry_t fetch_queue[7:0];
logic [2:0] fetch_queue_head, fetch_queue_tail;
logic [2:0] fetch_queue_head_next, fetch_queue_tail_next;
logic [2:0] inst_fetch_tail, inst_fetch_tail_next;
logic [2:0] fetch_queue_num;

assign fetch_queue_head_next = fetch_queue_head + 1;
assign fetch_queue_tail_next = fetch_queue_tail + 1;
assign inst_fetch_tail_next  = inst_fetch_tail  + 1;

assign fs_ready_go = fetch_queue[fetch_queue_head].state == Fetch_Complete;
assign fs_allowin  = fetch_queue_num < 3'd6;
assign fs_to_valid = fs_ready_go && fs2_valid;

assign fs1_valid = fetch_queue[fetch_queue_tail  ].valid
                || fetch_queue[fetch_queue_tail_next].valid;
assign fs2_valid = fetch_queue[fetch_queue_head  ].valid
                || fetch_queue[fetch_queue_head_next].valid;

assign fs_valid = fetch_queue[0].valid && fetch_queue[0].state == Fetch_Wait
               || fetch_queue[1].valid && fetch_queue[1].state == Fetch_Wait
               || fetch_queue[2].valid && fetch_queue[2].state == Fetch_Wait
               || fetch_queue[3].valid && fetch_queue[3].state == Fetch_Wait
               || fetch_queue[4].valid && fetch_queue[4].state == Fetch_Wait
               || fetch_queue[5].valid && fetch_queue[5].state == Fetch_Wait
               || fetch_queue[6].valid && fetch_queue[6].state == Fetch_Wait
               || fetch_queue[7].valid && fetch_queue[7].state == Fetch_Wait;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i = 0; i < 8; i++) begin
            fetch_queue[i] <= '0;
        end
        fetch_queue_num  <= '0;
        fetch_queue_head <= '0;
        fetch_queue_tail <= '0;
        inst_fetch_tail  <= '0;
    end
    else begin
        if(fs_allowin && pfs_to_valid) begin
            fetch_queue[fetch_queue_tail].valid      <= prefetch_to_fetch_bus1.valid;
            fetch_queue[fetch_queue_tail].state      <= Fetch_Wait;
            fetch_queue[fetch_queue_tail].pc         <= prefetch_to_fetch_bus1.pc;
            fetch_queue[fetch_queue_tail].exception  <= prefetch_to_fetch_bus1.exception;

            fetch_queue[fetch_queue_tail_next].valid      <= prefetch_to_fetch_bus2.valid;
            fetch_queue[fetch_queue_tail_next].state      <= Fetch_Wait;
            fetch_queue[fetch_queue_tail_next].pc         <= prefetch_to_fetch_bus2.pc;
            fetch_queue[fetch_queue_tail_next].exception  <= prefetch_to_fetch_bus2.exception;

            fetch_queue_tail <= fetch_queue_tail + 3'd2;
        end

        if(icache_data_ok && !data_cancel) begin
                fetch_queue[inst_fetch_tail].state      <= Fetch_Complete;
                fetch_queue[inst_fetch_tail].inst       <= icache_rdata1;
                fetch_queue[inst_fetch_tail_next].state <= Fetch_Complete;
                fetch_queue[inst_fetch_tail_next].inst  <= icache_rdata2;
                inst_fetch_tail <= inst_fetch_tail + 3'd2;
        end

        if(fs_to_valid && ds_allowin) begin
            fetch_queue[fetch_queue_head].valid <= '0;
            fetch_queue[fetch_queue_head_next].valid <= '0;

            fetch_queue_head <= fetch_queue_head + 3'd2;
        end

        fetch_queue_num <= fetch_queue_num + ({3{fs_allowin&&pfs_to_valid}} & 3'd2) - ({3{fs_to_valid&&ds_allowin}} & 3'd2);
    end

    if(reset) begin
        data_cancel <= 1'b0;
    end
    else if(flush && (fs_valid && !icache_data_ok || icache_addr_ok)) begin
        data_cancel <= 1'b1;
    end
    else if(icache_data_ok) begin
        data_cancel <= 1'b0;
    end

end

// fast decoder
logic br_op1, br_op2;
logic bd_invalid1, bd_invalid2;

fast_decode u_fast_decode1 (
    .inst(fetch_queue[fetch_queue_head].inst),
    .br_op(br_op1)
);

fast_decode u_fast_decode2 (
    .inst(fetch_queue[fetch_queue_head_next].inst),
    .br_op(br_op2)
);

always_ff @(posedge clk) begin
    if(reset || flush || (bd_invalid1 || bd_invalid2) && fs_to_valid && ds_allowin) begin
        bd_invalid1 <= 1'b0;
        bd_invalid2 <= 1'b0;
    end
    else if((br_op1 || br_op2) && br_taken && fs_to_valid && ds_allowin) begin
        bd_invalid1 <= !br_op2;
        bd_invalid2 <= 1'b1;
    end

end

// bpu
assign fetch_to_bpu_bus.valid = fs2_valid;
assign fetch_to_bpu_bus.pc    = {fetch_queue[fetch_queue_head].pc[31:3], 3'b0};

// inst1
assign fetch_to_decode_bus1.valid = fetch_queue[fetch_queue_head  ].valid && !bd_invalid1
                                 && fetch_queue[fetch_queue_head  ].state == Fetch_Complete;
assign fetch_to_decode_bus1.inst  = fetch_queue[fetch_queue_head  ].inst;
assign fetch_to_decode_bus1.pc    = fetch_queue[fetch_queue_head  ].pc;

assign fetch_to_decode_bus1.br_taken  = br_taken;
assign fetch_to_decode_bus1.bpu_entry = bpu_entry;
assign fetch_to_decode_bus1.exception = fetch_queue[fetch_queue_head  ].exception;

// inst2
assign fetch_to_decode_bus2.valid = fetch_queue[fetch_queue_head_next].valid && !bd_invalid2
                                 && fetch_queue[fetch_queue_head_next].state == Fetch_Complete;
assign fetch_to_decode_bus2.inst  = fetch_queue[fetch_queue_head_next].inst;
assign fetch_to_decode_bus2.pc    = fetch_queue[fetch_queue_head_next].pc;

assign fetch_to_decode_bus2.br_taken  = br_taken;
assign fetch_to_decode_bus2.bpu_entry = bpu_entry;
assign fetch_to_decode_bus2.exception = fetch_queue[fetch_queue_head_next].exception;

endmodule
