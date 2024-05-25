`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/04 14:39:31
// Design Name: 
// Module Name: ADcontrol
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


module AD_control
(
    input   wire    AdcSampClk,    //10MHz,output by AD
    input   wire    reset_n,
    
    // Signal from RF Radar
    input   wire    PM,
    input   wire    TRACK,          //default high   
    
    // Data from ADC9228
    input   wire    [15:0]  AdcDataCh0,
    input   wire    [15:0]  AdcDataCh1,
    input   wire    [15:0]  AdcDataCh2,
    input   wire    [15:0]  AdcDataCh3,
    
    // command from ZYNQ through EMIO
//    input   wire    Trig_mode,
    input   wire    Start_mode,    //0 represent not start yet, 1 represent start data sampling and transmitting
    output  wire     [15:0] DataToTriCh0,
    output  wire     [15:0] DataToTriCh1,
    output  wire     [15:0] DataToTriCh2, 
    output  wire     [15:0] DataToTriCh3,
    
    output  wire    TrigInCh0,
    output  wire    TrigInCh1,
    output  wire    TrigInCh2,
    output  wire    TrigInCh3,
    
    output  wire    [31:0]  delay_cnt_w 
  
    );


    reg     PM_D1,PM_D2;
    wire    PM_up,PM_down;
    reg     [31:0]   PMcnt;
    reg     PM_extra;
    wire    PM_int;
    reg     PM_int_down;
    reg     TRACK_D1,TRACK_D2;
    wire    TRACK_down;
    
    //interface for 4 channel data 
    reg [15:0] Data_Ch0;
    reg Data_Ch0_valid;
    reg [15:0] Data_Ch1;
    reg Data_Ch1_valid;
    reg [15:0] Data_Ch2;
    reg Data_Ch2_valid;
    reg [15:0] Data_Ch3;
    reg Data_Ch3_valid;
    reg Trig_mode=0;
    reg Data_Ch0_valid_D, Data_Ch1_valid_D, Data_Ch2_valid_D, Data_Ch3_valid_D;
    
    reg delay_cnt_flag;
    reg delay_cnt_flag_D;
    wire delay_cnt_flag_down;
    reg [31:0] delay_cnt;   //calculate the delay between Track and TTL(PM)
    reg [31:0] delay_cnt_reg;
    assign delay_cnt_w = delay_cnt_reg;
    
    // PM control
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
                PM_D1 <= 0; PM_D2 <= 0;
                TRACK_D1 <= 1; TRACK_D2 <= 1;
        end
        else begin
                PM_D1 <= PM; PM_D2 <= PM_D1;
                TRACK_D1 <= TRACK; TRACK_D2 <= TRACK_D1;
        end
    end
    
    assign PM_up = (PM_D1) && (~PM_D2);
    assign PM_down = (~PM_D1) && (PM_D2);
    assign TRACK_down = (~TRACK_D1) && (TRACK_D2);
    
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
                PMcnt <= 0;    
        end
        else if (PMcnt == 32'd300) begin //计时满3us
                PMcnt <= 0;
        end
        else if((PM_down)||(PMcnt != 0)) begin
                PMcnt <= PMcnt + 1;
        end
    end
    
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
                PM_int_down <= 0;    
        end
        else if (PMcnt == 32'd299) begin //计时满3us
                PM_int_down <= 1;
        end
        else begin
                PM_int_down <= 0;
        end
    end
    
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
                PM_extra <= 0;    
        end
        else if (PM_down) begin //3us 开始
                PM_extra <= 1;
        end
        else if(PMcnt == 32'd300) begin  //3us结束
                PM_extra <= 0;
        end
    end
    
//    assign PM_int = (PM_D2)||(PM_extra);
    assign PM_int = PM_D2;      //不再需要计数满30us
//===========================================================================    
//  ADC control state machine               
//===========================================================================              
    localparam IDLE = 4'd0;
    localparam Wait_TRACK_down = 4'd1;
    localparam Wait_PM_up = 4'd2;
    localparam Start_Sample = 4'd3;
    localparam Check_process = 4'd4;
    
    reg [3:0]   AD_state;
    reg [3:0]   TTL_cnt;        //count the number of TLL encountered
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
            AD_state <= IDLE;
            delay_cnt_flag <= 1'b0;
            TTL_cnt <= 4'b0;
        end
        else begin
            case(AD_state)
                IDLE: begin
                    if( (Trig_mode == 1'b0) && (Start_mode == 1'b1) ) begin
                        AD_state <= Wait_PM_up;
                    end
                    else if((Trig_mode == 1'b1) && (Start_mode == 1'b1)) begin
                        AD_state <= Wait_TRACK_down;
                    end
                    else 
                        AD_state <= IDLE;
                end
                
                Wait_TRACK_down:begin
                    if(TRACK_down == 1'b1) begin
                        AD_state <= Wait_PM_up;
                        delay_cnt_flag <= 1'b1;
                    end
                    else if (Start_mode == 1'b0) begin
                        AD_state <= IDLE;
                        delay_cnt_flag <= 1'b0;
                    end
                    else
                        AD_state <= Wait_TRACK_down;
                end
                
                Wait_PM_up:begin
                    if(PM_up == 1'b1) begin
                        AD_state <= Start_Sample;
                        delay_cnt_flag <= 1'b0;
                    end
                    else if (Start_mode == 1'b0) begin
                        AD_state <= IDLE;
                        delay_cnt_flag <= 1'b0;
                    end
                    else 
                        AD_state <= Wait_PM_up;
                end
                
                Start_Sample:begin
//                    if(PM_int_down == 1'b1) begin
                    if(PM_down == 1'b1) begin
                        TTL_cnt <= TTL_cnt + 1;
                        AD_state <= Check_process;
                    end
                    else 
                        AD_state <= Start_Sample;
                end
                
                Check_process:begin
                    if(Start_mode == 1'b0) begin
                        AD_state <= IDLE;
                    end
                    else if( (Trig_mode == 1'b0) && (Start_mode == 1'b1) ) begin
                        AD_state <= Wait_PM_up;
                    end
                    else if ( (Trig_mode == 1'b1) && (Start_mode == 1'b1) && (TTL_cnt < 4'd2)) begin
                        AD_state <= Wait_PM_up;
                    end   
                    else if ( (Trig_mode == 1'b1) && (Start_mode == 1'b1) && (TTL_cnt == 4'd2)) begin
                        TTL_cnt <= 4'b0;
                        AD_state <= Wait_TRACK_down; 
                    end
                end
                default: AD_state <= IDLE;
            endcase
        end     
    end
    
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
            delay_cnt_flag_D <= 1'b0;
        end
        else begin
            delay_cnt_flag_D <= delay_cnt_flag;
        end
    end
    
    assign delay_cnt_flag_down = (delay_cnt_flag_D) & (!delay_cnt_flag);
    always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
            delay_cnt <= 32'b0;
            delay_cnt_reg <= 32'b0;
        end
        else if(delay_cnt_flag == 1'b1) begin
            delay_cnt <= delay_cnt + 1;
        end
        else if(delay_cnt_flag_down == 1'b1) begin
        //write delay_cnt to PS through AXI
            delay_cnt_reg <= delay_cnt;
            delay_cnt <= 32'b0;
        end
    end
always@(posedge AdcSampClk or negedge reset_n) begin
        if(!reset_n) begin
                Data_Ch0 <= 16'b0;
                Data_Ch0_valid <= 1'b0;
                Data_Ch1 <= 16'b0;
                Data_Ch1_valid <= 1'b0;
                Data_Ch2 <= 16'b0;
                Data_Ch2_valid <= 1'b0;
                Data_Ch3 <= 16'b0;
                Data_Ch3_valid <= 1'b0;
        end
        else begin
        case(AD_state)
            IDLE:begin
                Data_Ch0 <= 16'b0;
                Data_Ch0_valid <= 1'b0;
                Data_Ch1 <= 16'b0;
                Data_Ch1_valid <= 1'b0;
                Data_Ch2 <= 16'b0;
                Data_Ch2_valid <= 1'b0;
                Data_Ch3 <= 16'b0;
                Data_Ch3_valid <= 1'b0;
            end
            
            Start_Sample:begin
                Data_Ch0 <= AdcDataCh0;
                Data_Ch0_valid <= 1'b1;
                Data_Ch1 <= AdcDataCh1;
                Data_Ch1_valid <= 1'b1;
                Data_Ch2 <= AdcDataCh2;
                Data_Ch2_valid <= 1'b1;
                Data_Ch3 <= AdcDataCh2;
                Data_Ch3_valid <= 1'b1;
            end
            
            Wait_PM_up:begin
                Data_Ch0 <= 16'b0;
                Data_Ch0_valid <= 1'b0;
                Data_Ch1 <= 16'b0;
                Data_Ch1_valid <= 1'b0;
                Data_Ch2 <= 16'b0;
                Data_Ch2_valid <= 1'b0;
                Data_Ch3 <= 16'b0;
                Data_Ch3_valid <= 1'b0;
            end
            endcase
     end
     end
    
     reg [15:0] DataToTriCh0_reg_D;
     reg [15:0] DataToTriCh1_reg_D;
     reg [15:0] DataToTriCh2_reg_D;
     reg [15:0] DataToTriCh3_reg_D;
     
     reg [15:0] DataToTriCh0_reg;
     reg [15:0] DataToTriCh1_reg;
     reg [15:0] DataToTriCh2_reg;
     reg [15:0] DataToTriCh3_reg;
    
    always@(posedge AdcSampClk or negedge reset_n ) begin
        if(!reset_n) begin
            DataToTriCh0_reg <= 16'b0;
            DataToTriCh1_reg <= 16'b0;
            DataToTriCh2_reg <= 16'b0;
            DataToTriCh3_reg <= 16'b0;
            
            DataToTriCh0_reg_D <= 16'b0;
            DataToTriCh1_reg_D <= 16'b0;
            DataToTriCh2_reg_D <= 16'b0;
            DataToTriCh3_reg_D <= 16'b0;
            
            Data_Ch0_valid_D <= 1'b0;
            Data_Ch1_valid_D <= 1'b0;
            Data_Ch2_valid_D <= 1'b0;
            Data_Ch3_valid_D <= 1'b0;
        end
        else begin
            DataToTriCh0_reg <= Data_Ch0;
            DataToTriCh1_reg <= Data_Ch1;
            DataToTriCh2_reg <= Data_Ch2;
            DataToTriCh3_reg <= Data_Ch3;
            
            DataToTriCh0_reg_D <= DataToTriCh0_reg;
            DataToTriCh1_reg_D <= DataToTriCh1_reg;
            DataToTriCh2_reg_D <= DataToTriCh2_reg;
            DataToTriCh3_reg_D <= DataToTriCh3_reg;
            
            Data_Ch0_valid_D <= Data_Ch0_valid;
            Data_Ch1_valid_D <= Data_Ch1_valid;
            Data_Ch2_valid_D <= Data_Ch2_valid;
            Data_Ch3_valid_D <= Data_Ch3_valid;
        end
    end

    assign DataToTriCh0 = DataToTriCh0_reg_D;
    assign DataToTriCh1 = DataToTriCh1_reg_D;
    assign DataToTriCh2 = DataToTriCh2_reg_D;
    assign DataToTriCh3 = DataToTriCh3_reg_D;
    
    assign TrigInCh0 = (Data_Ch0_valid)&& (~Data_Ch0_valid_D);
    assign TrigInCh1 = (Data_Ch1_valid)&& (~Data_Ch1_valid_D);
    assign TrigInCh2 = (Data_Ch2_valid)&& (~Data_Ch2_valid_D);
    assign TrigInCh3 = (Data_Ch3_valid)&& (~Data_Ch3_valid_D);

endmodule
