`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ricardo Martínez Vallejos 
// 
// Create Date:    23:32:50 03/03/2016 
// Design Name: 
// Module Name:    ControlRef 
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
module ControlRef(clk_i,aumC_i,bajaC_i,reset,valueC);

input wire aumC_i,bajaC_i,reset,clk_i;// Entradas de control para modificar frecuencia
reg[24:0] cont = 25'b0;
reg [3:0]v=4'b0000;//variable que determina la salida de control
reg clk_o=1'b0;
output wire [3:0]valueC;


always @(posedge clk_i)
		begin
			
				if(cont==25'd24999999) 
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
		v = 3'b0000;
		end
		else if(aumC_i==1'b1 && v!=4'b1001)/// Condicion para subir
			begin		
			v = v+4'd1;
			end
		
		else if(bajaC_i==1'b1 && v!=4'b0000) /// Condicion para subir
			begin
			v = v-4'd1;
			end
		
		
end
MUX8_1C  Mux8x1C(.Sel_i(v),.Y_o(valueC));

endmodule
