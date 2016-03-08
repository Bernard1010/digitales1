`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    16:55:55 02/24/2016 
// Design Name: 
// Module Name:    Comparador 
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
module Comparador(cont_i,ref,signal_o);

input [3:0]cont_i,ref;// Dos entradas que comparadas generan la salida modulada
output reg signal_o;// Salida modula

always @(*)
	begin
		if(ref>cont_i && ref!=0)
			signal_o=1;
			
		else
			signal_o=0;

	end

endmodule
