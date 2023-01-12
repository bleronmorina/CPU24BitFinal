`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2023 12:32:08 PM
// Design Name: 
// Module Name: InstructionMemorytest
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


module InstructionMemorytest();
reg[24:0] PC;
wire[24:0] Instruction;

initial
begin
#0 PC=24'd0;
end

InstructionMemory IM(PC, Instruction);
endmodule
