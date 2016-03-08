`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    22:10:03 02/26/2016 
// Design Name: 
// Module Name:    Control_DivP 
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
module Control_DivP(clk_i,aumf_i,bajaf_i,reset,valueF,out_o);

input aumf_i,bajaf_i,reset,clk_i;// Entradas de control para modificar frecuencia
output wire[7:0]out_o;//salida de control para el Divisor de frecuencia
 reg[24:0] cont = 25'b0;
output reg [2:0]valueF=3'b000;//variable que determina la salida de control
reg clk_o=1'b0;


always @(posedge clk_i)
		begin
			
				if(cont==25'd100000) 
					begin
		
						cont = 0;
						clk_o=~clk_o;
					end
				else
		cont=cont+1'b1; 
		
		end
			

always@(posedge clk_o)
begin

		if(reset)
		begin
		valueF = 3'b000;
		end
		else if(aumf_i==1'b1 && valueF!=3'b111)/// Condicion para subir
			begin		
			valueF = valueF+1'b1;
			end
		
		else if(bajaf_i==1'b1 && valueF!=3'b000) /// Condicion para subir
			begin
			valueF = valueF-1'b1;
			end
		
		
end

MUX8_1 MuxS(.Sel_i(valueF),.Y_o(out_o));





endmodule 