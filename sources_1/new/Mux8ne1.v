`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2023 09:23:45 PM
// Design Name: 
// Module Name: Mux8ne1
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


module Mux8ne1(
input Hyrja0,
input Hyrja1,
input Hyrja2,
input Hyrja3,
input Hyrja4,
input Hyrja5,
input Hyrja6,
input Hyrja7,
input [2:0] s,
output Dalja);
wire dalja1, dalja2;
Mux4ne1 m0(Hyrja0, Hyrja1, Hyrja2, Hyrja3, s[1:0], dalja1);
Mux4ne1 m1(Hyrja4, Hyrja5, Hyrja6, Hyrja7, s[1:0], dalja2);
Mux2ne1 m(dalja1, dalja2, s[2], Dalja);
//assign Dalja = (s[2] == 1'b0) ? ((s[1] == 1'b0) ? ((s[1] == 1'b0) ? Hyrja0 : Hyrja1)) : ((s[1] == 1'b0) ? Hyrja2 : Hyrja3)) : ((s[1] == 1'b0) ? ((s[1] == 1'b0) ? Hyrja4 : Hyrja5) : ((s[1] == 1'b0) ? Hyrja6 : Hyrja7)); 

endmodule
