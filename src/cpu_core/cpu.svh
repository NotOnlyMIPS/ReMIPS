/*!
 * \brief CPU 参数配置及关联结构声明
 */

`ifndef CPU_SVH
`define CPU_SVH

`include "../common.svh"

//BPU
`define B_IS_J      3'h1
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

`define TLBOP_TLBP   2'd0
`define TLBOP_TLBR   2'd1
`define TLBOP_TLBWI  2'd2
`define TLBOP_TLBWR  2'd3

// coprocesser register
`define CR_INDEX     0
`define CR_RANDOM    1
`define CR_ENTRYLO0  2
`define CR_ENTRYLO1  3
`define CR_CONTEXT   4
`define CR_PAGEMASK  5
`define CR_WIRED     6
`define CR_BADVADDR  8
`define CR_COUNT     9
`define CR_ENTRYHI  10
`define CR_COMPARE  11
`define CR_STATUS   12
`define CR_CAUSE    13
`define CR_EPC      14
`define CR_PRID     15
`define CR_EBASE    47 // sel 1
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

// operator
typedef enum logic [6:0] {
    /* invalid op */
    OP_INVALID, OP_NOP,
    /* arithmetic */
    OP_ADD, OP_ADDU, OP_SUB, OP_SUBU,
    OP_ADDI, OP_ADDIU, OP_SUBI, OP_SUBIU,
    OP_SLT, OP_SLTU,
    OP_SLTI, OP_SLTIU,
    /* logical */
    OP_AND, OP_OR, OP_XOR, OP_NOR,
    OP_ANDI, OP_ORI, OP_XORI,
    /* shift */
    OP_SLL, OP_SRL, OP_SRA,
    OP_SLLV, OP_SRLV, OP_SRAV,
    /* set */
    OP_LUI,
    /* count bits */
    OP_CLZ, OP_CLO,
    /* conditional move */
    OP_MOVN, OP_MOVZ,
    /* HI/LO move */
    OP_MFHI, OP_MFLO, OP_MTHI, OP_MTLO,
    /* multiplication and division */
    OP_MULT, OP_MULTU, OP_DIV, OP_DIVU,
    OP_MADD, OP_MADDU, OP_MSUB, OP_MSUBU, OP_MUL,
    /* branch */
    OP_BEQ, OP_BNE,
    OP_BLTZ, OP_BGEZ, OP_BLEZ, OP_BGTZ,
    OP_BLTZAL, OP_BGEZAL,
    /* branch likely */
    OP_BEQL, OP_BNEL,
    OP_BLTZL, OP_BGEZL, OP_BLEZL, OP_BGTZL,
    OP_BLTZALL, OP_BGEZALL,
    /* jump */
    OP_J, OP_JAL,
    OP_JR, OP_JALR,
    /* load */
    OP_LB, OP_LH, OP_LWL, OP_LW, OP_LBU, OP_LHU, OP_LWR,
    /* store */
    OP_SB, OP_SH, OP_SWL, OP_SW, OP_SWR,
    /* breakpoint and syscall */
    OP_SYSCALL, OP_BREAK,
    /* trap */
    OP_TGE, OP_TGEU, OP_TLT, OP_TLTU, OP_TEQ, OP_TNE,
    OP_TGEI, OP_TGEIU, OP_TLTI, OP_TLTIU, OP_TEQI, OP_TNEI,
    /* privileged instructions */
    OP_CACHE, OP_ERET, OP_MFC0, OP_MTC0,
    OP_TLBP, OP_TLBR, OP_TLBWI, OP_TLBWR, OP_WAIT,
    /* FPU */
    OP_FPU
//     /* LL/SC */
//     OP_LL, OP_SC,
//     /* ASIC */
//     `ifdef ENABLE_ASIC
//         OP_MFC2, OP_MTC2,
//     `endif
//     /* FPU */
//     `ifdef ENABLE_FPU
//         OP_MFC1, OP_MTC1, OP_CFC1, OP_CTC1,
//         OP_BC1,
//         OP_MOVCI,
//         OP_LWC1, OP_SWC1,
//         OP_LDC1A, OP_SDC1A, OP_LDC1B, OP_SDC1B,
//         OP_FPU_ADD, OP_FPU_SUB, OP_FPU_COND, OP_FPU_NEG,
//         OP_FPU_MUL, OP_FPU_DIV, OP_FPU_SQRT, OP_FPU_ABS,
//         OP_FPU_CVTW, OP_FPU_CVTS,
//         OP_FPU_TRUNC, OP_FPU_ROUND,
//         OP_FPU_CEIL, OP_FPU_FLOOR,
//         OP_FPU_MOV, OP_FPU_CMOV,
// `endif
    /* invalid */
} operation_t;


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
    CacheCodeType  cacheCode;
    logic          isIcache;
    logic          isDcache;
} CacheType;

// exception
typedef struct packed {
    logic        ex;
    logic [4:0]  exccode;
    virt_t       badvaddr;
    virt_t       epc;

    logic        bd;

    //TLB
    logic        tlb_refill;
} exception_t;

// BPU
typedef enum logic [2:0] {
    Branch_None,
    Branch_Jump,
    Branch_Cond,
    Branch_Return,
    Branch_Call
} branch_type_t;

typedef struct packed {
    logic           inst2;
    logic [31:10]   tag;
    branch_type_t   br_type;
    logic [1:0]     count;
    virt_t          target;
} BHT_entry_t;

typedef struct packed {
    logic          valid;
    logic          br_op;
    logic          br_taken;
    virt_t         target;
} predict_result_t;


typedef struct packed {
    logic          ready;
    logic          predict_sucess;
    BHT_entry_t    predict_entry;
    logic          is_taken;
    virt_t         correct_target;
    virt_t         pc;
} verify_result_t;

// RAS
typedef struct packed {
    logic valid;
    virt_t data;
} ras_t;

// ROB
typedef enum logic [1:0] {
    Inst_Invalid,
    Inst_Wait,
    Store_Wait,
    Inst_Complete
} rob_inst_state_t;

typedef struct packed {
    rob_inst_state_t state;
    virt_t     pc;

    logic      rf_we;
    reg_addr_t dest;
    reg_addr_t phy_dest;
    reg_addr_t old_dest;

    logic is_mul_div_op;
    logic is_br_op;
    logic is_store_op;
    logic is_move_cond_op;
    logic is_privileged_op;
    logic is_eret;

    verify_result_t verify_result;

    exception_t exception;
} rob_entry_t;

/*-------------------------- pipeline -----------------------*/

// pre_IF stage
typedef struct packed {
    logic       valid;
    virt_t      pc;

    exception_t exception;
} prefetch_to_fetch_bus_t;

typedef struct packed {
    logic          valid;
    logic          br_taken;
    virt_t         br_target;
    BHT_entry_t    entry;

    logic          is_correction;
    virt_t         correction_target;
} bpu_to_prefetch_bus_t;

// IF stage
typedef enum logic {
    Fetch_Wait,
    Fetch_Complete
} fetch_inst_state_t;

typedef struct packed {
    logic              valid;
    fetch_inst_state_t state;
    uint32_t           inst;
    virt_t             pc;

    logic       br_taken;
    BHT_entry_t bpu_entry;

    exception_t  exception;
} fetch_queue_entry_t;

typedef struct packed {
    logic              valid;
    uint32_t           inst;
    virt_t             pc;

    logic       br_taken;
    BHT_entry_t bpu_entry;

    exception_t  exception;
} fetch_to_decode_bus_t;

typedef struct packed {
    logic        valid;
    virt_t       pc;
} fetch_to_bpu_bus_t;

// ID stage
typedef struct packed {
    operation_t  operation;

    // logic        use_src1;
    // logic        use_src2;
    // logic        use_old_dest;
    reg_addr_t   src1;
    reg_addr_t   src2;
    // reg_addr_t      rd;
    // logic [2:0]  sel;

// EXE1
    logic       is_alu1_op;
    logic       is_mul_div_op;
    logic       is_br_op;
// EXE2
    logic       is_alu2_op;
    logic       is_load_store_op;
    logic       is_sp_op;

    logic       src1_is_sa;
    logic       src2_is_simm;
    logic       src2_is_zimm;
    logic       rf_we;
    reg_addr_t  dest;
    uint16_t    imm;
    logic[25:0] jidx;

    branch_type_t branch_type;

    CacheCodeType cache_op;

    logic [7:0]   cp0_addr;
} decoded_inst_t;

typedef struct packed {
    logic          valid;
    virt_t         pc;
    logic          is_store_op;
    decoded_inst_t inst;

    logic       br_taken;
    BHT_entry_t bpu_entry;

    logic       is_move_cond_op;
    logic       is_privileged_op;
    logic       is_eret;
    exception_t exception;
} decode_to_map_bus_t;

typedef struct packed {
    reg_addr_t speculative_state;
    reg_addr_t commit_state;
} rat_entry_t;

typedef struct packed {
    reg_addr_t speculative_state;
    // reg_addr_t commit_state;
} free_list_entry_t;

typedef struct packed {
    logic       valid;
    virt_t      pc;
    logic    src1_ready;
    logic    src2_ready;
    // logic    old_dest_ready;
    reg_addr_t phy_src1;
    reg_addr_t phy_src2;
    reg_addr_t phy_dest;
    // reg_addr_t old_dest;
    decoded_inst_t inst;

    logic [3:0] rob_entry_num;

    logic       is_store_op;
    logic       pre_store_ready;
    logic [3:0] pre_store;
    logic [3:0] store_num;

    logic       br_taken;
    BHT_entry_t bpu_entry;
} decode_to_issue_bus_t;

// ISSUE stage
typedef struct packed {
    logic      valid;
    virt_t     pc;
    logic      src1_ready;
    logic      src2_ready;
    // logic      old_dest_ready;
    reg_addr_t phy_src1;
    reg_addr_t phy_src2;
    reg_addr_t phy_dest;
    // reg_addr_t old_dest;
    decoded_inst_t inst;

    logic [3:0] rob_entry_num;

    logic       is_store_op;
    logic       pre_store_ready;
    logic [3:0] pre_store;
    logic [3:0] store_num;

    logic       br_taken;
    BHT_entry_t bpu_entry;
} issue_entry_t;

typedef struct packed {
    // logic rf_we;
    reg_addr_t dest;
} select_to_busy_table_bus_t;

typedef struct packed {
    logic         valid;
    virt_t        pc;
    reg_addr_t phy_src1;
    reg_addr_t phy_src2;
    reg_addr_t phy_dest;
    // reg_addr_t old_dest;
    decoded_inst_t inst;

    logic [3:0] rob_entry_num;

    logic is_store_op;
    logic [3:0] pre_store;
    logic [3:0] store_num;

    logic       br_taken;
    BHT_entry_t bpu_entry;
} select_to_issue_bus_t;

typedef struct packed {
    logic [3:0] rf_we;
    reg_addr_t  dest;
    uint32_t    result;
} bypass_bus_t;

typedef struct packed {
    logic         valid;
    virt_t        pc;

    reg_addr_t     phy_dest;
    decoded_inst_t inst;

    uint32_t   src1_value;
    uint32_t   src2_value;
    // uint32_t   old_value;

    logic [3:0] rob_entry_num;

    logic       is_store_op;
    logic [3:0] pre_store;
    logic [3:0] store_num;

    logic       br_taken;
    BHT_entry_t bpu_entry;
} issue_to_execute_bus_t;

// EXE stage
typedef struct packed {
    logic        valid;
    logic        complete;
    logic        mark;
    logic [ 3:0] wstrb;
    logic [ 2:0] size;
    logic [ 3:0] store_num;
    logic [31:0] addr;
    logic [31:0] data;
} st_buffer_t;

typedef struct packed {
    logic       valid;
    logic [3:0] rob_entry_num;

    logic [3:0] rf_we;
    reg_addr_t  phy_dest;
    uint32_t    result;

    logic       is_store_op;

    verify_result_t verify_result;

    exception_t  exception;
} execute_to_commit_bus_t;

typedef struct packed {
    // logic valid;
    reg_addr_t dest;
} execute_to_busytable_bus_t;

// COMMIT stage
typedef struct packed {
    logic       valid;
    logic [3:0] rf_we;
    reg_addr_t  dest;
    uint32_t    result;
} writeback_to_rf_bus_t;

typedef struct packed {
    logic       valid;
    logic [3:0] rob_entry_num;
    logic       rf_we;

    logic is_store_op;

    verify_result_t verify_result;

    exception_t  exception;
} writeback_to_commit_bus_t;

typedef struct packed {
    logic      rf_we;
    reg_addr_t dest;
    reg_addr_t phy_dest;
    reg_addr_t old_dest;
} commit_to_rat_bus_t;

typedef struct packed {
    logic miss_predict;
    logic eret;
    logic exception;
    logic privileged_inst;
} flush_src_t;

// CP0
typedef struct packed {
    logic       bev;
    logic [7:0] im;
    logic       exl;
    logic       ie;
} cp0_status_t;

typedef struct packed {
    logic bd;
    logic ti;
    logic [1:0] ce;
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
