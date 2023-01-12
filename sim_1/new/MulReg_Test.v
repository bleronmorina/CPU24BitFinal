`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 02:15:07 PM
// Design Name: 
// Module Name: MulReg_Test
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


module MulReg_Test();
reg[47:0] WriteData;
reg Clock;
wire[47:0] ReadData;

initial
begin
#0 Clock=1'b0;
#5 WriteData = 48'd5;
#5 Clock=1'b1;
//#5 Clock=1'b0;
//#5 Clock=1'b1;
#5 $stop;


end
MulReg MR(WriteData, Clock, ReadData);
endmodule
