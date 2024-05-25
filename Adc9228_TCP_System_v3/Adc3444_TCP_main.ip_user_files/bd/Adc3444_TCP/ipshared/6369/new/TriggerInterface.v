/*

Copyright (c) 2018 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001

`timescale 1ns / 1ps

`define _TrigGenAMPHIGHThreshold 8'h00
`define _TrigGenAMPLOWHThreshold 8'h01
`define _TrigGenAMPLOWLThreshold 8'h02
`define _TrigGenPulseThreshold   8'h03
`define _TrigGenDemodThreshold   8'h04
`define _TrigGenSFTimeout        8'h05
`define _TrigGenUpdate           8'h06
`define _TrigGenFcode0_7         8'h07
`define _TrigGenMFADDR0_1        8'h08
`define _TrigGenMFADDR2_3        8'h09
`define _TrigGenMFADDR4_5        8'h0A
`define _TrigGenMFADDR6_7        8'h0B
`define _TrigGenLOGTime          8'h0C

`define _TrigMuxEnableMask       8'h10
`define _TrigMuxAndMask          8'h11
`define _TrigMuxOrMask           8'h12
`define _TrigMuxSel              8'h13
`define _TrigMuxUpdate           8'h14

`define _TrigDMAStart            8'h20
`define _TrigDMAPosition         8'h21
`define _TrigDMALength           8'h22
`define _TrigDMAStartAddr        8'h23
`define _TrigDMADDRSpace         8'h24
`define _TrigDMAUpdate           8'h25

`define _TrigStatus              8'h26
`define _TrigToggle              8'h27
`define _TrigVector              8'h28
`define _TrigVectorPending       8'h29


`define _TrigReset               8'h30

/*
 * AXI4-Lite RAM
 */
module TriggerInterface #
(
    parameter TrigDataWidth = 16,
    parameter TrigStatusNum = 32,
    // Width of data bus in bits
    parameter DATA_WIDTH = 32,
    // Width of address bus in bits
    parameter ADDR_WIDTH = 16,
    // Width of wstrb (width of data bus in words)
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    // Extra pipeline register on output
    parameter PIPELINE_OUTPUT = 0
)
(
    input  wire                      clk,
    input  wire                      rst,
    
    input  wire [ADDR_WIDTH-1:0]     s_axil_awaddr ,
    input  wire [2:0]                s_axil_awprot ,
    input  wire                      s_axil_awvalid,
    output wire                      s_axil_awready,
    input  wire [DATA_WIDTH-1:0]     s_axil_wdata  ,
    input  wire [STRB_WIDTH-1:0]     s_axil_wstrb  ,
    input  wire                      s_axil_wvalid ,
    output wire                      s_axil_wready ,
    output wire [1:0]                s_axil_bresp  ,
    output wire                      s_axil_bvalid ,
    input  wire                      s_axil_bready ,
    input  wire [ADDR_WIDTH-1:0]     s_axil_araddr ,
    input  wire [2:0]                s_axil_arprot ,
    input  wire                      s_axil_arvalid,
    output wire                      s_axil_arready,
    output wire [DATA_WIDTH-1:0]     s_axil_rdata  ,
    output wire [1:0]                s_axil_rresp  ,
    output wire                      s_axil_rvalid ,
    input  wire                      s_axil_rready ,

    input                            iTrigClk,
    input                            iTrigRstn,

    output [TrigDataWidth-1:0]       oTrigGenAMPHIGHThreshold,
    output [TrigDataWidth-1:0]       oTrigGenAMPLOWHThreshold,
    output [TrigDataWidth-1:0]       oTrigGenAMPLOWLThreshold,
    output [TrigDataWidth-1:0]       oTrigGenPulseThreshold  ,
    output [TrigDataWidth-1:0]       oTrigGenDemodThreshold  ,
    output [4*8-1:0]                 oTrigGenFcode           ,
    output [16*8-1:0]                oTrigGenMFADDR          ,
    output [31:0]                    oTrigGenSFTimeout       ,
    output [31:0]                    oTrigGenLOGTime         ,
    output [0:0]                     oTrigGenUpdate          ,
    
    output [TrigStatusNum-1:0]       oTrigMuxEnableMask      ,
    output [TrigStatusNum-1:0]       oTrigMuxAndMask         ,
    output [TrigStatusNum-1:0]       oTrigMuxOrMask          ,
    output [0:0]                     oTrigMuxSel             ,
    output [0:0]                     oTrigMuxUpdate          ,
    
    output [0:0]                     oTrigDMAStart           ,
    output [31:0]                    oTrigDMAPosition        ,
    output [31:0]                    oTrigDMALength          ,
    output [31:0]                    oTrigDMAStartAddr       ,
    output [0:0]                     oTrigDMAUpdate          ,
    
    input  [31:0]                    iTrigStatus             ,
    input  [31:0]                    iTrigToggle             ,
    input  [TrigStatusNum-1:0]       iTrigVector             ,
    input  [TrigStatusNum-1:0]       iTrigVectorPending      ,

    output                           oTrigResetn
);

    reg [TrigDataWidth-1:0]       rTrigGenAMPHIGHThreshold;
    reg [TrigDataWidth-1:0]       rTrigGenAMPLOWHThreshold;
    reg [TrigDataWidth-1:0]       rTrigGenAMPLOWLThreshold;
    reg [TrigDataWidth-1:0]       rTrigGenPulseThreshold  ;
    reg [TrigDataWidth-1:0]       rTrigGenDemodThreshold  ;
    reg [4*8-1:0]                 rTrigGenFcode           ;
    reg [16*8-1:0]                rTrigGenMFADDR          ;
    reg [31:0]                    rTrigGenSFTimeout       ;
    reg [31:0]                    rTrigGenLOGTime         ;
    reg [0:0]                     rTrigGenUpdate          ; 
    
    // TriggerAxil to TriggerMux
    reg [TrigStatusNum-1:0]       rTrigMuxEnableMask      ; 
    reg [TrigStatusNum-1:0]       rTrigMuxAndMask         ; 
    reg [TrigStatusNum-1:0]       rTrigMuxOrMask          ; 
    reg [0:0]                     rTrigMuxSel             ;
    reg [0:0]                     rTrigMuxUpdate          ;
    
    reg [0:0]                     rTrigDMAStart           ; 
    reg [31:0]                    rTrigDMAPosition        ;
    reg [31:0]                    rTrigDMALength          ;
    reg [31:0]                    rTrigDMAStartAddr       ;
    reg [31:0]                    rTrigDMADDRSpace        ;
    reg [0:0]                     rTrigDMAUpdate          ;

    reg [0:0]                     rTrigReset              ;

parameter VALID_ADDR_WIDTH = ADDR_WIDTH - $clog2(STRB_WIDTH);
parameter WORD_WIDTH = STRB_WIDTH;
parameter WORD_SIZE = DATA_WIDTH/WORD_WIDTH;

reg mem_wr_en;
reg mem_rd_en;

reg s_axil_awready_reg = 1'b0, s_axil_awready_next;
reg s_axil_wready_reg = 1'b0, s_axil_wready_next;
reg s_axil_bvalid_reg = 1'b0, s_axil_bvalid_next;
reg s_axil_arready_reg = 1'b0, s_axil_arready_next;
reg [DATA_WIDTH-1:0] s_axil_rdata_reg = {DATA_WIDTH{1'b0}}, s_axil_rdata_next;
reg s_axil_rvalid_reg = 1'b0, s_axil_rvalid_next;
reg [DATA_WIDTH-1:0] s_axil_rdata_pipe_reg = {DATA_WIDTH{1'b0}};
reg s_axil_rvalid_pipe_reg = 1'b0;

// (* RAM_STYLE="BLOCK" *)
// reg [DATA_WIDTH-1:0] mem[(2**VALID_ADDR_WIDTH)-1:0];

wire [VALID_ADDR_WIDTH-1:0] s_axil_awaddr_valid = s_axil_awaddr >> (ADDR_WIDTH - VALID_ADDR_WIDTH);
wire [VALID_ADDR_WIDTH-1:0] s_axil_araddr_valid = s_axil_araddr >> (ADDR_WIDTH - VALID_ADDR_WIDTH);

assign s_axil_awready = s_axil_awready_reg;
assign s_axil_wready = s_axil_wready_reg;
assign s_axil_bresp = 2'b00;
assign s_axil_bvalid = s_axil_bvalid_reg;
assign s_axil_arready = s_axil_arready_reg;
assign s_axil_rdata = PIPELINE_OUTPUT ? s_axil_rdata_pipe_reg : s_axil_rdata_reg;
assign s_axil_rresp = 2'b00;
assign s_axil_rvalid = PIPELINE_OUTPUT ? s_axil_rvalid_pipe_reg : s_axil_rvalid_reg;

// integer i, j;

// initial begin
//     // two nested loops for smaller number of iterations per loop
//     // workaround for synthesizer complaints about large loop counts
//     for (i = 0; i < 2**VALID_ADDR_WIDTH; i = i + 2**(VALID_ADDR_WIDTH/2)) begin
//         for (j = i; j < i + 2**(VALID_ADDR_WIDTH/2); j = j + 1) begin
//             mem[j] = 0;
//         end
//     end
// end

always @* begin
    mem_wr_en = 1'b0;

    s_axil_awready_next = 1'b0;
    s_axil_wready_next = 1'b0;
    s_axil_bvalid_next = s_axil_bvalid_reg && !s_axil_bready;

    if (s_axil_awvalid && s_axil_wvalid && (!s_axil_bvalid || s_axil_bready) && (!s_axil_awready && !s_axil_wready)) begin
        s_axil_awready_next = 1'b1;
        s_axil_wready_next = 1'b1;
        s_axil_bvalid_next = 1'b1;

        mem_wr_en = 1'b1;
    end
end

always @(posedge clk) begin
    if (rst) begin
        s_axil_awready_reg <= 1'b0;
        s_axil_wready_reg <= 1'b0;
        s_axil_bvalid_reg <= 1'b0;
    end else begin
        s_axil_awready_reg <= s_axil_awready_next;
        s_axil_wready_reg <= s_axil_wready_next;
        s_axil_bvalid_reg <= s_axil_bvalid_next;
    end

    // for (i = 0; i < WORD_WIDTH; i = i + 1) begin
    //     if (mem_wr_en && s_axil_wstrb[i]) begin
    //         mem[s_axil_awaddr_valid][WORD_SIZE*i +: WORD_SIZE] <= s_axil_wdata[WORD_SIZE*i +: WORD_SIZE];
    //     end
    // end
    if (rst) begin
        rTrigGenAMPHIGHThreshold <= 'd0;
        rTrigGenAMPLOWHThreshold <= 'd0;
        rTrigGenAMPLOWLThreshold <= 'd0;
        rTrigGenPulseThreshold   <= 'd0;
        rTrigGenDemodThreshold   <= 'd0;
        rTrigGenFcode            <= 'd0;
        rTrigGenMFADDR           <= 'd0;
        rTrigGenSFTimeout        <= 'd0;
        rTrigGenLOGTime          <= 'd0;
        rTrigGenUpdate           <= 'd0;

        rTrigMuxEnableMask       <= 'd0;
        rTrigMuxAndMask          <= 'd0;
        rTrigMuxOrMask           <= 'd0;
        rTrigMuxSel              <= 'd0;
        rTrigMuxUpdate           <= 'd0;

        rTrigDMAStart            <= 'd0;
        rTrigDMAPosition         <= 'd0;
        rTrigDMALength           <= 'd0;
        rTrigDMAStartAddr        <= 'd0;
        rTrigDMAUpdate           <= 'd0;

        rTrigReset               <= 'd0;
    end
    if (mem_wr_en) begin
                 if (s_axil_awaddr_valid[7:0] == `_TrigGenAMPHIGHThreshold ) begin rTrigGenAMPHIGHThreshold <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenAMPLOWHThreshold ) begin rTrigGenAMPLOWHThreshold <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenAMPLOWLThreshold ) begin rTrigGenAMPLOWLThreshold <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenPulseThreshold   ) begin rTrigGenPulseThreshold   <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenDemodThreshold   ) begin rTrigGenDemodThreshold   <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenSFTimeout        ) begin rTrigGenSFTimeout        <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenUpdate           ) begin rTrigGenUpdate           <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenFcode0_7         ) begin rTrigGenFcode            <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenMFADDR0_1        ) begin rTrigGenMFADDR[31:0]     <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenMFADDR2_3        ) begin rTrigGenMFADDR[63:32]    <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenMFADDR4_5        ) begin rTrigGenMFADDR[95:64]    <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenMFADDR6_7        ) begin rTrigGenMFADDR[127:96]   <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigGenLOGTime          ) begin rTrigGenLOGTime          <= s_axil_wdata;

        end else if (s_axil_awaddr_valid[7:0] == `_TrigMuxEnableMask       ) begin rTrigMuxEnableMask       <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigMuxAndMask          ) begin rTrigMuxAndMask          <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigMuxOrMask           ) begin rTrigMuxOrMask           <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigMuxSel              ) begin rTrigMuxSel              <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigMuxUpdate           ) begin rTrigMuxUpdate           <= s_axil_wdata;

        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMAStart            ) begin rTrigDMAStart            <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMAPosition         ) begin rTrigDMAPosition         <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMALength           ) begin rTrigDMALength           <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMAStartAddr        ) begin rTrigDMAStartAddr        <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMADDRSpace         ) begin rTrigDMADDRSpace         <= s_axil_wdata;
        end else if (s_axil_awaddr_valid[7:0] == `_TrigDMAUpdate           ) begin rTrigDMAUpdate           <= s_axil_wdata;

        end else if (s_axil_awaddr_valid[7:0] == `_TrigReset               ) begin rTrigReset               <= s_axil_wdata[0];
        end
    end else begin
        rTrigGenUpdate <= 'd0;
        rTrigMuxUpdate <= 'd0;
        rTrigDMAUpdate <= 'd0;

        rTrigReset     <= 'd0;
    end
end

always @* begin
    mem_rd_en = 1'b0;

    s_axil_arready_next = 1'b0;
    s_axil_rvalid_next = s_axil_rvalid_reg && !(s_axil_rready || (PIPELINE_OUTPUT && !s_axil_rvalid_pipe_reg));

    if (s_axil_arvalid && (!s_axil_rvalid || s_axil_rready || (PIPELINE_OUTPUT && !s_axil_rvalid_pipe_reg)) && (!s_axil_arready)) begin
        s_axil_arready_next = 1'b1;
        s_axil_rvalid_next = 1'b1;

        mem_rd_en = 1'b1;
    end
end

always @(posedge clk) begin
    if (rst) begin
        s_axil_arready_reg <= 1'b0;
        s_axil_rvalid_reg <= 1'b0;
        s_axil_rvalid_pipe_reg <= 1'b0;
    end else begin
        s_axil_arready_reg <= s_axil_arready_next;
        s_axil_rvalid_reg <= s_axil_rvalid_next;

        if (!s_axil_rvalid_pipe_reg || s_axil_rready) begin
            s_axil_rvalid_pipe_reg <= s_axil_rvalid_reg;
        end
    end
    if (mem_rd_en) begin
                 if (s_axil_araddr_valid[7:0] == `_TrigGenAMPHIGHThreshold ) begin s_axil_rdata_reg <= rTrigGenAMPHIGHThreshold;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenAMPLOWHThreshold ) begin s_axil_rdata_reg <= rTrigGenAMPLOWHThreshold;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenAMPLOWLThreshold ) begin s_axil_rdata_reg <= rTrigGenAMPLOWLThreshold;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenPulseThreshold   ) begin s_axil_rdata_reg <= rTrigGenPulseThreshold  ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenDemodThreshold   ) begin s_axil_rdata_reg <= rTrigGenDemodThreshold  ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenSFTimeout        ) begin s_axil_rdata_reg <= rTrigGenSFTimeout       ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenUpdate           ) begin s_axil_rdata_reg <= rTrigGenUpdate          ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenFcode0_7         ) begin s_axil_rdata_reg <= rTrigGenFcode           ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenMFADDR0_1        ) begin s_axil_rdata_reg <= rTrigGenMFADDR[31:0]    ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenMFADDR2_3        ) begin s_axil_rdata_reg <= rTrigGenMFADDR[63:32]   ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenMFADDR4_5        ) begin s_axil_rdata_reg <= rTrigGenMFADDR[95:64]   ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenMFADDR6_7        ) begin s_axil_rdata_reg <= rTrigGenMFADDR[127:96]  ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigGenLOGTime          ) begin s_axil_rdata_reg <= rTrigGenLOGTime         ;

        end else if (s_axil_araddr_valid[7:0] == `_TrigMuxEnableMask       ) begin s_axil_rdata_reg <= rTrigMuxEnableMask      ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigMuxAndMask          ) begin s_axil_rdata_reg <= rTrigMuxAndMask         ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigMuxOrMask           ) begin s_axil_rdata_reg <= rTrigMuxOrMask          ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigMuxSel              ) begin s_axil_rdata_reg <= rTrigMuxSel             ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigMuxUpdate           ) begin s_axil_rdata_reg <= rTrigMuxUpdate          ;

        end else if (s_axil_araddr_valid[7:0] == `_TrigDMAStart            ) begin s_axil_rdata_reg <= rTrigDMAStart           ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigDMAPosition         ) begin s_axil_rdata_reg <= rTrigDMAPosition        ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigDMALength           ) begin s_axil_rdata_reg <= rTrigDMALength          ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigDMAStartAddr        ) begin s_axil_rdata_reg <= rTrigDMAStartAddr       ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigDMADDRSpace         ) begin s_axil_rdata_reg <= rTrigDMADDRSpace        ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigDMAUpdate           ) begin s_axil_rdata_reg <= rTrigDMAUpdate          ;

        end else if (s_axil_araddr_valid[7:0] == `_TrigStatus              ) begin s_axil_rdata_reg <= iTrigStatus             ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigToggle              ) begin s_axil_rdata_reg <= iTrigToggle             ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigVector              ) begin s_axil_rdata_reg <= iTrigVector             ;
        end else if (s_axil_araddr_valid[7:0] == `_TrigVectorPending       ) begin s_axil_rdata_reg <= iTrigVectorPending      ;

        end else begin s_axil_rdata_reg   <= 32'd0;
        end
    end

    if (!s_axil_rvalid_pipe_reg || s_axil_rready) begin
        s_axil_rdata_pipe_reg <= s_axil_rdata_reg;
    end
end

    reg [TrigDataWidth-1:0]       raxiTrigGenAMPHIGHThreshold;
    reg [TrigDataWidth-1:0]       raxiTrigGenAMPLOWHThreshold;
    reg [TrigDataWidth-1:0]       raxiTrigGenAMPLOWLThreshold;
    reg [TrigDataWidth-1:0]       raxiTrigGenPulseThreshold  ;
    reg [TrigDataWidth-1:0]       raxiTrigGenDemodThreshold  ;
    reg [4*8-1:0]                 raxiTrigGenFcode           ;
    reg [16*8-1:0]                raxiTrigGenMFADDR          ;
    reg [31:0]                    raxiTrigGenSFTimeout       ;
    reg [31:0]                    raxiTrigGenLOGTime         ;
    reg [2:0]                     raxiTrigGenUpdateCnt       ;

    reg [TrigStatusNum-1:0]       raxiTrigMuxEnableMask      ; 
    reg [TrigStatusNum-1:0]       raxiTrigMuxAndMask         ; 
    reg [TrigStatusNum-1:0]       raxiTrigMuxOrMask          ; 
    reg [0:0]                     raxiTrigMuxSel             ;
    reg [2:0]                     raxiTrigMuxUpdateCnt       ;

    reg [0:0]                     raxiTrigDMAStart           ; 
    reg [31:0]                    raxiTrigDMAPosition        ;
    reg [31:0]                    raxiTrigDMALength          ;
    reg [31:0]                    raxiTrigDMAStartAddr       ;
    reg [31:0]                    raxiTrigDMADDRSpace        ;
    reg [2:0]                     raxiTrigDMAUpdateCnt       ;


    reg [TrigDataWidth-1:0]       roTrigGenAMPHIGHThreshold;
    reg [TrigDataWidth-1:0]       roTrigGenAMPLOWHThreshold;
    reg [TrigDataWidth-1:0]       roTrigGenAMPLOWLThreshold;
    reg [TrigDataWidth-1:0]       roTrigGenPulseThreshold  ;
    reg [TrigDataWidth-1:0]       roTrigGenDemodThreshold  ;
    reg [4*8-1:0]                 roTrigGenFcode           ;
    reg [16*8-1:0]                roTrigGenMFADDR          ;
    reg [31:0]                    roTrigGenSFTimeout       ;
    reg [31:0]                    roTrigGenLOGTime         ;
    reg [0:0]                     roTrigGenUpdate          ; 
    wire[0:0]                     woTrigGenUpdate          ; 
    
    reg [TrigStatusNum-1:0]       roTrigMuxEnableMask      ; 
    reg [TrigStatusNum-1:0]       roTrigMuxAndMask         ; 
    reg [TrigStatusNum-1:0]       roTrigMuxOrMask          ; 
    reg [0:0]                     roTrigMuxSel             ;
    reg [0:0]                     roTrigMuxUpdate          ;
    wire[0:0]                     woTrigMuxUpdate          ;
    
    reg [0:0]                     roTrigDMAStart           ; 
    reg [31:0]                    roTrigDMAPosition        ;
    reg [31:0]                    roTrigDMALength          ;
    reg [31:0]                    roTrigDMAStartAddr       ;
    reg [31:0]                    roTrigDMADDRSpace        ;
    reg [0:0]                     roTrigDMAUpdate          ;
    wire[0:0]                     woTrigDMAUpdate          ;

    always @ (posedge clk) begin
        if ((rTrigGenUpdate == 1) && (raxiTrigGenUpdateCnt == 3'd0)) begin
            raxiTrigGenAMPHIGHThreshold <= rTrigGenAMPHIGHThreshold;
            raxiTrigGenAMPLOWHThreshold <= rTrigGenAMPLOWHThreshold;
            raxiTrigGenAMPLOWLThreshold <= rTrigGenAMPLOWLThreshold;
            raxiTrigGenPulseThreshold   <= rTrigGenPulseThreshold  ;
            raxiTrigGenDemodThreshold   <= rTrigGenDemodThreshold  ;
            raxiTrigGenFcode            <= rTrigGenFcode           ;
            raxiTrigGenMFADDR           <= rTrigGenMFADDR          ;
            raxiTrigGenSFTimeout        <= rTrigGenSFTimeout       ;
            raxiTrigGenLOGTime          <= rTrigGenLOGTime         ;

            raxiTrigGenUpdateCnt        <= 3'd4;
        end else if (rst) begin
            raxiTrigGenAMPHIGHThreshold <= 16'h1500   ;
            raxiTrigGenAMPLOWHThreshold <= 16'h200    ;
            raxiTrigGenAMPLOWLThreshold <= 16'h100    ;
            raxiTrigGenPulseThreshold   <= 16'h500    ;
            raxiTrigGenDemodThreshold   <= 16'h500    ;
            raxiTrigGenFcode            <= {8{4'hC}}       ;
            raxiTrigGenMFADDR           <= {8{12'h000}}    ;
            raxiTrigGenSFTimeout        <= 4*24*1000-1;
            raxiTrigGenLOGTime          <= 60*10-1         ;

            raxiTrigGenUpdateCnt        <= 3'd0;
        end else begin
            raxiTrigGenAMPHIGHThreshold <= raxiTrigGenAMPHIGHThreshold;
            raxiTrigGenAMPLOWHThreshold <= raxiTrigGenAMPLOWHThreshold;
            raxiTrigGenAMPLOWLThreshold <= raxiTrigGenAMPLOWLThreshold;
            raxiTrigGenPulseThreshold   <= raxiTrigGenPulseThreshold  ;
            raxiTrigGenDemodThreshold   <= raxiTrigGenDemodThreshold  ;
            raxiTrigGenFcode            <= raxiTrigGenFcode           ;
            raxiTrigGenMFADDR           <= raxiTrigGenMFADDR          ;
            raxiTrigGenSFTimeout        <= raxiTrigGenSFTimeout       ;
            raxiTrigGenLOGTime          <= raxiTrigGenLOGTime         ;

            raxiTrigGenUpdateCnt        <= (raxiTrigGenUpdateCnt == 3'd0) ? 3'd0 : (raxiTrigGenUpdateCnt - 1);
        end
    end

    always @ (posedge clk) begin
        if ((rTrigMuxUpdate == 1) && (raxiTrigGenUpdateCnt == 3'd0)) begin
            raxiTrigMuxEnableMask <= rTrigMuxEnableMask;
            raxiTrigMuxAndMask    <= rTrigMuxAndMask   ;
            raxiTrigMuxOrMask     <= rTrigMuxOrMask    ;
            raxiTrigMuxSel        <= rTrigMuxSel       ;

            raxiTrigMuxUpdateCnt        <= 3'd4;
        end else if (rst) begin
            raxiTrigMuxEnableMask <= 32'h00000000;
            raxiTrigMuxAndMask    <= 32'h00000000;
            raxiTrigMuxOrMask     <= 32'h00000000;
            raxiTrigMuxSel        <= 1'b0;

            raxiTrigMuxUpdateCnt        <= 3'd0;
        end else begin
            raxiTrigMuxEnableMask <= raxiTrigMuxEnableMask ;
            raxiTrigMuxAndMask    <= raxiTrigMuxAndMask    ;
            raxiTrigMuxOrMask     <= raxiTrigMuxOrMask     ;
            raxiTrigMuxSel        <= raxiTrigMuxSel        ;
            
            raxiTrigMuxUpdateCnt        <= (raxiTrigMuxUpdateCnt == 3'd0) ? 3'd0 : (raxiTrigMuxUpdateCnt - 1);
        end
    end

    always @ (posedge clk) begin
        if ((rTrigDMAUpdate == 1) && (raxiTrigDMAUpdateCnt == 3'd0)) begin
            raxiTrigDMAStart     <= rTrigDMAStart    ;
            raxiTrigDMAPosition  <= rTrigDMAPosition ;
            raxiTrigDMALength    <= rTrigDMALength   ;
            raxiTrigDMAStartAddr <= rTrigDMAStartAddr;
            raxiTrigDMADDRSpace  <= rTrigDMADDRSpace ;

            raxiTrigDMAUpdateCnt        <= 3'd4;
        end else if (rst) begin
            raxiTrigDMAStart          <= 1'b0;
            raxiTrigDMAPosition       <= 32'h00000200;
            raxiTrigDMALength         <= 32'h00000400;
            raxiTrigDMAStartAddr      <= 32'h00000000;
            raxiTrigDMADDRSpace       <= 32'h00000400;

            raxiTrigDMAUpdateCnt        <= 3'd0;
        end else begin
            raxiTrigDMAStart     <= raxiTrigDMAStart    ;
            raxiTrigDMAPosition  <= raxiTrigDMAPosition ;
            raxiTrigDMALength    <= raxiTrigDMALength   ;
            raxiTrigDMAStartAddr <= raxiTrigDMAStartAddr;
            raxiTrigDMADDRSpace  <= raxiTrigDMADDRSpace ;
            
            raxiTrigDMAUpdateCnt        <= (raxiTrigDMAUpdateCnt == 3'd0) ? 3'd0 : (raxiTrigDMAUpdateCnt - 1);
        end
    end


    PulseConvert #(
            .NumberOfSpan(16)
        ) inst_woTrigGenUpdate (
            .iClk0  (clk),
            .iRstn0 (!rst),
            .Pulse0 (rTrigGenUpdate),
            .iClk1  (iTrigClk),
            .iRstn1 (iTrigRstn),
            .Pulse1 (woTrigGenUpdate)
        );

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            roTrigGenAMPHIGHThreshold <= 16'h1500   ;
            roTrigGenAMPLOWHThreshold <= 16'h200    ;
            roTrigGenAMPLOWLThreshold <= 16'h100    ;
            roTrigGenPulseThreshold   <= 16'h500    ;
            roTrigGenDemodThreshold   <= 16'h500    ;
            roTrigGenFcode            <= {8{4'hC}}       ;
            roTrigGenMFADDR           <= {8{12'h000}}    ;
            roTrigGenSFTimeout        <= 4*24*1000-1;
            roTrigGenLOGTime          <= 60*10-1         ;
            roTrigGenUpdate           <= 1'b0       ;
        end else begin
            if (woTrigGenUpdate == 1) begin
                roTrigGenAMPHIGHThreshold <= raxiTrigGenAMPHIGHThreshold;
                roTrigGenAMPLOWHThreshold <= raxiTrigGenAMPLOWHThreshold;
                roTrigGenAMPLOWLThreshold <= raxiTrigGenAMPLOWLThreshold;
                roTrigGenPulseThreshold   <= raxiTrigGenPulseThreshold  ;
                roTrigGenDemodThreshold   <= raxiTrigGenDemodThreshold  ;
                roTrigGenFcode            <= raxiTrigGenFcode           ;
                roTrigGenMFADDR           <= raxiTrigGenMFADDR          ;
                roTrigGenSFTimeout        <= raxiTrigGenSFTimeout       ;
                roTrigGenLOGTime          <= raxiTrigGenLOGTime         ;
                roTrigGenUpdate           <= 1'b1;
            end else begin
                roTrigGenUpdate           <= 1'b0;
            end
        end

    end

    PulseConvert #(
            .NumberOfSpan(16)
        ) inst_woTrigMuxUpdate (
            .iClk0  (clk),
            .iRstn0 (!rst),
            .Pulse0 (rTrigMuxUpdate),
            .iClk1  (iTrigClk),
            .iRstn1 (iTrigRstn),
            .Pulse1 (woTrigMuxUpdate)
        );

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            roTrigMuxEnableMask <= 32'h00000000;
            roTrigMuxAndMask    <= 32'h00000000;
            roTrigMuxOrMask     <= 32'h00000000;
            roTrigMuxSel        <= 1'b0;
            roTrigMuxUpdate     <= 1'b0;
        end else begin
            if (woTrigMuxUpdate == 1) begin
                roTrigMuxEnableMask <= raxiTrigMuxEnableMask;
                roTrigMuxAndMask    <= raxiTrigMuxAndMask   ;
                roTrigMuxOrMask     <= raxiTrigMuxOrMask    ;
                roTrigMuxSel        <= raxiTrigMuxSel       ;
                roTrigMuxUpdate     <= 1'b1;
            end else begin
                roTrigMuxUpdate     <= 1'b0;
            end
        end
    end

    PulseConvert #(
            .NumberOfSpan(16)
        ) inst_woTrigDMAUpdate (
            .iClk0  (clk),
            .iRstn0 (!rst),
            .Pulse0 (rTrigDMAUpdate),
            .iClk1  (iTrigClk),
            .iRstn1 (iTrigRstn),
            .Pulse1 (woTrigDMAUpdate)
        );

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            roTrigDMAStart          <= 1'b0;
            roTrigDMAPosition       <= 32'h00000200;
            roTrigDMALength         <= 32'h00000400;
            roTrigDMAStartAddr      <= 32'h00000000;
            roTrigDMAUpdate         <= 1'b0;
            roTrigDMADDRSpace       <= 32'h00000400;
        end else begin
            if (woTrigDMAUpdate == 1) begin
                roTrigDMAStart     <= raxiTrigDMAStart    ;
                roTrigDMAPosition  <= raxiTrigDMAPosition ;
                roTrigDMALength    <= raxiTrigDMALength   ;
                roTrigDMAStartAddr <= raxiTrigDMAStartAddr;
                roTrigDMADDRSpace  <= raxiTrigDMADDRSpace ;
                roTrigDMAUpdate    <= 1'b1;
            end else begin
                roTrigDMAStart     <= 1'b0;
                roTrigDMAUpdate    <= 1'b0;
            end
        end

    end


    wire[0:0]                     woTrigResetn               ;
    reg [7:0]                     roTrigResetnSLR            ;
    reg [0:0]                     roTrigResetn               ;

    PulseConvert #(
            .NumberOfSpan(16)
        ) inst_woTrigResetn (
            .iClk0  (clk),
            .iRstn0 (!rst),
            .Pulse0 (rTrigReset),
            .iClk1  (iTrigClk),
            .iRstn1 (iTrigRstn),
            .Pulse1 (woTrigResetn)
        );

    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            roTrigResetnSLR <= 8'h00;
            roTrigResetn <= 'd1;
        end else begin
            if (woTrigResetn == 1) begin
                roTrigResetnSLR <= 8'h00;
            end else begin
                roTrigResetnSLR <= {roTrigResetnSLR[6:0], 1'b1};
            end
            roTrigResetn <= roTrigResetnSLR[7];
        end
    end

    assign oTrigGenAMPHIGHThreshold = roTrigGenAMPHIGHThreshold ;
    assign oTrigGenAMPLOWHThreshold = roTrigGenAMPLOWHThreshold ;
    assign oTrigGenAMPLOWLThreshold = roTrigGenAMPLOWLThreshold ;
    assign oTrigGenPulseThreshold   = roTrigGenPulseThreshold   ;
    assign oTrigGenDemodThreshold   = roTrigGenDemodThreshold   ;
    assign oTrigGenFcode            = roTrigGenFcode            ;
    assign oTrigGenMFADDR           = roTrigGenMFADDR           ;
    assign oTrigGenSFTimeout        = roTrigGenSFTimeout        ;
    assign oTrigGenLOGTime          = roTrigGenLOGTime          ;
    assign oTrigGenUpdate           = roTrigGenUpdate           ;

    assign oTrigMuxEnableMask       = roTrigMuxEnableMask       ;
    assign oTrigMuxAndMask          = roTrigMuxAndMask          ;
    assign oTrigMuxOrMask           = roTrigMuxOrMask           ;
    assign oTrigMuxSel              = roTrigMuxSel              ;
    assign oTrigMuxUpdate           = roTrigMuxUpdate           ;

    assign oTrigDMAStart            = roTrigDMAStart            ;
    assign oTrigDMAPosition         = roTrigDMAPosition         ;
    assign oTrigDMALength           = roTrigDMALength           ;
    assign oTrigDMAStartAddr        = roTrigDMAStartAddr        ;
    assign oTrigDMADDRSpace         = roTrigDMADDRSpace         ;
    assign oTrigDMAUpdate           = roTrigDMAUpdate           ;

    assign oTrigResetn               = roTrigResetn;

endmodule
