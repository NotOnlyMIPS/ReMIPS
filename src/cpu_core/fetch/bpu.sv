/*!
 * \brief branch-prediction unit
 */

`include "../cpu.svh"

module BPU (
    input   clk,
    input   reset,
    input   pipeline_flush,
    input   verify_result_t verify_result,
    input   fetch_to_bpu_bus_t fetch_to_bpu_bus,
    // output  bpu_to_fetch_bus_t bpu_to_fetch_bus,
    output  bpu_to_prefetch_bus_t  bpu_to_prefetch_bus
);

predict_result_t    predict_result_r;
BHT_entry_t         predict_entry_r;
BHT_entry_t         w_entry;
BHT_entry_t         r_entry;

ras_t               ras_data;

logic  es_verify_valid;
assign es_verify_valid = (verify_result.br_type != 3'b0) && verify_result.ready;

assign w_entry.tag     = verify_result.predict_entry.tag;
assign w_entry.target  = verify_result.predict_entry.target;
assign w_entry.br_type = verify_result.predict_entry.br_type;


simple_port_ram_without_bypass_customized #(
    .LATENCY(0),
    .dtype(BHT_entry_t)
)mem_data(
    .clk(clk),
    .rst(~reset),
    //write port
    .ena(1'b1),
    .wea(es_verify_valid),
    // .addra(EXE_BResult.Index),
    .addra(verify_result.pc[11:2]),
    .dina(w_entry),
    //read port
    .enb(1'b1),
    // .addrb(Index),
    .addrb(fetch_to_bpu_bus.pc[11:2]),
    .doutb(r_entry)
);

always_comb begin
    if(verify_result.predict_sucess) begin
        unique case(verify_result.predict_entry.count)
        `T: begin
            if(verify_result.is_taken) w_entry.count = verify_result.predict_entry.count;
            else w_entry.count = verify_result.predict_entry.count - 1;
        end
        `NT: begin
            if(verify_result.is_taken) w_entry.count = verify_result.predict_entry.count + 1;
            else w_entry.count = verify_result.predict_entry.count;
        end
        default: begin
            if(verify_result.is_taken) w_entry.count = verify_result.predict_entry.count + 1;
            else w_entry.count = verify_result.predict_entry.count - 1;
        end
        endcase
    end
    else begin
        if(verify_result.is_taken) w_entry.count = `WT;
        else w_entry.count = `WNT;
    end
end


virt_t         pc_add8;
virt_t         target;
logic          is_taken;
logic          valid;

// FSM reg
logic          state;
logic          correction_is_taken;
virt_t         correction_target;

always_ff @(posedge clk) begin
    if(reset || pipeline_flush) begin
        state               <= `IDLE;
        correction_is_taken <= '0;
        correction_target   <= '0;
    end else if (state == `CORRECTION) begin
        state               <= `IDLE;
        correction_is_taken <= '0;
        correction_target   <= '0;
    end else if (~verify_result.predict_sucess && es_verify_valid && state == `IDLE) begin
        state               <= `CORRECTION;
        correction_is_taken <= verify_result.is_taken;
        correction_target   <= verify_result.correct_target;
    end
end

assign pc_add8 = fetch_to_bpu_bus.pc + 32'h8;
assign bht_hit = (fetch_to_bpu_bus.pc[31:11] == r_entry.tag);
assign valid   = (state == `IDLE) && (r_entry.br_type != 3'b0) && fetch_to_bpu_bus.valid;

always_comb begin
    if(~bht_hit) begin
        target = pc_add8;
        is_taken = 1'b0;
    end
    else begin
        unique case(r_entry.br_type)
        `B_IS_CALL: begin
            target = r_entry.target;
            is_taken = 1'b1;
        end
        `B_IS_RET: begin
            target = valid ? ras_data.data : pc_add8;
            is_taken = 1'b1;
        end
        `B_IS_BRA: begin
            if(r_entry.count[1]) begin
                target = r_entry.target;
                is_taken = 1'b1;
            end
            else begin
                target = pc_add8;
                is_taken = 1'b0;
            end
        end
        `B_IS_J: begin
            target = r_entry.target;
            is_taken = 1'b1;
        end
        default: begin
            target = pc_add8;
            is_taken = 1'b0;
        end
        endcase
    end
end

always_ff @ (posedge clk) begin
    if(reset) begin
        predict_result_r <= '0;
        predict_entry_r  <= '0;
    end else if(fetch_to_bpu_bus.valid) begin
        predict_result_r.br_op    <= (r_entry.br_type != 3'b0);
        predict_result_r.br_taken <= is_taken;
        predict_result_r.target   <= target;
        predict_entry_r           <= r_entry;
    end
    
    predict_result_r.valid  <= valid;
end

assign bpu_to_prefetch_bus = {
    state == `IDLE,
    correction_target,
    predict_result_r
};

// assign bpu_to_fetch_bus = {
//     predict_result_r.valid && predict_result_r.br_taken
// };

ras ras_instance(
    .clk,
    .reset,
    .push_req  (r_entry.br_type == `B_IS_CALL),
    .pop_req   (r_entry.br_type == `B_IS_RET ),
    .push_data ({1'b1, verify_result.pc + 8}),
    .ras_top   (ras_data)
);

endmodule
