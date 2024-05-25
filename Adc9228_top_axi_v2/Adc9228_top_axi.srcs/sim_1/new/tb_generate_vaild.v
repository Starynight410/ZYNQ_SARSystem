`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/05 11:48:01
// Design Name: 
// Module Name: tb_generate_vaild
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


module tb_generate_vaild();

reg TrigInCh0;
reg AdcSampClk; //10MHz
wire Data_Ch0_wr_en;
wire Data_Ch0_tlast;
reg rst_n;

initial begin
    AdcSampClk = 1'b0;
    TrigInCh0 = 1'b0;
    rst_n = 1'b0;
    #10
    rst_n = 1'b1;
    
    forever begin
        AdcSampClk = 1'b1;
        #50;
        AdcSampClk = 1'b0;
        #50;
    end
end

initial begin
    TrigInCh0 = 1'b0;
    #100;
    TrigInCh0 = 1'b1;
    #100
    TrigInCh0 = 1'b0;
    #200000;
    TrigInCh0 = 1'b1;
    #100
    TrigInCh0 = 1'b0;
end

generate_vaild Ch0_generate_vaild_ins(							
    .clk(AdcSampClk),     
    .start(TrigInCh0),   
    .rst_n(rst_n),   
    .Data_Chx_wr_en(Data_Ch0_wr_en),
    .Data_Chx_tlast(Data_Ch0_tlast)       
);

endmodule
