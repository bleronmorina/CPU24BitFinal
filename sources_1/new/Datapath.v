`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2023 01:23:41 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath(
input Clock, //HYRJE NGA CPU - TELI CPU_IN_1
input RegDst, Branch, MemRead, 
MemWrite, RegWrite, MemToReg, ALUSrc, //HYRJET NGA CU - TELAT CU_OUT_x
input [1:0] ALUOp, //HYRJE NGA CU - TELAT CU_OUT_x
output [3:0] opcode, //DALJE PER NE CU - TELI D_OUT_1
output [3:0] funct
);

//SHIKO FOTO DATAPATH.PDF
reg[23:0] pc_initial; // Regjistri PC
wire [23:0] pc3, pcbeq, pc_next; //TELAT: T1, T2, T3, T4 //pc_next
wire [23:0] instruction; //TELI T5
wire [3:0] mux_regfile; //TELI T6
wire[23:0] readData1, readData2, writeData, //TELAT T7-T9 
mux_ALU, ALU_Out, Zgjerimi, memToMux, //TELAT T10-T13
shifter1beq, shiftTemp, kalo3adresa, branchAdderToMux, beqAddress; //TELAT T14-T18 
wire[3:0] ALUCtrl; //TELI T19
wire MulWrite, zerof, overflow, carryout, cout1, cout2, cout3; // TELAT T20-T22
wire andMuxBranch; //TELI T23
wire[47:0] MulRes, MulRead;

initial
begin
    pc_initial = 24'd10; //inicializimi fillesat i PC ne adresen 10
end

always@(posedge Clock)
begin
    pc_initial <= pc_next;//azhurimi i PC ne cdo teh pozitiv me adresen e ardhshme
    
end

//T2 - PC rritet per 4 (ne sistemet 32 biteshe) per te gjitha instruksionet pervec BEQ, BNE, JUMP
//assign pc3 = pc_initial + 3;
Mbledhesi24Bitesh m1(pc_initial, 24'd3, 1'b0, pc3, cout1); 

//T14 - pergatitja e adreses per kercim ne BEQ (164 bit si MSB, 16 bit nga pjesa imediate, 2 bit shtyrje majtas (x4) 
//assign shifter1beq = {{11{instruction[11]}}, instruction[11:0], 1'b0};
//assign shiftTemp = {{12{instruction[11]}}, instruction[11:0]};
//Mbledhesi24Bitesh m2(shifter1beq, shiftTemp, 1'b0, kalo3adresa, cout2);

//Instr mem //inicializimi i IM (PC adresa hyrje, teli instruction dajle)
InstructionMemory IM(pc_initial, instruction); 

//T6 - Percaktimi nese RD eshte RD (te R-formati) apo RD = RT (te I-formati) - MUX M1 ne foto
//assign mux_regfile = (RegDst == 1'b1) ? instruction[11:8] : instruction[15:12]; 
Mux2ne1_4Bit mux0(instruction[15:12], instruction[11:8], RegDst, mux_regfile);
// T12 - Zgjerimi nga 16 ne 32 bit - 16 bit si MSB dhe pjesa e instruction[15:0] - S1 ne foto
assign Zgjerimi = {{12{instruction[11]}}, instruction[11:0]};

//REGFILE
//inicializimi i RF(RS, RT, T6 (RD[RD=RD || RD=RT]), T9, CU_OUT_x, CPU_IN_1, T7, T8)
RegisterFile RF(instruction[19:16], instruction[15:12], mux_regfile, writeData, RegWrite, Clock, readData1, readData2 ); 

// T10 - Percaktimi nese hyrja e MUX-it M2 para ALU eshte Regjstri 2 i RF apo vlera imediate e instruksionit 
//assign mux_ALU = (ALUSrc == 1'b1) ? Zgjerimi : readData2; 
Mux2ne1_24Bit mux1(readData2, Zgjerimi, ALUSrc, mux_ALU);

//inicializimi i ALU Control (CU_OUT_x, Function Code nga R-formati, Opcode, T19) - eshte shtuar ALUOp per I-format qe nuk eshte ne foto po kerkohet ne detyre 
ALUControl AC(ALUOp, instruction[3:0], instruction[23:20], ALUCtrl);

//inicializimi i ALU (T7, T10, T19[3], T19[2], T19[1:0], T20, T11, T21, T22)
ALU24Biteshe ALU(readData1, mux_ALU,instruction[11:0], ALUCtrl[3], ALUCtrl[2:0], zerof, ALU_Out, overflow, carryout);

//inicializimi i Data Memory (T11, T8, CU_OUT_x, CU_OUT_x, CPU_IN_1, T13) 
DataMemory DM(ALU_Out, readData2, MemWrite, MemRead, Clock, memToMux);

//T9 - Teli qe i dergon te dhenat nga MUX - M3 ne Regfile
//assign writeData = (MemToReg == 1'b1) ? memToMux : ALU_Out;
Mux2ne1_24Bit mux2(ALU_Out, memToMux, MemToReg, writeData);
//T23 - Teli qe del nga porta DHE ne pjesen e eperme te fotos (shikon nese plotesohet kushti per BEQ
assign andMuxBranch = zerof & Branch;
//assign pc_next = (andMuxBranch == 1'b1) ? pc3 : pcbeq;
//     Mux2ne1_24Bit mux4(pcbeq, pc3, andMuxBranch, pc_next);
assign pc_next = pcbeq;
//T17, Teli qe mban adresen ne te cilen do te kercej programi kur kushti BEQ plotesohet
//assign beqAddress = pc3 + kalo3adresa; 
Mbledhesi24Bitesh m3(pc3, Zgjerimi, 1'b0, beqAddress, cout3); 
//T3 - Teli qe del nga Mux M4 ne foto qe kontrollon nese kemi BEQ apo PC+4
//assign pcbeq = (andMuxBranch == 1'b1) ? beqAddress : pc3;
Mux2ne1_24Bit mux3(pc3, beqAddress, andMuxBranch, pcbeq);
//Teli D_OUT_1 qe i dergohet CU
assign opcode = instruction[23:20];
assign funct = instruction[3:0];
Mux8ne1 mux4(1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, ALUCtrl[2:0], MulWrite);
Multiply mul0(readData1, mux_ALU, MulRes);
MulReg MR(MulRes, MulWrite, Clock, MulRead);
endmodule
