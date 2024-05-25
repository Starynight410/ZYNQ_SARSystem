`timescale 1ns/1ps

module tb_TriggerCh;

    reg clk_100mhz;

    initial                 
    begin
        clk_100mhz          <= 1'b0;
        #10;
        forever
        begin    
            clk_100mhz      <= 1'b1;
            #5;
            clk_100mhz      <= 1'b0;
            #5;
        end
    end

    wire LOCKED;
    wire clk_90mhz;
    wire clk_24mhz;
    wire clk_48mhz;
    wire[31:0] delay_cnt_w ;
    AdcClock #(
        .AdcDCLKFrequency(100),
        .AdcFCLKFrequency(24)
    ) inst_AdcClock (
        .clk_out1  (clk_24mhz),
        .clk_out2  (clk_48mhz),
        .clk_out1b (),
        .clk_out2b (),
        .reset     (0),
        .locked    (LOCKED),
        .clk_in1_p (clk_100mhz),
        .clk_in1_n (~clk_100mhz)
    );



    /*
    * AXI-lite slave interface
    */
    parameter AXIL_ADDR_WIDTH           = 32              ;
    parameter AXIL_DATA_WIDTH           = 32              ;
    parameter AXIL_STRB_WIDTH           = AXIL_DATA_WIDTH/8    ;
    /*
    * AXI master interface
    */
    parameter AXI_ID_WIDTH         = 2               ;
    parameter AXI_ADDR_WIDTH       = 32              ;
    parameter AXI_DATA_WIDTH       = 64              ;
    parameter AXI_MAX_BURST_LEN    = 256             ;
    parameter AXI_STRB_WIDTH       = AXI_DATA_WIDTH/8;

    wire                          iTrigClk =  clk_100mhz  ;
    reg                           iTrigRstn              ;

    wire                          iTrigClk2x =  clk_48mhz  ;
    reg                           iTrigRstn2x              ;


    reg                           s_axil_clk              ;
    reg                           s_axil_rst              ;
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
   
    wire tb_clk = clk_100mhz;
    initial
        begin
           reset_n <= 1'b1;
           #100
           reset_n <= 1'b0;
           #20;
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
        #1000;
        Start_mode <= 1; //开始采集
        #2700000;
        Start_mode <= 0;
    end
    
    initial begin
        PM <= 0;
        TRACK <= 1;
        #71000
        forever begin
            TRACK <= 0;
            #20
            TRACK <= 1;
            #1000
            PM <= 1;
            #400000;
            PM <= 0;
            #400000;   // 200us
            
            PM <= 1;
            #400000;
            PM <= 0;
            #400000;   // 200us
            
            PM <= 1;
            #400000;
            PM <= 0;
            #400000;   // 200us
            
        end
    end
    
    ADcontrol
    inst_ADcontrol(
    .AdcSampClk(clk_100mhz),    //100MHz,output by AD
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
    .TrigInCh2(TrigInCh2),
    .delay_cnt_w (delay_cnt_w )   
    );
    
    initial begin
        iTrigRstn <= 1'b0;
        iTrigRstn2x <= 1'b0;
        repeat(100) begin
            @(posedge iTrigClk)
                iTrigRstn <= 1'b0;
                iTrigRstn2x <= 1'b0;
        end
        iTrigRstn <= 1'b1;
        iTrigRstn2x <= 1'b1;
    end

    wire                          m_axi_clk               ;
    wire                          m_axi_rstn               ;

    initial                 
    begin
        s_axil_clk          <= 1'b0;
        #10000;
        forever
        begin    
            s_axil_clk      <= 1'b1;
            #5;
            s_axil_clk      <= 1'b0;
            #5;
        end
    end

    initial begin
        s_axil_rst <= 1'b1;
        repeat(100) begin
            @(posedge s_axil_clk)
                s_axil_rst <= 1'b1;
        end
        s_axil_rst <= 1'b0;
    end

    wire [AXIL_ADDR_WIDTH-1:0] s_axil_awaddr                             ;
    wire [2:0]                 s_axil_awprot                             ;
    wire                       s_axil_awvalid                            ;
    wire [AXIL_DATA_WIDTH-1:0] s_axil_wdata                              ;
    wire [AXIL_STRB_WIDTH-1:0] s_axil_wstrb                              ;
    wire                       s_axil_wvalid                             ;
    wire                       s_axil_bready                             ;
    wire [AXIL_ADDR_WIDTH-1:0] s_axil_araddr                             ;
    wire [2:0]                 s_axil_arprot                             ;
    wire                       s_axil_arvalid                            ;
    wire                       s_axil_rready                             ;

    wire                       s_axil_awready                            ;
    wire                       s_axil_wready                             ;
    wire [1:0]                 s_axil_bresp                              ;
    wire                       s_axil_bvalid                             ;
    wire                       s_axil_arready                            ;
    wire [AXIL_DATA_WIDTH-1:0] s_axil_rdata                              ;
    wire [1:0]                 s_axil_rresp                              ;
    wire                       s_axil_rvalid                             ;

    wire                       m_axi_awready                             ;
    wire                       m_axi_wready                              ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_bid                                 ;
    wire [1:0]                 m_axi_bresp                               ;
    wire                       m_axi_bvalid                              ;
    wire                       m_axi_arready                             ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_rid                                 ;
    wire [AXI_DATA_WIDTH-1:0]  m_axi_rdata                               ;
    wire [1:0]                 m_axi_rresp                               ;
    wire                       m_axi_rlast                               ;
    wire                       m_axi_rvalid                              ;

    wire [AXI_ID_WIDTH-1:0]    m_axi_awid                                ;
    wire [AXI_ADDR_WIDTH-1:0]  m_axi_awaddr                              ;
    wire [7:0]                 m_axi_awlen                               ;
    wire [2:0]                 m_axi_awsize                              ;
    wire [1:0]                 m_axi_awburst                             ;
    wire                       m_axi_awlock                              ;
    wire [3:0]                 m_axi_awcache                             ;
    wire [2:0]                 m_axi_awprot                              ;
    wire                       m_axi_awvalid                             ;
    wire [AXI_DATA_WIDTH-1:0]  m_axi_wdata                               ;
    wire [AXI_STRB_WIDTH-1:0]  m_axi_wstrb                               ;
    wire                       m_axi_wlast                               ;
    wire                       m_axi_wvalid                              ;
    wire                       m_axi_bready                              ;
    wire [AXI_ID_WIDTH-1:0]    m_axi_arid                                ;
    wire [AXI_ADDR_WIDTH-1:0]  m_axi_araddr                              ;
    wire [7:0]                 m_axi_arlen                               ;
    wire [2:0]                 m_axi_arsize                              ;
    wire [1:0]                 m_axi_arburst                             ;
    wire                       m_axi_arlock                              ;
    wire [3:0]                 m_axi_arcache                             ;
    wire [2:0]                 m_axi_arprot                              ;
    wire                       m_axi_arvalid                             ;
    wire                       m_axi_rready                              ;

    axi_ram #(
        .DATA_WIDTH      (64      ),
        .ADDR_WIDTH      (20      ),
        .ID_WIDTH        ( 8      ),
        .PIPELINE_OUTPUT ( 0      )
    )
    axi_ram (
        .clk           (m_axi_clk     ),
        .rst           (~m_axi_rstn     ),
        .s_axi_awid    (m_axi_awid    ),
        .s_axi_awaddr  (m_axi_awaddr  ),
        .s_axi_awlen   (m_axi_awlen   ),
        .s_axi_awsize  (m_axi_awsize  ),
        .s_axi_awburst (m_axi_awburst ),
        .s_axi_awlock  (m_axi_awlock  ),
        .s_axi_awcache (m_axi_awcache ),
        .s_axi_awprot  (m_axi_awprot  ),
        .s_axi_awvalid (m_axi_awvalid ),
        .s_axi_awready (m_axi_awready ),
        .s_axi_wdata   (m_axi_wdata   ),
        .s_axi_wstrb   (m_axi_wstrb   ),
        .s_axi_wlast   (m_axi_wlast   ),
        .s_axi_wvalid  (m_axi_wvalid  ),
        .s_axi_wready  (m_axi_wready  ),
        .s_axi_bid     (m_axi_bid     ),
        .s_axi_bresp   (m_axi_bresp   ),
        .s_axi_bvalid  (m_axi_bvalid  ),
        .s_axi_bready  (m_axi_bready  ),
        .s_axi_arid    (m_axi_arid    ),
        .s_axi_araddr  (m_axi_araddr  ),
        .s_axi_arlen   (m_axi_arlen   ),
        .s_axi_arsize  (m_axi_arsize  ),
        .s_axi_arburst (m_axi_arburst ),
        .s_axi_arlock  (m_axi_arlock  ),
        .s_axi_arcache (m_axi_arcache ),
        .s_axi_arprot  (m_axi_arprot  ),
        .s_axi_arvalid (m_axi_arvalid ),
        .s_axi_arready (m_axi_arready ),
        .s_axi_rid     (m_axi_rid     ),
        .s_axi_rdata   (m_axi_rdata   ),
        .s_axi_rresp   (m_axi_rresp   ),
        .s_axi_rlast   (m_axi_rlast   ),
        .s_axi_rvalid  (m_axi_rvalid  ),
        .s_axi_rready  (m_axi_rready  )
    );

    wire            s_axi_aclk = s_axil_clk;
    wire            s_axi_aresetn = ~s_axil_rst;

    reg             s_axi_cfg_wvalid;
    reg      [31:0] s_axi_cfg_waddr ;
    reg      [31:0] s_axi_cfg_wdata ;
    wire            s_axi_cfg_wready;

    reg             s_axi_cfg_rvalid;
    reg      [31:0] s_axi_cfg_raddr ;
    wire     [31:0] s_axi_cfg_rdata ;
    wire            s_axi_cfg_rdv   ;
    wire            s_axi_cfg_rready;
    
    axil_write inst_axil_write
    (
        .s_axi_aclk       (s_axi_aclk),
        .s_axi_aresetn    (s_axi_aresetn),
        .s_axi_awready    (s_axil_awready),
        .s_axi_wready     (s_axil_wready),
        .s_axi_bvalid     (s_axil_bvalid),
        .s_axi_bresp      (s_axil_bresp),
        .s_axi_awaddr     (s_axil_awaddr),
        .s_axi_awvalid    (s_axil_awvalid),
        .s_axi_wdata      (s_axil_wdata),
        .s_axi_wvalid     (s_axil_wvalid),
        .s_axi_bready     (s_axil_bready),

        .s_axi_cfg_wvalid (s_axi_cfg_wvalid),
        .s_axi_cfg_waddr  (s_axi_cfg_waddr),
        .s_axi_cfg_wdata  (s_axi_cfg_wdata),
        .s_axi_cfg_wready (s_axi_cfg_wready)
    );

    axil_read inst_axil_read
    (
        .s_axi_aclk       (s_axi_aclk),
        .s_axi_aresetn    (s_axi_aresetn),
        .s_axi_arready    (s_axil_arready),
        .s_axi_rvalid     (s_axil_rvalid),
        .s_axi_rdata      (s_axil_rdata),
        .s_axi_rresp      (s_axil_rresp),
        .s_axi_araddr     (s_axil_araddr),
        .s_axi_arvalid    (s_axil_arvalid),
        .s_axi_rready     (s_axil_rready),

        .s_axi_cfg_rvalid (s_axi_cfg_rvalid),
        .s_axi_cfg_raddr  (s_axi_cfg_raddr),
        .s_axi_cfg_rdata  (s_axi_cfg_rdata),
        .s_axi_cfg_rdv    (s_axi_cfg_rdv),
        .s_axi_cfg_rready (s_axi_cfg_rready)
    );


  // AXI-Lite Write task
  task axi_write;
    input [29:0] offset;
    input [31:0] data;
    reg   [31:0] addr;
    reg    [1:0] resp;
    begin
        while (s_axi_cfg_wready == 1'b0)
            @(posedge s_axi_aclk);
        s_axi_cfg_wvalid <= 1'b1;
        s_axi_cfg_waddr <= {offset, 2'b00};
        s_axi_cfg_wdata <= data;
        @(posedge s_axi_aclk);
        s_axi_cfg_wvalid <= 1'b0;
        while (s_axi_cfg_wready == 1'b0)
            @(posedge s_axi_aclk);
        @(posedge s_axi_aclk);
    end
  endtask // axi_write
  
  // AXI-Lite Read task
  task axi_read;
    input  [29:0] offset;
    output [31:0] data;
    reg    [31:0] addr;
    reg     [1:0] resp;
    begin
        while (s_axi_cfg_rready == 1'b0)
        @(posedge s_axi_aclk);
        s_axi_cfg_rvalid <= 1'b1;
        s_axi_cfg_raddr <= {offset, 2'b00};
        @(posedge s_axi_aclk);
        s_axi_cfg_rvalid <= 1'b0;
        while (s_axi_cfg_rdv == 1'b0) begin
//            data <= s_axi_cfg_rdata;
            @(posedge s_axi_aclk);
        end
        data = s_axi_cfg_rdata;
        @(posedge s_axi_aclk);
    end
  endtask // axi_read

    
    wire [15:0] iAdcData;
    reg [15:0] DataToTriCh0_reg = 0;
    always@(posedge iTrigClk) begin
        DataToTriCh0_reg <= DataToTriCh0;
    end
    
    TriggerCh inst_TriggerCh (
            .s_axil_clk     (iTrigClk),
            .s_axil_rstn     (iTrigRstn),

            .iTrigClk       (iTrigClk),
            .iTrigRstn      (iTrigRstn),

            .iAdcData       (DataToTriCh0),
            .iAdcData_Tri   (TrigInCh0),

            .s_axil_awaddr  (s_axil_awaddr),
            .s_axil_awprot  (s_axil_awprot),
            .s_axil_awvalid (s_axil_awvalid),
            .s_axil_awready (s_axil_awready),
            .s_axil_wdata   (s_axil_wdata),
            .s_axil_wstrb   (4'hF),
            .s_axil_wvalid  (s_axil_wvalid),
            .s_axil_wready  (s_axil_wready),
            .s_axil_bresp   (s_axil_bresp),
            .s_axil_bvalid  (s_axil_bvalid),
            .s_axil_bready  (s_axil_bready),
            .s_axil_araddr  (s_axil_araddr),
            .s_axil_arprot  (s_axil_arprot),
            .s_axil_arvalid (s_axil_arvalid),
            .s_axil_arready (s_axil_arready),
            .s_axil_rdata   (s_axil_rdata),
            .s_axil_rresp   (s_axil_rresp),
            .s_axil_rvalid  (s_axil_rvalid),
            .s_axil_rready  (s_axil_rready),

            .m_axi_clk      (m_axi_clk),
            .m_axi_rstn      (m_axi_rstn),
            .m_axi_awid     (m_axi_awid),
            .m_axi_awaddr   (m_axi_awaddr),
            .m_axi_awlen    (m_axi_awlen),
            .m_axi_awsize   (m_axi_awsize),
            .m_axi_awburst  (m_axi_awburst),
            .m_axi_awlock   (m_axi_awlock),
            .m_axi_awcache  (m_axi_awcache),
            .m_axi_awprot   (m_axi_awprot),
            .m_axi_awqos    (m_axi_awqos),
            .m_axi_awuser   (m_axi_awuser),
            .m_axi_awvalid  (m_axi_awvalid),
            .m_axi_awready  (m_axi_awready),
            .m_axi_wdata    (m_axi_wdata),
            .m_axi_wstrb    (m_axi_wstrb),
            .m_axi_wlast    (m_axi_wlast),
            .m_axi_wvalid   (m_axi_wvalid),
            .m_axi_wready   (m_axi_wready),
            .m_axi_bid      (m_axi_bid),
            .m_axi_bresp    (m_axi_bresp),
            .m_axi_bvalid   (m_axi_bvalid),
            .m_axi_bready   (m_axi_bready),
            .m_axi_arid     (m_axi_arid),
            .m_axi_araddr   (m_axi_araddr),
            .m_axi_arlen    (m_axi_arlen),
            .m_axi_arsize   (m_axi_arsize),
            .m_axi_arburst  (m_axi_arburst),
            .m_axi_arlock   (m_axi_arlock),
            .m_axi_arcache  (m_axi_arcache),
            .m_axi_arprot   (m_axi_arprot),
            .m_axi_arqos    (m_axi_arqos),
            .m_axi_aruser   (m_axi_aruser),
            .m_axi_arvalid  (m_axi_arvalid),
            .m_axi_arready  (m_axi_arready),
            .m_axi_rid      (m_axi_rid),
            .m_axi_rdata    (m_axi_rdata),
            .m_axi_rresp    (m_axi_rresp),
            .m_axi_rlast    (m_axi_rlast),
            .m_axi_rvalid   (m_axi_rvalid),
            .m_axi_rready   (m_axi_rready)
        );


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

`define _TrigReset               8'h30


    reg [15:0] Tests[0:145000];
    integer seed;

    initial  begin seed =  0; end

    integer file, i, j;
     
   integer fd ;
   integer err ;
   reg [320:0] str ;
    
   reg [31:0]   char_buf ;
   initial begin
      #30 ;
      fd = $fopen("D:\\work\\MVBV2\\Others\\MFSF24SPSFRMDatanew.EDT", "r");
      //$write("Read char: ");
      err = $ferror(fd, str);
      if (!err) begin
         for (i=0; i<(25000); i=i+1) begin
            char_buf[7:0] = $fgetc(fd) ;
            char_buf[15:8] = $fgetc(fd) ;
            Tests[i] <= char_buf[15:0];
         end
      end
      $fclose(fd);
   end

   reg [15:0] iladata[1023:0];

   reg [15:0] OriginData;

    task GotRandom;
        input integer length;
        begin
            repeat (length) begin
                @(posedge iTrigClk)
                OriginData <= 16'd32768 + $random % 10;
            end
        end
    endtask

    task CAP_FpgaTDTests;
        begin
            
            // GotRandom(8000);
            i <= 0;
            repeat (4096) begin
                @(posedge iTrigClk)
//                OriginData <= OriginData + 1'b1;
                OriginData <= Tests[i];
                i <= i + 1;
            end
        end
    endtask

    assign iAdcData = OriginData;


    initial
        begin
//            $readmemb("D:\\MCUFPGACapute\\MVBV2\\ip\\ADC-lvds\\syn\\ila.bin  ",iladata  );
            s_axi_cfg_wvalid <= 1'b0;
            s_axi_cfg_waddr <= 32'd0;
            s_axi_cfg_wdata <= 32'd0;
            
            s_axi_cfg_rvalid <= 1'b0;
            s_axi_cfg_raddr  <= 32'd0;

            OriginData <= 16'd0;

            wait(LOCKED == 1);
            
            repeat (500) begin
                @(posedge s_axil_clk); 
            end

            axi_write({`_TrigGenAMPHIGHThreshold}, 32'd3000);
            axi_write({`_TrigGenAMPLOWHThreshold}, 32'd500);
            axi_write({`_TrigGenAMPLOWLThreshold}, 32'd200);
            axi_write({`_TrigGenPulseThreshold  }, 32'd20);
            axi_write({`_TrigGenDemodThreshold  }, 32'd20);
//            axi_write({`_TrigGenFcode           }, 32'hC);
//            axi_write({`_TrigGenMFADDR          }, 32'h401);
            axi_write({`_TrigGenSFTimeout       }, 32'd120);
            axi_write({`_TrigGenUpdate          }, 32'd1);

            axi_write({`_TrigMuxEnableMask      }, 32'h00000002);
            axi_write({`_TrigMuxAndMask         }, 32'hffffffff);
            axi_write({`_TrigMuxOrMask          }, 32'hffffffff);
            axi_write({`_TrigMuxSel             }, 32'h0);
            axi_write({`_TrigMuxUpdate          }, 32'd1);

            axi_write({`_TrigDMAStart           }, 32'd0);
            axi_write({`_TrigDMAPosition        }, 32'd0);
            axi_write({`_TrigDMALength          }, 32'd65536);
//            axi_write({`_TrigDMAStartAddr       }, 32'h0013cfc0);
            axi_write({`_TrigDMAStartAddr       }, 32'h0022cac0);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            
            repeat (500) begin
                @(posedge s_axil_clk); 
            end
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            // AXIL32_IN(`_TrigStatus             , );
            // AXIL32_IN(`_TrigToggle             , );
            // AXIL32_IN(`_TrigVector             , );
            CAP_FpgaTDTests;
            #700000;
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
            
             #900000;
            axi_write({`_TrigDMAStart           }, 32'd1);
            axi_write({`_TrigDMAUpdate          }, 32'd1);
        end


endmodule


module AdcClock #(
    parameter AdcDCLKFrequency = 182,
    parameter AdcFCLKFrequency = 26
)
(
  output        clk_out1,
  output        clk_out2,
  output        clk_out1b,
  output        clk_out2b,
  // Status and control signals
  input         reset,
  output        locked,
  input         clk_in1_p,
  input         clk_in1_n
);

localparam CLKIN1_PERIOD = 1000/AdcDCLKFrequency;
localparam CLKFBOUT_MULT_F = 12;
// generate
//     genvar i;
//     if (AdcDCLKFrequency/AdcFCLKFrequency)
//     for (i = 0;i<20;i=i+1) begin
//         if ((AdcDCLKFrequency*i < 1150) && (AdcDCLKFrequency*i > 850)) begin
//             CLKFBOUT_MULT_F = i;
//         end
//     end
// endgenerate

localparam CLKOUT0_DIVIDE_F = 50;
localparam CLKOUT1_DIVIDE = 25;
// localparam CLKOUT1_DIVIDE = CLKFBOUT_MULT_F*AdcDCLKFrequency/AdcFCLKFrequency;

  // Input buffering
  //------------------------------------
wire clk_in1_clk_wiz_0;
wire clk_in2_clk_wiz_0;
  IBUFDS clkin1_ibufgds
   (.O  (clk_in1_clk_wiz_0),
    .I  (clk_in1_p),
    .IB (clk_in1_n));


  // Clocking PRIMITIVE
  //------------------------------------

  // Instantiation of the MMCM PRIMITIVE
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused

  wire        clk_out1_clk_wiz_0;
  wire        clk_out2_clk_wiz_0;
  wire        clk_out1_clk_wiz_0b;
  wire        clk_out2_clk_wiz_0b;
  wire        clk_out3_clk_wiz_0;
  wire        clk_out4_clk_wiz_0;
  wire        clk_out5_clk_wiz_0;
  wire        clk_out6_clk_wiz_0;
  wire        clk_out7_clk_wiz_0;

  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        psdone_unused;
  wire        locked_int;
  wire        clkfbout_clk_wiz_0;
  wire        clkfbout_buf_clk_wiz_0;
  wire        clkfboutb_unused;
   wire clkout0b_unused;
   wire clkout1b_unused;
   wire clkout2_unused;
   wire clkout2b_unused;
   wire clkout3_unused;
   wire clkout3b_unused;
   wire clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;
  wire        reset_high;

  MMCME2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (CLKFBOUT_MULT_F),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (CLKOUT0_DIVIDE_F),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),
    .CLKOUT1_DIVIDE       (CLKOUT1_DIVIDE),
    .CLKOUT1_PHASE        (00.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (CLKIN1_PERIOD))
  mmcm_adv_inst
    // Output clocks
   (
    .CLKFBOUT            (clkfbout_clk_wiz_0),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (clk_out1_clk_wiz_0),
    .CLKOUT0B            (clk_out1_clk_wiz_0b),
    .CLKOUT1             (clk_out2_clk_wiz_0),
    .CLKOUT1B            (clk_out2_clk_wiz_0b),
    .CLKOUT2             (clkout2_unused),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (clkout3_unused),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf_clk_wiz_0),
    .CLKIN1              (clk_in1_clk_wiz_0),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (reset_high));
  assign reset_high = reset; 

  assign locked = locked_int;
// Clock Monitor clock assigning
//--------------------------------------
 // Output buffering
  //-----------------------------------

  BUFG clkf_buf
   (.O (clkfbout_buf_clk_wiz_0),
    .I (clkfbout_clk_wiz_0));

  BUFG clkout1_buf
   (.O   (clk_out1),
    .I   (clk_out1_clk_wiz_0));


  BUFG clkout2_buf
   (.O   (clk_out2),
    .I   (clk_out2_clk_wiz_0));


  BUFG clkout1_bufb
   (.O   (clk_out1b),
    .I   (clk_out1_clk_wiz_0b));


  BUFG clkout2_bufb
   (.O   (clk_out2b),
    .I   (clk_out2_clk_wiz_0b));
endmodule

module tb_misssf;

reg [31:0]                  rTrigGenSFTimeout       ;
reg [31:0]                  rSFTimeoutCnt       ;
reg [ 1:0]                  rDetectSFState      ;
reg                         rMissFinish          ;//miss脉冲发射标志位
reg                         rCntStart            ;//计数开始标志位
reg                         rTrigDEMODEMISSSF; 
reg                         wDEMODEMF;   
reg                         wDEMODESF;          
reg                         iTrigRstn;
reg                        iTrigClk          ;

initial begin
    rTrigGenSFTimeout = 32'd10000;
    iTrigRstn = 1'b0;
    #100
    iTrigRstn = 1'b1;
end   

 initial                 
    begin
        iTrigClk          <= 1'b0;
        forever
        begin    
            iTrigClk      <= 1'b1;
            #5;
            iTrigClk      <= 1'b0;
            #5;
        end
    end
  initial                 
       begin
           wDEMODEMF          <= 1'b0;
           wDEMODESF          <=1'b0;
           forever
           begin   
               #5000; 
               wDEMODEMF      <= 1'b1;
               #10;
               wDEMODEMF      <= 1'b0;
               #5000;
               wDEMODESF      <= 1'b1;
               #10
               wDEMODESF      <=1'b0;
               #500000;
           end
       end
 // MISS SF
always @ (posedge iTrigClk) begin
    if(rTrigDEMODEMISSSF == 1'b1)
        rTrigDEMODEMISSSF <= 1'b0;
    if (!iTrigRstn) begin
        rSFTimeoutCnt     <= 32'd0;
        rTrigDEMODEMISSSF <= 1'b0;
        rDetectSFState    <= 2'b00;
        rMissFinish        <= 1'b0;
        rCntStart          <= 1'b0;
    end else begin
          if (wDEMODEMF == 1'b1) begin
            rSFTimeoutCnt <= 32'd0;
            rMissFinish <= 0;
            if((rCntStart == 1'b1) && (rMissFinish == 1'b0))begin
                 rTrigDEMODEMISSSF <= 1'b1;
                 rSFTimeoutCnt <= 32'd0;
            end else if(rCntStart == 1'b0)begin
                 rCntStart <= 1'b1;
            end
          end else if(wDEMODESF == 1'b1) begin
             rCntStart <= 1'b0;
             rSFTimeoutCnt <= 32'd0;
             rMissFinish <= 0;
          end else begin
               if(rCntStart == 1'b1)begin
                    if(rSFTimeoutCnt < rTrigGenSFTimeout)                   
                        rSFTimeoutCnt <= rSFTimeoutCnt + 1'b1;
                    else if((rSFTimeoutCnt == rTrigGenSFTimeout) && (rMissFinish == 1'b0))begin
                         rTrigDEMODEMISSSF <= 1'b1;
                         rMissFinish <= 1'b1;
                    end
                end
          end
    end
end
endmodule

module ADcontrol
(
    input   wire    AdcSampClk,    //100MHz,output by AD
    input   wire    reset_n,
    
    // Signal from RF Radar
    input   wire    PM,
    input   wire    TRACK,          //default high
    
    // Data from ADC3444
    input   wire    AdcDataValid,
    input   wire    [15:0]  AdcDataCh0,
    input   wire    [15:0]  AdcDataCh1,
    input   wire    [15:0]  AdcDataCh2,
     
    // command from ZYNQ through EMIO
    input   wire    Trig_mode,      //0 represent soft trig, 1 represent hard trig
    input   wire    Start_mode,    //0 represent not start yet, 1 represent start data sampling and transmitting
    output  wire     [15:0] DataToTriCh0,
    output  wire     [15:0] DataToTriCh1,
    output  wire     [15:0] DataToTriCh2,
    output  wire    TrigInCh0,
    output  wire    TrigInCh1,
    output  wire    TrigInCh2,
    output  wire    [31:0]  delay_cnt_w 
    //
  
    );

    reg     PM_D1,PM_D2;
    wire    PM_up,PM_down;
    reg     [31:0]   PMcnt;
    reg     PM_extra;
    wire    PM_int;
    reg     PM_int_down;
    reg     TRACK_D1,TRACK_D2;
    wire    TRACK_down;
    //interface for 3 channel data 
    reg [15:0] Data_Ch0;
    reg Data_Ch0_valid;
    reg [15:0] Data_Ch1;
    reg Data_Ch1_valid;
    reg [15:0] Data_Ch2;
    reg Data_Ch2_valid; 

    reg Data_Ch0_valid_D, Data_Ch1_valid_D, Data_Ch2_valid_D;
    
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
        else if (PMcnt == 32'd3000) begin //计时满30us
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
        else if (PMcnt == 32'd2999) begin //计时满30us
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
        else if (PM_down) begin //30us 开始
                PM_extra <= 1;
        end
        else if(PMcnt == 32'd3000) begin  //30us结束
                PM_extra <= 0;
        end
    end
    
//    assign PM_int = (PM_D2)||(PM_extra);
    assign PM_int = (PM_D2);
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
                end
            Start_Sample:begin
                Data_Ch0 <= AdcDataCh0;
                Data_Ch0_valid <= 1'b1;
                Data_Ch1 <= AdcDataCh1;
                Data_Ch1_valid <= 1'b1;
                Data_Ch2 <= AdcDataCh2;
                Data_Ch2_valid <= 1'b1;
            end
            Check_process:begin
                Data_Ch0 <= 16'b0;
                Data_Ch0_valid <= 1'b0;
                Data_Ch1 <= 16'b0;
                Data_Ch1_valid <= 1'b0;
                Data_Ch2 <= 16'b0;
                Data_Ch2_valid <= 1'b0;
            end
            endcase
     end
     end
    
     reg [15:0] DataToTriCh0_reg_D;
     reg [15:0] DataToTriCh1_reg_D;
     reg [15:0] DataToTriCh2_reg_D;

     reg [15:0] DataToTriCh0_reg;
     reg [15:0] DataToTriCh1_reg;
     reg [15:0] DataToTriCh2_reg;
    
    
    always@(posedge AdcSampClk or negedge reset_n ) begin
        if(!reset_n) begin
            DataToTriCh0_reg <= 16'b0;
            DataToTriCh1_reg <= 16'b0;
            DataToTriCh2_reg <= 16'b0;
            DataToTriCh0_reg_D <= 16'b0;
            DataToTriCh1_reg_D <= 16'b0;
            DataToTriCh2_reg_D <= 16'b0;

            Data_Ch0_valid_D <= 1'b0;
            Data_Ch1_valid_D <= 1'b0;
            Data_Ch2_valid_D <= 1'b0;
        end
        else begin
            DataToTriCh0_reg <= Data_Ch0;
            DataToTriCh1_reg <= Data_Ch1;
            DataToTriCh2_reg <= Data_Ch2;
            
            DataToTriCh0_reg_D <= DataToTriCh0_reg;
            DataToTriCh1_reg_D <= DataToTriCh1_reg;
            DataToTriCh2_reg_D <= DataToTriCh2_reg;
            
            Data_Ch0_valid_D <= Data_Ch0_valid;
            Data_Ch1_valid_D <= Data_Ch1_valid;
            Data_Ch2_valid_D <= Data_Ch2_valid;
        end
    end

    
    assign DataToTriCh0 = DataToTriCh0_reg_D;
    assign DataToTriCh1 = DataToTriCh1_reg_D;
    assign DataToTriCh2 = DataToTriCh2_reg_D;
    
    
    assign TrigInCh0 = (Data_Ch0_valid)&& (~Data_Ch0_valid_D);
    assign TrigInCh1 = (Data_Ch1_valid)&& (~Data_Ch1_valid_D);
    assign TrigInCh2 = (Data_Ch2_valid)&& (~Data_Ch2_valid_D);
    
endmodule