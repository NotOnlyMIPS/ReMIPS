`include "cache.svh"
`include "../cpu.svh"

module dcache #(
    parameter STORE_BUFFER_SIZE = 32,
    parameter DATA_WIDTH    = 32,
    parameter LINE_WORD_NUM = 4,
    parameter ASSOC_NUM     = 2,
    parameter WAY_SIZE      = 4 * 1024 * 8,
    parameter GROUP_NUM     = WAY_SIZE/(LINE_WORD_NUM * DATA_WIDTH)
)(
    input  logic           clk_g,
    input  logic           resetn,
    //cpu
    CPU_DCache_Interface.DBus DBus,
    //axi
    output logic           rd_req,
    output logic [ 31:0]   rd_addr,
    input  logic           rd_rdy,
    input  logic           ret_valid,
    input  logic [127:0]   ret_data, 

    output logic           wr_req,
    output logic [ 31:0]   wr_addr,
    output logic [127:0]   wr_data,
    input  logic           wr_rdy,
    input  logic           wr_bvalid,

    //uncache
    output logic           urd_req,
    output logic [  2:0]   urd_size,
    output logic [ 31:0]   urd_addr,
    input  logic           urd_rdy,
    input  logic           uret_valid,
    input  logic [ 31:0]   uret_data,
    output logic           uwr_req,
    output logic [  2:0]   uwr_size,
    output logic [  3:0]   uwr_wstrb,
    output logic [ 31:0]   uwr_addr,
    output logic [ 31:0]   uwr_data,
    input  logic           uwr_rdy,
    input  logic           uwr_bvalid

);
localparam int unsigned BYTES_PER_WORD = 4;
localparam int unsigned INDEX_WIDTH    = $clog2(GROUP_NUM) ;
localparam int unsigned OFFSET_WIDTH   = $clog2(LINE_WORD_NUM*BYTES_PER_WORD);
localparam int unsigned TAG_WIDTH      = 32-INDEX_WIDTH-OFFSET_WIDTH ;

typedef struct packed {
    logic valid;
    logic [TAG_WIDTH-1:0] tag;
} tagv_t;

typedef struct packed {
    logic [31:0] address;
    logic [31:0] data;
    logic [ 3:0] wstrb;
    logic [ 2:0] size;
} uncache_store_t;

typedef logic                                     dirty_t;
typedef logic [ASSOC_NUM-1:0]                     hit_t;
typedef logic [TAG_WIDTH-1:0]                     tag_t;
typedef logic [INDEX_WIDTH-1:0]                   index_t;
typedef logic [OFFSET_WIDTH-1:0]                  offset_t;

typedef logic [ASSOC_NUM-1:0]                     gpwe_t;
typedef logic [DATA_WIDTH-1:0]                    data_t;

function logic  [31:0] mux_byteenable(
    input logic [31:0] rdata,
    input logic [31:0] wdata,
    input logic [3:0] sel
);
    return {
        sel[3] ? wdata[31:24] : rdata[31:24],
        sel[2] ? wdata[23:16] : rdata[23:16],
        sel[1] ? wdata[15:8]  : rdata[15:8],
        sel[0] ? wdata[7:0]   : rdata[7:0]
    };
endfunction

// function logic[1:0] clog2(
//     input logic [ASSOC_NUM-1:0] hit
// );
//     return{
//         (hit[3] == 1'b1) ? 2'b11 :
//         (hit[2] == 1'b1) ? 2'b10 :
//         (hit[1] == 1'b1) ? 2'b01 : 2'b00
//     };
// endfunction

function logic clog2(
    input logic [ASSOC_NUM-1:0] hit
);
    return{
        hit[1] ? 1'b1 : 1'b0
    };
endfunction

typedef enum logic [3:0] {
        MISSDIRTY,
        WRITEBACK,
        LOOKUP,
        MISSCLEAN,
        REFILL,
        REFILLDONE
} state_t;

typedef enum logic [2:0] {
        WB_IDLE,
        WB_STORE
} wb_state_t;

typedef struct packed {
    logic             valid;
    logic             wr;
    tag_t             tag;
    index_t           index;
    offset_t          offset;
    logic[3:0]        wstrb;
    logic[31:0]       wdata;
    logic[ 2:0]       size;
    logic             is_cache;
    tag_t             cache_tag;
    logic             cache_way;
    CacheType         cache_type;
    logic             cache_dirty;
    logic             cache_valid;
} request_t;


typedef struct packed {
    logic [ASSOC_NUM-1:0] hit;
    logic                 valid;
    tag_t                 tag;
    index_t               index;
    offset_t              offset;
    logic[3:0]            wstrb;
    data_t                wdata;
} store_t;

typedef enum logic [1:0]{
    UNCACHE_IDLE,
    UNCACHE_READ_WAIT_AXI,
    UNCACHE_READ,
    UNCACHE_READ_DONE
} uncache_state_t;

// uncache_state_t uncache_state,uncache_state_next;
store_t  store_buffer;

state_t  state_a,state_next_a;
state_t  state_b,state_next_b;

wb_state_t wb_state,wb_state_next;

logic [31:0] uncache_rdata_a;
logic [31:0] uncache_rdata_b;

index_t tagv_addr_a;
index_t tagv_addr_b;
index_t tagv_wr_addr;


index_t [ASSOC_NUM-1:0][LINE_WORD_NUM-1:0] data_rd_addr;
index_t                                    data_rd_addr_a;
index_t                                    data_rd_addr_b;
index_t                                    data_wr_addr;


tagv_t [ASSOC_NUM-1:0] tagv_rdata_a;
tagv_t [ASSOC_NUM-1:0] tagv_rdata_b;
tagv_t                 req_tag_a;
tagv_t                 req_tag_b;
tagv_t                 tagv_wdata;
gpwe_t                 tagv_we;

logic                  req_is_cache_a;
logic                  req_is_cache_b;


index_t                 dirty_addr_a;
index_t                 dirty_addr_b;
dirty_t [ASSOC_NUM-1:0] dirty_rdata_a;
dirty_t [ASSOC_NUM-1:0] dirty_rdata_b;
dirty_t                 dirty_wdata;
gpwe_t                  dirty_we;

data_t [ASSOC_NUM-1:0][LINE_WORD_NUM-1:0]                     data_rdata;
logic [31:0]                                                  data_rdata_sel_a[ASSOC_NUM-1:0];
logic [31:0]                                                  data_rdata_sel_b[ASSOC_NUM-1:0];
logic [31:0]                                                  data_rdata_final1_a;
logic [31:0]                                                  data_rdata_final1_b;
logic [31:0]                                                  data_rdata_final2_a;
logic [31:0]                                                  data_rdata_final2_b;
data_t                                                        data_wdata[LINE_WORD_NUM-1:0];
logic  [LINE_WORD_NUM-1:0][3:0]                               data_we;

request_t req_buffer_a;
request_t req_buffer_b;
logic req_buffer_en_a;
logic req_buffer_en_b;

logic [$clog2(ASSOC_NUM)-1:0]                                 lru[GROUP_NUM-1:0] ;
logic [ASSOC_NUM-1:0]                                         hit_a;
logic [ASSOC_NUM-1:0]                                         hit_b;
logic [ASSOC_NUM-1:0]                                         cache_ins_hit;
logic                                                         ins_hit;
logic                                                         cache_hit_a;
logic                                                         cache_hit_b;
logic                                                         stall_a;
logic                                                         stall_b;
logic                                                         bank_conflict;

logic [ASSOC_NUM-1:0]                                         pipe_hit_a;
logic [ASSOC_NUM-1:0]                                         pipe_hit_b;
logic                                                         pipe_cache_hit_a;
logic                                                         pipe_cache_hit_b;
tagv_t [ASSOC_NUM-1:0]                                        pipe_tagv_rdata_a;
tagv_t [ASSOC_NUM-1:0]                                        pipe_tagv_rdata_b;
logic                                                         port_a_miss;
logic                                                         port_b_miss;
logic                                                         req_new_a;
logic                                                         req_new_b;


//fifo
uncache_store_t fifo_din;//input
logic fifo_wr_en;
logic fifo_rd_en;

logic fifo_rd_rst_busy;// output
logic fifo_full;
logic fifo_empty;
uncache_store_t fifo_dout;
logic fifo_data_valid;
logic fifo_wr_ack;
logic fifo_wr_rst_busy;

//----------------------------------------cpu axi fifo-------------------------------------------------
assign fifo_din   = {req_tag_a,req_buffer_a.index,req_buffer_a.offset,req_buffer_a.wdata,req_buffer_a.wstrb,req_buffer_a.size};
assign fifo_wr_en = ~fifo_wr_rst_busy && ~fifo_full && req_buffer_a.valid && req_buffer_a.wr && ~req_iscache_a && state_a == LOOKUP;
assign fifo_rd_en = (uwr_rdy && (!fifo_empty) && (!fifo_rd_rst_busy)) ? 1'b1 :1'b0;
//cpu

assign DBus.addr_ok_a   = req_buffer_en_a;
assign DBus.addr_ok_b   = req_buffer_en_b;
assign DBus.data_ok_a   = (state_a == LOOKUP && ~req_iscache_a && req_buffer_a.wr && req_buffer_a.valid) ||
                          ((state_a == REFILLDONE || ((state_a == LOOKUP && ((cache_hit_a && req_iscache_a) || (~req_iscache_a && req_buffer_a.wr))))) && req_buffer_a.valid)
                          && ~stall_a;
assign DBus.data_ok_b   = (state_b == LOOKUP && ~req_iscache_b && req_buffer_b.wr && req_buffer_b.valid) || 
                          ((state_b == REFILLDONE || ((state_b == LOOKUP && ((cache_hit_b && req_iscache_b) || (~req_iscache_b && req_buffer_b.wr))))) && req_buffer_b.valid)
                          && ~stall_b;

assign DBus.rdata_a     =  req_buffer_a.valid ? data_rdata_final1_a : '0;
assign DBus.rdata_b     =  req_buffer_b.valid ? data_rdata_final1_a : '0;
//axi
assign rd_req_a = req_buffer_a.is_cache & (state_a == MISSCLEAN);
assign rd_req_b = req_buffer_b.is_cache & (state_b == MISSCLEAN);

assign rd_addr_a = {req_buffer_a.tag,req_buffer_a.index, {OFFSET_WIDTH{1'b0}}};
assign rd_addr_b = {req_buffer_b.tag,req_buffer_b.index, {OFFSET_WIDTH{1'b0}}};

assign wr_req_a = (state_a == MISSDIRTY);
assign wr_req_b = (state_b == MISSDIRTY);

// assign wr_addr = {pipe_tagv_rdata[lru[req_buffer_a.index]].tag, req_buffer_a.index, {OFFSET_WIDTH{1'b0}}};
always_comb begin : axi_bus_wraddr_blockName
    if (req_buffer_a.cache_type.isDcache) begin
        case (req_buffer_a.cache_type.cacheCode)
            D_Index_Writeback_Invalid:begin
                wr_addr = {pipe_tagv_rdata_a[req_buffer_a.cache_way].tag,req_buffer_a.index,{OFFSET_WIDTH{1'b0}}};
            end
            D_Hit_Writeback_Invalid:begin
                wr_addr = {req_buffer_a.cache_tag,req_buffer_a.index,{OFFSET_WIDTH{1'b0}}};
            end
            default: begin
                wr_addr = '0;
            end
        endcase
    end else begin
        wr_addr = ({32{(state_a == MISSDIRTY)}} & {pipe_tagv_rdata_a[clog2(pipe_hit_a)].tag,req_buffer_a.index,{OFFSET_WIDTH{1'b0}}}) |
                  ({32{(state_b == MISSDIRTY)}} & {pipe_tagv_rdata_b[clog2(pipe_hit_a)].tag,req_buffer_b.index,{OFFSET_WIDTH{1'b0}}});
    end
end

logic[127:0] wr_data1,wr_data2_a;
logic[127:0] wr_data2_b;

generate;
    for (genvar  i=0; i<LINE_WORD_NUM; ++i) begin
        assign wr_data1[32*(i+1)-1:32*(i)] = data_rdata[req_buffer_a.cache_tag[1:0]][i];
    end
endgenerate

generate;
    for (genvar  i=0; i<LINE_WORD_NUM; ++i) begin
        assign wr_data2_a[32*(i+1)-1:32*(i)] = data_rdata[clog2(pipe_hit_a)][i];
        assign wr_data2_b[32*(i+1)-1:32*(i)] = data_rdata[clog2(pipe_hit_b)][i];
    end
endgenerate


always_comb begin : axi_bus_wr_data_blockName
    if (req_buffer_a.cache_type.isDcache) begin
        case (req_buffer_a.cache_type.cacheCode)
            D_Index_Writeback_Invalid:begin
                wr_data = wr_data1;
            end
            D_Hit_Writeback_Invalid:begin
                wr_data = wr_data2_a;
            end
            default: begin
                wr_data = '0;
            end
        endcase
    end else begin
        wr_data = ({128{(state_a == MISSDIRTY)}} & wr_data2_a) |
                  ({128{(state_b == MISSDIRTY)}} & wr_data2_b);
    end
end
//---------------------------------------------------------------------------------------------

//uncahced-axi
assign urd_req_a   = ~req_buffer_a.is_cache && fifo_empty && state_a == MISSCLEAN;
assign urd_size_a  = req_buffer_a.size;
assign urd_addr_a  = {req_buffer_a.tag , req_buffer_a.index, req_buffer_a.offset};

assign urd_req_b   = ~req_buffer_b.is_cache && fifo_empty && state_b == MISSCLEAN;
assign urd_size_b  = req_buffer_b.size;
assign urd_addr_b  = {req_buffer_b.tag , req_buffer_b.index, req_buffer_b.offset};

assign uwr_req     = (fifo_empty || fifo_rd_rst_busy) ? 1'b0:1'b1;
assign uwr_size    = fifo_dout.size;
assign uwr_addr    = fifo_dout.address; //
assign uwr_data    = fifo_dout.data;
assign uwr_wstrb   = fifo_dout.wstrb;
//-------------------------------------------------------------------------------------------------

always_comb begin
    data_rd_addr = '0;
    data_rd_addr[req_buffer_a.offset[OFFSET_WIDTH-1:2]] = req_buffer_a.index;
    data_rd_addr[req_buffer_b.offset[OFFSET_WIDTH-1:2]] = req_buffer_b.index; 
end

//生成块
//generate
generate;
    for (genvar i = 0;i<ASSOC_NUM ;i++ ) begin
        simple_port_lutram #(
            .SIZE(GROUP_NUM),
            .dtype(dirty_t)
        )mem_dirty_a(
            .clka(clk_g),
            .rsta(~resetn),

            .ena(1'b1),
            .wea(dirty_we[i]),
            .addra(dirty_addr_a),
            .dina(dirty_wdata),
            .douta(dirty_rdata_a[i])
        );

        simple_port_lutram #(
            .SIZE(GROUP_NUM),
            .dtype(dirty_t)
        )mem_dirty_b(
            .clka(clk_g),
            .rsta(~resetn),

            .ena(1'b1),
            .wea(dirty_we[i]),
            .addra(dirty_addr_b),
            .dina(dirty_wdata),
            .douta(dirty_rdata_b[i])
        );

        simple_port_lutram  #(
            .SIZE(GROUP_NUM),
            .dtype(tagv_t)
        ) mem_tag_a(
            .clka(clk_g),
            .rsta(~resetn),

            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(tagv_addr_a),
            .dina(tagv_wdata),
            .douta(tagv_rdata_a[i])
        );

        simple_port_lutram  #(
            .SIZE(GROUP_NUM),
            .dtype(tagv_t)
        ) mem_tag_b(
            .clka(clk_g),
            .rsta(~resetn),

            .ena(1'b1),
            .wea(tagv_we[i]),
            .addra(tagv_addr_b),
            .dina(tagv_wdata),
            .douta(tagv_rdata_b[i])
        );

        for (genvar j=0; j<LINE_WORD_NUM; ++j) begin
        simple_port_ram #(
            .SIZE(GROUP_NUM),
            .BYTE_PER_DATA(4)
        )mem_data(
            .clk(clk_g),
            .rst(~resetn),

            .ena(1'b1),
            .wea(data_we[i][j]),
            .addra(data_wr_addr),
            .dina(data_wdata[j]),

            .enb(1'b1),
            .addrb(data_rd_addr[i][j]),
            .doutb(data_rdata[i][j])
        );
        end
    end
endgenerate

generate;//PLRU
    for (genvar  i=0; i<GROUP_NUM; i++) begin
        PLRU #(
            .ASSOC_NUM(ASSOC_NUM)
        ) plru_reg(
            .clk(clk_g),
            .resetn(resetn),
            .access(state_a != LOOKUP ? hit_a : hit_b),
            .update(state_a != LOOKUP ? req_buffer_a.valid && i[INDEX_WIDTH-1:0] == req_buffer_a.index 
                                      : req_buffer_b.valid && i[INDEX_WIDTH-1:0] == req_buffer_b.index ),

            .lru(lru[i])
        );
    end
endgenerate

generate;
    for(genvar i = 0; i < ASSOC_NUM; i++ ) begin
        assign hit_a[i]= pipe_tagv_rdata_a[i].valid & (req_tag_a == pipe_tagv_rdata_a[i].tag) & req_iscache_a;
        assign hit_b[i]= pipe_tagv_rdata_b[i].valid & (req_tag_b == pipe_tagv_rdata_b[i].tag) & req_iscache_b;
    end
endgenerate

generate;
    for(genvar i = 0; i < ASSOC_NUM; i++ ) begin
        assign cache_ins_hit[i]= pipe_tagv_rdata_a[i].valid & (req_buffer_a.cache_tag == pipe_tagv_rdata_a[i].tag);
    end
endgenerate

generate;
    for(genvar i = 0;i < ASSOC_NUM; i++) begin
        assign data_rdata_sel_a[i] = data_rdata[i][req_buffer_a.offset[OFFSET_WIDTH-1:2]];
        assign data_rdata_sel_b[i] = data_rdata[i][req_buffer_b.offset[OFFSET_WIDTH-1:2]];
    end
endgenerate

generate
if(ASSOC_NUM==2)begin
    always_comb begin : dirty_we_block
    if(req_buffer_a.cache_type.isDcache)begin
            case (req_buffer_a.cache_type.cacheCode)
                D_Index_Writeback_Invalid:begin
                    if (state_a == REFILL && ret_valid)
                        dirty_we = (req_buffer_a.cache_way) ? 2'b10 : 2'b01;
                    else
                        dirty_we = '0;
                end
                D_Index_Store_Tag:begin
                    dirty_we = (req_buffer_a.cache_way) ? 2'b10 : 2'b01;
                end
                D_Hit_Invalid:begin
                    //( (hit[0]) ? 2'b01:2'b10 )
                    dirty_we = pipe_hit_a;
                end
                D_Hit_Writeback_Invalid: begin
                    if (state_a == REFILL && ret_valid)
                        dirty_we = pipe_hit_a;
                    else
                        dirty_we = '0;
                end
                default: begin
                    dirty_we = '0;
                end
            endcase
    end else if (((state_a == REFILL && ret_valid) || (state_a == REFILLDONE && req_buffer_a.valid && req_buffer_a.wr)) && req_buffer_a.is_cache) begin
        dirty_we = pipe_hit_a;
    end else if (((state_b == REFILL && ret_valid) || (state_b == REFILLDONE && req_buffer_b.valid && req_buffer_b.wr)) && req_buffer_b.is_cache) begin
        dirty_we = pipe_hit_b;
    end else if(req_buffer_a.valid && req_buffer_a.wr && req_buffer_a.is_cache && state_a == LOOKUP && cache_hit_a)begin
        dirty_we = hit_a;
    end else if(req_buffer_b.valid && req_buffer_b.wr && req_buffer_b.is_cache && state_b == LOOKUP && cache_hit_b)begin
        dirty_we = hit_b;
    end else begin
        dirty_we = '0;
    end
    end

    always_comb begin : tagv_we_blockName
    if(req_buffer_a.cache_type.isDcache)begin
        case (req_buffer_a.cache_type.cacheCode)
            D_Index_Writeback_Invalid:begin
                if (state_a == REFILL && ret_valid)
                    tagv_we = (req_buffer_a.cache_way) ? 2'b10 : 2'b01;
                else
                    tagv_we = '0;
            end
            D_Index_Store_Tag:begin
                tagv_we = (req_buffer_a.cache_way) ? 2'b10 : 2'b01;
            end
            D_Hit_Invalid:begin
                tagv_we = pipe_hit_a;
            end
            D_Hit_Writeback_Invalid:begin
                if (state_a == REFILL && ret_valid)
                    tagv_we = pipe_hit_a;
                else
                    tagv_we = '0;
            end
            default: begin
                tagv_we = '0;
            end
        endcase
    end else if (state_a == REFILL && ret_valid && req_buffer_a.is_cache) begin
        tagv_we = pipe_hit_a;
    end else if (state_b == REFILL && ret_valid && req_buffer_b.is_cache) begin
        tagv_we = pipe_hit_b;
    end else begin
        tagv_we = '0;
    end
    end
end
endgenerate

// generate
// if(ASSOC_NUM == 4)begin
//     always_comb begin : dirty_we_block
//     if(req_buffer_a.cache_type.isDcache)begin
//         case (req_buffer_a.cache_type.cacheCode)
//             D_Index_Writeback_Invalid:begin
//                 if (state_a == REFILL && ret_valid)
//                     dirty_we =  (req_buffer_a.cache_tag[1:0] == 2'b00) ? 4'b0001 :
//                                 (req_buffer_a.cache_tag[1:0] == 2'b01) ? 4'b0010 :
//                                 (req_buffer_a.cache_tag[1:0] == 2'b10) ? 4'b0100 : 4'b1000;
//                 else
//                     dirty_we = '0;
//             end
//             D_Index_Store_Tag:begin
//                 dirty_we =  (req_buffer_a.cache_tag[1:0] == 2'b00) ? 4'b0001 :
//                             (req_buffer_a.cache_tag[1:0] == 2'b01) ? 4'b0010 :
//                             (req_buffer_a.cache_tag[1:0] == 2'b10) ? 4'b0100 : 4'b1000;
//             end
//             D_Hit_Invalid:begin
//                 //( (hit[0]) ? 2'b01:2'b10 )
//                 dirty_we = pipe_hit_a;
//             end
//             D_Hit_Writeback_Invalid: begin
//                 if (state_a == REFILL && ret_valid)
//                     dirty_we = pipe_hit_a;
//                 else
//                     dirty_we = '0;
//             end
//             default: begin
//                 dirty_we = '0;
//             end
//         endcase
//     end else if (state_a == REFILL && ret_valid) begin
//         dirty_we = pipe_hit_a;
//     end else if(req_buffer_a.valid && req_buffer_a.wr && req_buffer_a.is_cache)begin
//         dirty_we = hit;
//     end else begin
//         dirty_we = '0;
//     end
//     end

//     always_comb begin : tagv_we_blockName
//     if(req_buffer_a.cache_type.isDcache)begin
//         case (req_buffer_a.cache_type.cacheCode)
//                 D_Index_Writeback_Invalid:begin
//                     if (state == REFILL && ret_valid)
//                         tagv_we =   (req_buffer_a.cache_tag[1:0] == 2'b00) ? 4'b0001 :
//                                     (req_buffer_a.cache_tag[1:0] == 2'b01) ? 4'b0010 :
//                                     (req_buffer_a.cache_tag[1:0] == 2'b10) ? 4'b0100 : 4'b1000;
//                     else
//                         tagv_we = '0;
//                 end
//                 D_Index_Store_Tag:begin
//                     tagv_we =   (req_buffer_a.cache_tag[1:0] == 2'b00) ? 4'b0001 :
//                                 (req_buffer_a.cache_tag[1:0] == 2'b01) ? 4'b0010 :
//                                 (req_buffer_a.cache_tag[1:0] == 2'b10) ? 4'b0100 : 4'b1000;
//                 end
//                 D_Hit_Invalid:begin
//                     tagv_we = pipe_hit;
//                 end
//                 D_Hit_Writeback_Invalid:begin
//                     if (state == REFILL && ret_valid)
//                         tagv_we = pipe_hit;
//                     else
//                         tagv_we = '0;
//                 end
//                 default: begin
//                     tagv_we = '0;
//                 end
//         endcase
//     end else if (state == REFILL && ret_valid) begin
//         tagv_we = pipe_hit;
//     end else begin
//         tagv_we = '0;
//     end
//     end
// end
// endgenerate

generate;
    for (genvar i=0; i<LINE_WORD_NUM; i++) begin
        assign data_wdata[i] = (state_a == REFILL) ? ret_data[(i+1)*32-1:i*32] : (state_b == REFILL) ? ret_data[(i+1)*32-1:i*32] : store_buffer.wdata;
    end
endgenerate

generate;
    for (genvar  i=0; i<ASSOC_NUM; i++) begin
    always_ff @( posedge clk_g ) begin : pipe_tagv_rdata_blockName
        if (~resetn) begin
            pipe_tagv_rdata_a[i].tag   <= '0;
            pipe_tagv_rdata_a[i].valid <= '0;
        end
        else if (req_buffer_en_a) begin
            pipe_tagv_rdata_a[i].tag   <= tagv_rdata_a[i].tag;
            pipe_tagv_rdata_a[i].valid <= tagv_rdata_a[i].valid ;
        end

        if (~resetn) begin
            pipe_tagv_rdata_b[i].tag   <= '0;
            pipe_tagv_rdata_b[i].valid <= '0;
        end
        else if (req_buffer_en_b) begin
            pipe_tagv_rdata_b[i].tag   <= tagv_rdata_b[i].tag;
            pipe_tagv_rdata_b[i].valid <= tagv_rdata_b[i].valid ;
        end
    end
    end
endgenerate
//------------------------------------------------------------------------------------------------------------

//内部逻辑赋值-------------------------------------------------------------------------------------------------
assign cache_hit_a        = |hit_a;//ok
assign cache_hit_b        = |hit_b;//ok

assign ins_hit            = |cache_ins_hit;

assign data_rd_addr_a        = ((state_a == REFILL && ret_valid) || state_next_a == MISSDIRTY || state_a == MISSDIRTY)  ? req_buffer_a.index : DBus.index_a;
assign data_rd_addr_b        = ((state_a == REFILL && ret_valid) || state_next_b == MISSDIRTY || state_b == MISSDIRTY)  ? req_buffer_b.index : DBus.index_b;

assign data_wr_addr          = state_a == REFILL ? req_buffer_b.index : state_b == REFILL ? req_buffer_b.index : store_buffer.index;

assign tagv_addr_a        = state_a == LOOKUP ? (DBus.cachetype.isDcache && DBus.cachetype.cacheCode != D_Index_Store_Tag ? DBus.cache_index : 
                                               req_buffer_a.cache_type.isDcache ? req_buffer_a.index : DBus.index_a) : req_buffer_a.index; 

assign tagv_addr_b        = state_b == LOOKUP ? (DBus.cachetype.isDcache && DBus.cachetype.cacheCode != D_Index_Store_Tag ? DBus.cache_index : 
                                               req_buffer_b.cache_type.isDcache ? req_buffer_b.index : DBus.index_b) : req_buffer_b.index;

assign data_rdata_final1_a = state_a == REFILLDONE ? (req_buffer_a.is_cache ? data_rdata_final2_a : uncache_rdata_a) : data_rdata_final2_a;
assign data_rdata_final1_b = state_b == REFILLDONE ? (req_buffer_b.is_cache ? data_rdata_final2_b : uncache_rdata_b) : data_rdata_final2_b;

assign req_buffer_en_a    = (state_a == LOOKUP && state_next_a == LOOKUP && DBus.req_a && ~stall_a) || DBus.cachetype.isDcache;
assign req_buffer_en_b    = (state_b == LOOKUP && state_next_b == LOOKUP && DBus.req_b && ~stall_b) || DBus.cachetype.isDcache;

assign dirty_addr_a       = req_buffer_a.index;
assign dirty_addr_b       = req_buffer_b.index;
//-------------------------------------------------------------------------------------------------------------------

always_comb begin : tagv_wdata_blockName
    if(req_buffer_a.cache_type.isDcache)begin
        case (req_buffer_a.cache_type.cacheCode)
            D_Index_Store_Tag:begin
                tagv_wdata = {req_buffer_a.cache_valid, req_buffer_a.cache_tag};
            end
            default : begin
                tagv_wdata = '0;
            end
        endcase
    end else begin
        tagv_wdata = (state_a == REFILL) ? {1'b1, req_buffer_a.tag} : (state_b == REFILL) ? {1'b1, req_buffer_b.tag} : '0;
    end
end


always_comb begin : dirty_wdata_blockName
    if(req_buffer_a.cache_type.isDcache)begin
        case (req_buffer_a.cache_type.cacheCode)
            D_Index_Store_Tag:begin
                dirty_wdata = req_buffer_a.cache_dirty;
            end
            default : begin
                dirty_wdata = 1'b0;
            end
        endcase
    end else begin
        dirty_wdata = ~(state_a == REFILL || state_b == REFILL);
    end
end

always_comb begin : data_rdata_final2__blockname
    data_rdata_final2_a = ( (|data_we[clog2(store_buffer.hit)])  && store_buffer.hit == hit_a
                        && {store_buffer.tag,store_buffer.index,store_buffer.offset[OFFSET_WIDTH-1:2]} == {req_tag_a,req_buffer_a.index,req_buffer_a.offset[OFFSET_WIDTH-1:2]} ) ?
                            store_buffer.wdata : data_rdata_sel_a[clog2(state_a == REFILLDONE ? pipe_hit_a : hit_a)];
    data_rdata_final2_b = ( (|data_we[clog2(store_buffer.hit)])  && store_buffer.hit == hit_b
                        && {store_buffer.tag,store_buffer.index,store_buffer.offset[OFFSET_WIDTH-1:2]} == {req_tag_b,req_buffer_b.index,req_buffer_b.offset[OFFSET_WIDTH-1:2]} ) ?
                            store_buffer.wdata : data_rdata_sel_b[clog2(state_b == REFILLDONE ? pipe_hit_b : hit_b)];
end

always_comb begin : data_we_blockName
    data_we = '0;
    if (state_a == REFILL && ret_valid && req_buffer_a.is_cache) begin
        data_we[clog2(pipe_hit_a)] = '1;
    end else if(wb_state == WB_STORE)begin
        if(state_a == REFILLDONE && req_buffer_a.valid) begin
            data_we[clog2(pipe_hit_a)][req_buffer_a.offset[OFFSET_WIDTH-1:2]] = req_buffer_a.wstrb;
        end
        else if(store_buffer.valid) begin 
            data_we[clog2(store_buffer.hit)][store_buffer.offset[OFFSET_WIDTH-1:2]] = store_buffer.wstrb;
        end
    end else if (state_b == REFILL && ret_valid && req_buffer_b.is_cache) begin
        data_we[clog2(pipe_hit_b)] = '1;
    end else begin
        data_we = '0;
    end
end


always_ff @( posedge clk_g ) begin : store_buffer_blockName
    if ( !resetn ) begin
        store_buffer <= '0;
    end else if( req_buffer_a.valid) begin
        store_buffer.hit   <= hit_a;
        store_buffer.valid <= (req_buffer_a.valid & req_buffer_a.wr);
        store_buffer.tag   <= req_tag_a;
        store_buffer.index <= req_buffer_a.index;
        store_buffer.offset <=req_buffer_a.offset;
        store_buffer.wstrb <= req_buffer_a.wstrb;
        store_buffer.wdata <= mux_byteenable(data_rdata_final2_a, req_buffer_a.wdata, req_buffer_a.wstrb);
    end else if ( req_buffer_a.valid==1'b0 ) begin
        store_buffer <= '0;
    end
end

always_ff @(posedge clk_g) begin : pipe_hitblockName
    if (req_buffer_a.cache_type.isDcache) 
        pipe_hit_a    <= cache_ins_hit;
    else if (req_new_a) begin
        if(cache_hit_a) 
            pipe_hit_a  <= hit_a;
        else 
            pipe_hit_a  <= (1<<lru[req_buffer_a.index]);
    end

    if (req_new_b) begin
        if(cache_hit_b) 
            pipe_hit_b  <= hit_b;
        else 
            pipe_hit_b  <= (1<<lru[req_buffer_a.index]);
    end
end

always_ff @( posedge clk_g ) begin : req_buffer_block
    if( !resetn )begin
        req_buffer_a              <=  '0;
    end else if(req_buffer_en_a) begin
        req_buffer_a.valid        <=  DBus.req_a      ;
        req_buffer_a.wr           <=  DBus.wr_a       ;
        req_buffer_a.index        <=  DBus.cachetype.isDcache ? DBus.cache_index : DBus.index_a;
        req_buffer_a.offset       <=  DBus.offset_a   ;
        req_buffer_a.wstrb        <=  DBus.wstrb_a    ;
        req_buffer_a.wdata        <=  DBus.wdata_a    ;
        req_buffer_a.size         <=  DBus.size_a     ;
        req_buffer_a.cache_tag    <=  DBus.cache_tag  ;
        req_buffer_a.cache_type   <=  DBus.cachetype  ;
        req_buffer_a.cache_dirty  <=  DBus.cache_dirty;
        req_buffer_a.cache_valid  <=  DBus.cache_valid;
        req_buffer_a.cache_way    <=  DBus.cache_way  ;
    end else if(state_next_a == LOOKUP)
        req_buffer_a.valid    <= 1'b0;
    
    if(req_new_a) begin
        req_buffer_a.tag  <= DBus.tag_a;
        req_buffer_a.is_cache <= DBus.iscache_a;
    end


    if( !resetn )begin 
        req_new_a                 <= 1'b0;
    end else if(req_buffer_en_a) begin
        req_new_a                 <= 1'b1;
    end else begin
        req_new_a                 <= 1'b0;
    end

    if( !resetn )begin
        req_buffer_b              <=  '0;
    end else if(req_buffer_en_b) begin
        req_buffer_b.valid        <=  DBus.req_b      ;
        req_buffer_b.wr           <=  DBus.wr_b       ;
        req_buffer_b.index        <=  DBus.index_b;
        req_buffer_b.offset       <=  DBus.offset_b   ;
        req_buffer_b.wstrb        <=  DBus.wstrb_b    ;
        req_buffer_b.size         <=  DBus.size_b     ;
    end else if(state_next_b == LOOKUP)
        req_buffer_b.valid    <= 1'b0;
    
    if(req_new_b) begin
        req_buffer_b.tag      <= DBus.tag_b;
        req_buffer_b.is_cache <= DBus.iscache_b;
    end

    if( !resetn )begin 
        req_new_b                 <= 1'b0;
    end else if(req_buffer_en_b) begin
        req_new_b                 <= 1'b1;
    end else begin
        req_new_b                 <= 1'b0;
    end
end
assign req_tag_a = req_new_a ? DBus.tag_a : req_buffer_a.tag;
assign req_tag_b = req_new_b ? DBus.tag_b : req_buffer_b.tag;
assign req_iscache_a = req_new_a ? DBus.iscache_a : req_buffer_a.is_cache;
assign req_iscache_b = req_new_b ? DBus.iscache_b : req_buffer_b.is_cache;

always_ff @( posedge clk_g ) begin : state_switch_blockName
    if( !resetn ) begin
        state_a <= LOOKUP ;
        state_b <= LOOKUP ;
    end else begin
        state_a <= state_next_a ;
        state_b <= state_next_b ;
    end
end

assign bank_conflict = req_buffer_a.valid && req_buffer_b.valid && req_buffer_a.offset == req_buffer_b.offset;

assign port_a_miss = (state_a == LOOKUP) && (req_buffer_a.valid && (((req_new_a ? ~req_iscache_a : req_buffer_a.is_cache) && ~req_buffer_a.wr) || ~cache_hit_a));
assign port_b_miss = (state_b == LOOKUP) && (req_buffer_b.valid && (((req_new_b ? ~req_iscache_b : req_buffer_b.is_cache) && ~req_buffer_b.wr) || ~cache_hit_b));

assign stall_a = ((port_a_miss && (state_b != LOOKUP)) || (bank_conflict && state_b != LOOKUP)) && stall_a == LOOKUP;
assign stall_b = ((port_b_miss && (port_a_miss || state_a != LOOKUP)) || (bank_conflict)) && stall_b == LOOKUP;


always_comb begin : state_next_a_blockName
    state_next_a = LOOKUP ;

    unique case (state_a)
        LOOKUP:begin
            if ( req_buffer_a.cache_type.isDcache &&
                 ((req_buffer_a.cache_type.cacheCode == D_Index_Writeback_Invalid && dirty_rdata_a[req_buffer_a.cache_way])||
                 (req_buffer_a.cache_type.cacheCode == D_Hit_Writeback_Invalid && ins_hit && dirty_rdata_a[clog2(cache_ins_hit)]) ))
                state_next_a = MISSDIRTY;
            else if ( req_buffer_a.valid ) begin
                if (~port_a_miss || stall_a) begin
                    state_next_a = LOOKUP;
                end else begin
                    if (dirty_rdata_a[lru[req_buffer_a.index]] && req_iscache_a) begin
                        state_next_a = MISSDIRTY ;
                    end else begin
                        state_next_a = MISSCLEAN ;
                    end
                end
            end else begin
                state_next_a = LOOKUP;
            end
        end
        MISSCLEAN:begin
            if ((rd_rdy && req_buffer_a.is_cache) || (urd_rdy && ~req_buffer_a.is_cache)) begin
                state_next_a = REFILL;
            end else begin
                state_next_a = MISSCLEAN;
            end
        end
        REFILL:begin
            if ( (ret_valid && req_buffer_a.is_cache) || (uret_valid && ~req_buffer_a.is_cache) ) begin
                state_next_a = REFILLDONE;
            end else begin
                state_next_a = REFILL;
            end
        end
        REFILLDONE:begin
            state_next_a = LOOKUP ;
        end
        MISSDIRTY:begin
            if ( wr_rdy ) begin
                state_next_a = WRITEBACK;
            end else begin
                state_next_a = MISSDIRTY;
            end
        end
        WRITEBACK:begin
            if ( wr_bvalid ) begin
                state_next_a = MISSCLEAN;
            end else begin
                state_next_a = WRITEBACK;
            end
        end
        default: begin
            state_next_a = LOOKUP;
        end
    endcase
end

always_comb begin : state_next_b_blockName
    state_next_b = LOOKUP ;

    unique case (state_b)
        LOOKUP:begin
            if ( req_buffer_b.valid ) begin
                if (~port_b_miss || stall_b) begin
                    state_next_b = LOOKUP;
                end else begin
                    if (dirty_rdata_b[lru[req_buffer_b.index]] && req_iscache_b) begin
                        state_next_b = MISSDIRTY ;
                    end else begin
                        state_next_b = MISSCLEAN ;
                    end
                end
            end else begin
                state_next_b = LOOKUP;
            end
        end
        MISSCLEAN:begin
            if ( (rd_rdy && req_buffer_b.is_cache) || (urd_rdy && ~req_buffer_b.is_cache)) begin
                state_next_b = REFILL;
            end else begin
                state_next_b = MISSCLEAN;
            end
        end
        REFILL:begin
            if ( (ret_valid && req_buffer_b.is_cache) || (uret_valid && ~req_buffer_b.is_cache) ) begin
                state_next_b = REFILLDONE;
            end else begin
                state_next_b = REFILL;
            end
        end
        REFILLDONE:begin
            state_next_b = LOOKUP ;
        end
        MISSDIRTY:begin
            if ( wr_rdy ) begin
                state_next_b = WRITEBACK;
            end else begin
                state_next_b =  MISSDIRTY;
            end
        end
        WRITEBACK:begin
            if ( wr_bvalid ) begin
                state_next_b = MISSCLEAN;
            end else begin
                state_next_b = WRITEBACK;
            end
        end
        default: begin
            state_next_b =LOOKUP;
        end
    endcase
end

//wb_store_state
always_ff @( posedge clk_g ) begin :wb_state_blockname
    if ( !resetn ) begin
        wb_state <= WB_IDLE;
    end else begin
        wb_state <= wb_state_next;
    end
end

always_comb begin : wb_state_next_blockname
    if (req_buffer_a.valid && req_buffer_a.wr && ((state_a == LOOKUP && cache_hit_a && req_iscache_a) || (state_a == REFILL && ret_valid && req_buffer_a.is_cache) )) begin
        wb_state_next = WB_STORE;
    end else begin
        wb_state_next = WB_IDLE;
    end

end

always_ff @( posedge clk_g ) begin : uncache_rdata_blockName
    if (uret_valid) begin
        uncache_rdata_a <= uret_data;
        uncache_rdata_b <= uret_data;
    end
end

FIFO #(
    .SIZE(STORE_BUFFER_SIZE),
    .dtype(uncache_store_t),
    .LATENCY (0)
)

FIFO_dut (
    .clk (clk_g),
    .rst (~resetn),
    .din (fifo_din),
    .rd_en (fifo_rd_en ),
    .wr_en (fifo_wr_en ),
    .rd_rst_busy (fifo_rd_rst_busy ),
    .full (fifo_full ),
    .empty (fifo_empty ),
    .dout (fifo_dout ),
    .data_valid (fifo_data_valid ),
    .wr_ack (fifo_wr_ack ),
    .wr_rst_busy  (fifo_wr_rst_busy)
);

endmodule
