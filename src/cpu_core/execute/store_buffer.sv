`include "../cpu.svh"

module store_buffer #(
    parameter STORE_GROUP   = 8
)(
    input  logic            clk,
    input  logic            reset,
    input  logic            flush,

    input  logic            valid,
    input  logic            wr,
    input  logic [3:0]      buffer_we,
    input  logic [3:0]      rf_we,
    input  virt_t           data_addr,
    input  uint32_t         mem_wdata,

    // lookup
    output logic            data_exist,
    output logic [3:0]      data_wstrb,
    output uint32_t         data_result,
    output logic            data_wstrb_match,

    // commit store
    input  logic            commit_store_valid,
    output logic [3:0]      commit_store_wstrb,
    output virt_t           commit_store_addr,
    output uint32_t         commit_store_data
);

st_buffer_t  store_buffer[STORE_GROUP-1:0];

uint32_t store_buffer_data;
logic [2:0] store_buffer_head, store_buffer_tail;
logic [3:0] data_id;
logic exist;

//write store_buffer
always_ff @( posedge clk ) begin : store_buffer_write
    if( reset || flush ) begin
        for(int i = 0; i < STORE_GROUP; i++)begin
            store_buffer[i].valid <= '0;
        end
        store_buffer_tail <= '0;
    end 
    else if( valid & wr & !store_buffer[store_buffer_tail].valid) begin
        store_buffer[store_buffer_tail].valid <= 1'b1   ;
        store_buffer[store_buffer_tail].addr  <= data_addr;
        store_buffer[store_buffer_tail].wstrb <= buffer_we;

        if(buffer_we[0])
            store_buffer[store_buffer_tail].data[7:0]   <= mem_wdata[ 7: 0];
        if(buffer_we[1])
            store_buffer[store_buffer_tail].data[15:8]  <= mem_wdata[15: 8];
        if(buffer_we[2])
            store_buffer[store_buffer_tail].data[23:16] <= mem_wdata[23:16];
        if(buffer_we[3])
            store_buffer[store_buffer_tail].data[31:24] <= mem_wdata[31:24];

        store_buffer_tail <= (store_buffer_tail + 1'b1);
    end 

    if(reset || flush) begin
        store_buffer_head <= '0;
    end
    else if( commit_store_valid ) begin
        store_buffer_head <= (store_buffer_head + 1'b1);
    end
end

//data_interface
always_comb begin : look_for_data_if_exist
    exist = 1'b0                         ;
    data_id = '0                         ;
    if( valid & !wr )begin
        for (int i = store_buffer_tail-1; i != store_buffer_head ; i-- )begin
            if( data_addr == store_buffer[i].addr)begin
                exist = 1'b1             ;
                data_id = i              ;
                break                    ;
            end
        end
    end
end

assign data_exist = exist ;

always_comb begin
    if( valid & !wr & exist )begin 
        data_wstrb        = store_buffer[data_id].wstrb;
        store_buffer_data = store_buffer[data_id].data;
        data_wstrb_match  = store_buffer[data_id].wstrb == rf_we;
        data_result       = store_buffer_data;
    end

    if( commit_store_valid )begin
        commit_store_wstrb = store_buffer[store_buffer_head].wstrb;
        commit_store_addr  = store_buffer[store_buffer_head].addr;
        commit_store_data  = store_buffer[store_buffer_head].data;
    end
end

endmodule
