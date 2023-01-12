`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 05:43:15 PM
// Design Name: 
// Module Name: Mux4ne1
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


module Mux4ne1(
 input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input [1:0] S,
    output Dalja
    );
    wire Dalja1, Dalja2;
   Mux2ne1 m0(Hyrja0, Hyrja1, S[0], Dalja1);
   Mux2ne1 m1(Hyrja2, Hyrja3, S[0], Dalja2);
   Mux2ne1 m2(Dalja1, Dalja2, S[1], Dalja);
   
endmodule
