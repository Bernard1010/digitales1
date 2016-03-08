`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Ricardo Martínez Vallejos 
// 
// Create Date:    15:31:07 02/26/2016 
// Design Name: 
// Module Name:    deco7seg 
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
module deco7seg(ai,bi,ci,di,Ao,Bo,Co,Do,Eo,Fo,Go);

input ai,bi,ci,di;
output wire Ao,Bo,Co,Do,Eo,Fo,Go;

assign Ao=(((~ai)&(ci)&(di))|((~ai)&(ci)&(~di))|((ai)&(~bi)&(~ci))|((~bi)&(~ci)&(~di))|((~ai)&(bi)&(~ci)&(di)));
//F0 = A' C D + A' C D' + A B' C'  + B' C' D' + A' B C' D;

assign Bo=(((~ai)&(~ci)&(~di))|((~ai)&(ci)&(di))|((~bi)&(~ci))|((~ai)&(~bi)&(ci)));
//F1 = A' C' D' + A' C D + B' C'  + A' B' C ;

assign Co=(((~ai)&(ci)&(di))|((~ai)&(bi)&(~di))|((~bi)&(~ci))|((~ai)&(bi)&(~ci)&(di)));
//F2 = A' C D + A' B D' + B' C'  + A' B C' D;

assign Do=(((~ai)&(ci)&(~di))|((~ai)&(~bi)&(ci))|((ai)&(~bi)&(~ci))|((~bi)&(~ci)&(~di))|((~ai)&(bi)&(~ci)&(di)));
//F3 = A' C D' + A' B' C  + A B' C'  + B' C' D' + A' B C' D;

assign Eo=((((~ai)&(ci)&(~di))|((~bi)&(~ci)&(~di))));
//F4 = A' C D' + B' C' D';

assign Fo=((~ai)&(bi)&(~di))|((ai)&(~bi)&(~ci))|((~bi)&(~ci)&(~di))|((~ai)&(bi)&(~ci)&(di));
//F5 = A' B D' + A B' C'  + B' C' D' + A' B C' D;

assign Go=((~ai)&(bi)&(~di))|((~ai)&(~bi)&(ci))|((ai)&(~bi)&(~ci))|((~ai)&(bi)&(~ci)&(di));
//F6 = A' B D' + A' B' C  + A B' C'  + A' B C' D;

endmodule
