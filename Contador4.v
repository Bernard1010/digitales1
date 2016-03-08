`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    21:00:56 02/26/2016 
// Design Name: 
// Module Name:    Contador4 
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
module Contador4(clk_i,reset,cont_o );//Contador de 4 bits, para generar las frecuencias de salida cuneta hasta 10

input clk_i,reset;//entradas clock de fpga y enable de contador
output reg[3:0] cont_o = 4'b0;// salida de contador de 7 bits 
 
		

always @(posedge clk_i)
	begin
		
		if(reset==1)
		
		cont_o = 4'b0;
		
		
		else if (cont_o!=9) // Concicion para contar
		
			cont_o = cont_o+1'b1;

				else
		cont_o=0; // Cuando llegue  a 9 se reinicia

	end

endmodule
