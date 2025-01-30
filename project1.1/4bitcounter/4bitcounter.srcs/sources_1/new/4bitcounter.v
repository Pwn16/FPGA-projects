`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2025 11:33:03 PM
// Design Name: 
// Module Name: 4bitcounter
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


module fourbitcounter(
    input [1:0] BTN,
    input [0:0] CLOCK,
    input RESET,
    output [3:0] LEDS
    );
    
    assign LEDS[3:0] = BTN[1:0];
    always @ (posedge CLOCK) begin
        if(! RESET)
        LEDS <= 4'b0000; 
      else
        LEDS <= LEDS + 1;
    end    
    
endmodule
