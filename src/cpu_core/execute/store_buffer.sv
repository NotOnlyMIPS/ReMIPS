`include "../cpu.svh"

module store_buffer #(
    parameter DATA_WIDTH    = 32,
    parameter STORE_GROUP   = 8
)(
    input  logic            clk_g,
    input  logic            reset,
    input  logic            flush,

    input  logic            valid,
    input  logic            wr,
    input  logic            is_commit,
    input  logic [3:0]      buffer_we,
    input  virt_t           data_addr,
    input  uint32_t         op_wdata,

    output virt_t           data_vaddr,
    output uint32_t         data_result,
    output logic            data_exist
);

st_buffer_t  st_buffer;

uint32_t st_buffer_data;
logic [3:0] data_id;
logic exist;

//write store_buffer
always_ff @( posedge clk_g ) begin : store_buffer_write
    if( reset || flush ) begin
        st_buffer <= '0 ;
    end else if( valid & wr & !st_buffer.valid[st_buffer.tail]) begin
            st_buffer.addr_table[st_buffer.tail][DATA_WIDTH-1:0]      <= data_addr;
            st_buffer.valid     [st_buffer.tail]                      <= 1'b1   ;
            unique case ( buffer_we )
                4'h1 : begin
                    st_buffer.data_table[st_buffer.tail][7:0]               <= op_wdata[7:0]   ;
                end   
                4'h2 : begin   
                    st_buffer.data_table[st_buffer.tail][15:8]              <= op_wdata[15:8]  ;
                end  
                4'h3 : begin  
                    st_buffer.data_table[st_buffer.tail][15:0]              <= op_wdata[15:0]  ;
                end 
                4'h4 : begin  
                    st_buffer.data_table[st_buffer.tail][23:16]             <= op_wdata[23:16] ;
                end 
                4'h7 : begin 
                    st_buffer.data_table[st_buffer.tail][23:0]              <= op_wdata[23:0]  ;
                end 
                4'h8 : begin 
                    st_buffer.data_table[st_buffer.tail][31:24]             <= op_wdata[31:24] ;
                end 
                4'hc : begin 
                    st_buffer.data_table[st_buffer.tail][31:16]             <= op_wdata[31:16] ;
                end 
                4'he : begin 
                    st_buffer.data_table[st_buffer.tail][31:8]              <= op_wdata[31:8]  ;
                end 
                4'hf : begin 
                    st_buffer.data_table[st_buffer.tail][31:0]              <= op_wdata[31:0]  ;
                end
                default : begin
                    st_buffer.data_table                                    <= '0              ;
                end
            endcase
            st_buffer.tail                                                  <= (st_buffer.tail + 1'b1) % STORE_GROUP ;
            if( is_commit ) begin
                st_buffer.head                                              <= (st_buffer.head + 1'b1) % STORE_GROUP ;
            end
    end else if( is_commit ) begin
                st_buffer.head                                              <= (st_buffer.head + 1'b1) % STORE_GROUP ;
    end
end

//data_interface
always_comb begin : look_for_data_if_exist
    exist = 1'b0                         ;
    data_id = '0                         ;
    if( valid & !wr )begin
        for (int i = st_buffer.tail-1; i != st_buffer.head ; i-- )begin
            if( data_addr == st_buffer.addr_table[i])begin
                exist = 1'b1             ;
                data_id = i              ;
                break                    ;
            end
        end
    end
end

assign data_exist = exist ;

always_comb begin : load_from_st_buffer
if( valid & !wr & exist )begin 
    st_buffer_data =st_buffer.data_table[data_id];

    data_result = st_buffer_data;
    
    data_vaddr  = st_buffer.addr_table[data_id]                                       ;

    end
end

endmodule
