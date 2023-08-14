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
    input  virt_t      br_target,
    input  BHT_entry_t bpu_entry,

    output fetch_to_bpu_bus_t fetch_to_bpu_bus,

    // TLB exception
    input  logic      inst_tlb_ex,
    input  logic[4:0] inst_tlb_exccode,
    input  logic      inst_tlb_refill,

    output fetch_to_decode_bus_t fetch_to_decode_bus1,
    output fetch_to_decode_bus_t fetch_to_decode_bus2

);

// pipeline registers
logic fs1_valid, fs2_valid, fs_valid;
logic fs_ready_go;

logic data_cancel;
logic branch_invalid;
logic inst_fetch_wait;

fetch_queue_entry_t fetch_queue[7:0];
logic [2:0] fetch_queue_head, fetch_queue_tail;
logic [2:0] fetch_queue_head_next, fetch_queue_tail_next;
logic [2:0] inst_fetch_tail, inst_fetch_tail_next;
logic [2:0] fetch_queue_num;

// exception
exception_t exception1, exception2;

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

assign fs_valid = fetch_queue[0].valid && fetch_queue[0].state == Fetch_Wait && !fetch_queue[0].exception.ex
               || fetch_queue[1].valid && fetch_queue[1].state == Fetch_Wait && !fetch_queue[1].exception.ex
               || fetch_queue[2].valid && fetch_queue[2].state == Fetch_Wait && !fetch_queue[2].exception.ex
               || fetch_queue[3].valid && fetch_queue[3].state == Fetch_Wait && !fetch_queue[3].exception.ex
               || fetch_queue[4].valid && fetch_queue[4].state == Fetch_Wait && !fetch_queue[4].exception.ex
               || fetch_queue[5].valid && fetch_queue[5].state == Fetch_Wait && !fetch_queue[5].exception.ex
               || fetch_queue[6].valid && fetch_queue[6].state == Fetch_Wait && !fetch_queue[6].exception.ex
               || fetch_queue[7].valid && fetch_queue[7].state == Fetch_Wait && !fetch_queue[7].exception.ex;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        for(int i = 0; i < 8; i++) begin
            fetch_queue[i] <= '0;
        end
        fetch_queue_num  <= '0;
        fetch_queue_head <= '0;
        fetch_queue_tail <= '0;
        inst_fetch_tail  <= '0;

        inst_fetch_wait <= 1'b0;
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

        if(fetch_queue[inst_fetch_tail].exception.ex) begin
            fetch_queue[inst_fetch_tail].state      <= Fetch_Complete;
            fetch_queue[inst_fetch_tail].inst       <= '0;
            fetch_queue[inst_fetch_tail_next].state <= Fetch_Complete;
            fetch_queue[inst_fetch_tail_next].inst  <= '0;

            inst_fetch_tail <= inst_fetch_tail + 3'd2;

            inst_fetch_wait <= 1'b0;
        end
        else if(icache_data_ok && !data_cancel) begin
            fetch_queue[inst_fetch_tail].state      <= Fetch_Complete;
            fetch_queue[inst_fetch_tail].inst       <= icache_rdata1;

            fetch_queue[inst_fetch_tail_next].state      <= Fetch_Complete;
            fetch_queue[inst_fetch_tail_next].inst       <= icache_rdata2;


            if(inst_tlb_ex && !inst_fetch_wait) begin
                fetch_queue[inst_fetch_tail].exception.ex              <= 1'b1;
                fetch_queue[inst_fetch_tail].exception.exccode         <= inst_tlb_exccode;
                fetch_queue[inst_fetch_tail].exception.tlb_refill      <= inst_tlb_refill;
                fetch_queue[inst_fetch_tail_next].exception.ex         <= 1'b1;
                fetch_queue[inst_fetch_tail_next].exception.exccode    <= inst_tlb_exccode;
                fetch_queue[inst_fetch_tail_next].exception.tlb_refill <= inst_tlb_refill;
            end

            inst_fetch_tail <= inst_fetch_tail + 3'd2;

            inst_fetch_wait <= 1'b0;
        end
        else if(fetch_queue[inst_fetch_tail].valid && fetch_queue[inst_fetch_tail].state == Fetch_Wait
             || fetch_queue[inst_fetch_tail_next].valid && fetch_queue[inst_fetch_tail_next].state == Fetch_Wait) begin
            inst_fetch_wait <= 1'b1;
        end

        if(!inst_fetch_wait) begin
            fetch_queue[inst_fetch_tail].br_taken   <= br_taken;
            fetch_queue[inst_fetch_tail].bpu_entry.inst2   <= 1'b0;
            fetch_queue[inst_fetch_tail].bpu_entry.tag     <= bpu_entry.tag;
            fetch_queue[inst_fetch_tail].bpu_entry.br_type <= bpu_entry.br_type;
            fetch_queue[inst_fetch_tail].bpu_entry.count   <= bpu_entry.count;
            fetch_queue[inst_fetch_tail].bpu_entry.target  <= br_target;
            fetch_queue[inst_fetch_tail_next].br_taken   <= br_taken;
            fetch_queue[inst_fetch_tail_next].bpu_entry.inst2   <= 1'b1;
            fetch_queue[inst_fetch_tail_next].bpu_entry.tag     <= bpu_entry.tag;
            fetch_queue[inst_fetch_tail_next].bpu_entry.br_type <= bpu_entry.br_type;
            fetch_queue[inst_fetch_tail_next].bpu_entry.count   <= bpu_entry.count;
            fetch_queue[inst_fetch_tail_next].bpu_entry.target  <= br_target;
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

    if(reset || flush || branch_invalid && icache_data_ok && !data_cancel) begin
        branch_invalid <= 1'b0;
    end
    else if(icache_data_ok && !data_cancel && br_taken) begin
        branch_invalid <= 1'b1;
    end

end

// fast decoder
logic wait_bd;
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
    else if((br_op1 || br_op2) && fetch_queue[fetch_queue_head].br_taken && fs_to_valid && ds_allowin) begin
        bd_invalid1 <= !br_op2;
        bd_invalid2 <= 1'b1;
    end

    if(reset || flush || wait_bd && fs_to_valid && ds_allowin) 
        wait_bd <= 1'b0;
    else if(br_op2 && fs_to_valid && ds_allowin) 
        wait_bd <= 1'b1;
end

// bpu
assign fetch_to_bpu_bus.valid = (fetch_queue[inst_fetch_tail].valid || fetch_queue[inst_fetch_tail_next].valid) && !branch_invalid && !inst_fetch_wait;
// assign fetch_to_bpu_bus.valid = (fetch_queue[inst_fetch_tail].valid || fetch_queue[inst_fetch_tail_next].valid) && !branch_invalid;
assign fetch_to_bpu_bus.pc    = {fetch_queue[inst_fetch_tail].pc[31:3], 3'b0};

// exception
always_comb begin
    exception1 = fetch_queue[fetch_queue_head     ].exception;
    exception2 = fetch_queue[fetch_queue_head_next].exception;
    if(wait_bd) begin
        exception1.bd = 1'b1;
        exception1.epc = fetch_queue[fetch_queue_head].pc-4;
    end
    if(br_op1) begin
        exception2.bd = 1'b1;
        exception2.epc = fetch_queue[fetch_queue_head_next].pc-4;
    end
end

// inst1
assign fetch_to_decode_bus1.valid = fetch_queue[fetch_queue_head  ].valid && !bd_invalid1
                                 && fetch_queue[fetch_queue_head  ].state == Fetch_Complete;
assign fetch_to_decode_bus1.inst  = fetch_queue[fetch_queue_head  ].inst;
assign fetch_to_decode_bus1.pc    = fetch_queue[fetch_queue_head  ].pc;

// assign fetch_to_decode_bus1.br_taken  = br_taken;
// assign fetch_to_decode_bus1.bpu_entry = bpu_entry;
assign fetch_to_decode_bus1.br_taken  = fetch_queue[fetch_queue_head].br_taken;
assign fetch_to_decode_bus1.bpu_entry = fetch_queue[fetch_queue_head].bpu_entry;

assign fetch_to_decode_bus1.exception = exception1;

// inst2
assign fetch_to_decode_bus2.valid = fetch_queue[fetch_queue_head_next].valid && !bd_invalid2
                                 && fetch_queue[fetch_queue_head_next].state == Fetch_Complete;
assign fetch_to_decode_bus2.inst  = fetch_queue[fetch_queue_head_next].inst;
assign fetch_to_decode_bus2.pc    = fetch_queue[fetch_queue_head_next].pc;

// assign fetch_to_decode_bus2.br_taken  = br_taken;
// assign fetch_to_decode_bus2.bpu_entry = bpu_entry;
assign fetch_to_decode_bus2.br_taken  = fetch_queue[fetch_queue_head_next].br_taken;
assign fetch_to_decode_bus2.bpu_entry = fetch_queue[fetch_queue_head_next].bpu_entry;

assign fetch_to_decode_bus2.exception = exception2;

endmodule
