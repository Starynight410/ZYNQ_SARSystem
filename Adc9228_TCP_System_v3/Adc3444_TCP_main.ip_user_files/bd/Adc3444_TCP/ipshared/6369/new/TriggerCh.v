`timescale 1ns / 1ps
module TriggerCh
#
(
    parameter AXI_HPorACP          = 1, // 1 means hp port, 0 means acp port
    /*
    * AXI-lite slave interface
    */
    parameter AXIL_ADDR_WIDTH      = 32,
    parameter AXIL_DATA_WIDTH      = 32,
    parameter AXIL_STRB_WIDTH      = AXIL_DATA_WIDTH/8,
    /*
    * AXI master interface
    */
    parameter AXI_ID_WIDTH         = 2 ,
    parameter AXI_ADDR_WIDTH       = 32,
    parameter AXI_DATA_WIDTH       = 64,
    parameter AXI_MAX_BURST_LEN    = 16,
    parameter AXI_STRB_WIDTH       = AXI_DATA_WIDTH/8,
    parameter AXI_ARUSER_WIDTH     = 5,
    parameter AXI_AWUSER_WIDTH     = 5,

    parameter TrigDataWidth        = 16,
    parameter TrigByteWidth        = TrigDataWidth/8,
    parameter TrigStatusNum        = 2,
    parameter TrigDDRSpace         = 24 // 10 = 2^10-1 1KB
)
(
    input  wire                         s_axil_clk    ,
    input  wire                         s_axil_rstn    ,

    input                               iTrigClk      ,
    input                               iTrigRstn     ,

    input  [TrigDataWidth-1:0]          iAdcData      ,
    input  wire                         iAdcData_Tri,

    output                              oStateToWAITIntr  ,
    output                              oStateToTDIntr    ,
    output                              oStateToFINISHIntr,

    /*
    * AXI-lite slave interface
    */
    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_awaddr ,
    input  wire [2:0]                   s_axil_awprot ,
    input  wire                         s_axil_awvalid,
    output wire                         s_axil_awready,
    input  wire [AXIL_DATA_WIDTH-1:0]   s_axil_wdata  ,
    input  wire [AXIL_STRB_WIDTH-1:0]   s_axil_wstrb  ,
    input  wire                         s_axil_wvalid ,
    output wire                         s_axil_wready ,
    output wire [1:0]                   s_axil_bresp  ,
    output wire                         s_axil_bvalid ,
    input  wire                         s_axil_bready ,
    input  wire [AXIL_ADDR_WIDTH-1:0]   s_axil_araddr ,
    input  wire [2:0]                   s_axil_arprot ,
    input  wire                         s_axil_arvalid,
    output wire                         s_axil_arready,
    output wire [AXIL_DATA_WIDTH-1:0]   s_axil_rdata  ,
    output wire [1:0]                   s_axil_rresp  ,
    output wire                         s_axil_rvalid ,
    input  wire                         s_axil_rready ,
    

    output wire                         m_axi_clk    ,
    output wire                         m_axi_rstn    ,
    /*
    * AXI master interface
    */
    output wire [AXI_ID_WIDTH-1:0]      m_axi_awid   ,
    output wire [AXI_ADDR_WIDTH-1:0]    m_axi_awaddr ,
    output wire [7:0]                   m_axi_awlen  ,
    output wire [2:0]                   m_axi_awsize ,
    output wire [1:0]                   m_axi_awburst,
    output wire                         m_axi_awlock ,
    output wire [3:0]                   m_axi_awcache,
    output wire [2:0]                   m_axi_awprot ,
    
    output wire [3:0]                   m_axi_awqos  ,
    output wire [AXI_AWUSER_WIDTH-1:0]  m_axi_awuser ,
    
    output wire                         m_axi_awvalid,
    input wire                          m_axi_awready,
    output wire [AXI_DATA_WIDTH-1:0]    m_axi_wdata  ,
    output wire [AXI_STRB_WIDTH-1:0]    m_axi_wstrb  ,
    output wire                         m_axi_wlast  ,
    
    output wire                         m_axi_wvalid ,
    input wire                          m_axi_wready ,
    input wire  [AXI_ID_WIDTH-1:0]      m_axi_bid    ,
    input wire  [1:0]                   m_axi_bresp  ,
    
    
    input wire                          m_axi_bvalid ,
    output wire                         m_axi_bready ,
    output wire [AXI_ID_WIDTH-1:0]      m_axi_arid   ,
    output wire [AXI_ADDR_WIDTH-1:0]    m_axi_araddr ,
    output wire [7:0]                   m_axi_arlen  ,
    output wire [2:0]                   m_axi_arsize ,
    output wire [1:0]                   m_axi_arburst,
    output wire                         m_axi_arlock ,
    output wire [3:0]                   m_axi_arcache,
    output wire [2:0]                   m_axi_arprot ,
    
    output wire [3:0]                   m_axi_arqos  ,
    
    output wire [AXI_ARUSER_WIDTH-1:0]  m_axi_aruser ,
    
    output wire                         m_axi_arvalid,
    input wire                          m_axi_arready,
    input wire  [AXI_ID_WIDTH-1:0]      m_axi_rid    ,
    input wire  [AXI_DATA_WIDTH-1:0]    m_axi_rdata  ,
    input wire  [1:0]                   m_axi_rresp  ,
    input wire                          m_axi_rlast  ,
    
    input wire                          m_axi_rvalid ,
    output wire                         m_axi_rready 
);

    assign m_axi_clk = s_axil_clk;
    assign m_axi_rstn = s_axil_rstn;

    assign m_axi_awqos = 4'b0000;
    assign m_axi_arqos = 4'b0000;

    assign m_axi_awprot = 3'b000;
    assign m_axi_arprot = 3'b000;

    generate
        if (AXI_HPorACP == 0) begin
            assign m_axi_awuser = 5'b00001;
            assign m_axi_aruser = 5'b00001;
        end else begin
            assign m_axi_awuser = 5'b00000;
            assign m_axi_aruser = 5'b00000;
        end
    endgenerate


    wire [TrigStatusNum-1:0]       wTrigGenOut             ; 
    wire [TrigDataWidth-1:0]       wTrigGenOutData         ;
    
    wire [TrigDataWidth-1:0]       wTrigGenAMPHIGHThreshold;
    wire [TrigDataWidth-1:0]       wTrigGenAMPLOWHThreshold;
    wire [TrigDataWidth-1:0]       wTrigGenAMPLOWLThreshold;
    wire [TrigDataWidth-1:0]       wTrigGenPulseThreshold  ;
    wire [TrigDataWidth-1:0]       wTrigGenDemodThreshold  ;
    wire [4*8-1:0]                 wTrigGenFcode           ;
    wire [16*8-1:0]                wTrigGenMFADDR          ;
    wire [31:0]                    wTrigGenSFTimeout       ;
    wire [31:0]                    wTrigGenLOGTime         ;
    wire [0:0]                     wTrigGenUpdate          ;
    
    wire [0:0]                     wTrigMuxOut       ;
    wire [TrigDataWidth-1:0]       wTrigMuxOutData   ;
    wire [TrigStatusNum-1:0]       wTrigMuxOutOrigin ;
    
    wire [TrigStatusNum-1:0]       wTrigMuxEnableMask; 
    wire [TrigStatusNum-1:0]       wTrigMuxAndMask   ; 
    wire [TrigStatusNum-1:0]       wTrigMuxOrMask    ; 
    wire [0:0]                     wTrigMuxSel       ;
    wire [0:0]                     wTrigMuxUpdate    ;
    
    wire [0:0]                     wTrigDMAStart     ; 
    wire [31:0]                    wTrigDMAPosition  ;
    wire [31:0]                    wTrigDMALength    ;
    wire [31:0]                    wTrigDMAStartAddr ;
    wire [0:0]                     wTrigDMAUpdate    ;
    
    wire [31:0]                    wTrigStatus       ; 
    wire [31:0]                    wTrigToggle       ; 
    wire [TrigStatusNum-1:0]       wTrigVector       ;
    wire [TrigStatusNum-1:0]       wTrigVectorPending;

    wire [0:0]                     wTrigResetn       ;

ila_1 
ila_1_inst (
          .clk(iTrigClk), // input wire clk
      
          .probe0(iAdcData), // input wire [15:0]  probe0  
          .probe1(iAdcData_Tri), // input wire [0:0]  probe1 
          .probe2(oStateToFINISHIntr), // input wire [0:0]  probe2 
          .probe3(m_axi_wdata), // input wire [63:0]  probe3 
          .probe4(m_axi_wvalid), // input wire [0:0]  probe4 
          .probe5(m_axi_awaddr), // input wire [31:0]  probe5 
          .probe6(wTrigToggle), // input wire [0:0]  probe6
          
          .probe7(m_axi_awvalid),
          .probe8(m_axi_arready)
      );


      TriggerInterface #(
            .TrigDataWidth(TrigDataWidth),
            .TrigStatusNum(TrigStatusNum),
            .DATA_WIDTH(AXIL_DATA_WIDTH),
            .ADDR_WIDTH(AXIL_ADDR_WIDTH),
            .PIPELINE_OUTPUT(0)
      ) inst_TriggerInterface (
            .clk                      (s_axil_clk),
            .rst                      (~s_axil_rstn),

            .s_axil_awaddr            (s_axil_awaddr),
            .s_axil_awprot            (s_axil_awprot),
            .s_axil_awvalid           (s_axil_awvalid),
            .s_axil_awready           (s_axil_awready),
            .s_axil_wdata             (s_axil_wdata),
            .s_axil_wstrb             (s_axil_wstrb),
            .s_axil_wvalid            (s_axil_wvalid),
            .s_axil_wready            (s_axil_wready),
            .s_axil_bresp             (s_axil_bresp),
            .s_axil_bvalid            (s_axil_bvalid),
            .s_axil_bready            (s_axil_bready),
            .s_axil_araddr            (s_axil_araddr),
            .s_axil_arprot            (s_axil_arprot),
            .s_axil_arvalid           (s_axil_arvalid),
            .s_axil_arready           (s_axil_arready),
            .s_axil_rdata             (s_axil_rdata),
            .s_axil_rresp             (s_axil_rresp),
            .s_axil_rvalid            (s_axil_rvalid),
            .s_axil_rready            (s_axil_rready),

            .iTrigClk                 (iTrigClk),
            .iTrigRstn                (iTrigRstn),

            .oTrigGenAMPHIGHThreshold (wTrigGenAMPHIGHThreshold ),
            .oTrigGenAMPLOWHThreshold (wTrigGenAMPLOWHThreshold ),
            .oTrigGenAMPLOWLThreshold (wTrigGenAMPLOWLThreshold ),
            .oTrigGenPulseThreshold   (wTrigGenPulseThreshold   ),
            .oTrigGenDemodThreshold   (wTrigGenDemodThreshold   ),
            .oTrigGenFcode            (wTrigGenFcode            ),
            .oTrigGenMFADDR           (wTrigGenMFADDR           ),
            .oTrigGenSFTimeout        (wTrigGenSFTimeout        ),
            .oTrigGenLOGTime          (wTrigGenLOGTime          ),
            .oTrigGenUpdate           (wTrigGenUpdate           ),
            
            .oTrigMuxEnableMask       (wTrigMuxEnableMask       ),
            .oTrigMuxAndMask          (wTrigMuxAndMask          ),
            .oTrigMuxOrMask           (wTrigMuxOrMask           ),
            .oTrigMuxSel              (wTrigMuxSel              ),
            .oTrigMuxUpdate           (wTrigMuxUpdate           ),
            
            .oTrigDMAStart            (wTrigDMAStart            ),
            .oTrigDMAPosition         (wTrigDMAPosition         ),
            .oTrigDMALength           (wTrigDMALength           ),
            .oTrigDMAStartAddr        (wTrigDMAStartAddr        ),
            .oTrigDMAUpdate           (wTrigDMAUpdate           ),
            
            .iTrigStatus              (wTrigStatus              ),
            .iTrigToggle              (wTrigToggle              ),
            .iTrigVector              (wTrigVector              ),
            .iTrigVectorPending       (wTrigVectorPending       ),

            .oTrigResetn              (wTrigResetn              )
      );

      TriggerGen #(
            .TrigDataWidth(TrigDataWidth),
            .TrigStatusNum(TrigStatusNum)
      ) inst_TriggerGen (
            .iTrigClk                 (iTrigClk),
            .iTrigRstn                (iTrigRstn & wTrigResetn),


            .iAdcData                 (iAdcData),
            .rTrigAMPHIGH             (iAdcData_Tri),

            .oTrigOut                 (wTrigGenOut              ),
            .oTrigOutData             (wTrigGenOutData          ),
            
            .iTrigGenAMPHIGHThreshold (wTrigGenAMPHIGHThreshold ),
            .iTrigGenAMPLOWHThreshold (wTrigGenAMPLOWHThreshold ),
            .iTrigGenAMPLOWLThreshold (wTrigGenAMPLOWLThreshold ),
            .iTrigGenPulseThreshold   (wTrigGenPulseThreshold   ),
            .iTrigGenDemodThreshold   (wTrigGenDemodThreshold   ),
            .iTrigGenFcode            (wTrigGenFcode            ),
            .iTrigGenMFADDR           (wTrigGenMFADDR           ),
            .iTrigGenSFTimeout        (wTrigGenSFTimeout        ),
            .iTrigGenLOGTime          (wTrigGenLOGTime          ),
            .iTrigGenUpdate           (wTrigGenUpdate           )
      );


      TriggerMux #(
            .TrigDataWidth(TrigDataWidth),
            .TrigStatusNum(TrigStatusNum)
      ) inst_TriggerMux (
            .iTrigClk           (iTrigClk),
            .iTrigRstn          (iTrigRstn & wTrigResetn),

            .iTrigIn            (wTrigGenOut        ),
            .iTrigInData        (wTrigGenOutData    ),
            
            .oTrigOut           (wTrigMuxOut        ),
            .oTrigOutData       (wTrigMuxOutData    ),
            .oTrigOutOrigin     (wTrigMuxOutOrigin  ),
            
            .iTrigMuxEnableMask (wTrigMuxEnableMask ),
            .iTrigMuxAndMask    (wTrigMuxAndMask    ),
            .iTrigMuxOrMask     (wTrigMuxOrMask     ),
            .iTrigMuxSel        (wTrigMuxSel        ),
            .iTrigMuxUpdate     (wTrigMuxUpdate     )
      );

      TriggerDMA #(
            .TrigDataWidth(TrigDataWidth),
            .TrigStatusNum(TrigStatusNum),
            .TrigDDRSpace(TrigDDRSpace),
            .AXI_ID_WIDTH(AXI_ID_WIDTH),
            .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
            .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
            .AXI_MAX_BURST_LEN(AXI_MAX_BURST_LEN),
            .AXI_STRB_WIDTH(AXI_STRB_WIDTH),
            .AXI_ARUSER_WIDTH(AXI_ARUSER_WIDTH),
            .AXI_AWUSER_WIDTH(AXI_AWUSER_WIDTH)
      ) inst_TriggerDMA (
            .iTrigClk           (iTrigClk),
            .iTrigRstn          (iTrigRstn & wTrigResetn),

            .iTrigIn            (wTrigMuxOut        ),
            .iTrigInData        (wTrigMuxOutData    ),
            .iTrigOrigin        (wTrigMuxOutOrigin  ),
            
            .iTrigDMAStart      (wTrigDMAStart     ),
            .iTrigDMAPosition   (wTrigDMAPosition  ),
            .iTrigDMALength     (wTrigDMALength    ),
            .iTrigDMAStartAddr  (wTrigDMAStartAddr ),
            .iTrigDMAUpdate     (wTrigDMAUpdate    ),
            
            .oTrigStatus        (wTrigStatus       ),
            .oTrigToggle        (wTrigToggle       ),
            .oTrigVector        (wTrigVector       ),
            .oTrigVectorPending (wTrigVectorPending),
            
            .oStateToWAITIntr   (oStateToWAITIntr   ),
            .oStateToTDIntr     (oStateToTDIntr     ),
            .oStateToFINISHIntr (oStateToFINISHIntr ),

            .s_axil_clk         (s_axil_clk),
            .s_axil_rst         (~s_axil_rstn),

            // .m_axi_clk          (m_axi_clk),
            // .m_axi_rst          (m_axi_rst),
            .m_axi_awid         (m_axi_awid),
            .m_axi_awaddr       (m_axi_awaddr),
            .m_axi_awlen        (m_axi_awlen),
            .m_axi_awsize       (m_axi_awsize),
            .m_axi_awburst      (m_axi_awburst),
            .m_axi_awlock       (m_axi_awlock),
            .m_axi_awcache      (m_axi_awcache),
            // .m_axi_awprot       (m_axi_awprot),
            // .m_axi_awqos        (m_axi_awqos),
            // .m_axi_awuser       (m_axi_awuser),
            .m_axi_awvalid      (m_axi_awvalid),
            .m_axi_awready      (m_axi_awready),
            .m_axi_wdata        (m_axi_wdata),
            .m_axi_wstrb        (m_axi_wstrb),
            .m_axi_wlast        (m_axi_wlast),
            .m_axi_wvalid       (m_axi_wvalid),
            .m_axi_wready       (m_axi_wready),
            .m_axi_bid          (m_axi_bid),
            .m_axi_bresp        (m_axi_bresp),
            .m_axi_bvalid       (m_axi_bvalid),
            .m_axi_bready       (m_axi_bready),
            .m_axi_arid         (m_axi_arid),
            .m_axi_araddr       (m_axi_araddr),
            .m_axi_arlen        (m_axi_arlen),
            .m_axi_arsize       (m_axi_arsize),
            .m_axi_arburst      (m_axi_arburst),
            .m_axi_arlock       (m_axi_arlock),
            .m_axi_arcache      (m_axi_arcache),
            // .m_axi_arprot       (m_axi_arprot),
            // .m_axi_arqos        (m_axi_arqos),
            // .m_axi_aruser       (m_axi_aruser),
            .m_axi_arvalid      (m_axi_arvalid),
            .m_axi_arready      (m_axi_arready),
            .m_axi_rid          (m_axi_rid),
            .m_axi_rdata        (m_axi_rdata),
            .m_axi_rresp        (m_axi_rresp),
            .m_axi_rlast        (m_axi_rlast),
            .m_axi_rvalid       (m_axi_rvalid),
            .m_axi_rready       (m_axi_rready)
      );

endmodule
