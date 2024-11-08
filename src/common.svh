/*!
 * \brief 通用结构及 AXI 接口定义
 */

`ifndef COMMON_SVH
`define COMMON_SVH

//! 项目配置
`default_nettype wire
`timescale 1ns / 1ps

// golden trace
`define GOLDEN_TRACE

//! --- BEGIN ---
//! some definations about cpu are moved here due to
//! compilation dependency issues
// register
`define REG_NUM 64
`define REG_RA  31
`define REG_HI  32
`define REG_LO  33

typedef logic [$clog2(`REG_NUM)-1:0] reg_addr_t;
//! --- END ---

typedef logic [  7:0] uint8_t;
typedef logic [ 15:0] uint16_t;
typedef logic [ 31:0] uint32_t;
typedef logic [ 63:0] uint64_t;
typedef logic [127:0] uint128_t;
typedef uint32_t      virt_t;
typedef uint32_t      phys_t;

// Debug
`ifdef GOLDEN_TRACE
typedef struct packed {
    logic       valid;
    virt_t      pc;
    logic [3:0] wstrb;
    reg_addr_t  dest;
    reg_addr_t  phy_dest;
    uint32_t    wdata;

    logic       br_op;
    logic       predict_sucess;
} debug_bus_t;

typedef struct packed {
    logic       valid;
    logic [3:0] rob_entry_num;

    logic       br_op;
    logic       predict_sucess;
} commit_to_debug_bus_t;
`endif


//! AXI接口
typedef struct packed {
	// ar
    logic [31:0] araddr;
    logic [3 :0] arlen;
    logic [2 :0] arsize;
    logic [1 :0] arburst;
    logic        arlock;
    logic [3 :0] arcache;
    logic [2 :0] arprot;
    logic        arvalid;
	// r
    logic        rready;
	// aw
    logic [31:0] awaddr;
    logic [3 :0] awlen;
    logic [2 :0] awsize;
    logic [1 :0] awburst;
    logic        awlock;
    logic [3 :0] awcache;
    logic [2 :0] awprot;
    logic        awvalid;
	// w
    logic [31:0] wdata;
    logic [3 :0] wstrb;
    logic        wlast;
    logic        wvalid;
	// b
    logic        bready;
} axi_req_t;

typedef struct packed {
	// ar
	logic        arready;
	// r
	logic [31:0] rdata;
	logic [1 :0] rresp;
	logic        rlast;
	logic        rvalid;
	// aw
	logic        awready;
	// w
	logic        wready;
	// b
	logic [1 :0] bresp;
	logic        bvalid;
} axi_resp_t;

typedef struct packed {
	// ar
    // master
    logic [3 :0] arid;
    logic [31:0] araddr;
    logic [7 :0] arlen;
    logic [2 :0] arsize;
    logic [1 :0] arburst;
    logic [1 :0] arlock;
    logic [3 :0] arcache;
    logic [2 :0] arprot;
    logic        arvalid;
    // slave
	logic        arready;

	// r
    // master
    logic        rready;
    // slave
    logic [3 :0] rid;
	logic [31:0] rdata;
	logic [1 :0] rresp;
	logic        rlast;
	logic        rvalid;

	// aw
    // master
    logic [3 :0] awid;
    logic [31:0] awaddr;
    logic [7 :0] awlen;
    logic [2 :0] awsize;
    logic [1 :0] awburst;
    logic [1 :0] awlock;
    logic [3 :0] awcache;
    logic [2 :0] awprot;
    logic        awvalid;
    // slave
	logic        awready;

	// w
    // master
    logic [3 :0] wid;
    logic [31:0] wdata;
    logic [3 :0] wstrb;
    logic        wlast;
    logic        wvalid;
    // slave
	logic        wready;

	// b
    // master
    logic        bready;
    // slave
    logic [3 :0] bid;
	logic [1 :0] bresp;
	logic        bvalid;

} axi_t;

`endif
