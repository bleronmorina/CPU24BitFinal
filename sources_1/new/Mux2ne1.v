`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2023 05:41:29 PM
// Design Name: 
// Module Name: Mux2ne1
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


module Mux2ne1(
  	input wire Hyrja1,
    input wire Hyrja2,
    input wire S,
    output wire M
    );
    
wire telijoS, teli1, teli2;
    
  not(telijoS, S);

  and(teli1, Hyrja1, telijoS);
  and(teli2 , S, Hyrja2);


or(M, teli1, teli2);

endmodule

