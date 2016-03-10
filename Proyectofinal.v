`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:48 03/07/2016 
// Design Name: 
// Module Name:    fin 
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
module fin (aumC_i, 
                aumf_i, 
                bajafC_i, 
                bajaf_i, 
                CLKNEXYS, 
                MEn, 
                MODO, 
                MRst, 
                An0_o, 
                An1_o, 
                An2_o, 
                An3_o, 
                A_o, 
                B_o, 
                C_o, 
                D_o, 
                E_o, 
                F_o, 
                G_o, 
                SALIDAM);

    input aumC_i;
    input aumf_i;
    input bajafC_i;
    input bajaf_i;
    
    input CLKNEXYS;
    input MEn;
    input MODO;
    input MRst;
   output An0_o;
   output An1_o;
   output An2_o;
   output An3_o;
   output A_o;
   output B_o;
   output C_o;
   output D_o;
   output E_o;
   output F_o;
   output G_o;
   output SALIDAM;
   
   wire [3:0] Ref;
   wire [2:0] valueF;
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_8;
   wire XLXN_10;
   wire XLXN_11;
   
   ControlPrincipal  CntrlP (.aumC_i(aumC_i), 
                            .aumf_i(aumf_i), 
                            .bajaC_i(bajafC_i), 
                            .bajaf_i(bajaf_i), 
                            .MEn(MEn), 
                            .MODO_i(MODO), 
                            .MRst_i(MRst), 
                            .aumC_o(XLXN_8), 
                            .aumf_o(XLXN_1), 
                            .bajaC_o(XLXN_10), 
                            .bajaf_o(XLXN_2), 
                            .MODO_o(XLXN_11), 
                            .MRst_o(XLXN_4));
   SelF  XLXI_2 (.aumf_i(XLXN_1), 
                .bajaf_i(XLXN_2), 
                .CLKNEXYS(CLKNEXYS), 
                .reset(XLXN_4), 
                .F_media(XLXN_5), 
                .valueF(valueF[2:0]));
   PW  XLXI_3 (.F_media(XLXN_6), 
              .Ref(Ref[3:0]), 
              .reset(XLXN_4), 
              .SalidaM(SALIDAM));
   BUFG  XLXI_4 (.I(XLXN_5), 
                .O(XLXN_6));
   ControlRef  XLXI_5 (.aumC_i(XLXN_8), 
                      .bajaC_i(XLXN_10), 
                      .clk_i(CLKNEXYS), 
                      .reset(XLXN_4), 
                      .valueC(Ref[3:0]));
   controladordelos7seg  XLXI_6 (.clk_i(CLKNEXYS), 
                                .modo_i(XLXN_11), 
                                .reset(XLXN_4), 
                                .valorC_i(Ref[3:0]), 
                                .valorf_i(valueF[2:0]), 
                                .A(A_o), 
                                .An0(An0_o), 
                                .An1(An1_o), 
                                .An2(An2_o), 
                                .An3(An3_o), 
                                .B(B_o), 
                                .C(C_o), 
                                .D(D_o), 
                                .E(E_o), 
                                .F(F_o), 
                                .G(G_o));
endmodule

