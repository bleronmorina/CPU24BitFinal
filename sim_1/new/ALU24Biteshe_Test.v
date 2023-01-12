`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 01:26:08 PM
// Design Name: 
// Module Name: ALU24Biteshe_Test
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


module ALU24Biteshe_Test;

  reg [23:0] At;
  reg [23:0] Bt;
  reg [3:0] SHAMTt;
  reg BNegatet;
  reg [2:0] Opt;
  wire Zerot;
  wire [23:0] Resultt;
  wire Overflowt;
  wire CarryOutt;

//initial
//  $display("A=%d, B=%d, Result=%d", At, Bt, Resultt);

initial
begin
#0  At=24'd5; Bt=24'd0; SHAMTt=4'd4; BNegatet=1'b0; Opt=3'b110;
#10  $stop;
end

  ALU24Biteshe ALU24BitesheT(.A(At), .B(Bt), .SHAMT(SHAMTt), .BNegate(BNegatet), .Op(Opt), .Zero(Zerot), .ResultFinal(Resultt), .Overflow(Overflowt), .CarryOut(CarryOutt));

endmodule