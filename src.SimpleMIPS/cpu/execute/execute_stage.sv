`include "../cpu.svh"

module execute_stage (
    input clk,
    input reset,
    // pipeline control
    input  ds_to_valid,
    output es_allowin,
    input  pms_allowin,
    output es_to_valid,

    input  ds_to_es_bus_t   ds_to_es_bus,
    output es_to_pms_bus_t  es_to_pms_bus,

    // control
    Execute_Control_Interface.Execute control
);


// EXE stage
logic es_valid;
logic es_ready_go;


// from ID
ds_to_es_bus_t ds_to_es_bus_r;


// branch prediction
verify_result_t verify_result;


// alu
uint32_t alu_result;
logic    alu_ex;


// hi_lo reg
logic    hi_lo_ready;
uint32_t hi_lo_result;


// forward
logic op_mfc0;
logic op_tlb;
logic op_cache;


// cp0 and exception
exception_t exception;


// to MEM
logic    op_mtc0;
logic    res_from_hi_lo;
logic    res_from_alu;
logic    res_from_rt;
uint32_t final_result;


// EXE stage
assign es_ready_go =  es_valid && (res_from_hi_lo && hi_lo_ready || !res_from_hi_lo);
assign es_allowin  = !es_valid || es_ready_go && pms_allowin;
assign es_to_valid =  es_valid && es_ready_go;

always_ff @(posedge clk) begin
    if (reset || control.pipeline_flush) begin
        es_valid <= 1'b0;
    end
    else if (es_allowin) begin
        es_valid <= ds_to_valid;
    end

    if (ds_to_valid && es_allowin) begin
        ds_to_es_bus_r <= ds_to_es_bus;
    end
end

// alu
alu u_alu (
    .alu_op         (ds_to_es_bus_r.alu_op      ),

    .src1_is_sa     (ds_to_es_bus_r.src1_is_sa  ),
    .src1_is_pc     (ds_to_es_bus_r.src1_is_pc  ),
    .src2_is_simm   (ds_to_es_bus_r.src2_is_simm),
    .src2_is_zimm   (ds_to_es_bus_r.src2_is_zimm),
    .src2_is_8      (ds_to_es_bus_r.src2_is_8   ),
    .rs_value       (ds_to_es_bus_r.rs_value    ),
    .rt_value       (ds_to_es_bus_r.rt_value    ),
    .pc             (ds_to_es_bus_r.pc          ),
    .imm            (ds_to_es_bus_r.imm         ),

    .alu_result     (alu_result                 ),

    .alu_ov         (ds_to_es_bus_r.alu_ov      ),
    .alu_ex         (alu_ex                     )
);


// hi_lo
reg_hilo u_reg_hilo(
    .clk,
    .reset,
    .es_valid,
    .pipeline_flush (control.pipeline_flush),

    .hi_lo_op    (ds_to_es_bus_r.hi_lo_op),
    .src1        (ds_to_es_bus_r.rs_value),
    .src2        (ds_to_es_bus_r.rt_value),

    .hi_lo_ready (hi_lo_ready            ),
    .hi_lo_result(hi_lo_result           ),

    .wr_disable  (control.wr_disable | exception.ex)
);


// branch_control
branch_control u_branch_control (
    .es_valid       (es_valid     ),

    .br_op          (ds_to_es_bus_r.br_op ),
    .br_type        (verify_result.br_type),

    .rs_value       (ds_to_es_bus_r.rs_value),
    .rt_value       (ds_to_es_bus_r.rt_value),

    .jump_target    (ds_to_es_bus_r.jump_target  ),
    .branch_target  (ds_to_es_bus_r.branch_target),

    .predict_is_taken(ds_to_es_bus_r.predict_result.br_taken),
    .predict_target  (ds_to_es_bus_r.predict_result.target  ),
    .predict_sucess  (verify_result.predict_sucess   ),
    .br_taken        (verify_result.is_taken         ),
    .br_target       (verify_result.correct_target   )
);

assign verify_result.ready = es_valid;
assign verify_result.predict_entry = ds_to_es_bus_r.predict_entry;
assign verify_result.pc = ds_to_es_bus_r.pc;

assign control.verify_result = verify_result;


// forward
assign op_mfc0 = ds_to_es_bus_r.c0_op[2] & es_valid;
assign op_tlb  = (|ds_to_es_bus_r.tlb_op) & es_valid;
assign op_cache = (ds_to_es_bus_r.cache_op != Cache_Code_EMPTY) & es_valid;

assign control.load_op = ds_to_es_bus_r.res_from_mem & es_valid;
assign control.dest    = ds_to_es_bus_r.dest & {5{es_valid}};
assign control.result  = final_result;

// exception
assign exception.bd = ds_to_es_bus_r.exception.bd;
assign {exception.ex,
        exception.exccode} = {6{es_valid}} & (ds_to_es_bus_r.exception.ex ? {ds_to_es_bus_r.exception.ex, ds_to_es_bus_r.exception.exccode} :
                                              alu_ex & es_valid           ? {1'b1, `EXCCODE_OV}                                             :
                                                                             6'h0);
assign exception.badvaddr = ds_to_es_bus_r.exception.badvaddr;
assign exception.tlb_refill =  exception.exccode == `EXCCODE_TLBL ?
                               ds_to_es_bus_r.exception.tlb_refill : 1'b0;

assign control.mfc0  = op_mfc0 & es_valid;
assign control.stall = (op_tlb | op_cache) & es_valid;


// to MEM
assign op_mtc0        = ds_to_es_bus_r.c0_op[1];
assign res_from_alu   = ds_to_es_bus_r.res_from_alu;
assign res_from_hi_lo = ds_to_es_bus_r.res_from_hi_lo;
assign res_from_rt    = ds_to_es_bus_r.res_from_rt;
assign final_result   = {32{res_from_alu  }} & alu_result
                      | {32{res_from_hi_lo}} & hi_lo_result
                      | {32{res_from_rt   }} & ds_to_es_bus_r.rt_value;

assign es_to_pms_bus  = { ds_to_es_bus_r.load_op,
                          ds_to_es_bus_r.store_op,
                          ds_to_es_bus_r.res_from_mem,
                          ds_to_es_bus_r.res_to_mem,
                          ds_to_es_bus_r.rf_we,
                          alu_result,
                          ds_to_es_bus_r.dest,
                          final_result,
                          ds_to_es_bus_r.pc,
                          exception,
                          ds_to_es_bus_r.c0_op,
                          ds_to_es_bus_r.c0_addr,
                          ds_to_es_bus_r.tlb_op,
                          ds_to_es_bus_r.cache_op
                          };

endmodule
