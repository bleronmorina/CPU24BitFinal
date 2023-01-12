`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 08:45:53 PM
// Design Name: 
// Module Name: Mbledhesi48Bitesh
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


module Mbledhesi48Bitesh(
    input [47:0] A,
    input [47:0] B,
    input CIN,
    output [47:0] Shuma,
    output CarryOut
);
   wire cout; 
   Mbledhesi24Bitesh m0(A[23:0], B[23:0], CIN, Shuma[23:0], cout);
   Mbledhesi24Bitesh m1(A[47:24], B[47:24], cout, Shuma[47:23], CarryOut);

endmodule
