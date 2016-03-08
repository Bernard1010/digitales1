`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:23 03/02/2016 
// Design Name: 
// Module Name:    SelF 
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
module SelF(aumf_i, bajaf_i,CLKNEXYS,reset,F_media,valueF);

    input aumf_i;
    input bajaf_i;
    input CLKNEXYS;
    input reset;
   output F_media;
   output [2:0] valueF;
   
   wire [7:0] XLXN_1;
   
   Control_DivP  Control_D (.aumf_i(aumf_i),.bajaf_i(bajaf_i),.reset(reset),.clk_i(CLKNEXYS),.out_o(XLXN_1[7:0]),.valueF(valueF));
   DivisorF  Divisor_Frec (.clknexys_i(CLKNEXYS),.self_i(XLXN_1[7:0]),.clk_o(F_media));
endmodule
