`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Bernardo Rodriguez Hall
// 
// Create Date:    18:19:26 03/02/2016 
// Design Name: 
// Module Name:    PW 
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
module PW(F_media,Ref,reset,SalidaM);

    input F_media;
    input [3:0] Ref;
    input reset;
		output SalidaM;
   
   wire [3:0] XLXN_5;
   
   Comparador  ComparD (.cont_i(XLXN_5[3:0]),.ref(Ref[3:0]),.signal_o(SalidaM));
   Contador4  Conta4 (.clk_i(F_media),.reset(reset),.cont_o(XLXN_5[3:0]));
	
	
endmodule
