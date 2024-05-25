`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/05 11:33:03
// Design Name: 
// Module Name: generate_vaild
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


module generate_vaild
    #( parameter COUNT_NUM = 11'h400  - 1 )   //1 chirp
(							
    input wire clk,
    input wire start,
    input wire rst_n,
    output wire Data_Chx_wr_en,
    output wire [10:0] count,    //测试计数
    output wire Data_Chx_tlast
    
);
    reg [10:0] count_reg;
    reg counting;
    reg counting_d1;    //寄存一拍的信号
//    reg [10:0] count;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counting <= 0;
            count_reg <= 0;
        end
        else if (start) begin
          counting <= 1;
          count_reg <= 0;
        end
        else if (count_reg == COUNT_NUM) begin
          counting <= 0;
        end
        else if (counting) begin
          count_reg <= count_reg + 1;
        end
        else begin
            counting <= 0;
            count_reg <= count_reg;
        end
    end
     
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)
            counting_d1 <= 1'b0;            //复位清零    
        else 
            counting_d1 <= counting;        //寄存一拍    
    end
    
    assign Data_Chx_tlast = ~counting && counting_d1;   //counting下降沿作为数据尾
    assign Data_Chx_wr_en = counting_d1;                //tlast要在wr_en内，打一拍对齐
    assign count = count_reg;
    
endmodule

