`include "../cpu.svh"

module store_buffer #(
    parameter STORE_GROUP   = 16
)(
    input  logic            clk,
    input  logic            reset,
    input  logic            flush,

    input  logic [3:0]      pre_store,
    input  virt_t           load_addr,
    output logic            pre_load_wait,
    output logic            load_wait,

    input  logic            valid,
    input  logic [3:0]      buffer_we,
    input  logic [2:0]      buffer_size,
    input  virt_t           data_addr,
    input  uint32_t         mem_wdata,
    input  logic [3:0]      store_num,

    output logic            store_buffer_full,

    // commit store
    output logic            store_req,
    input  logic            dcache_addr_ok,
    input  logic            dcache_data_ok,

    input  logic            commit_store1_valid,
    input  logic            commit_store2_valid,
    output logic [3:0]      commit_store_wstrb,
    output logic [2:0]      commit_store_size,
    output virt_t           commit_store_addr,
    output uint32_t         commit_store_data
);

st_buffer_t  store_buffer[STORE_GROUP-1:0];

logic [3:0] store_buffer_head, store_buffer_tail;
logic [3:0] store_buffer_head_next;
logic [3:0] commit_store_req_head, commit_store_resp_head;

logic to_commit_store_valid, commit_store_req_to_valid, commit_store_resp_to_valid;
logic commit_store_req_valid, commit_store_resp_valid;
logic commit_store_req_readygo, commit_store_resp_readygo;
logic commit_store_req_allowin, commit_store_resp_allowin;

assign store_buffer_head_next = (store_buffer_head + 3'd1);

// always_comb begin
//     store_buffer_full = 1'b1;
//     for(int i=0; i < STORE_GROUP; i=i+1) begin
//         if(!store_buffer[i].valid) begin
//             store_buffer_full = 1'b0;
//             break;
//         end
//     end
// end

assign store_buffer_full = store_buffer[ 0].valid & store_buffer[ 1].valid 
                         & store_buffer[ 2].valid & store_buffer[ 3].valid 
                         & store_buffer[ 4].valid & store_buffer[ 5].valid 
                         & store_buffer[ 6].valid & store_buffer[ 7].valid 
                         & store_buffer[ 8].valid & store_buffer[ 9].valid 
                         & store_buffer[10].valid & store_buffer[11].valid 
                         & store_buffer[12].valid & store_buffer[13].valid 
                         & store_buffer[14].valid & store_buffer[15].valid;

//write store_buffer
always_ff @( posedge clk ) begin : store_buffer_write
    if( reset) begin
        for(int i = 0; i < STORE_GROUP; i++)begin
            store_buffer[i] <= '0;
        end
        store_buffer_tail <= '0;
    end
    else if(flush) begin
        for(int i = 0; i < STORE_GROUP; i++)begin
            if(!store_buffer[i].complete)
                store_buffer[i] <= '0;
        end
        store_buffer_tail <= store_buffer_head;
    end 
    else if( valid ) begin
        store_buffer[store_buffer_tail].valid <= 1'b1   ;
        store_buffer[store_buffer_tail].complete <= 1'b0;
        store_buffer[store_buffer_tail].wstrb <= buffer_we;
        store_buffer[store_buffer_tail].size  <= buffer_size;
        store_buffer[store_buffer_tail].addr  <= data_addr;
        store_buffer[store_buffer_tail].data  <= mem_wdata;
        store_buffer[store_buffer_tail].store_num <= store_num;

        store_buffer_tail <= (store_buffer_tail + 1'b1);
    end 

    if(reset) begin
        store_buffer_head <= '0;
    end
    else begin
        if(commit_store1_valid && commit_store2_valid) begin
            store_buffer_head <= (store_buffer_head + 3'd2);
            store_buffer[store_buffer_head].complete <= 1'b1;
            store_buffer[store_buffer_head_next].complete <= 1'b1;
        end
        else if(commit_store1_valid || commit_store2_valid) begin
            store_buffer_head <= (store_buffer_head + 3'd1);
            store_buffer[store_buffer_head].complete <= 1'b1;
        end
    end

    if(reset) begin
        commit_store_req_head <= '0;
    end
    else if(commit_store_req_allowin && to_commit_store_valid) begin
        commit_store_req_head <= (commit_store_req_head + 1'b1);
    end

    if(reset) begin
        commit_store_resp_head <= '0;
    end
    else if( commit_store_resp_to_valid ) begin
        commit_store_resp_head <= (commit_store_resp_head + 1'b1);
        store_buffer[commit_store_resp_head].valid <= 1'b0;
        store_buffer[commit_store_resp_head].complete <= 1'b0;
    end
end

always_comb begin
    load_wait = 1'b0;
    for (int i=0; i < STORE_GROUP; i=i+1 )begin
        if(store_buffer[i].valid && pre_store == store_buffer[i].store_num) begin
            load_wait = 1'b1;
            break;
        end
    end
end

assign pre_load_wait = load_addr[31:2] == store_buffer[ 0].addr[31:2] && store_buffer[ 0].valid 
                    || load_addr[31:2] == store_buffer[ 1].addr[31:2] && store_buffer[ 1].valid
                    || load_addr[31:2] == store_buffer[ 2].addr[31:2] && store_buffer[ 2].valid
                    || load_addr[31:2] == store_buffer[ 3].addr[31:2] && store_buffer[ 3].valid
                    || load_addr[31:2] == store_buffer[ 4].addr[31:2] && store_buffer[ 4].valid
                    || load_addr[31:2] == store_buffer[ 5].addr[31:2] && store_buffer[ 5].valid
                    || load_addr[31:2] == store_buffer[ 6].addr[31:2] && store_buffer[ 6].valid
                    || load_addr[31:2] == store_buffer[ 7].addr[31:2] && store_buffer[ 7].valid
                    || load_addr[31:2] == store_buffer[ 8].addr[31:2] && store_buffer[ 8].valid
                    || load_addr[31:2] == store_buffer[ 9].addr[31:2] && store_buffer[ 9].valid
                    || load_addr[31:2] == store_buffer[10].addr[31:2] && store_buffer[10].valid
                    || load_addr[31:2] == store_buffer[11].addr[31:2] && store_buffer[11].valid
                    || load_addr[31:2] == store_buffer[12].addr[31:2] && store_buffer[12].valid
                    || load_addr[31:2] == store_buffer[13].addr[31:2] && store_buffer[13].valid
                    || load_addr[31:2] == store_buffer[14].addr[31:2] && store_buffer[14].valid
                    || load_addr[31:2] == store_buffer[15].addr[31:2] && store_buffer[15].valid
                    || load_addr[31:2] == data_addr[31:2] && valid;

/* commit store */
assign store_req = commit_store_req_valid;
assign to_commit_store_valid = store_buffer[commit_store_req_head].valid && store_buffer[commit_store_req_head].complete;

assign commit_store_req_readygo  = store_req && dcache_addr_ok;
assign commit_store_req_allowin  = !commit_store_req_valid || commit_store_req_readygo;
assign commit_store_req_to_valid = commit_store_req_valid && commit_store_req_readygo;

assign commit_store_resp_readygo = dcache_data_ok;
assign commit_store_resp_allowin = !commit_store_resp_valid || commit_store_resp_readygo;
assign commit_store_resp_to_valid = commit_store_resp_valid && commit_store_resp_readygo;

always_ff @(posedge clk) begin
    if(reset) begin
        commit_store_req_valid <= 1'b0;
    end
    else if(commit_store_req_allowin) begin
        commit_store_req_valid <= to_commit_store_valid;
        commit_store_wstrb     <= store_buffer[commit_store_req_head].wstrb;
        commit_store_size      <= store_buffer[commit_store_req_head].size;
        commit_store_addr      <= store_buffer[commit_store_req_head].addr;
        commit_store_data      <= store_buffer[commit_store_req_head].data;
    end

    if(reset) begin
        commit_store_resp_valid <= 1'b0;
    end
    else if(commit_store_resp_allowin) begin
        commit_store_resp_valid <= commit_store_req_to_valid;
    end

end

endmodule
