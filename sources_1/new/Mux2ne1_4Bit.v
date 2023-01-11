`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 12:21:03 AM
// Design Name: 
// Module Name: Mux2ne1_4Bit
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

module Mux2ne1_4Bit(
input[3:0] Hyrja1,
    input[3:0] Hyrja2,
    input S,
    output[3:0] Dalja
    );
    
Mux2ne1 m0(Hyrja1[0], Hyrja2[0], S, Dalja[0]);
Mux2ne1 m1(Hyrja1[1], Hyrja2[1], S, Dalja[1]);
Mux2ne1 m2(Hyrja1[2], Hyrja2[2], S, Dalja[2]);
Mux2ne1 m3(Hyrja1[3], Hyrja2[3], S, Dalja[3]);
endmodule