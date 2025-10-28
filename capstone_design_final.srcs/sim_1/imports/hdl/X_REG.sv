<<<<<<< HEAD
=======
//----------------------------------------------------------------+
// Project: Capstone Design for graduation
// Module: X_REG (SystemVerilog version)
// Description:
//		Register for 8x8 Systolic Array
//
// Last Updated: 2025-10-21 (by Jimin Hwang)
//----------------------------------------------------------------+

>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df
`timescale 1ns / 1ps

// Parallel Shifting Register --> Replace FIFOs

<<<<<<< HEAD
module X_REG(CLK, EN, WRITE, IDX, DIN, DOUT);
    input           CLK;
    input           EN;

    input           WRITE;         // When EN && !WRITE, every clock cycle, spit data
    
    input   [4:0]  IDX;            // Absolute INDX
    input   [7:0]  DIN;
    output  [7:0]  DOUT;

    reg     [7:0]  PIPE    [0:31];
    reg     [7:0]  DOUT_BUFFER = 0;

    initial begin

        // Initialize Memory 
        for(integer i = 0; i < 32; i = i + 1) begin
            PIPE[i] = 0;
        end
    end

  
    // Data Sampling (IN REG)
    always@(posedge CLK) begin
        if (EN) begin
            if(WRITE) begin

                PIPE[IDX] <= DIN;
            end

            else if (!WRITE) begin
                DOUT_BUFFER <= PIPE[0];

                for(integer i = 0; i < 31; i = i + 1) begin
                    PIPE[i] <= PIPE[i+1];
                end

                PIPE[31] <= 0;
=======
module X_REG(
    input logic CLK,
    input logic RST,
    input logic EN,
    input logic WRITE,
    input logic [4:0] IDX,
    input logic [7:0] DIN,
    output logic [7:0] DOUT,
    input logic VALID_IN,
    output logic VALID_OUT
);
    
    logic     [7:0]  PIPE    [0:31];
    logic            VALID_PIPE [0:31];
    logic     [7:0]  DOUT_BUFFER;
    logic            VOUT_BUFFER;

    

    // Data Sampling (IN REG)
    always_ff @(posedge CLK) begin
        if (!RST) begin
            for(integer i = 0; i < 32; i = i + 1) begin
                PIPE[i] <= 0;
                VALID_PIPE[i] <= 0;
            end
            DOUT_BUFFER <= 0;
            VOUT_BUFFER <= 0;
        end else begin
            if (EN) begin
                if(WRITE) begin
                    PIPE[IDX] <= DIN;
                    VALID_PIPE[IDX] <= VALID_IN;
                end

                else if (!WRITE) begin
                    DOUT_BUFFER <= PIPE[0];
                    VOUT_BUFFER <= VALID_PIPE[0];

                    for(integer i = 0; i < 31; i = i + 1) begin
                        PIPE[i] <= PIPE[i+1];
                        VALID_PIPE[i] <= VALID_PIPE[i+1];
                    end

                    PIPE[31] <= 0;
                    VALID_PIPE[31] <= 0;
                end
>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df
            end
        end
    end

    // OUT REG
    assign DOUT = DOUT_BUFFER;
<<<<<<< HEAD
=======
    assign VALID_OUT = VOUT_BUFFER;
>>>>>>> 5a1be21c592a9e5cddb782db4e28fd23eae160df

endmodule
