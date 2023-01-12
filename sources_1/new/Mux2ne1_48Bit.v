`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/12/2023 08:52:42 PM
// Design Name: 
// Module Name: Mux2ne1_48Bit
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

module Mux2ne1_48Bit(
input[47:0] Hyrja0,
    input[47:0] Hyrja1,
    input S,
    output[47:0] Dalja
    );
    
    wire [47:0] Sp;
    assign Sp = {48{S}};
    assign Dalja = (~Sp & Hyrja0) | (Hyrja1 & Sp);
endmodule