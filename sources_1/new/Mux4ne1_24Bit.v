`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 11:12:43 AM
// Design Name: 
// Module Name: Mux4ne1_24Bit
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


  module Mux4ne1_24Bit(
    input[23:0] Hyrja0,
    input[23:0] Hyrja1,
    input[23:0] Hyrja2,
    input[23:0] Hyrja3,
    input [1:0] S,
    output[23:0] Dalja
    );
    wire [23:0] Dalja1, Dalja2; 
    Mux2ne1_24Bit m0(Hyrja0, Hyrja1, S[0], Dalja1);
    Mux2ne1_24Bit m1(Hyrja2, Hyrja3, S[0], Dalja2);
    Mux2ne1_24Bit m2(Dalja1, Dalja2, S[1], Dalja);
endmodule

