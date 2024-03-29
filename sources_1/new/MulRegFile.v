`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 09:58:48 PM
// Design Name: 
// Module Name: MulRegFile
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


module MulRegFile(
input wire[3:0] RS,
input wire[3:0] RT,
input wire[3:0] RD,
input wire[23:0] WriteData,
input wire RegWrite,
input wire Clock,
output wire[23:0] ReadRS,
output wire[23:0] ReadRT
    );
    
reg[23:0] Registers[1:0];

//Reseto te gjithe regjistrat ne 0
integer i;
initial 
begin
for(i=0;i<16;i=i+1)
   Registers[i] <= 24'd0;
end

//Shkruaj ne regjiter
always @(posedge Clock)
begin
Registers[RD] <= WriteData;
end

//lexo regjistrat ReadData1, ReadData2
assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];


endmodule