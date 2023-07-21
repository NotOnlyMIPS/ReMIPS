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
    input  uint32_t icache_data1,
    input  uint32_t icache_data2,

    // BPU
    output fetch_to_bpu_bus_t fetch_to_bpu_bus,

    output fetch_to_decode_bus_t fetch_to_decode_bus1,
    output fetch_to_decode_bus_t fetch_to_decode_bus2

);

// pipeline registers
logic fs_valid;
logic fs_ready_go;
logic wait_bd;

logic data_cancel;

fetch_queue_entry fetch_queue[3:0];
logic [1:0] fetch_queue_head, fetch_queue_tail, fetch_queue_size;

assign fs_ready_go = 1'b1;
assign fs_allowin = !fs_valid || fs_ready_go && ds_allowin;

assign fs_valid = fetch_queue[0].valid || fetch_queue[1].valid
               || fetch_queue[2].valid || fetch_queue[3].valid;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i = 1; i < 4; i++) begin
            fetch_queue[i] <= '0;
        end
        fetch_queue_size <= '0;
        fetch_queue_head <= '0;
        fetch_queue_tail <= '0;
    end
    else begin
        if(fs_allowin && pfs_to_valid) begin
            fetch_queue[fetch_queue_tail  ].valid      <= pfs_to_fs_bus1.valid;
            fetch_queue[fetch_queue_tail  ].state      <= Fetch_Wait;
            fetch_queue[fetch_queue_tail  ].pc         <= pfs_to_fs_bus1.pc;
            fetch_queue[fetch_queue_tail  ].exception  <= pfs_to_fs_bus1.exception;

            fetch_queue[fetch_queue_tail+1].valid      <= pfs_to_fs_bus2.valid;
            fetch_queue[fetch_queue_tail+1].state      <= Fetch_Wait;
            fetch_queue[fetch_queue_tail+1].pc         <= pfs_to_fs_bus2.pc;
            fetch_queue[fetch_queue_tail+1].exception  <= pfs_to_fs_bus2.exception;

            fetch_queue_tail <= fetch_queue_tail + 2;
        end

        if(icache_data_ok && !data_cancel) begin
            fetch_queue[fetch_queue_head  ].state      <= Fetch_Complete;
            fetch_queue[fetch_queue_head  ].inst       <= icache_data1;
            fetch_queue[fetch_queue_head+1].state      <= Fetch_Complete;
            fetch_queue[fetch_queue_head+1].inst       <= icache_data2;
        end

        if(fetch_queue[fetch_queue_head].state == Fetch_Complete) begin
            fetch_queue[fetch_queue_head  ].valid <= '0;
            fetch_queue[fetch_queue_head+1].valid <= '0;

            fetch_queue_head <= fetch_queue_head + 2;
        end
    end

    if(reset) begin
        data_cancel <= 1'b0;
    end
    else if(flush && icache_addr_ok) begin
        data_cancel <= 1'b1;
    end
    else if(icache_data_ok) begin
        data_cancel <= 1'b0;
    end

end


// bpu
assign fetch_to_bpu_bus.valid = fs_valid;
assign fetch_to_bpu_bus.pc    = {fetch_queue[fetch_queue_head].pc[31:3], 3'b0};

// inst1
assign fetch_to_decode_bus1.valid = fetch_queue[fetch_queue_head  ].valid
                                 && fetch_queue[fetch_queue_head  ].state == Fetch_Complete;
assign fetch_to_decode_bus1.inst  = fetch_queue[fetch_queue_head  ].inst;
assign fetch_to_decode_bus1.pc    = fetch_queue[fetch_queue_head  ].pc;

assign fetch_to_decode_bus1.bpu_entry = fetch_queue[fetch_queue_head  ].bpu_entry;
assign fetch_to_decode_bus1.exception = fetch_queue[fetch_queue_head  ].exception;

// inst2
assign fetch_to_decode_bus2.valid = fetch_queue[fetch_queue_head+1].valid
                                 && fetch_queue[fetch_queue_head+1].state == Fetch_Complete;
assign fetch_to_decode_bus2.inst  = fetch_queue[fetch_queue_head+1].inst;
assign fetch_to_decode_bus2.pc    = fetch_queue[fetch_queue_head+1].pc;

assign fetch_to_decode_bus2.bpu_entry = fetch_queue[fetch_queue_head+1].bpu_entry;
assign fetch_to_decode_bus2.exception = fetch_queue[fetch_queue_head+1].exception;

endmodule
