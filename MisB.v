`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:51 03/02/2016 
// Design Name: 
// Module Name:    MisB 
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
module MisB(aumC_i,aumf_i,bajaC_i,bajaf_i,CLKNEXYS,MEn,Modo_i,MRst,REF,numF_o,SALIDAM);

    input aumC_i;
    input aumf_i;
    input bajaC_i;
    input bajaf_i;
    input CLKNEXYS;
    input MEn;
    input Modo_i;
    input MRst;
    input [3:0] REF;
   output [7:0] numF_o;
   output SALIDAM;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_4;
   wire XLXN_5;
   
   ControlPrincipal  CntrlPrin (.aumC_i(aumC_i), 
                            .aumf_i(aumf_i), 
                            .bajaC_i(bajaC_i), 
                            .bajaf_i(bajaf_i), 
                            .MEn(MEn), 
                            .MODO_i(Modo_i), 
                            .MRst_i(MRst), 
                            .aumC_o(), 
                            .aumf_o(XLXN_1), 
                            .bajaC_o(), 
                            .bajaf_o(XLXN_2), 
                            .MODO_o(), 
                            .MRst_o(XLXN_4));
   SelF  SelectorFrec (.aumf_i(XLXN_1), 
                .bajaf_i(XLXN_2), 
                .CLKNEXYS(CLKNEXYS), 
                .reset(XLXN_4), 
                .F_media(XLXN_5), 
                .numF_o(numF_o[7:0]));
   PW  PDWM (.F_media(XLXN_5), 
              .Ref(REF[3:0]), 
              .reset(XLXN_4), 
              .SalidaM(SALIDAM));
endmodule

