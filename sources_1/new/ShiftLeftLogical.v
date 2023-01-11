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
output[23:0] Result
    );
  wire cout1;
    wire[23:0] SHAMTe, Shuma, Zbritja;
    wire[23:0] SHUMA1, SHUMA2, SHUMA3, SHUMA4, SHUMA5, SHUMA6, SHUMA7, SHUMA8, SHUMA9, SHUMA10, SHUMA11, SHUMA12, SHUMA13, SHUMA14, SHUMA15, SHUMA16, SHUMA17, SHUMA18, SHUMA19, SHUMA20, SHUMA21, SHUMA22, SHUMA23, SHUMA24; 
    assign SHAMTe = {20'd0, SHAMT[3:0]};
    
  Mbledhesi24Bitesh m0(SHAMTe, B, 1'b0, Shuma, cout1);
//    Mbledhesi24Bitesh m1(Shuma, ~(24'd23), 1'b1, Zbritja);


             assign SHUMA1 = A;
             assign SHUMA2 = {A[22:0], 1'd0};
             assign SHUMA3 = {A[21:0], 2'd0};
             assign SHUMA4 = {A[20:0], 3'd0};
             assign SHUMA5 = {A[19:0], 4'd0};
             assign SHUMA6 = {A[18:0], 5'd0};
             assign SHUMA7 = {A[17:0], 6'd0};
             assign SHUMA8 = {A[16:0], 7'd0};
             assign SHUMA9 = {A[15:0], 8'd0};
             assign SHUMA10 = {A[14:0], 9'd0};
             assign SHUMA11 = {A[13:0], 10'd0};
             assign SHUMA12 = {A[12:0], 11'd0};
             assign SHUMA13 = {A[11:0], 12'd0};
             assign SHUMA14 = {A[10:0], 13'd0};
             assign SHUMA15 = {A[9:0], 14'd0};
             assign SHUMA16 = {A[8:0], 15'd0};
             assign SHUMA17 = {A[7:0], 16'd0};
             assign SHUMA18 = {A[6:0], 17'd0};
             assign SHUMA19 = {A[5:0], 18'd0};
             assign SHUMA20 = {A[4:0], 19'd0};
             assign SHUMA21 = {A[3:0], 20'd0};
             assign SHUMA22 = {A[2:0], 21'd0};
             assign SHUMA23 = {A[1:0], 22'd0};
             assign SHUMA24 = {A[0], 23'd0};
       wire [23:0] Dalja1, Dalja2, Dalja3;
       Mux8ne1_24Bit m1(SHUMA1, SHUMA2, SHUMA3, SHUMA4, SHUMA5, SHUMA6, SHUMA7, SHUMA8, Shuma[2:0], Dalja1);
  Mux8ne1_24Bit m2(SHUMA9, SHUMA10, SHUMA11, SHUMA12, SHUMA13, SHUMA14, SHUMA15, SHUMA16, Shuma[2:0], Dalja2);
  Mux8ne1_24Bit m3(SHUMA17, SHUMA18, SHUMA19, SHUMA20, SHUMA21, SHUMA22, SHUMA23, SHUMA24, Shuma[2:0], Dalja3);
       Mux4ne1_24Bit m4(Dalja1, Dalja2, Dalja3, 24'd0, Shuma[4:3], Result);
  assign Result = SHUMA11;
endmodule