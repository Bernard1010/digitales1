`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    10:11:04 03/03/2016 
// Design Name: 
// Module Name:    Contador_3 
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
module Contador_3(aumf_i,bajaf_i,clk_i,reset,cont_o );//Contador de 4 bits, para generar las frecuencias de salida cuneta hasta 10

input clk_i,reset,aumf_i,bajaf_i;//entradas clock de fpga y enable de contador
output reg[2:0] cont_o = 3'b0;// salida de contador de 7 bits 
 
		

always @(*)
	begin
		if(reset==1)
		begin
		cont_o = 3'b0;
		end
		else if(aumf_i==1'b1 && cont_o!=3'b111)/// Condicion para subir
			begin		
			cont_o = cont_o+1'b1;
			end
		
		else if(bajaf_i==1'b1 && cont_o!=3'b00) /// Condicion para subir
		begin
		cont_o = cont_o-1'b1;
		end
	end

endmodule
