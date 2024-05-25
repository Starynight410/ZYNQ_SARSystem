`timescale 1ns / 1ps
module TriggerMux
#
(
    parameter TrigDataWidth = 16,
    parameter TrigStatusNum = 2
)
(
    input                            iTrigClk,
    input                            iTrigRstn,

    // TriggerGen to TriggerMux
    input  [TrigStatusNum-1:0]       iTrigIn, 
    input  [TrigDataWidth-1:0]       iTrigInData,
    
    // TriggerMux to TriggerMemCtrl
    output [0:0]                     oTrigOut,
    output [TrigDataWidth-1:0]       oTrigOutData,
    output [TrigStatusNum-1:0]       oTrigOutOrigin,

    // TriggerAxil to TriggerMux
    input  [TrigStatusNum-1:0]       iTrigMuxEnableMask, 
    input  [TrigStatusNum-1:0]       iTrigMuxAndMask, 
    input  [TrigStatusNum-1:0]       iTrigMuxOrMask, 
    input  [0:0]                     iTrigMuxSel,
    input  [0:0]                     iTrigMuxUpdate
);

    reg    [TrigStatusNum-1:0]       rTrigMuxEnableMask;
    reg    [TrigStatusNum-1:0]       rTrigMuxAndMask;
    reg    [TrigStatusNum-1:0]       rTrigMuxOrMask;
    reg    [0:0]                     rTrigMuxSel;

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigMuxEnableMask <= 'd0;
            rTrigMuxAndMask    <= 'd0;
            rTrigMuxOrMask     <= 'd0;
            rTrigMuxSel        <= 'd0;
        end else begin
            if (iTrigMuxUpdate) begin
                rTrigMuxEnableMask <= iTrigMuxEnableMask ;
                rTrigMuxAndMask    <= iTrigMuxAndMask    ;
                rTrigMuxOrMask     <= iTrigMuxOrMask     ;
                rTrigMuxSel        <= iTrigMuxSel        ;
            end else begin
                rTrigMuxEnableMask <= rTrigMuxEnableMask ;
                rTrigMuxAndMask    <= rTrigMuxAndMask    ;
                rTrigMuxOrMask     <= rTrigMuxOrMask     ;
                rTrigMuxSel        <= rTrigMuxSel        ;
            end
        end
    end

    localparam DelayCnt = 5;

    reg    [TrigStatusNum-1:0]       rTrigInEnable;
    reg    [0:0]                     rTrigInAnd; 
    reg    [0:0]                     rTrigInOr; 

    reg    [0:0]                     rTrigOut;
    reg    [TrigStatusNum-1:0]       rTrigOutOrigin;
    reg    [TrigDataWidth-1:0]       rTrigOutData;

    reg    [TrigDataWidth*DelayCnt-1:0]     rTrigInData;

    reg    [TrigStatusNum-1:0]       rTrigIn_D1;
    reg    [TrigStatusNum-1:0]       rTrigIn_D2;
    reg    [TrigStatusNum-1:0]       rTrigIn_D3;
    reg    [TrigStatusNum-1:0]       rTrigIn_D4;

    always @(posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigInEnable <= 'd0;
            rTrigIn_D1 <= 'd0;
        end else begin
            rTrigInEnable <= iTrigIn & rTrigMuxEnableMask;
            rTrigIn_D1 <= iTrigIn;
        end
    end

    always @(posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigInAnd <= 'd0;
            rTrigInOr <= 'd0;
            rTrigIn_D2 <= 'd0;
            rTrigIn_D3 <= 'd0;
            rTrigIn_D4 <= 'd0;
        end else begin
            rTrigInAnd <= &(rTrigInEnable & rTrigMuxAndMask);
            rTrigInOr <= |(rTrigInEnable & rTrigMuxOrMask);
            rTrigIn_D2 <= rTrigIn_D1;
        end
    end

    always @(posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigOut       <= 'd0;
            rTrigOutOrigin <= 'd0;
        end else begin
            rTrigOut       <= (rTrigMuxSel == 1'b1) ? rTrigInAnd : rTrigInOr;
            rTrigOutOrigin <= rTrigIn_D2;
        end
    end

    always @(posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigOutData <= 'd0;
        end else begin
            rTrigOutData <= iTrigInData; //rTrigInData[TrigDataWidth*DelayCnt-1:TrigDataWidth*(DelayCnt-1)];
        end
    end

    assign oTrigOut          = rTrigOut;
    assign oTrigOutOrigin    = rTrigOutOrigin;
    assign oTrigOutData      = rTrigOutData;

endmodule
