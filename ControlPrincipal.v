`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    10:43:58 02/27/2016 
// Design Name: 
// Module Name:    ControlPrincipal 
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
//Control principal del sistema que posee aumento y disminucion de frecuencia como de correinte
//MEn: enable principal que controla todas las salidas de este bloque por medio de alta impedancia
//MRst: Reset general que controla cundo dejar en el estado por defecto del sistema 

module ControlPrincipal(aumf_i,bajaf_i,aumC_i,bajaC_i,MODO_i,MRst_i,MEn,
								aumf_o,bajaf_o,aumC_o,bajaC_o,MODO_o,MRst_o);
								
input aumf_i,bajaf_i,aumC_i,bajaC_i,MODO_i,MRst_i,MEn;// Entradas del sistema
output reg aumf_o,bajaf_o,aumC_o,bajaC_o,MODO_o,MRst_o;// Salidas del sistema

always @(*)
begin
			if(MEn==1)
			begin
				aumf_o=1'b0;
				bajaf_o=1'b0;
				aumC_o=1'b0;
				bajaC_o=1'b0;
				MODO_o=1'b0;
				MRst_o=1'b0;
			end
			
			else
			begin
				aumf_o=aumf_i;
				bajaf_o=bajaf_i;
				aumC_o=aumC_i;
				bajaC_o=bajaC_i;
				MODO_o=MODO_i;
				MRst_o=MRst_i;
			
			end


end								


endmodule
