`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:10 03/03/2016 
// Design Name: 
// Module Name:    MUX8_1C 
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
module MUX8_1C(Sel_i,Y_o );

input wire[3:0]Sel_i;
output reg [3:0]Y_o;

   always @(Sel_i)
      case (Sel_i)
         4'b0000: Y_o = 4'd1;
         4'b0001: Y_o = 4'd2;
         4'b0010: Y_o = 4'd3;
         4'b0011: Y_o = 4'd4;
         4'b0100: Y_o = 4'd5;
         4'b0101: Y_o = 4'd6;
         4'b0110: Y_o = 4'd7;
         4'b0111: Y_o = 4'd8;
			4'b1000: Y_o = 4'd9;
			4'b1001: Y_o = 4'd10;
			
			default: Y_o=4'd5;
      endcase
		


endmodule
