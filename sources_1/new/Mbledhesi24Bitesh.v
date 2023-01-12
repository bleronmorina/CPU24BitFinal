`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 09:07:48 PM
// Design Name: 
// Module Name: Mbledhesi24Bitesh
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


module Mbledhesi24Bitesh(
    input [23:0] A,
    input [23:0] B,
    input CIN,
    output [23:0] Shuma,
    output CarryOut
    );
    
    wire [22:0] COUT;
    Mbledhesi M0(A[0], B[0], CIN, Shuma[0], COUT[0]);
    Mbledhesi M1(A[1], B[1], COUT[0], Shuma[1], COUT[1]);
    Mbledhesi M2(A[2], B[2], COUT[1], Shuma[2], COUT[2]);
    Mbledhesi M3(A[3], B[3], COUT[2], Shuma[3], COUT[3]);
    Mbledhesi M4(A[4], B[4], COUT[3], Shuma[4], COUT[4]);
    Mbledhesi M5(A[5], B[5], COUT[4], Shuma[5], COUT[5]);
    Mbledhesi M6(A[6], B[6], COUT[5], Shuma[6], COUT[6]);
    Mbledhesi M7(A[7], B[7], COUT[6], Shuma[7], COUT[7]);
    Mbledhesi M8(A[8], B[8], COUT[7], Shuma[8], COUT[8]);
    Mbledhesi M9(A[9], B[9], COUT[8], Shuma[9], COUT[9]);
    Mbledhesi M10(A[10], B[10], COUT[9], Shuma[10], COUT[10]);
    Mbledhesi M11(A[11], B[11], COUT[10], Shuma[11], COUT[11]);
    Mbledhesi M12(A[12], B[12], COUT[11], Shuma[12], COUT[12]);
    Mbledhesi M13(A[13], B[13], COUT[12], Shuma[13], COUT[13]);
    Mbledhesi M14(A[14], B[14], COUT[13], Shuma[14], COUT[14]);
    Mbledhesi M15(A[15], B[15], COUT[14], Shuma[15], COUT[15]);
    Mbledhesi M16(A[16], B[16], COUT[15], Shuma[16], COUT[16]);
    Mbledhesi M17(A[17], B[17], COUT[16], Shuma[17], COUT[17]);
    Mbledhesi M18(A[18], B[18], COUT[17], Shuma[18], COUT[18]);
    Mbledhesi M19(A[19], B[19], COUT[18], Shuma[19], COUT[19]);
    Mbledhesi M20(A[20], B[20], COUT[19], Shuma[20], COUT[20]);
    Mbledhesi M21(A[21], B[21], COUT[20], Shuma[21], COUT[21]);
    Mbledhesi M22(A[22], B[22], COUT[21], Shuma[22], COUT[22]);
    Mbledhesi M23(A[23], B[23], COUT[22], Shuma[23], CarryOut);


endmodule
