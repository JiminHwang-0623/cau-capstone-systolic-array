`timescale 1ns / 1ps

module FSM(
    input  logic        rst,
    input  logic        clk,
    input  logic        en,
    input  logic        write,
    input  logic        load,
    input  logic [7:0]  data_in,
    input  logic [2:0]  idx,            // col
    input  logic [3:0]  reg_select,     // row
    output logic        OUTPUT_EN,      // Enable output
    output logic [18:0] data_out,
    output logic        int_to_ps,      // use to interrupt the CPU after changing state (edge trigger)
    output logic        B_load_done_o,
    output logic        pipe_load_done_o,
    output logic        A_load_done_o
);
    
    reg [4:0] matmul_counter;  
    reg interrupt = 0;
    localparam MAX_MM_CYCLES = 24;
    
    logic controller_pipe_load_done;

    always@(posedge clk) begin
        if (!rst) begin
            matmul_counter <= 0;
            interrupt <= 0;
        end else begin
            // loading
            if(load && !write) begin
                matmul_counter <= 0;
                // Generate interrupt based on the actual event from the controller
                if (controller_pipe_load_done) begin
                    interrupt <= 1;
                end else begin
                    interrupt <= 0;
                end
            end 
            
            // Writing to memory
            else if (!load && write) begin
                interrupt <= 0;
                matmul_counter <= 0;
            end
            
            // doing matmul
            else if (!load && !write) begin
                if (matmul_counter < MAX_MM_CYCLES) begin
                    matmul_counter <= matmul_counter + 1;
                    interrupt <= 0;
                end
                else begin
                    interrupt <= 1;
                end
            end

            // reading or else...
            else begin
                matmul_counter <= 0;
                interrupt <= 0;
            end
        end
    end
    
    // Instantiation
    controller control_module(
        .RST(rst),
        .CLK(clk),
        .EN(en),
        .WRITE(write),
        .IDX(idx),
        .REG_SELECT(reg_select),
        .LOAD(load),
        .DATA_IN(data_in),
        .DATA_OUTPUT_EN(OUTPUT_EN),
        .DATA_OUT(data_out),
        .load_done_o(B_load_done_o),
        .pipe_load_done_o(controller_pipe_load_done),
        .mat_a_load_done_o(A_load_done_o)
    );
    
    // Interrupt
    assign int_to_ps = interrupt;
    
endmodule
