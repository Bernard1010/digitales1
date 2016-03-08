`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall	
// 
// Create Date:    22:07:40 02/26/2016 
// Design Name: 
// Module Name:    DivisorF 
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
module DivisorF(clknexys_i,self_i,clk_o );
input clknexys_i;
input [7:0]self_i;
output reg clk_o=0;
reg[7:0] cont = 8'b0;  
 

		
always @(posedge clknexys_i)
		begin
			
				if(cont==self_i) 
					begin
		
						cont = 0;
						clk_o=~clk_o;
					end
				else
		cont=cont+1'b1; 
		
		end
			
			
		
endmodule
