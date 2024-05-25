`timescale 1ns / 1ps

`define TrigEXT             5'h0
`define TrigAMPHIGH         5'h1


module TriggerGen
#
(
    parameter TrigDataWidth = 16,
    parameter TrigStatusNum = 2
)
(
    input                            iTrigClk,
    input                            iTrigRstn,


    input  [TrigDataWidth-1:0]       iAdcData,
    input   wire                     rTrigAMPHIGH,

    // TriggerGen to TriggerMux
    output [TrigStatusNum-1:0]       oTrigOut, 
    output [TrigDataWidth-1:0]       oTrigOutData,
    
    // TriggerAxil to TriggerGen
    input  [TrigDataWidth-1:0]       iTrigGenAMPHIGHThreshold,
    input  [TrigDataWidth-1:0]       iTrigGenAMPLOWHThreshold,
    input  [TrigDataWidth-1:0]       iTrigGenAMPLOWLThreshold,
    input  [TrigDataWidth-1:0]       iTrigGenPulseThreshold  ,
    input  [TrigDataWidth-1:0]       iTrigGenDemodThreshold  ,
    input  [4*8-1:0]                 iTrigGenFcode           ,
    input  [16*8-1:0]                iTrigGenMFADDR          ,
    input  [31:0]                    iTrigGenSFTimeout       ,
    input  [31:0]                    iTrigGenLOGTime         ,
    input  [0:0]                     iTrigGenUpdate          
);

    reg rTrigEXT          ;
    reg rTrigAMPLOW       ;
    reg rTrigSINGLEPULSE  ;
    reg rTrigDEMODEMF     ;
    reg rTrigDEMODESF     ;
    reg rTrigDEMODEMFCODE ;
    reg rTrigDEMODEMFADDR ;
    reg rTrigDEMODEFRMERR ;
    reg rTrigDEMODECRCERR ;
    reg rTrigDEMODEMISSSF ;
    
    
    
    reg  [TrigStatusNum-1:0]       rTrigOut;

    reg  [TrigDataWidth-1:0]       rTrigGenAMPHIGHThreshold;
    reg  [TrigDataWidth-1:0]       rTrigGenAMPLOWHThreshold;
    reg  [TrigDataWidth-1:0]       rTrigGenAMPLOWLThreshold;
    reg  [TrigDataWidth-1:0]       rTrigGenPulseThreshold  ;
    reg  [TrigDataWidth-1:0]       rTrigGenDemodThreshold  ;
    reg  [4*8-1:0]                 rTrigGenFcode           ;
    reg  [16*8-1:0]                rTrigGenMFADDR          ;
    reg  [31:0]                    rTrigGenSFTimeout       ;
    reg  [31:0]                    rTrigGenLOGTime         ;

    reg  [TrigDataWidth-1:0]       rAdcData  ;

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigGenAMPHIGHThreshold <= 'd0;
            rTrigGenAMPLOWHThreshold <= 'd0;
            rTrigGenAMPLOWLThreshold <= 'd0;
            rTrigGenPulseThreshold   <= 'd0;
            rTrigGenDemodThreshold   <= 'd0;
            rTrigGenFcode            <= 'd0;
            rTrigGenMFADDR           <= 'd0;
            rTrigGenSFTimeout        <= 'd0;
            rAdcData              <= 'd0;
        end else begin
            if (iTrigGenUpdate) begin
                rTrigGenAMPHIGHThreshold <= iTrigGenAMPHIGHThreshold;
                rTrigGenAMPLOWHThreshold <= iTrigGenAMPLOWHThreshold;
                rTrigGenAMPLOWLThreshold <= iTrigGenAMPLOWLThreshold;
                rTrigGenPulseThreshold   <= iTrigGenPulseThreshold  ;
                rTrigGenDemodThreshold   <= iTrigGenDemodThreshold  ;
                rTrigGenFcode            <= iTrigGenFcode           ;
                rTrigGenMFADDR           <= iTrigGenMFADDR          ;
                rTrigGenSFTimeout        <= iTrigGenSFTimeout       ;
                rTrigGenLOGTime          <= iTrigGenLOGTime         ;
            end else begin
                rTrigGenAMPHIGHThreshold <= rTrigGenAMPHIGHThreshold;
                rTrigGenAMPLOWHThreshold <= rTrigGenAMPLOWHThreshold;
                rTrigGenAMPLOWLThreshold <= rTrigGenAMPLOWLThreshold;
                rTrigGenPulseThreshold   <= rTrigGenPulseThreshold  ;
                rTrigGenDemodThreshold   <= rTrigGenDemodThreshold  ;
                rTrigGenFcode            <= rTrigGenFcode           ;
                rTrigGenMFADDR           <= rTrigGenMFADDR          ;
                rTrigGenSFTimeout        <= rTrigGenSFTimeout       ;
                rTrigGenLOGTime          <= rTrigGenLOGTime         ;
            end

            rAdcData <= iAdcData;
        end
    end




    always @ (posedge iTrigClk) begin
        rTrigOut[`TrigEXT         ]    <= 1'b0             ;
        rTrigOut[`TrigAMPHIGH     ]    <= rTrigAMPHIGH     ;
    end

    assign oTrigOut         = rTrigOut;
    assign oTrigOutData     = rAdcData;

endmodule
