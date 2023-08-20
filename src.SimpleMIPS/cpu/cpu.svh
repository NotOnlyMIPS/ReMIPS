/*!
 * \brief CPU 参数配置及关联结构声明
 */

`ifndef CPU_SVH
`define CPU_SVH
`include "../common.svh"

//BPU
`define B_IS_J		3'h1
`define B_IS_CALL   3'h2
`define B_IS_RET    3'h3
`define B_IS_BRA    3'h4

`define IDLE        1'b0
`define CORRECTION  1'b1

`define NT      2'b00  //not taken
`define WNT     2'b01  //weakly not taken
`define WT      2'b10  //weakly taken
`define T       2'b11  //taken

//MMU
`define CPU_MMU_ENABLED 1

// TLB
`define TLB_ENTRIES_NUM 16
`define ISSUE_NUM       1

`define TLBOP_TLBP   2'd0
`define TLBOP_TLBR   2'd1
`define TLBOP_TLBWI  2'd2

// coprocesser register
`define CR_INDEX     0
`define CR_ENTRYLO0  2
`define CR_ENTRYLO1  3
`define CR_BADVADDR  8
`define CR_COUNT     9
`define CR_ENTRYHI  10
`define CR_COMPARE  11
`define CR_STATUS   12
`define CR_CAUSE    13
`define CR_EPC      14
`define CR_PRID     15
`define CR_EBASE	47 // sel 1
`define CR_CONFIG0  16
`define CR_CONFIG1  48 // sel 1
`define CR_TAGLO    28

// cause register exc_code field
`define EXCCODE_INT   5'h00  // interrupt
`define EXCCODE_MOD   5'h01  // TLB modification exception
`define EXCCODE_TLBL  5'h02  // TLB exception (load or instruction fetch)
`define EXCCODE_TLBS  5'h03  // TLB exception (store)
`define EXCCODE_ADEL  5'h04  // address exception (load or instruction fetch)
`define EXCCODE_ADES  5'h05  // address exception (store)
`define EXCCODE_SYS   5'h08  // syscall
`define EXCCODE_BP    5'h09  // breakpoint
`define EXCCODE_RI    5'h0a  // reserved instruction exception
`define EXCCODE_CpU   5'h0b  // coprocesser unusable exception
`define EXCCODE_OV    5'h0c  // overflow
`define EXCCODE_TR    5'h0d  // trap
`define EXCCODE_FPE   5'h0f  // floating point exception

//Cache
typedef enum logic [2:0] {
	Cache_Code_EMPTY,

	I_Index_Invalid,
	I_Index_Store_Tag,
	I_Hit_Invalid,

	D_Index_Writeback_Invalid,
	D_Index_Store_Tag,
	D_Hit_Invalid,
	D_Hit_Writeback_Invalid
} CacheCodeType;

typedef struct packed {
	CacheCodeType       	cacheCode;
	logic 					isIcache;
	logic 					isDcache;
} CacheType;


// exception
typedef struct packed {
	//TLB
	logic        tlb_refill;

    logic        bd;
    logic        ex;
    logic [ 4:0] exccode;
    virt_t 		 badvaddr;
} exception_t;

// BPU
typedef struct packed {
	logic [31:10]	tag;
	virt_t          target;
	logic [2:0]     br_type;
	logic [1:0]     count;
} BHT_entry_t;

typedef struct packed {
	logic          valid;
	logic          br_op;
	logic          br_taken;
	virt_t         target;
} predict_result_t;

typedef struct packed {
	logic          predict_sucess;
	logic [2:0]	   br_type;
	logic          ready;
	BHT_entry_t    predict_entry;
	logic          is_taken;
	virt_t         correct_target;
	virt_t		   pc;
} verify_result_t;

// RAS
typedef struct packed {
	logic valid;
	virt_t data;
} ras_t;

/*-------------------------- pipeline -----------------------*/

// pre_IF stage
typedef struct packed {
	// pre_IF to IF
	logic   	inst_valid;
	uint32_t	inst;
	virt_t	 	pc;
	// exception
	exception_t exception;
} pfs_to_fs_bus_t;

// IF stage
typedef struct packed {
	// IF to ID
    uint32_t 	 inst;
    virt_t 		 pc;
    // ex
	exception_t  exception;
} fs_to_ds_bus_t;

// ID stage
typedef struct packed {
	logic 		 invalid;

	reg_addr_t 	 rs;
	reg_addr_t   rt;
	reg_addr_t 	 rd;

	logic [11:0] alu_op;
	logic    	 alu_ov;
	logic [11:0] br_op;
	logic [ 2:0] tlb_op;
	logic [12:0] hi_lo_op;
	logic [ 6:0] load_op;
	logic [ 4:0] store_op;
	logic [ 2:0] c0_op;
	logic [ 7:0] c0_addr;

	logic        src1_is_sa;
	logic        src1_is_pc;
	logic        src2_is_simm;
	logic        src2_is_zimm;
	logic        src2_is_8;
	logic        res_from_mem;
	logic        res_to_mem;
	logic 		 rf_we;
	reg_addr_t	 dest;
	uint16_t  	 imm;
	logic [25:0] jidx;

	logic  		 op_syscall;
	logic 		 op_break;

	CacheCodeType cache_op;
} decoded_inst_t;

typedef struct packed {
	// to EXE
	logic [11:0] alu_op;
	logic 		 alu_ov;
	logic [11:0] br_op;
	logic [ 6:0] load_op;
	logic [ 4:0] store_op;
	logic [12:0] hi_lo_op;
	logic [ 2:0] c0_op;
	logic [ 7:0] c0_addr;
	logic 		 src1_is_sa;
	logic   	 src1_is_pc;
	logic  		 src2_is_simm;
	logic 		 src2_is_zimm;
	logic 		 src2_is_8;
	logic 		 res_from_alu;
	logic 		 res_from_hi_lo;
	logic 		 res_from_rt;
	logic 		 res_from_mem;
	logic 		 res_to_mem;
	logic 		 rf_we;
	reg_addr_t 	 dest;
	uint16_t 	 imm;
	uint32_t 	 rs_value;
	uint32_t 	 rt_value;
	virt_t 	 	 pc;
	// branch prediction
	virt_t 		     jump_target;
	virt_t 		     branch_target;
	predict_result_t predict_result;
	BHT_entry_t  	 predict_entry;
    // ex
	exception_t  exception;
	// tlb
	logic   [2:0]tlb_op;
	// cache
	CacheCodeType cache_op;
} ds_to_es_bus_t;


// EXE stage
typedef struct packed {
	// EXE to pre_MEM
	logic [ 6:0] load_op;
	logic [ 4:0] store_op;
	logic 		 res_from_mem;
	logic 		 res_to_mem;
	logic 		 rf_we;
	virt_t		 mem_addr;
	reg_addr_t 	 dest;
	uint32_t 	 result;
    virt_t 		 pc;
    // ex, tlb, cache
	exception_t  exception;
    logic [ 2:0] c0_op;
	logic [ 7:0] c0_addr;
	logic   [2:0]tlb_op;
	CacheCodeType cache_op;
} es_to_pms_bus_t;

// pre_MEM stage
typedef struct packed {
	// pre_MEM to MEM
	logic [ 6:0] load_op;
	logic 		 res_from_mem;
	logic 		 res_to_mem;
	logic 		 rf_we;
	virt_t		 mem_addr;
	reg_addr_t 	 dest;
	uint32_t 	 result;
    virt_t 		 pc;
    // ex, tlb, cache
	exception_t  exception;
    logic [ 2:0] c0_op;
	logic [ 7:0] c0_addr;
	logic  [2:0] tlb_op;
	CacheCodeType cache_op;
} pms_to_ms_bus_t;

// MEM stage
typedef struct packed {
	// MEM to WB
	logic [ 3:0] rf_we;
	reg_addr_t 	 dest;
	uint32_t 	 result;
    virt_t 		 pc;
    // ex, tlb, cache
	exception_t   exception;
	logic [2:0]	  c0_op;
	logic [7:0]   c0_addr;
	CacheCodeType cache_op;
	logic [2:0]   tlb_op;
	phys_t        phy_addr;
	// cache
} ms_to_ws_bus_t;

// WB stage

// CP0
typedef struct packed {
	logic 		bev;
	logic [7:0] im;
	logic 		exl;
	logic		ie;
} cp0_status_t;

typedef struct packed {
	logic bd;
	logic ti;
	logic [7:0] ip;
	logic [4:0] exccode;
} cp0_cause_t;

//MMU/TLB
typedef logic [$clog2(`TLB_ENTRIES_NUM)-1:0] tlb_index_t;
typedef struct packed {
	phys_t phy_addr;
	tlb_index_t which;
	logic miss, dirty, valid;
	logic [2:0] cache_flag;
} tlb_result_t;

typedef struct packed {
	logic [2:0] c0;
	logic [2:0] c1;
	logic [7:0] asid;
	logic [18:0] vpn2;
	logic [19:0] pfn0, pfn1;
	logic d0, v0, d1, v1;
	logic G;
} tlb_entry_t;

typedef struct packed {
	phys_t phy_addr;
	virt_t virt_addr;
	logic  uncached;
	logic[2:0] cache_flag;
	logic  invalid, miss, dirty, illegal;
} mmu_result_t;

/*----------------------- interface -----------------------*/
`include "cpu_interface.svh"

`endif