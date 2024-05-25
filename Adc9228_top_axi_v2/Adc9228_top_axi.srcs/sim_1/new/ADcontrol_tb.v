`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 20:46:25
// Design Name: 
// Module Name: top
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


module ADcontrol_tb;
    reg clk;
    reg reset_n;
    reg [15:0] AdcDataCh0;
    reg [15:0] AdcDataCh1;
    reg [15:0] AdcDataCh2;
    
    reg PM;
    reg TRACK;
    reg Trig_mode;
    reg Start_mode;
    wire [15:0] DataToTriCh0;
    wire [15:0] DataToTriCh1;
    wire [15:0] DataToTriCh2;
    wire TrigInCh0;
    wire TrigInCh1;
    wire TrigInCh2;
    
    initial                 
    begin
       clk          <= 1'b0;
        #10;
        forever
        begin    
            clk      <= 1'b1;
            #5;
            clk      <= 1'b0;
            #5;
        end
    end
    wire tb_clk = clk;
    initial
        begin
           reset_n <= 1'b1;
           #1000
           reset_n <= 1'b0;
           #100;
           reset_n <= 1'b1;
        end
        
    always@(posedge tb_clk or negedge reset_n)begin
        if(!reset_n) begin
            AdcDataCh0 <= 16'd1111;
            AdcDataCh1 <= 16'd1111;
            AdcDataCh2 <= 16'd1111;
        end
        else begin
            AdcDataCh0 <= AdcDataCh0 + 1;
            AdcDataCh1 <= AdcDataCh1 + 1;
            AdcDataCh2 <= AdcDataCh2 + 1;
        end
    end
    
    initial begin
        Trig_mode <= 1; //
        #100;
        Start_mode <= 1; //开始采集
        #100000000;
        Start_mode <= 0;
    end
    
    initial begin
        PM <= 0;
        TRACK <= 1;
        #500
        forever begin
            TRACK <= 0;
            #20
            TRACK <= 1;
            #1000
            PM <= 1;
            #400000;
            PM <= 0;
            #3000000;   //3ms
        end
    end
    
    ADcontrol
    inst_ADcontrol(
    .AdcSampClk(clk),    //100MHz,output by AD
    .reset_n(reset_n),
    
    // Signal from RF Radar
    .PM(PM),
    .TRACK(TRACK),          //default high
    
    // Data from ADC3444
    .AdcDataValid(),
    .AdcDataCh0(AdcDataCh0),
    .AdcDataCh1(AdcDataCh1),
    .AdcDataCh2(AdcDataCh2),
     
    // command from ZYNQ through EMIO
    .Trig_mode(Trig_mode),   
    .Start_mode(Start_mode),
    .DataToTriCh0(DataToTriCh0),
    .DataToTriCh1(DataToTriCh1),
    .DataToTriCh2(DataToTriCh2),
    .TrigInCh0(TrigInCh0),
    .TrigInCh1(TrigInCh1),
    .TrigInCh2(TrigInCh2)   
    );
    
    
endmodule
