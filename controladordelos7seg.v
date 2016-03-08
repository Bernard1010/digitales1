`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ricardo Martínez Vallejos
// 
// Create Date:    19:34:07 02/27/2016 
// Design Name: 
// Module Name:    controladordelos7seg 
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
module controladordelos7seg(modo_i,valorf_i,valorC_i,clk_i,reset,A,B,C,D,E,F,G,An0,An1,An2,An3);
//aumdis:se aumenta si  es un 1 y se disminuye si es un 0
input modo_i,clk_i,reset;
input [2:0]valorf_i;
input [3:0]valorC_i;

output A,B,C,D,E,F,G,An0,An1,An2,An3;
//output reg [3:0]An;
reg a0,b0,c0,d0;//Cojunto de bits para el 7 seg LSB(0)
reg a1,b1,c1,d1;//Conjunto de bits para el 7 seg (1)
reg a2,b2,c2,d2;//Conjunto de bits para el 7 seg (2)
reg a3,b3,c3,d3;//Conjunto de bits para el 7 seg para el MSB(3)
//reg [11:0]conta;

always @(posedge clk_i)
begin
	if(modo_i==1)// si es frecuencia
		//begin
			if(valorf_i==3'b000)//frecuencia es 30khz
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//Un 0 en el 7 seg LSB
					a1=1'b0;
					b1=1'b0;
					c1=1'b1;
					d1=1'b1;// un 3 en 7 seg(1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;// Por la lógica redactada en el deco7seg, se mantiene apagado.(2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// Por la lógica redactada en el deco7seg, se mantiene apagado.(3)
				end
			else if(valorf_i==3'b001)//frecuencia es 50khz
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb(0)
					a1=1'b0;
					b1=1'b1;
					c1=1'b0;
					d1=1'b1;//un 5 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;// nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else if(valorf_i==3'b010)//frecuencia 75khz
				begin
					a0=1'b0;
					b0=1'b1;
					c0=1'b0;
					d0=1'b1;//un 5 en lsb(0)
					a1=1'b0;
					b1=1'b1;
					c1=1'b1;
					d1=1'b1;//un 7 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;// nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else if(valorf_i==3'b011)//frecuencia de 100khz
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb(0)
					a1=1'b0;
					b1=1'b0;
					c1=1'b0;
					d1=1'b0;// un 0 en (1)
					a2=1'b0;
					b2=1'b0;
					c2=1'b0;
					d2=1'b1;// un 1 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else if(valorf_i==3'b100)//frecuencia de 125khz
				begin
					a0=1'b0;
					b0=1'b1;
					c0=1'b0;
					d0=1'b1;// un 5 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b1;
					d1=1'b0;// un 2 en (1)
					a2=1'b0;
					b2=1'b0;
					c2=1'b0;
					d2=1'b1;//un 1 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else if(valorf_i==3'b101)//frecuencia 150khz
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b0;
					d1=1'b1;//un 5 en (1) 
					a2=1'b0;
					b2=1'b0;
					c2=1'b0;
					d2=1'b1;//un 1 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else if(valorf_i==3'b110)//frecuencia 175khz
				begin
					a0=1'b0;
					b0=1'b1;
					c0=1'b0;
					d0=1'b1;//un 5 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b1;
					d1=1'b1;//un 7 en (1)
					a2=1'b0;
					b2=1'b0;
					c2=1'b0;
					d2=1'b1;//un 1 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;// nada en (3)
				end	
			else //frecuencia 200khz
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b0;
					d1=1'b0;//un 0 en (1)
					a2=1'b0;
					b2=1'b0;
					c2=1'b1;
					d2=1'b0;//un 2 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end	
			//end//end de los else if's
		
		//end//end del begin en el modo i==1
	else//es de corriente
			if (valorC_i==4'd1)//corriente= 10%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b0;
					d1=1'b1;// un 1 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)			
				end
			else if(valorC_i==4'd2)//corriente=20%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b1;
					d1=1'b0;//un 2 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;// nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd3)//corriente=30%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b1;
					d1=1'b1;//un 3 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd4)//corriente=40%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b0;
					d1=1'b0;//un 4 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd5)//corriente=50%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;// un 0 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b0;
					d1=1'b1;// un 5 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2) 
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd6)//corriente=60%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b1;
					d1=1'b0;//un 6 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd7)//corriente=70%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b1;
					c1=1'b1;
					d1=1'b1;//un 7 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd8)//corriente=80%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b1;
					b1=1'b0;
					c1=1'b0;
					d1=1'b0;//un 8 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd9)//corriente=90%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b1;
					b1=1'b0;
					c1=1'b0;
					d1=1'b1;//un 9 en (1)
					a2=1'b1;
					b2=1'b1;
					c2=1'b1;
					d2=1'b1;//nada en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end
			else if(valorC_i==4'd10)//corriente=100%
				begin
					a0=1'b0;
					b0=1'b0;
					c0=1'b0;
					d0=1'b0;//un 0 en lsb
					a1=1'b0;
					b1=1'b0;
					c1=1'b0;
					d1=1'b0;//un 0 en (1)
					a2=1'b0;
					b2=1'b0;
					c2=1'b0;
					d2=1'b1;//un 1 en (2)
					a3=1'b1;
					b3=1'b1;
					c3=1'b1;
					d3=1'b1;//nada en (3)
				end	
	
	end// end del if y else principal, que define si se va a imprimir valores de corriente o de frecuencia
	deco7seg cero(a0,b0,c0,d0,A0,B0,C0,D0,E0,F0,G0);
	deco7seg uno(a1,b1,c1,d1,A1,B1,C1,D1,E1,F1,G1);
	deco7seg dos(a2,b2,c2,d2,A2,B2,C2,D2,E2,F2,G2);
	deco7seg tres(a3,b3,c3,d3,A3,B3,C3,D3,E3,F3,G3);
	//contador cuenta(clk_i,conta);
	maquinota2 maquinaestados(reset,clk_i,A0,B0,C0,D0,E0,F0,G0,A1,B1,C1,D1,E1,F1,G1,A2,B2,C2,D2,E2,F2,G2,A3,B3,C3,D3,E3,F3,G3,A,B,C,D,E,F,G,An0,An1,An2,An3);
//end// end del begin principal	
endmodule
