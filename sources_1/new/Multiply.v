`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 02:45:45 PM
// Design Name: 
// Module Name: Multiply
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


module Multiply(
input [23:0] A,
input [23:0] B,
output [47:0] Result
    );
    
    wire cout;
    wire[47:0] Result0, Result1, Result2, Result3, Result4, Result5, Result6, Result7, Result8, Result9, 
    Result10, Result11, Result12, Result13, Result14, Result15, Result16, Result17, Result18, Result19, 
    Result20, Result21, Result22, Result23;
    wire[47:0] Mbledhje0, Mbledhje1, Mbledhje2, Mbledhje3, Mbledhje4, Mbledhje5, Mbledhje6, Mbledhje7, Mbledhje8, Mbledhje9, 
    Mbledhje10, Mbledhje11, Mbledhje12, Mbledhje13, Mbledhje14, Mbledhje15, Mbledhje16, Mbledhje17, Mbledhje18, Mbledhje19, 
    Mbledhje20, Mbledhje21, Mbledhje22, Mbledhje23;
    
    Mux2ne1_48Bit m0(48'd0, {24'd0, A[23:0]}, B[0], Result0);
    Mux2ne1_48Bit m1(48'd0, {23'd0, A[23:0], 1'd0}, B[1], Result1);
    Mux2ne1_48Bit m2(48'd0, {22'd0, A[23:0], 2'd0}, B[2], Result2);
    Mux2ne1_48Bit m3(48'd0, {21'd0, A[23:0], 3'd0}, B[3], Result3);
    Mux2ne1_48Bit m4(48'd0, {20'd0, A[23:0], 4'd0}, B[4], Result4);
    Mux2ne1_48Bit m5(48'd0, {19'd0, A[23:0], 5'd0}, B[5], Result5);
    Mux2ne1_48Bit m6(48'd0, {18'd0, A[23:0], 6'd0}, B[6], Result6);
    Mux2ne1_48Bit m7(48'd0, {17'd0, A[23:0], 7'd0}, B[7], Result7);
    Mux2ne1_48Bit m8(48'd0, {16'd0, A[23:0], 8'd0}, B[8], Result8);
    Mux2ne1_48Bit m9(48'd0, {15'd0, A[23:0], 9'd0}, B[9], Result9);
    Mux2ne1_48Bit m10(48'd0, {14'd0, A[23:0], 10'd0}, B[10], Result10);
    Mux2ne1_48Bit m11(48'd0, {13'd0, A[23:0], 11'd0}, B[11], Result11);
    Mux2ne1_48Bit m12(48'd0, {12'd0, A[23:0], 12'd0}, B[12], Result12);
    Mux2ne1_48Bit m13(48'd0, {11'd0, A[23:0], 13'd0}, B[13], Result13);
    Mux2ne1_48Bit m14(48'd0, {10'd0, A[23:0], 14'd0}, B[14], Result14);
    Mux2ne1_48Bit m15(48'd0, {9'd0, A[23:0], 15'd0}, B[15], Result15);
    Mux2ne1_48Bit m16(48'd0, {8'd0, A[23:0], 16'd0}, B[16], Result16);
    Mux2ne1_48Bit m17(48'd0, {7'd0, A[23:0], 17'd0}, B[17], Result17);
    Mux2ne1_48Bit m18(48'd0, {6'd0, A[23:0], 18'd0}, B[18], Result18);
    Mux2ne1_48Bit m19(48'd0, {5'd0, A[23:0], 19'd0}, B[19], Result19);
    Mux2ne1_48Bit m20(48'd0, {4'd0, A[23:0], 20'd0}, B[20], Result20);
    Mux2ne1_48Bit m21(48'd0, {3'd0, A[23:0], 21'd0}, B[21], Result21);
    Mux2ne1_48Bit m22(48'd0, {2'd0, A[23:0], 22'd0}, B[22], Result22);
    Mux2ne1_48Bit m23(48'd0, {1'd0, A[23:0], 23'd0}, B[23], Result23);
    
    Mbledhesi48Bitesh a0(Result0, Result1, 1'd0, Mbledhje0, cout);
    Mbledhesi48Bitesh a1(Result2, Result3, 1'd0, Mbledhje1, cout);
    Mbledhesi48Bitesh a2(Result4, Result5, 1'd0, Mbledhje2, cout);
    Mbledhesi48Bitesh a3(Result6, Result7, 1'd0, Mbledhje3, cout);
    Mbledhesi48Bitesh a4(Result8, Result9, 1'd0, Mbledhje4, cout);
    Mbledhesi48Bitesh a5(Result10, Result11, 1'd0, Mbledhje5, cout);
    Mbledhesi48Bitesh a6(Result12, Result13, 1'd0, Mbledhje6, cout);
    Mbledhesi48Bitesh a7(Result14, Result15, 1'd0, Mbledhje7, cout);
    Mbledhesi48Bitesh a8(Result16, Result17, 1'd0, Mbledhje8, cout);
    Mbledhesi48Bitesh a9(Result18, Result19, 1'd0, Mbledhje9, cout);
    Mbledhesi48Bitesh a10(Result20, Result21, 1'd0, Mbledhje10, cout);
    Mbledhesi48Bitesh a11(Result22, Result23, 1'd0, Mbledhje11, cout);
    Mbledhesi48Bitesh a12(Mbledhje0, Mbledhje1, 1'd0, Mbledhje12, cout);
    Mbledhesi48Bitesh a13(Mbledhje2, Mbledhje3, 1'd0, Mbledhje13, cout);
    Mbledhesi48Bitesh a14(Mbledhje4, Mbledhje5, 1'd0, Mbledhje14, cout);
    Mbledhesi48Bitesh a15(Mbledhje6, Mbledhje7, 1'd0, Mbledhje15, cout);
    Mbledhesi48Bitesh a16(Mbledhje8, Mbledhje9, 1'd0, Mbledhje16, cout);
    Mbledhesi48Bitesh a17(Mbledhje10, Mbledhje11, 1'd0, Mbledhje17, cout);
    Mbledhesi48Bitesh a18(Mbledhje12, Mbledhje13, 1'd0, Mbledhje18, cout);
    Mbledhesi48Bitesh a19(Mbledhje14, Mbledhje15, 1'd0, Mbledhje19, cout);
    Mbledhesi48Bitesh a20(Mbledhje16, Mbledhje17, 1'd0, Mbledhje20, cout);
    Mbledhesi48Bitesh a21(Mbledhje18, Mbledhje19, 1'd0, Mbledhje21, cout);
    Mbledhesi48Bitesh a22(Mbledhje20, Mbledhje21, 1'd0, Result, cout);
    
endmodule
