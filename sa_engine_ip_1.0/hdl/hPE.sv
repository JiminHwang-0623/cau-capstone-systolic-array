`timescale 1ns / 1ps

module hPE(
    input RST,
    input CLK, EN,
    input [7:0] A, B,
    output wire [7:0] A_out,
    output wire [7:0] B_out,
    output wire [18:0] C
    );
    
    
    reg [7:0] A_data;
    reg [7:0] B_data;
    reg [18:0] ACC;
    
    
    initial begin
        A_data = 0;
        B_data = 0;
        ACC = 0;
    end 
    
   
    
    always@(posedge CLK) begin
        if(EN) begin
            ACC <= ACC + (A_data * B_data);
            A_data <= A;
            B_data <= B;
        end
        
        if (!EN && RST) begin
            ACC <= 0;
        end
    end
    
    assign A_out = A_data;
    assign B_out = B_data;
    assign C = ACC;
    
endmodule

