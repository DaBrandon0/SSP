`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 10:25:53 PM
// Design Name: 
// Module Name: SSPCLK
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SSPCLK(
    input PCLK,
    input CLEAR_B,
    output SSPCLK
    );
    
    reg [2:0] div2;
    
    always@(posedge PCLK or posedge CLEAR_B)
    begin
        if(CLEAR_B)
            div2 = 0;
        else
            div2 = div2 + 1;
    end
    
    assign SPPCLK = (div2 > 2'b01);
    
endmodule
