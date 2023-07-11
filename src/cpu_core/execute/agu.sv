`include "../cpu.svh"

module agu (
    input  clk,
    input  reset,

    input  logic flush,

    input  logic issue_to_agu_valid,
    output logic agu_allowin,

    input  logic cs_allowin,
    output logic agu_to_valid,

    input  issue_to_execute_bus_t issue_inst,

    output execute_to_commit_bus_t agu_to_commit_bus

);

// control
logic agu_valid;
logic agu_readygo;

// stage
typedef enum logic [1:0] { 
    AGU_addr,
    AGU_lookup,
    AGU_request,
    AGU_response
} AGU_Stage_t;
AGU_Stage_t agu_stage;

always_ff @(posedge clk) begin
    if(reset || flush) begin
        agu_valid <= 1'b0;
    end
    else if(agu_allowin) begin
        agu_valid <= 1'b1;
    end

    if(reset || flush) begin
        agu_stage <= AGU_addr;
    end
    else begin
        unique case(agu_stage) 
            AGU_addr: agu_stage <= agu_valid   ? AGU_lookup : AGU_addr;
            AGU_lookup: agu_stage <= agu_readygo ? AGU_addr : AGU_request;
            AGU_request: agu_stage <= agu_readygo ? AGU_response : AGU_request;
            AGU_response: agu_stage <= agu_readygo ? AGU_response : AGU_addr;
        endcase
    end
end


endmodule
