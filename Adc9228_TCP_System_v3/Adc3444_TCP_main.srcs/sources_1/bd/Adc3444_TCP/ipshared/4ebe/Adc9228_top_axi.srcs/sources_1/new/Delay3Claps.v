`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/07 10:49:17
// Design Name: 
// Module Name: Delay3Claps
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


module Delay3Claps
(
    input wire TrigInChx,   //用于延迟TrigInChx
    input wire clk,
    output wire TrigInChx_d3
);

    reg TrigInChx_d1_reg, TrigInChx_d2_reg, TrigInChx_d3_reg;
    
    //打3拍对齐
    always @ (posedge clk) begin
      TrigInChx_d1_reg <= TrigInChx;
      TrigInChx_d2_reg <= TrigInChx_d1_reg;
      TrigInChx_d3_reg <= TrigInChx_d2_reg;
    end
    
    assign TrigInChx_d3 = TrigInChx_d3_reg;
    
endmodule

