`include "../cpu.svh"

module store_buffer #(
    parameter STORE_GROUP   = 16
)(
    input  logic            clk,
    input  logic            reset,
    input  logic            flush,

    input  virt_t           pre_lookup_addr,
    input  logic [3:0]      pre_lookup_wstrb,
    output logic            data_exist,
    output logic            pre_load_wait,

    // lookup store_buffer
    // input  virt_t           lookup_addr,
    output uint32_t         lookup_data,

    input  logic [3:0]      pre_store,
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
logic [3:0] store_buffer_head_next, store_buffer_tail_next;
logic [3:0] commit_store_req_head, commit_store_resp_head;

logic store_buffer_head_mark, store_buffer_tail_mark;

logic to_commit_store_valid, commit_store_req_to_valid, commit_store_resp_to_valid;
logic commit_store_req_valid, commit_store_resp_valid;
logic commit_store_req_readygo, commit_store_resp_readygo;
logic commit_store_req_allowin, commit_store_resp_allowin;

assign store_buffer_head_next = (store_buffer_head + 3'd1);
assign store_buffer_tail_next = (store_buffer_tail + 3'd1);

// always_comb begin
//     store_buffer_full = 1'b1;
//     for(int i=0; i < STORE_GROUP; i=i+1) begin
//         if(!store_buffer[i].valid) begin
//             store_buffer_full = 1'b0;
//             break;
//         end
//     end
// end

// assign store_buffer_full = store_buffer[ 0].valid & store_buffer[ 1].valid 
//                          & store_buffer[ 2].valid & store_buffer[ 3].valid 
//                          & store_buffer[ 4].valid & store_buffer[ 5].valid 
//                          & store_buffer[ 6].valid & store_buffer[ 7].valid 
//                          & store_buffer[ 8].valid & store_buffer[ 9].valid 
//                          & store_buffer[10].valid & store_buffer[11].valid 
//                          & store_buffer[12].valid & store_buffer[13].valid 
//                          & store_buffer[14].valid & store_buffer[15].valid;
assign store_buffer_full = store_buffer_tail_next == commit_store_resp_head
                        || store_buffer_tail == commit_store_resp_head && store_buffer[store_buffer_tail].valid;

//write store_buffer
always_ff @( posedge clk ) begin : store_buffer_write
    if(reset) begin
        for(int i = 0; i < STORE_GROUP; i++)begin
            store_buffer[i] <= '0;
        end
        store_buffer_tail <= '0;
        store_buffer_tail_mark <= 1'b0;
    end
    else if(flush) begin
        for(int i = 0; i < STORE_GROUP; i++)begin
            if(!store_buffer[i].complete)
                store_buffer[i] <= '0;
        end
        store_buffer_tail <= store_buffer_head;
        store_buffer_tail_mark <= store_buffer_head_mark;
    end 
    else if( valid ) begin
        store_buffer[store_buffer_tail].valid <= 1'b1   ;
        store_buffer[store_buffer_tail].complete <= 1'b0;
        store_buffer[store_buffer_tail].mark  <= store_buffer_tail_mark;
        store_buffer[store_buffer_tail].wstrb <= buffer_we;
        store_buffer[store_buffer_tail].size  <= buffer_size;
        store_buffer[store_buffer_tail].addr  <= data_addr;
        store_buffer[store_buffer_tail].data  <= mem_wdata;
        store_buffer[store_buffer_tail].store_num <= store_num;

        store_buffer_tail <= (store_buffer_tail + 1'b1);
        store_buffer_tail_mark <= store_buffer_tail == STORE_GROUP-1 ? !store_buffer_tail_mark : store_buffer_tail_mark;
    end 

    if(reset) begin
        store_buffer_head <= '0;
        store_buffer_head_mark <= 1'b0;
    end
    else begin
        if(commit_store1_valid && commit_store2_valid) begin
            store_buffer_head <= (store_buffer_head + 3'd2);
            store_buffer[store_buffer_head].complete <= 1'b1;
            store_buffer[store_buffer_head_next].complete <= 1'b1;
            store_buffer_head_mark <= (store_buffer_head == STORE_GROUP-2
                                    || store_buffer_head == STORE_GROUP-1) ? !store_buffer_head_mark : store_buffer_head_mark;
        end
        else if(commit_store1_valid || commit_store2_valid) begin
            store_buffer_head <= (store_buffer_head + 3'd1);
            store_buffer[store_buffer_head].complete <= 1'b1;
            store_buffer_head_mark <= (store_buffer_head == STORE_GROUP-1) ? !store_buffer_head_mark : store_buffer_head_mark;
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

// lookup store buffer
logic addr_match[STORE_GROUP-1:0], wstrb_match[STORE_GROUP-1:0];
logic store_addr_match, store_wstrb_match;

// logic sel;
logic [3:0]  sel_num1[7:0];
logic [3:0]  sel_num2[3:0];
logic [3:0]  sel_num3[1:0];
logic match1[7:0];
logic match2[3:0];
logic match3[1:0];
logic mark1[7:0];
logic mark2[3:0];
logic mark3[1:0];
logic [3:0]  sel_num_out;
logic sel_match_out;

assign store_addr_match = valid && data_addr[31:2] == pre_lookup_addr[31:2];
assign store_wstrb_match = valid && ((buffer_we & pre_lookup_wstrb) == pre_lookup_wstrb);
always_comb begin
    for(int i=0; i<STORE_GROUP; i=i+1) begin
        addr_match[i]  = store_buffer[i].valid && store_buffer[i].addr[31:2] == pre_lookup_addr[31:2];
        wstrb_match[i] = store_buffer[i].valid && ((store_buffer[i].wstrb & pre_lookup_wstrb) == pre_lookup_wstrb);
    end
end

assign pre_load_wait = addr_match[ 0] | addr_match[ 1] | addr_match[ 2] | addr_match[ 3]
                     | addr_match[ 4] | addr_match[ 5] | addr_match[ 6] | addr_match[ 7]
                     | addr_match[ 8] | addr_match[ 9] | addr_match[10] | addr_match[11]
                     | addr_match[12] | addr_match[13] | addr_match[14] | addr_match[15]
                     | store_addr_match;

assign data_exist = sel_match_out && wstrb_match[sel_num_out] && !store_addr_match || store_addr_match && store_wstrb_match;

// assign sel = store_buffer_head_mark ^ store_buffer_tail_mark;

always_comb begin
    lookup_data = '0;
    if(data_exist) begin
        if(store_addr_match)
            lookup_data = mem_wdata;
        else 
            lookup_data = store_buffer[sel_num_out].data;
    end
end

generate
    genvar i;
    for(i=0; i<8; i=i+1) begin : sel1
        store_buffer_select select0 (
            // .sel(sel),
            .match0(addr_match[2*i]),
            .match1(addr_match[2*i+1]),
            .mark0(store_buffer[2*i].mark),
            .mark1(store_buffer[2*i+1].mark),
            .num0(2*i),
            .num1(2*i+1),
            .match(match1[i]),
            .mark(mark1[i]),
            .select_num(sel_num1[i])
        );
    end

    for(i=0; i<4; i=i+1) begin: sel2
        store_buffer_select select1 (
            // .sel(sel),
            .match0(match1[2*i]),
            .match1(match1[2*i+1]),
            .mark0(mark1[2*i]),
            .mark1(mark1[2*i+1]),
            .num0(sel_num1[2*i]),
            .num1(sel_num1[2*i+1]),
            .match(match2[i]),
            .mark(mark2[i]),
            .select_num(sel_num2[i])
        );
    end

    for(i=0; i<2; i=i+1) begin: sel3
        store_buffer_select select2 (
            // .sel(sel),
            .match0(match2[2*i]),
            .match1(match2[2*i+1]),
            .mark0(mark2[2*i]),
            .mark1(mark2[2*i+1]),
            .num0(sel_num2[2*i]),
            .num1(sel_num2[2*i+1]),
            .match(match3[i]),
            .mark(mark3[i]),
            .select_num(sel_num3[i])
        );
    end

    store_buffer_select select3 (
        // .sel(sel),
        .match0(match3[0]),
        .match1(match3[1]),
        .mark0(mark3[0]),
        .mark1(mark3[1]),
        .num0(sel_num3[0]),
        .num1(sel_num3[1]),
        .match(sel_match_out),
        .select_num(sel_num_out)
    );
endgenerate

endmodule

module store_buffer_select (
    // input logic sel,
    input logic match0,
    input logic match1,
    input logic mark0,
    input logic mark1,
    input logic [3:0] num0,
    input logic [3:0] num1,

    output logic match,
    output logic mark,
    output logic [3:0] select_num
);

logic sel;

assign sel = mark0 ^ mark1;
assign match = match0 | match1;

always_comb begin
    case({match0, match1})
        2'b00: begin
            select_num = 4'd0;
            mark = 1'b0;
        end
        2'b01: begin
            select_num = num1;
            mark = mark1;
        end
        2'b10: begin
            select_num = num0;
            mark = mark0;
        end
        2'b11: begin
            select_num = sel ? num0 : num1;
            mark = sel ? mark0 : mark1;
        end
        default : begin
            select_num = 4'd0;
            mark = 1'b0;
        end
    endcase
end

endmodule
