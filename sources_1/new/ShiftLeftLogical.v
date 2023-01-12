`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2023 06:44:21 PM
// Design Name: 
// Module Name: ShiftLeftLogical
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


module ShiftLeftLogical(
input [23:0] A,
input [23:0] B,
input [3:0] SHAMT,
output[23:0] ResultFinal
    );
    
  wire cout1, cout2;
    wire[23:0] SHAMTe, Shuma, Zbritja, Result1, Result2;
    assign SHAMTe = {20'd0, SHAMT[3:0]};
    
  Mbledhesi24Bitesh m0(SHAMTe, B, 1'b0, Shuma, cout1);
  Mbledhesi24Bitesh m00(Shuma, ~(24'd24), 1'b1, Zbritja, cout2);

 assign Result1 = {A[0], 23'd0};

wire [23:0] Dalja1, Dalja2, Dalja3;
Mux8ne1_24Bit m1(A, {A[22:0], 1'd0}, {A[21:0], 2'd0}, {A[20:0], 3'd0}, {A[19:0], 4'd0}, {A[18:0], 5'd0}, {A[17:0], 6'd0}, {A[16:0], 7'd0}, Shuma[2:0], Dalja1);
Mux8ne1_24Bit m2({A[15:0], 8'd0}, {A[14:0], 9'd0}, {A[13:0], 10'd0}, {A[12:0], 11'd0}, {A[11:0], 12'd0}, {A[10:0], 13'd0}, {A[9:0], 14'd0}, {A[8:0], 15'd0}, Shuma[2:0], Dalja2);
Mux8ne1_24Bit m3({A[7:0], 16'd0}, {A[6:0], 17'd0}, {A[5:0], 18'd0}, {A[4:0], 19'd0}, {A[3:0], 20'd0}, {A[2:0], 21'd0}, {A[1:0], 22'd0}, {A[0], 23'd0}, Shuma[2:0], Dalja3);
Mux4ne1_24Bit m4(Dalja1, Dalja2, Dalja3, 24'd0, Shuma[4:3], Result2);
Mux2ne1_24Bit m5(Result1, Result2, Zbritja[23], ResultFinal);

endmodule