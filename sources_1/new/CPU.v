`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 08:24:25 PM
// Design Name: 
// Module Name: CPU
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


module CPU(input Clock);

//TELAT E BRENDSHEM TE CPU, SHIH CPU.PDF
wire [3:0] opcode, funct; //D_OUT_1
//CU_OUT_x
wire RegDst, Jump, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
wire [1:0] ALUOp;

//inicializimi i Datapath    
Datapath DP
(
Clock,
RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc,
ALUOp,
opcode,
funct
);

//Inicializimi i Control Unit
ControlUnit ControlUnit(opcode, 
funct,
RegDst,  
Branch, 
MemRead, 
MemToReg,
ALUOp,
MemWrite, 
ALUSrc,
RegWrite
);

endmodule
