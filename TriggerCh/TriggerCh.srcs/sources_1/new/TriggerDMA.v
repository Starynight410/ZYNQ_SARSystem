`timescale 1ns / 1ps

module TriggerDMA
#
(
    parameter TrigDataWidth = 16,
    parameter TrigByteWidth = TrigDataWidth/8,
    parameter TrigStatusNum = 2,
    parameter TrigDDRSpace  = 24, // 10 = 2^10-1 1KB
    /*
    * AXI master interface
    */
    parameter AXI_ID_WIDTH         = 2 ,
    parameter AXI_ADDR_WIDTH       = 32,
    parameter AXI_DATA_WIDTH       = 64,
    parameter AXI_MAX_BURST_LEN    = 16,
    parameter AXI_STRB_WIDTH       = AXI_DATA_WIDTH/8,
    parameter AXI_ARUSER_WIDTH     = 5,
    parameter AXI_AWUSER_WIDTH     = 5
)
(
    input                            iTrigClk          ,
    input                            iTrigRstn         ,
    
    input  [0:0]                     iTrigIn           , 
    input  [TrigDataWidth-1:0]       iTrigInData       ,
    input  [TrigStatusNum-1:0]       iTrigOrigin       ,
    
    input  [0:0]                     iTrigDMAStart        , 
    input  [31:0]                    iTrigDMAPosition     ,
    input  [31:0]                    iTrigDMALength       ,
    input  [31:0]                    iTrigDMAStartAddr ,
    input  [0:0]                     iTrigDMAUpdate    ,
    
    output [31:0]                    oTrigStatus       , 
    output [31:0]                    oTrigToggle       , 
    output [TrigStatusNum-1:0]       oTrigVector       ,
    output [TrigStatusNum-1:0]       oTrigVectorPending,

    output                           oStateToWAITIntr  ,
    output                           oStateToTDIntr    ,
    output                           oStateToFINISHIntr,

    input                            s_axil_clk    ,
    input                            s_axil_rst    ,

    output wire                         m_axi_clk    ,
    output wire                         m_axi_rst    ,
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

    parameter TrigByteWidthClog2 = $clog2(TrigByteWidth);
    parameter AXItoTrigClog2 = $clog2(AXI_DATA_WIDTH/TrigDataWidth);


    reg [31:0]                       rTrigStatus; 
    reg [31:0]                       rTrigToggle; 
    reg [TrigStatusNum-1:0]          rTrigVector;
    reg [TrigStatusNum-1:0]          rTrigVectorPending;

    reg    [0:0]                     rTrigDMAStart;
    reg    [31:0]                    rTrigDMAPosition;
    reg    [31:0]                    rTrigDMALength;
    reg    [31:0]                    rTrigDMAStartAddr;
    
    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rTrigDMAStart        <= 'd0;
            rTrigDMAPosition     <= 'd0;
            rTrigDMALength       <= 'd0;
            rTrigDMAStartAddr <= 'd0;
        end else begin
            if (iTrigDMAUpdate) begin
                rTrigDMAStart        <= iTrigDMAStart       ;
                rTrigDMAPosition     <= iTrigDMAPosition    ;
                rTrigDMALength       <= iTrigDMALength      ;
                rTrigDMAStartAddr <= iTrigDMAStartAddr;
            end else begin
                rTrigDMAStart        <= rTrigDMAStart       ;
                rTrigDMAPosition     <= rTrigDMAPosition    ;
                rTrigDMALength       <= rTrigDMALength      ;
                rTrigDMAStartAddr <= rTrigDMAStartAddr;
            end

            if (rTrigDMAStart == 1) begin
                rTrigDMAStart <= 1'b0;
            end
        end
    end

    assign m_axi_clk = s_axil_clk;
    assign m_axi_rst = s_axil_rst;


    assign m_axi_awqos = 4'b0000;
    assign m_axi_arqos = 4'b0000;

    assign m_axi_awprot = 3'b000;
    assign m_axi_arprot = 3'b000;

    assign m_axi_awuser = 5'b00000;
    assign m_axi_aruser = 5'b00000;

    // Parameters
    // localparam AXI_DATA_WIDTH    = 16;
    // localparam AXI_ADDR_WIDTH    = 16;
    // localparam AXI_STRB_WIDTH    = (AXI_DATA_WIDTH/8);
    // localparam AXI_ID_WIDTH      = 8;
    // localparam AXI_MAX_BURST_LEN = 256;
    localparam AXIS_DATA_WIDTH   = AXI_DATA_WIDTH;
    localparam AXIS_KEEP_ENABLE  = (AXIS_DATA_WIDTH>8);
    localparam AXIS_KEEP_WIDTH   = (AXIS_DATA_WIDTH/8);
    localparam AXIS_LAST_ENABLE  = 1;
    localparam AXIS_ID_ENABLE    = 0;
    localparam AXIS_ID_WIDTH     = 8;
    localparam AXIS_DEST_ENABLE  = 0;
    localparam AXIS_DEST_WIDTH   = 8;
    localparam AXIS_USER_ENABLE  = 0;
    localparam AXIS_USER_WIDTH   = 1;
    localparam LEN_WIDTH         = 16;
    localparam TAG_WIDTH         = 8;
    localparam ENABLE_SG         = 0;
    localparam ENABLE_UNALIGNED  = 0;
    
    // Inputs
    wire                       s_axis_read_desc_valid  = 0;
    wire                       s_axis_read_desc_ready     ;
    wire [AXI_ADDR_WIDTH-1:0]  s_axis_read_desc_addr   = 0;
    wire [LEN_WIDTH-1:0]       s_axis_read_desc_len    = 0;
    wire [TAG_WIDTH-1:0]       s_axis_read_desc_tag    = 0;
    wire [AXIS_ID_WIDTH-1:0]   s_axis_read_desc_id     = 0;
    wire [AXIS_DEST_WIDTH-1:0] s_axis_read_desc_dest   = 0;
    wire [AXIS_USER_WIDTH-1:0] s_axis_read_desc_user   = 0;

    reg                        s_axis_write_desc_valid ;
    reg [AXI_ADDR_WIDTH-1:0]   s_axis_write_desc_addr  ;
    reg [LEN_WIDTH-1:0]        s_axis_write_desc_len   ;
    reg [TAG_WIDTH-1:0]        s_axis_write_desc_tag  ;

    wire                       s_axis_write_desc_ready;
    
    wire                       s_axis_write_data_tready ;
    wire                       s_axis_write_data_tvalid ;
    wire[AXIS_DATA_WIDTH-1:0]  s_axis_write_data_tdata  ;
    wire[AXIS_KEEP_WIDTH-1:0]  s_axis_write_data_tkeep  ;
    wire                       s_axis_write_data_tlast  ;

    wire                       m_axis_read_data_tvalid       ;
    wire                       m_axis_read_data_tready       ;
    wire [AXIS_DATA_WIDTH-1:0] m_axis_read_data_tdata        ;
    wire [AXIS_KEEP_WIDTH-1:0] m_axis_read_data_tkeep        ;
    wire                       m_axis_read_data_tlast        ;
    wire [AXIS_ID_WIDTH-1:0]   m_axis_read_data_tid          ;
    wire [AXIS_DEST_WIDTH-1:0] m_axis_read_data_tdest        ;
    wire [AXIS_USER_WIDTH-1:0] m_axis_read_data_tuser        ;

    wire [AXIS_ID_WIDTH-1:0]   s_axis_write_data_tid    = 0  ;
    wire [AXIS_DEST_WIDTH-1:0] s_axis_write_data_tdest  = 0  ;
    wire [AXIS_USER_WIDTH-1:0] s_axis_write_data_tuser  = 0  ;

    wire                       read_enable              = 0  ;
    wire                       write_enable             = 1  ;
    wire                       write_abort              = 0  ;
    
    // Outputs
    wire [TAG_WIDTH-1:0]       m_axis_read_desc_status_tag   ;
    wire                       m_axis_read_desc_status_valid ;

    wire                       m_axis_write_desc_status_valid;
    wire [LEN_WIDTH-1:0]       m_axis_write_desc_status_len  ;
    wire [TAG_WIDTH-1:0]       m_axis_write_desc_status_tag  ;
    wire [AXIS_ID_WIDTH-1:0]   m_axis_write_desc_status_id   ;
    wire [AXIS_DEST_WIDTH-1:0] m_axis_write_desc_status_dest ;
    wire [AXIS_USER_WIDTH-1:0] m_axis_write_desc_status_user ;


    reg [31:0]                  rTrigDataCounter    ;
    
    wire                        wCAPDone   = ((rTrigDataCounter == (rTrigDMALength + 1)) ? 1 : 0);

    wire                        wTDDone    = ((rTrigDataCounter == rTrigDMAPosition) ? 1 : 0) && iTrigIn;

    reg  [TrigDDRSpace-1:0]     rFIFOAddress;
    reg  [TrigDataWidth-1:0]    rFIFOData ;
    reg  [0:0]                  rFIFOValid;

    // FSM Parameters/Wires/Regs
    localparam CAP_FSM_BIT = 4;
    localparam CAP_RESET = 4'b0001;
    localparam CAP_READY = 4'b0010; 
    localparam CAP_WAIT  = 4'b0100; 
    localparam CAP_TD    = 4'b1000; 

    reg     [CAP_FSM_BIT-1:0]       rCAP_cur_state          ;
    reg     [CAP_FSM_BIT-1:0]       rCAP_nxt_state          ;

    // update current state to next state
    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rCAP_cur_state <= CAP_RESET;
        end else begin
            rCAP_cur_state <= rCAP_nxt_state;
        end
    end
    
    // deside next state
    always @ ( * ) begin
        case (rCAP_cur_state)
            CAP_RESET: begin
                rCAP_nxt_state <= CAP_READY;
            end
            CAP_READY: begin
                rCAP_nxt_state <= (rTrigDMAStart) ? CAP_WAIT : CAP_READY;
//                rCAP_nxt_state <=  CAP_WAIT; 
            end
            CAP_WAIT: begin
                rCAP_nxt_state <= (wTDDone) ? CAP_TD : CAP_WAIT;
            end
            CAP_TD: begin
                rCAP_nxt_state <= (wCAPDone) ? CAP_READY : CAP_TD;
            end
            default:
                rCAP_nxt_state <= CAP_READY;
        endcase
    end

    // state behaviour
    always @ (posedge iTrigClk) begin
        if (!iTrigRstn) begin
            rFIFOAddress     <= 0;
            rFIFOValid       <= 0;
            rFIFOData        <= 0;

            rTrigDataCounter <= 32'd0;
            rTrigToggle      <= 32'd0;
            rTrigVector      <= {TrigStatusNum{1'b0}};
        end else begin
            case (rCAP_nxt_state)
                CAP_RESET: begin
                    rFIFOAddress     <= 0;
                    rFIFOValid       <= 0;
                    rFIFOData        <= 0;

                    rTrigDataCounter <= 32'd0;
                    rTrigToggle      <= 32'd0;
                    rTrigVector      <= {TrigStatusNum{1'b0}};
                end
                CAP_READY: begin
                    rFIFOAddress     <= 0;
                    rFIFOValid       <= 0;
                    rFIFOData        <= 0;

                    rTrigDataCounter <= 32'd0;
                    rTrigToggle      <= rTrigToggle;
                    rTrigVector      <= rTrigVector;
                end
                CAP_WAIT: begin
                    rFIFOAddress     <= (rFIFOValid == 0) ? 'd0 : (rFIFOAddress + 1'b1);
                    rFIFOValid       <= 1;
                    rFIFOData        <= iTrigInData;

                    rTrigDataCounter <= (rTrigDataCounter < rTrigDMAPosition) ? rTrigDataCounter + 1 : rTrigDMAPosition;
                    rTrigToggle      <= rTrigToggle;
                    rTrigVector      <= rTrigVector;
                end
                CAP_TD: begin
                    rFIFOAddress                  <= (rFIFOValid == 0) ? 'd0 : (rFIFOAddress + 1'b1);
                    rFIFOValid                    <= 1;
                    rFIFOData                     <= iTrigInData;

                    rTrigDataCounter              <= (rFIFOValid == 0) ? 32'd0 : (rTrigDataCounter + 1'b1);
                    rTrigToggle[TrigDDRSpace-1:0] <= (rTrigDataCounter == (rTrigDMAPosition+1)) ? {rFIFOAddress, {TrigByteWidthClog2{1'b0}}} : rTrigToggle;
                    rTrigVector                   <= (rTrigDataCounter == rTrigDMAPosition) ? iTrigOrigin : rTrigVector;
                end
                default: begin
                    rFIFOAddress     <= 0;
                    rFIFOValid       <= 0;
                    rFIFOData        <= 0;

                    rTrigDataCounter <= 32'd0;
                    rTrigToggle      <= 32'd0;
                    rTrigVector      <= {TrigStatusNum{1'b0}};
                end
            endcase
        end
    end


    genvar i;
    generate
        for (i = 0;i<(TrigStatusNum);i=i+1)
        begin

            reg [31:0] rTrigVectorPendingCnt;
            
            always @ (posedge iTrigClk) begin
                if (!iTrigRstn) begin
                    rTrigVectorPending[i] <= 1'b0;
                    rTrigVectorPendingCnt <= 'd0;
                end else begin

                    if ((iTrigOrigin[i] == 1'b1) || (rTrigDMAStart == 1'b1)) begin
                        rTrigVectorPendingCnt <= 'd0;
                    end else begin
                        rTrigVectorPendingCnt <= rTrigVectorPendingCnt + 1'b1;
                    end

                    if ((rCAP_cur_state == CAP_TD) && (iTrigOrigin[i] == 1'b1)) begin
                        rTrigVectorPending[i] <= 1'b1;
                    end else if ((wTDDone)  && (rTrigVectorPendingCnt < rTrigDMAPosition)) begin
                        rTrigVectorPending[i] <= 1'b1;

                    end else if (rTrigDMAStart == 1'b1) begin
                        rTrigVectorPending[i] <= 1'b0;

                    end else begin
                        rTrigVectorPending[i] <= rTrigVectorPending[i];
                    end
                end
            end

        end
    endgenerate  



    reg [31:0] DataCnt_0;
    reg [31:0] DataCnt_1;

    localparam                 FIFOWIDTH = 7; // samples

    wire                       wFIFOSel = rFIFOAddress[FIFOWIDTH];
    wire                       wFIFOEOF = (rFIFOAddress[FIFOWIDTH-1:0] == {FIFOWIDTH{1'b1}}) | wCAPDone;

    reg                        rDMAFIFOSel;
    
    localparam TrigKeepWidth = TrigDataWidth/8;
    wire [TrigDataWidth-1:0]   ws_axis_tdata_0      ;
    wire [TrigKeepWidth-1:0]   ws_axis_tkeep_0      ;
    wire                       ws_axis_tvalid_0     ;
    wire                       ws_axis_tlast_0      ;
    wire                       ws_axis_tready_0     ;
    wire [31:0]                ws_axis_tuser_0      ;
    
    wire [TrigDataWidth-1:0]   ws_axis_tdata_1      ;
    wire [TrigKeepWidth-1:0]   ws_axis_tkeep_1      ;
    wire                       ws_axis_tvalid_1     ;
    wire                       ws_axis_tlast_1      ;
    wire                       ws_axis_tready_1     ;
    wire [31:0]                ws_axis_tuser_1      ;
    
    wire [AXIS_DATA_WIDTH-1:0] wm_axis_tdata_0      ;
    wire [AXIS_KEEP_WIDTH-1:0] wm_axis_tkeep_0      ;
    wire                       wm_axis_tvalid_0     ;
    wire                       wm_axis_tlast_0      ;
    wire                       wm_axis_tready_0     ;
    wire [31:0]                wm_axis_tuser_0      ;

    wire [AXIS_DATA_WIDTH-1:0] wm_axis_tdata_1      ;
    wire [AXIS_KEEP_WIDTH-1:0] wm_axis_tkeep_1      ;
    wire                       wm_axis_tvalid_1     ;
    wire                       wm_axis_tlast_1      ;
    wire                       wm_axis_tready_1     ;
    wire [31:0]                wm_axis_tuser_1      ;

    wire                       m_status_good_frame_0;
    wire                       m_status_good_frame_1;
    
    reg wm_axis_tlast_0_D,wm_axis_tlast_0_D2;
    reg wm_axis_tlast_1_D,wm_axis_tlast_1_D2;
    
    always@(posedge iTrigClk) begin
        if(!iTrigRstn) begin
            wm_axis_tlast_0_D <=  0;
            wm_axis_tlast_0_D2 <= 0;
            wm_axis_tlast_1_D <= 0;
            wm_axis_tlast_1_D2 <= 0;
        end
        else begin
            wm_axis_tlast_0_D <= wm_axis_tlast_0;
            wm_axis_tlast_0_D2 <= wm_axis_tlast_0_D;
            wm_axis_tlast_1_D <= wm_axis_tlast_1;
            wm_axis_tlast_1_D2 <= wm_axis_tlast_1_D;
        end
    end
    
    always @(posedge iTrigClk)begin
        if(!iTrigRstn) begin
            DataCnt_0 <= 32'b0;
        end
        else if ((ws_axis_tvalid_0 == 1'b1) && (ws_axis_tready_0 == 1'b1)) begin
            DataCnt_0 <= DataCnt_0 + 1;
        end
        else if ((wm_axis_tvalid_0 == 1'b1) && (wm_axis_tready_0 == 1'b1)) begin
            if((DataCnt_0 <= 32'd4) && (DataCnt_0 != 0))begin
                DataCnt_0 <= 32'd0;
            end  
            else begin
            DataCnt_0 <= DataCnt_0 - 4; 
            end
        end
    end
    
    always @(posedge iTrigClk)begin
        if(!iTrigRstn) begin
            DataCnt_1 <= 32'b0;
        end
        else if ((ws_axis_tvalid_1 == 1'b1) && (ws_axis_tready_1 == 1'b1)) begin
            DataCnt_1 <= DataCnt_1 + 1;
        end
        else if ((wm_axis_tvalid_1 == 1'b1) && (wm_axis_tready_1 == 1'b1)) begin
            if((DataCnt_1 <= 32'd4) && (DataCnt_1 != 0))begin
             DataCnt_1 <= 32'd0;
           end  
            else begin
             DataCnt_1 <= DataCnt_1 - 4; 
            end
        end
    end
    

    assign s_axis_write_data_tdata  = rDMAFIFOSel ? wm_axis_tdata_1  : wm_axis_tdata_0 ;
    assign s_axis_write_data_tkeep  = rDMAFIFOSel ? wm_axis_tkeep_1  : wm_axis_tkeep_0 ;
    assign s_axis_write_data_tvalid = rDMAFIFOSel ? wm_axis_tvalid_1 : wm_axis_tvalid_0;
    assign s_axis_write_data_tlast  = rDMAFIFOSel ? wm_axis_tlast_1  : wm_axis_tlast_0 ;

    assign wm_axis_tready_0 = rDMAFIFOSel ? 0 : s_axis_write_data_tready;
    assign wm_axis_tready_1 = rDMAFIFOSel ? s_axis_write_data_tready : 0;

    assign ws_axis_tdata_0  = rFIFOData;
    assign ws_axis_tkeep_0  = wFIFOSel ? 0 : {TrigKeepWidth{1'b1}};
    assign ws_axis_tvalid_0 = rFIFOValid & (~wFIFOSel);
    assign ws_axis_tlast_0  = rFIFOValid & (~wFIFOSel) & wFIFOEOF;
    assign ws_axis_tuser_0  = rFIFOAddress[TrigDDRSpace-2:AXItoTrigClog2];

    assign ws_axis_tdata_1  = rFIFOData;
    assign ws_axis_tkeep_1  = wFIFOSel ? {TrigKeepWidth{1'b1}} : 0;
    assign ws_axis_tvalid_1 = rFIFOValid & (wFIFOSel);
    assign ws_axis_tlast_1  = rFIFOValid & (wFIFOSel) & wFIFOEOF;
    assign ws_axis_tuser_1  = rFIFOAddress[TrigDDRSpace-2:AXItoTrigClog2];

    reg m_status_good_frame_0_D1,m_status_good_frame_0_D2,m_status_good_frame_0_D3,m_status_good_frame_0_D4,m_status_good_frame_0_D5,m_status_good_frame_0_D6;
    reg m_status_good_frame_1_D1,m_status_good_frame_1_D2,m_status_good_frame_1_D3,m_status_good_frame_1_D4,m_status_good_frame_1_D5,m_status_good_frame_1_D6;

    
    always @ (posedge m_axi_clk) begin
        if (m_axi_rst) begin
            m_status_good_frame_0_D1 <= 1'b0;
            m_status_good_frame_0_D2 <= 1'b0;
            m_status_good_frame_0_D3 <= 1'b0;
            m_status_good_frame_0_D4 <= 1'b0;
            m_status_good_frame_0_D5 <= 1'b0;
            m_status_good_frame_0_D6 <= 1'b0;
            
            m_status_good_frame_1_D1 <= 1'b0;
            m_status_good_frame_1_D2 <= 1'b0;
            m_status_good_frame_1_D3 <= 1'b0;
            m_status_good_frame_1_D4 <= 1'b0;
            m_status_good_frame_1_D5 <= 1'b0;
            m_status_good_frame_1_D6 <= 1'b0;
            
        end else begin
            m_status_good_frame_0_D1 <= m_status_good_frame_0;
            m_status_good_frame_0_D2 <= m_status_good_frame_0_D1;
            m_status_good_frame_0_D3 <= m_status_good_frame_0_D2;
            m_status_good_frame_0_D4 <= m_status_good_frame_0_D3;
            m_status_good_frame_0_D5 <= m_status_good_frame_0_D4;
            m_status_good_frame_0_D6 <= m_status_good_frame_0_D5;
            
            m_status_good_frame_1_D1 <= m_status_good_frame_1;
            m_status_good_frame_1_D2 <= m_status_good_frame_1_D1;
            m_status_good_frame_1_D3 <= m_status_good_frame_1_D2;
            m_status_good_frame_1_D4 <= m_status_good_frame_1_D3;
            m_status_good_frame_1_D5 <= m_status_good_frame_1_D4;
            m_status_good_frame_1_D6 <= m_status_good_frame_1_D5;
            
        end
    end
    
    reg m_status_good_frame_0_cached = 0;
    reg m_status_good_frame_1_cached = 0;
    // state behaviour
    reg rstuck = 0;
       // state behaviour
       always @ (posedge m_axi_clk) begin
           if (m_axi_rst) begin
               rDMAFIFOSel             <= 'd0;
               m_status_good_frame_0_cached <= 1'b0;
               m_status_good_frame_1_cached <= 1'b0;
               
               s_axis_write_desc_valid <= 'd0;
               s_axis_write_desc_addr  <= 'd0;
               s_axis_write_desc_len   <= 'd0;
               s_axis_write_desc_tag   <= 'd0;
               
               rstuck <= 'd0;
           end else begin
               if (m_status_good_frame_0_D2 == 1'b1) begin
                   m_status_good_frame_0_cached <= 1'b1;
               end
               if (m_status_good_frame_1_D2 == 1'b1) begin
                   m_status_good_frame_1_cached <= 1'b1;
               end
               
               if ((m_status_good_frame_0_cached == 1'b1) && (s_axis_write_desc_ready == 1'b1) && (rstuck != 1'b1))begin
                   rDMAFIFOSel             <= 1'b0;
                   m_status_good_frame_0_cached <= 1'b0;
   
                   s_axis_write_desc_valid <= 1;
                   s_axis_write_desc_addr  <= rTrigDMAStartAddr + {wm_axis_tuser_0[31-AXItoTrigClog2-TrigByteWidthClog2:0],{AXItoTrigClog2{1'b0}}, {TrigByteWidthClog2{1'b0}}};
                   s_axis_write_desc_len   <= 1 << (FIFOWIDTH + TrigByteWidthClog2);
                   s_axis_write_desc_tag   <= 0;
                   
                   rstuck <= 1'b1;
               end else if ((m_status_good_frame_1_cached == 1'b1) && (s_axis_write_desc_ready == 1'b1) && (rstuck != 1'b1))begin
                   rDMAFIFOSel             <= 1'b1;
                   m_status_good_frame_1_cached <= 1'b0;
   
                   s_axis_write_desc_valid <= 1;
                   s_axis_write_desc_addr  <= rTrigDMAStartAddr + {wm_axis_tuser_1[31-AXItoTrigClog2-TrigByteWidthClog2:0],{AXItoTrigClog2{1'b0}}, {TrigByteWidthClog2{1'b0}}};
                   s_axis_write_desc_len   <= 1 << (FIFOWIDTH + TrigByteWidthClog2);
                   s_axis_write_desc_tag   <= 0;
                   
                   rstuck <= 1'b1;
               end else begin
                   rDMAFIFOSel             <= rDMAFIFOSel;
   
                   s_axis_write_desc_valid <= 0;
                   s_axis_write_desc_addr  <= s_axis_write_desc_addr;
                   s_axis_write_desc_len   <= 1 << (FIFOWIDTH + TrigByteWidthClog2);
                   s_axis_write_desc_tag   <= 0;
                   
                   rstuck <= 1'b0;
               end
   
           end
       end

    axi_dma #(
        .AXI_DATA_WIDTH    (AXI_DATA_WIDTH    ),
        .AXI_ADDR_WIDTH    (AXI_ADDR_WIDTH    ),
        .AXI_STRB_WIDTH    (AXI_STRB_WIDTH    ),
        .AXI_ID_WIDTH      (AXI_ID_WIDTH      ),
        .AXI_MAX_BURST_LEN (AXI_MAX_BURST_LEN ),

        .AXIS_DATA_WIDTH   (AXIS_DATA_WIDTH   ),
        .AXIS_KEEP_ENABLE  (AXIS_KEEP_ENABLE  ),
        .AXIS_KEEP_WIDTH   (AXIS_KEEP_WIDTH   ),
        .AXIS_LAST_ENABLE  (AXIS_LAST_ENABLE  ),
        .AXIS_ID_ENABLE    (AXIS_ID_ENABLE    ),
        .AXIS_ID_WIDTH     (AXIS_ID_WIDTH     ),
        .AXIS_DEST_ENABLE  (AXIS_DEST_ENABLE  ),
        .AXIS_DEST_WIDTH   (AXIS_DEST_WIDTH   ),
        .AXIS_USER_ENABLE  (AXIS_USER_ENABLE  ),
        .AXIS_USER_WIDTH   (AXIS_USER_WIDTH   ),
        .LEN_WIDTH         (LEN_WIDTH         ),
        .TAG_WIDTH         (TAG_WIDTH         ),
        .ENABLE_SG         (ENABLE_SG         ),
        .ENABLE_UNALIGNED  (ENABLE_UNALIGNED  )
    )
    axi_dma (
        .clk                            (m_axi_clk                      ),
        .rst                            (m_axi_rst                      ),

        .s_axis_read_desc_addr          (s_axis_read_desc_addr          ),
        .s_axis_read_desc_len           (s_axis_read_desc_len           ),
        .s_axis_read_desc_tag           (s_axis_read_desc_tag           ),
        .s_axis_read_desc_id            (s_axis_read_desc_id            ),
        .s_axis_read_desc_dest          (s_axis_read_desc_dest          ),
        .s_axis_read_desc_user          (s_axis_read_desc_user          ),
        .s_axis_read_desc_valid         (s_axis_read_desc_valid         ),
        .s_axis_read_desc_ready         (s_axis_read_desc_ready         ),
        .m_axis_read_desc_status_tag    (m_axis_read_desc_status_tag    ),
        .m_axis_read_desc_status_valid  (m_axis_read_desc_status_valid  ),
        
        .m_axis_read_data_tdata         (m_axis_read_data_tdata         ),
        .m_axis_read_data_tkeep         (m_axis_read_data_tkeep         ),
        .m_axis_read_data_tvalid        (m_axis_read_data_tvalid        ),
        .m_axis_read_data_tready        (m_axis_read_data_tready        ),
        .m_axis_read_data_tlast         (m_axis_read_data_tlast         ),
        .m_axis_read_data_tid           (m_axis_read_data_tid           ),
        .m_axis_read_data_tdest         (m_axis_read_data_tdest         ),
        .m_axis_read_data_tuser         (m_axis_read_data_tuser         ),
        
        .s_axis_write_desc_addr         (s_axis_write_desc_addr         ),
        .s_axis_write_desc_len          (s_axis_write_desc_len          ),
        .s_axis_write_desc_tag          (s_axis_write_desc_tag          ),
        .s_axis_write_desc_valid        (s_axis_write_desc_valid        ),
        .s_axis_write_desc_ready        (s_axis_write_desc_ready        ),
        .m_axis_write_desc_status_len   (m_axis_write_desc_status_len   ),
        .m_axis_write_desc_status_tag   (m_axis_write_desc_status_tag   ),
        .m_axis_write_desc_status_id    (m_axis_write_desc_status_id    ),
        .m_axis_write_desc_status_dest  (m_axis_write_desc_status_dest  ),
        .m_axis_write_desc_status_user  (m_axis_write_desc_status_user  ),
        .m_axis_write_desc_status_valid (m_axis_write_desc_status_valid ),
        
        .s_axis_write_data_tdata        (s_axis_write_data_tdata        ),
        .s_axis_write_data_tkeep        (s_axis_write_data_tkeep        ),
        .s_axis_write_data_tvalid       (s_axis_write_data_tvalid       ),
        .s_axis_write_data_tready       (s_axis_write_data_tready       ),
        .s_axis_write_data_tlast        (s_axis_write_data_tlast        ),
        .s_axis_write_data_tid          (s_axis_write_data_tid          ),
        .s_axis_write_data_tdest        (s_axis_write_data_tdest        ),
        .s_axis_write_data_tuser        (s_axis_write_data_tuser        ),

        .m_axi_awid    (m_axi_awid    ),
        .m_axi_awaddr  (m_axi_awaddr  ),
        .m_axi_awlen   (m_axi_awlen   ),
        .m_axi_awsize  (m_axi_awsize  ),
        .m_axi_awburst (m_axi_awburst ),
        .m_axi_awlock  (m_axi_awlock  ),
        .m_axi_awcache (m_axi_awcache ),
        // .m_axi_awprot  (m_axi_awprot  ),
        .m_axi_awvalid (m_axi_awvalid ),
        .m_axi_awready (m_axi_awready ),
        .m_axi_wdata   (m_axi_wdata   ),
        .m_axi_wstrb   (m_axi_wstrb   ),
        .m_axi_wlast   (m_axi_wlast   ),
        .m_axi_wvalid  (m_axi_wvalid  ),
        .m_axi_wready  (m_axi_wready  ),
        .m_axi_bid     (m_axi_bid     ),
        .m_axi_bresp   (m_axi_bresp   ),
        .m_axi_bvalid  (m_axi_bvalid  ),
        .m_axi_bready  (m_axi_bready  ),
        .m_axi_arid    (m_axi_arid    ),
        .m_axi_araddr  (m_axi_araddr  ),
        .m_axi_arlen   (m_axi_arlen   ),
        .m_axi_arsize  (m_axi_arsize  ),
        .m_axi_arburst (m_axi_arburst ),
        .m_axi_arlock  (m_axi_arlock  ),
        .m_axi_arcache (m_axi_arcache ),
        // .m_axi_arprot  (m_axi_arprot  ),
        .m_axi_arvalid (m_axi_arvalid ),
        .m_axi_arready (m_axi_arready ),
        .m_axi_rid     (m_axi_rid     ),
        .m_axi_rdata   (m_axi_rdata   ),
        .m_axi_rresp   (m_axi_rresp   ),
        .m_axi_rlast   (m_axi_rlast   ),
        .m_axi_rvalid  (m_axi_rvalid  ),
        .m_axi_rready  (m_axi_rready  ),
        .read_enable   (read_enable   ),
        .write_enable  (write_enable  ),
        .write_abort   (write_abort   )
    );

    wire empty0,empty1;
    wire [31:0] rd_ptr_1;
    wire [31:0] wr_ptr_1;
    wire [31:0] rd_ptr_0;
    wire [31:0] wr_ptr_0;
    
    
    axis_async_fifo_adapter #(
            .DEPTH(4096),
            .S_DATA_WIDTH(TrigDataWidth),
            .S_KEEP_ENABLE(1),
            .S_KEEP_WIDTH(TrigDataWidth/8),
            .M_DATA_WIDTH(AXI_DATA_WIDTH),
            .M_KEEP_ENABLE(1),
            .M_KEEP_WIDTH(AXI_DATA_WIDTH/8),
            .ID_ENABLE(1),
            .ID_WIDTH(32),
            .DEST_ENABLE(0),
            .DEST_WIDTH(8),
            .USER_ENABLE(1),
            .USER_WIDTH(32),
            .FRAME_FIFO(1),
            .USER_BAD_FRAME_VALUE(1),
            .USER_BAD_FRAME_MASK(1),
            .DROP_BAD_FRAME(0),
            .DROP_WHEN_FULL(0)
        ) fifo_inst_0 (
            .s_clk         (iTrigClk         ),
            .s_rst         (~iTrigRstn        ),
            
            .s_axis_tdata  (ws_axis_tdata_0  ),
            .s_axis_tkeep  (ws_axis_tkeep_0  ),
            .s_axis_tvalid (ws_axis_tvalid_0 ),
            .s_axis_tready (ws_axis_tready_0 ),
            .s_axis_tlast  (ws_axis_tlast_0  ),
            .s_axis_tid  (ws_axis_tuser_0  ),
            
            .m_clk         (m_axi_clk     ),
            .m_rst         (m_axi_rst     ),
            
            .m_axis_tdata  (wm_axis_tdata_0  ),
            .m_axis_tkeep  (wm_axis_tkeep_0  ),
            .m_axis_tvalid (wm_axis_tvalid_0 ),
            .m_axis_tready (wm_axis_tready_0 ),
            .m_axis_tlast  (wm_axis_tlast_0  ),
            .m_axis_tid  (wm_axis_tuser_0  ),

            .m_status_good_frame (m_status_good_frame_0),
            .isempty(empty0),
            .wr_ptr(wr_ptr_0),
            .rd_ptr(rd_ptr_0)
        );


    axis_async_fifo_adapter #(
            .DEPTH(4096),
            .S_DATA_WIDTH(TrigDataWidth),
            .S_KEEP_ENABLE(1),
            .S_KEEP_WIDTH(TrigDataWidth/8),
            .M_DATA_WIDTH(AXI_DATA_WIDTH),
            .M_KEEP_ENABLE(1),
            .M_KEEP_WIDTH(AXI_DATA_WIDTH/8),
            .ID_ENABLE(1),
            .ID_WIDTH(32),
            .DEST_ENABLE(0),
            .DEST_WIDTH(8),
            .USER_ENABLE(0),
            .USER_WIDTH(32),
            .FRAME_FIFO(1),
            .USER_BAD_FRAME_VALUE(1),
            .USER_BAD_FRAME_MASK(1),
            .DROP_BAD_FRAME(0),
            .DROP_WHEN_FULL(0)
        ) fifo_inst_1 (
            .s_clk         (iTrigClk         ),
            .s_rst         (~iTrigRstn       ),
            
            .s_axis_tdata  (ws_axis_tdata_1  ),
            .s_axis_tkeep  (ws_axis_tkeep_1  ),
            .s_axis_tvalid (ws_axis_tvalid_1 ),
            .s_axis_tready (ws_axis_tready_1 ),
            .s_axis_tlast  (ws_axis_tlast_1  ),
            .s_axis_tid  (ws_axis_tuser_1  ),

            .m_clk         (m_axi_clk     ),
            .m_rst         (m_axi_rst     ),
            
            .m_axis_tdata  (wm_axis_tdata_1  ),
            .m_axis_tkeep  (wm_axis_tkeep_1  ),
            .m_axis_tvalid (wm_axis_tvalid_1 ),
            .m_axis_tready (wm_axis_tready_1 ),
            .m_axis_tlast  (wm_axis_tlast_1  ),
            .m_axis_tid  (wm_axis_tuser_1  ),

            .m_status_good_frame (m_status_good_frame_1),
            .isempty(empty1),
            .wr_ptr(wr_ptr_1),
            .rd_ptr(rd_ptr_1)
            
        );



// axis_fifo_adapter #(
//    .DEPTH(4096),
//    .S_DATA_WIDTH(TrigDataWidth),
//    .S_KEEP_ENABLE(1),
//    .S_KEEP_WIDTH((TrigDataWidth)/8),
//    .M_DATA_WIDTH(AXI_DATA_WIDTH),
//    .M_KEEP_ENABLE(1),
//    .M_KEEP_WIDTH((AXI_DATA_WIDTH)/8),
//    .ID_ENABLE(1),
//    .ID_WIDTH(32),
//    .DEST_ENABLE(0),
//    .DEST_WIDTH(8),
//    .USER_ENABLE(1),
//    .USER_WIDTH(32),
//    .FRAME_FIFO(1),
//    .USER_BAD_FRAME_VALUE(1),
//    .USER_BAD_FRAME_MASK(1),
//    .DROP_BAD_FRAME(0),
//    .DROP_WHEN_FULL(0)
//)
//fifo_inst_0(
//    .clk(iTrigClk),
//    .rst(~iTrigRstn       ),
//    /*
//     * AXI input
//     */
//    .s_axis_tdata(ws_axis_tdata_0 ),
//    .s_axis_tkeep(ws_axis_tkeep_0),
//    .s_axis_tvalid(ws_axis_tvalid_0),
//    .s_axis_tready(ws_axis_tready_0),
//    .s_axis_tlast(ws_axis_tlast_0),
//    .s_axis_tid(ws_axis_tuser_0),
    
//    /*
//     * AXI output
//     */
//    .m_axis_tdata(wm_axis_tdata_0),
//    .m_axis_tkeep(wm_axis_tkeep_0),
//    .m_axis_tvalid(wm_axis_tvalid_0),
//    .m_axis_tready(wm_axis_tready_0),
//    .m_axis_tlast(wm_axis_tlast_0),
//    .m_axis_tid(wm_axis_tuser_0),
//    /*
//     * Status
//     */
//    .status_good_frame(m_status_good_frame_0),
//    .isempty(empty0),
//    .rd_ptr(rd_ptr_0),
//    .wr_ptr(wr_ptr_0)
//);

// axis_fifo_adapter #(
//    .DEPTH(4096),
//    .S_DATA_WIDTH(TrigDataWidth),
//    .S_KEEP_ENABLE(1),
//    .S_KEEP_WIDTH((TrigDataWidth)/8),
//    .M_DATA_WIDTH(AXI_DATA_WIDTH),
//    .M_KEEP_ENABLE(1),
//    .M_KEEP_WIDTH((AXI_DATA_WIDTH)/8),
//    .ID_ENABLE(1),
//    .ID_WIDTH(32),
//    .DEST_ENABLE(0),
//    .DEST_WIDTH(8),
//    .USER_ENABLE(0),
//    .USER_WIDTH(32),
//    .FRAME_FIFO(1),
//    .USER_BAD_FRAME_VALUE(1),
//    .USER_BAD_FRAME_MASK(1),
//    .DROP_BAD_FRAME(0),
//    .DROP_WHEN_FULL(0)
//)
//fifo_inst_1(
//    .clk(iTrigClk),
//    .rst(~iTrigRstn       ),
//    /*
//     * AXI input
//     */
//    .s_axis_tdata(ws_axis_tdata_1 ),
//    .s_axis_tkeep(ws_axis_tkeep_1),
//    .s_axis_tvalid(ws_axis_tvalid_1),
//    .s_axis_tready(ws_axis_tready_1),
//    .s_axis_tlast(ws_axis_tlast_1),
//    .s_axis_tid(ws_axis_tuser_1),
    
//    /*
//     * AXI output
//     */
//    .m_axis_tdata(wm_axis_tdata_1),
//    .m_axis_tkeep(wm_axis_tkeep_1),
//    .m_axis_tvalid(wm_axis_tvalid_1),
//    .m_axis_tready(wm_axis_tready_1),
//    .m_axis_tlast(wm_axis_tlast_1),
//    .m_axis_tid(wm_axis_tuser_1),
//    /*
//     * Status
//     */
//    .status_good_frame(m_status_good_frame_1),
//    .isempty(empty1),
//    .rd_ptr(rd_ptr_1),
//    .wr_ptr(wr_ptr_1)
//);




    reg                         rStateToWAITIntr    ;
    reg                         rStateToTDIntr      ;
    reg                         rStateToFINISHIntr  ;

    reg [7:0]       rStateToWAITIntr_m;
    reg [7:0]       rStateToTDIntr_m;
    reg [7:0]       rStateToFINISHIntr_m;

    always @ (posedge iTrigClk) begin

        rStateToWAITIntr_m   <= {rStateToWAITIntr_m[6:0],(iTrigIn && (CAP_READY == rCAP_cur_state))};
        rStateToTDIntr_m   <= {rStateToTDIntr_m[6:0],(wTDDone && (CAP_WAIT == rCAP_cur_state))};
        rStateToFINISHIntr_m   <= {rStateToFINISHIntr_m[6:0],wCAPDone};

        if (rStateToWAITIntr_m != 8'b00000000) begin
            rStateToWAITIntr <= 1'b1;
        end else begin
            rStateToWAITIntr <= 1'b0;
        end

        if (rStateToTDIntr_m != 8'b00000000) begin
            rStateToTDIntr <= 1'b1;
        end else begin
            rStateToTDIntr <= 1'b0;
        end

        if (rStateToFINISHIntr_m != 8'b00000000) begin
            rStateToFINISHIntr <= 1'b1;
        end else begin
            rStateToFINISHIntr <= 1'b0;
        end
    end

assign oStateToWAITIntr   = rStateToWAITIntr  ;
assign oStateToTDIntr     = rStateToTDIntr    ;
assign oStateToFINISHIntr = rStateToFINISHIntr;

assign oTrigStatus = rCAP_cur_state;
assign oTrigToggle = rTrigToggle;
assign oTrigVector = rTrigVector;
assign oTrigVectorPending = rTrigVectorPending;

//ila_0 ila_0(
//.clk(iTrigClk),
//.probe0(iTrigOrigin),
//.probe1(rTrigVector),
//.probe2(rTrigToggle),
//.probe3(rCAP_cur_state),
//.probe4(rStateToFINISHIntr),
//.probe5(rTrigVectorPending),
//.probe6(iTrigDMAStart), // input wire [0:0]  probe6 
//.probe7(iTrigDMAPosition), // input wire [31:0]  probe7 
//.probe8(iTrigDMAStartAddr) // input wire [31:0]  probe8
//);  


endmodule