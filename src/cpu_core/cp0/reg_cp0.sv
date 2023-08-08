`include "../cpu.svh"

module reg_cp0 (
    input clk   ,
    input reset ,
    // interrupt
    input  [ 5:0] ext_int,
    output [ 5:0] cp0_hw,
    output [ 1:0] cp0_sw,
    // C0_TLB_Interface
    input  logic [3:0]  tlb_op,

    output logic[7:0]   tlb_asid,
    output tlb_index_t  tlbrw_index,
    output logic        tlbrw_we,
    output tlb_entry_t  tlbrw_wdata,
    input  tlb_entry_t  tlbrw_rdata,

    output uint32_t     tlbp_entry_hi,
    input  uint32_t     tlbp_index,

    output logic        kseg0_uncached,
    // Cache
    input  CacheCodeType cache_op,
    input  virt_t        cache_vaddr,
    input  phys_t        cache_paddr,

    output logic         cache_valid,
    output logic [19:0]  cache_tag,
    output logic         cache_dirty,
    output logic [7:0]   cache_index,
    output logic         cache_way,
    // exception
    input  logic       cp0_we,
    input  logic [7:0] cp0_addr,
    input  uint32_t    cp0_wdata,
    output uint32_t    cp0_rdata,

    input  flush_src_t flush_src,
    input  exception_t exception,
    output virt_t      epc

);

//CP0_STATUS: CR_STATUS, SEL 0
logic [31:0] cp0_status_out;
cp0_status_t cp0_status;

assign cp0_status.bev = 1'b1;

always @(posedge clk) begin
    if(cp0_we && cp0_addr == `CR_STATUS)
        cp0_status.im <= cp0_wdata[15:8];
end

always @(posedge clk) begin
    if(reset)
        cp0_status.exl <= 1'b0;
    else if(exception.ex)
        cp0_status.exl <= 1'b1;
    else if(flush_src.eret)
        cp0_status.exl <= 1'b0;
    else if(cp0_we && cp0_addr == `CR_STATUS)
        cp0_status.exl <= cp0_wdata[1];
end

always @(posedge clk) begin
    if(reset)
        cp0_status.ie <= 1'b0;
    else if(cp0_we && cp0_addr == `CR_STATUS)
        cp0_status.ie <= cp0_wdata[0];
end

assign cp0_status_out = {9'b0, cp0_status.bev, 6'b0, cp0_status.im, 6'b0, cp0_status.exl, cp0_status.ie};

//CP0_CAUSE: CR_CAUSE, SEL 0
logic [31:0] cp0_cause_out;
cp0_cause_t  cp0_cause;

always @(posedge clk) begin
    if(reset)
        cp0_cause.bd <= 1'b0;
    else if(exception.ex && !cp0_status.exl)
        cp0_cause.bd <= exception.bd;
end

logic count_eq_compare;
always @(posedge clk) begin
    if(reset)
        cp0_cause.ti <= 1'b0;
    else if(cp0_we && cp0_addr == `CR_COMPARE)
        cp0_cause.ti <= 1'b0;
    else if(count_eq_compare)
        cp0_cause.ti <= 1'b1;
end

always @(posedge clk) begin
    if(reset) begin
        cp0_cause.ce <= '0;
    end
    else if(exception.ex && exception.exccode == `EXCCODE_CpU) begin
        cp0_cause.ce <= 2'b01;
    end
end

always @(posedge clk) begin
    if(reset)
        cp0_cause.ip[7:2] <= 6'b0;
    else begin
        cp0_cause.ip[7]   <= ext_int[5] | cp0_cause.ti;
        cp0_cause.ip[6:2] <= ext_int[4:0];
    end

    if(reset)
        cp0_cause.ip[1:0] <= 2'b0;
    else if(cp0_we && cp0_addr == `CR_CAUSE)
        cp0_cause.ip[1:0] <= cp0_wdata[9:8];
end

always @(posedge clk) begin
    if(reset)
        cp0_cause.exccode <= 5'b0;
    else if(exception.ex)
        cp0_cause.exccode <= exception.exccode;
end

assign cp0_cause_out = {cp0_cause.bd, cp0_cause.ti, cp0_cause.ce, 12'b0, cp0_cause.ip, 1'b0, cp0_cause.exccode, 2'b0};

//CP0_EPC: CR_EPC, SEL 0
virt_t cp0_epc;
always @(posedge clk) begin
    if(exception.ex && !cp0_status.exl)
        cp0_epc <= exception.epc;
    else if(cp0_we && cp0_addr == `CR_EPC)
        cp0_epc <= cp0_wdata;
end

//CP0_BADVADDR: CR_BADVADDR, SEL 0
virt_t cp0_badvaddr;
always @(posedge clk) begin
    if(exception.ex && (exception.exccode == `EXCCODE_ADEL || exception.exccode == `EXCCODE_ADES
                      ||exception.exccode == `EXCCODE_TLBL || exception.exccode == `EXCCODE_TLBS
                      ||exception.exccode == `EXCCODE_MOD))
        cp0_badvaddr <= exception.badvaddr;
end

//CP0_COUNT: CR_COUNT, SEL 0
reg        tick    ;
reg [31:0] cp0_count;
always @(posedge clk) begin
    if(reset)
        tick <= 1'b0;
    else
        tick <= ~tick;

    if(cp0_we && cp0_addr == `CR_COUNT)
        cp0_count <= cp0_wdata;
    else if(tick)
        cp0_count <= cp0_count + 1'b1;
end

//CP0_COMPARE: CR_COMPARE, SEl 0
reg [31:0] cp0_compare;
always @(posedge clk) begin
    if(cp0_we && cp0_addr == `CR_COMPARE)
        cp0_compare <= cp0_wdata;
end

assign count_eq_compare = cp0_count == cp0_compare;

//TLB
uint32_t cp0_context;
uint32_t cp0_entry_hi, cp0_entry_lo0, cp0_entry_lo1, cp0_index;
uint32_t cp0_random, cp0_wired, cp0_pagemask;
logic [3:0] cp0_random_add1;

assign cp0_random_add1 = cp0_random[3:0] + 1'b1;

assign tlb_asid    = cp0_entry_hi[7:0];
assign tlbrw_index = tlb_op[`TLBOP_TLBWR] ? cp0_random[$clog2(`TLB_ENTRIES_NUM)-1:0] : cp0_index[$clog2(`TLB_ENTRIES_NUM)-1:0];
assign tlbrw_we    = tlb_op[`TLBOP_TLBWI] | tlb_op[`TLBOP_TLBWR];
assign tlbrw_wdata = {
    cp0_entry_lo0[ 5: 3],
    cp0_entry_lo1[ 5: 3],
    cp0_entry_hi [ 7: 0],
    cp0_entry_hi [31:13],
    cp0_entry_lo0[25: 6],
    cp0_entry_lo1[25: 6],
    cp0_entry_lo0[2],
    cp0_entry_lo0[1],
    cp0_entry_lo1[2],
    cp0_entry_lo1[1],
    cp0_entry_lo0[0] & cp0_entry_lo1[0]
};
assign tlbp_entry_hi = cp0_entry_hi;


always @(posedge clk) begin
    if(reset) cp0_entry_hi <= '0;
    else if(exception.ex && (exception.exccode == `EXCCODE_TLBL
                    || exception.exccode == `EXCCODE_TLBS
                    || exception.exccode == `EXCCODE_MOD))
        cp0_entry_hi[31:13] <= exception.badvaddr[31:13];
    else if(tlb_op[`TLBOP_TLBR])
        cp0_entry_hi <= {
            tlbrw_rdata.vpn2,
            5'b0,
            tlbrw_rdata.asid
        };
    else if(cp0_we && cp0_addr == `CR_ENTRYHI)
        cp0_entry_hi <= {
            cp0_wdata[31:13],
            5'b0,
            cp0_wdata[7:0]
        };

    if(tlb_op[`TLBOP_TLBR])
        cp0_entry_lo0 <= {
            6'b0,
            tlbrw_rdata.pfn0,
            tlbrw_rdata.c0,
            tlbrw_rdata.d0,
            tlbrw_rdata.v0,
            tlbrw_rdata.G
        };
    else if(cp0_we && cp0_addr == `CR_ENTRYLO0)
        cp0_entry_lo0 <= {
            6'b0,
            cp0_wdata[25:0]
        };

    if(tlb_op[`TLBOP_TLBR])
        cp0_entry_lo1 <= {
            6'b0,
            tlbrw_rdata.pfn1,
            tlbrw_rdata.c1,
            tlbrw_rdata.d1,
            tlbrw_rdata.v1,
            tlbrw_rdata.G
        };
    else if(cp0_we && cp0_addr == `CR_ENTRYLO1)
        cp0_entry_lo1 <= {
            6'b0,
            cp0_wdata[25:0]
        };

    if(tlb_op[`TLBOP_TLBP])
        cp0_index <= tlbp_index;
    else if(cp0_we && cp0_addr == `CR_INDEX)
        cp0_index <= {{(32-$clog2(`TLB_ENTRIES_NUM)){1'b0}},cp0_wdata[$clog2(`TLB_ENTRIES_NUM)-1:0]};

    // Context
    if(reset) begin
        cp0_context <= '0;
    end
    else if(cp0_we && cp0_addr == `CR_CONTEXT) begin
        cp0_context[31:23] <= cp0_wdata[31:23];
    end
    else if(exception.ex && (exception.exccode == `EXCCODE_TLBL
                        || exception.exccode == `EXCCODE_TLBS
                        || exception.exccode == `EXCCODE_MOD)) begin
        cp0_context[31:13] <= exception.badvaddr[31:13];
    end
    
    // PageMask
    if(reset) begin
        cp0_pagemask <= '0;
    end
    
    // Wired
    if(reset) begin
        cp0_wired <= '0;
    end
    else if(cp0_we && cp0_addr == `CR_WIRED) begin
        cp0_wired[2:0] <= cp0_wdata[2:0];
    end

    // Random
    if(reset) begin
        cp0_random <= `TLB_ENTRIES_NUM-1;
    end
    else if(cp0_we && cp0_addr == `CR_WIRED) begin
        cp0_random <= `TLB_ENTRIES_NUM-1;
    end
    else begin
        cp0_random <= (cp0_random_add1 >= cp0_wired) ? {28'b0, cp0_random_add1} : cp0_wired;
    end

end


// Cache TagLo
logic [31:0] cp0_tag_lo;
always @(posedge clk) begin
    if(reset)
        cp0_tag_lo <= '0;
    if(cp0_we && cp0_addr == `CR_TAGLO)
        cp0_tag_lo <= cp0_wdata[31:10];
end
logic  tag_from_cp0;
logic  cache_is_index;
assign tag_from_cp0 = (cache_op == I_Index_Store_Tag || cache_op == D_Index_Store_Tag);

assign cache_valid = cp0_tag_lo[10];
assign cache_dirty = cp0_tag_lo[11];
assign cache_tag   = tag_from_cp0 ? cp0_tag_lo[31:12] : cache_paddr[31:12];
assign cache_way   = cache_paddr[12];
assign cache_index = cache_vaddr[11:4];

// CP0_PRID
uint32_t cp0_prid;

always_ff @(posedge clk) begin
    if(reset)
        cp0_prid <= 32'h0000_4220;
end

// CP0_EBase
uint32_t cp0_ebase;
uint32_t offset, base;

always_ff @(posedge clk) begin
    if(reset)
        cp0_ebase <= 32'h8000_0000;
    else if(cp0_we && cp0_addr == `CR_EBASE)
        cp0_ebase <= cp0_wdata;
end

always_comb begin
    unique case(exception.exccode)
        `EXCCODE_TLBL, `EXCCODE_TLBS:
            offset = (exception.tlb_refill) ? 32'h0 : 32'h180;
        default:
            offset = 32'h180;
    endcase

    base = (cp0_status.exl || exception.ex) ? 32'hbfc00200 : cp0_ebase;
end

// Configx
logic [31:0] cp0_config0, cp0_config1;
always @(posedge clk) begin
    if(reset) begin
        cp0_config0 <= {
            1'b1,    // M
            15'b0,   // 0
            1'b0,    // BE
            2'b0,    // AT
            3'b0,    // AR
            3'b1,    // MT
            4'b0,    // 0
            3'b011   // K0  
        };
        cp0_config1 <= {
            1'b1,    // M
            6'd15,   // MMUSize-1
            3'd2,    // IS
            3'd4,    // IL
            3'd3,    // IA
            3'd2,    // DS
            3'd4,    // DL
            3'd3,    // DA
            1'd0,    // C2
            1'd0,    // CMD
            1'd0,    // PC
            1'd0,    // WR
            1'd0,    // CA
            1'd0,    // EP
            1'd0     // FP
        };
    end
    if(cp0_we && cp0_addr == `CR_CONFIG0)
        cp0_config0[2:0] <= cp0_wdata[2:0];
end

assign kseg0_uncached = (cp0_config0[2:0] != 3'd3);

// WB_C0_Interface
assign cp0_rdata = ({32{cp0_addr==`CR_INDEX   }} & cp0_index      )
                 | ({32{cp0_addr==`CR_RANDOM  }} & cp0_random     )
                 | ({32{cp0_addr==`CR_ENTRYLO0}} & cp0_entry_lo0  )
                 | ({32{cp0_addr==`CR_ENTRYLO1}} & cp0_entry_lo1  )
                 | ({32{cp0_addr==`CR_CONTEXT }} & cp0_context    )
                 | ({32{cp0_addr==`CR_PAGEMASK}} & cp0_pagemask   )
                 | ({32{cp0_addr==`CR_WIRED   }} & cp0_wired      )
                 | ({32{cp0_addr==`CR_BADVADDR}} & cp0_badvaddr   )
                 | ({32{cp0_addr==`CR_COUNT   }} & cp0_count      )
                 | ({32{cp0_addr==`CR_ENTRYHI }} & cp0_entry_hi   )
                 | ({32{cp0_addr==`CR_COMPARE }} & cp0_compare    )
                 | ({32{cp0_addr==`CR_STATUS  }} & cp0_status_out )
                 | ({32{cp0_addr==`CR_CAUSE   }} & cp0_cause_out  )
                 | ({32{cp0_addr==`CR_EPC     }} & cp0_epc        )
                 | ({32{cp0_addr==`CR_PRID    }} & cp0_prid       )
                 | ({32{cp0_addr==`CR_EBASE   }} & cp0_ebase      )
                 | ({32{cp0_addr==`CR_CONFIG0 }} & cp0_config0    )
                 | ({32{cp0_addr==`CR_CONFIG1 }} & cp0_config1    )
                 | ({32{cp0_addr==`CR_TAGLO   }} & cp0_tag_lo     );

assign {cp0_hw, cp0_sw} = {8{~cp0_status.exl}} & {8{cp0_status.ie}} & cp0_cause.ip & cp0_status.im;

assign epc = {32{flush_src.eret           }} & cp0_epc
           | {32{flush_src.exception      }} & (base + offset)
           | {32{flush_src.privileged_inst}} & exception.epc;

endmodule
