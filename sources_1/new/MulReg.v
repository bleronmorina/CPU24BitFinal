`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 02:05:08 PM
// Design Name: 
// Module Name: MulReg
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


module MulReg(
input wire[47:0] WriteData,
input wire MulWrite,
input wire Clock,
output wire[47:0] ReadData
    );
    
reg[47:0] Register;

initial 
begin
   Register <= 48'd0;
end

//Shkruaj ne regjiter
always @(posedge Clock)
begin
if(MulWrite) 
begin
Register <= WriteData;
    end
end

assign ReadData = Register;

endmodule
