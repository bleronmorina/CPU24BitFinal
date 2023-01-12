`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 05:19:01 PM
// Design Name: 
// Module Name: ALU1Biteshe
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU1Biteshe(
 	input A,
    input B,
    input CIN,
    input BInvert,
    input Less,
    input [2:0] Op,
    output Result,
    output CarryOutFinal
    );

   wire JoB, mB, CarryOut, CarryOutSemiFinal, And, Or, Xor, Add;  

   assign JoB = ~B;

   Mux2ne1 muxB(B, JoB, BInvert, mB);

   assign And = A & mB;
   assign Or = A | mB;
   assign Xor = A ^ mB;
//   assign Xor = (A & ~mB) | (~A & mB);

  Mux8ne1 coutVlera(1'b0, 1'b0, CarryOut, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, Op, CarryOutFinal);
  
  Mbledhesi m1(A, mB, CIN, Add, CarryOutFinal);
  Mux8ne1 MuxiKryesor(And, Or, Add, 1'b0, 1'b0, Xor, 1'b0, 1'b0, Op, Result);
endmodule
