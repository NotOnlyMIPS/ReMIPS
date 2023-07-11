`include "../cpu.svh"

module regfile(
    input clk,

    // read
    input  reg_addr_t inst1_raddr1,
    input  reg_addr_t inst1_raddr2,

    input  reg_addr_t inst2_raddr1,
    input  reg_addr_t inst2_raddr2,

    // write
    input  logic[3:0] inst1_we,
    input  reg_addr_t inst1_waddr,
    input  uint32_t   inst1_wdata,

    input  logic[3:0] inst2_we,
    input  reg_addr_t inst2_waddr,
    input  uint32_t   inst2_wdata
);

uint32_t regs[`REG_NUM-1:0];

// write
always_ff @(posedge clk) begin
    if(inst1_we[0] || inst1_we[1] || inst1_we[2] || inst1_we[3]) begin
        regs[inst1_waddr][ 7: 0] <= inst1_we[0] ? inst1_wdata[ 7: 0] : regs[inst1_waddr][ 7: 0];
        regs[inst1_waddr][15: 8] <= inst1_we[1] ? inst1_wdata[15: 8] : regs[inst1_waddr][15: 8];
        regs[inst1_waddr][23:16] <= inst1_we[2] ? inst1_wdata[23:16] : regs[inst1_waddr][23:16];
        regs[inst1_waddr][31:24] <= inst1_we[3] ? inst1_wdata[31:24] : regs[inst1_waddr][31:24];
    end

    if(inst2_we[0] || inst2_we[1] || inst2_we[2] || inst2_we[3]) begin
        regs[inst2_waddr][ 7: 0] <= inst2_we[0] ? inst2_wdata[ 7: 0] : regs[inst2_waddr][ 7: 0];
        regs[inst2_waddr][15: 8] <= inst2_we[1] ? inst2_wdata[15: 8] : regs[inst2_waddr][15: 8];
        regs[inst2_waddr][23:16] <= inst2_we[2] ? inst2_wdata[23:16] : regs[inst2_waddr][23:16];
        regs[inst2_waddr][31:24] <= inst2_we[3] ? inst2_wdata[31:24] : regs[inst2_waddr][31:24];
    end
end

// read
assign inst1_rdata1 = (inst1_raddr1 == 6'd0) ? 32'd0 : regs[inst1_raddr1];
assign inst1_rdata2 = (inst1_raddr2 == 6'd0) ? 32'd0 : regs[inst1_raddr2];

assign inst2_rdata1 = (inst2_raddr1 == 6'd0) ? 32'd0 : regs[inst2_raddr1];
assign inst2_rdata2 = (inst2_raddr2 == 6'd0) ? 32'd0 : regs[inst2_raddr2];

endmodule