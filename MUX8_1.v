`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:31 03/03/2016 
// Design Name: 
// Module Name:    MUX8_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX8_1(Sel_i,Y_o );
input wire[2:0]Sel_i;
output reg[7:0]Y_o;

   always @(Sel_i)
      case (Sel_i)
         3'b000: Y_o = 8'd165;
         3'b001: Y_o = 8'd99;
         3'b010: Y_o = 8'd66;
         3'b011: Y_o = 8'd49;
         3'b100: Y_o = 8'd39;
         3'b101: Y_o = 8'd32;
         3'b110: Y_o = 8'd28;
         3'b111: Y_o = 8'd24;
      endcase
		


endmodule
