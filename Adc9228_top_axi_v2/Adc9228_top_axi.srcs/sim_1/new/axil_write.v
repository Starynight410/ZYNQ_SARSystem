module axil_write(
    input             s_axi_aclk      ,
    input             s_axi_aresetn   ,
    input             s_axi_awready   ,
    input             s_axi_wready    ,
    input             s_axi_bvalid    ,
    input       [1:0] s_axi_bresp     ,
    output reg [31:0] s_axi_awaddr    ,
    output reg        s_axi_awvalid   ,
    output reg [31:0] s_axi_wdata     ,
    output reg        s_axi_wvalid    ,
    output reg        s_axi_bready    ,
    
    input             s_axi_cfg_wvalid,
    input      [31:0] s_axi_cfg_waddr ,
    input      [31:0] s_axi_cfg_wdata ,
    output            s_axi_cfg_wready
);

    reg      [31:0] r_cfg_waddr;
    reg      [31:0] r_cfg_wdata;

    localparam AXILW_FSM_BIT = 5;
    localparam AXIL_RESET = 5'b0_0001;
    localparam AXIL_READY = 5'b0_0010;
    localparam AXIL_WADDR = 5'b0_0100;
    localparam AXIL_WDATA = 5'b0_1000;
    localparam AXIL_WRESP = 5'b1_0000;

    reg     [AXILW_FSM_BIT-1:0]       rAXILW_cur_state          ;
    reg     [AXILW_FSM_BIT-1:0]       rAXILW_nxt_state          ;

    always @ (posedge s_axi_aclk) begin
        if(!s_axi_aresetn)  
            rAXILW_cur_state <= AXIL_RESET;
        else                
            rAXILW_cur_state <= rAXILW_nxt_state;
    end

    always @ ( * ) begin
        case(rAXILW_cur_state)
            AXIL_RESET:
                rAXILW_nxt_state <= AXIL_READY;
            AXIL_READY:
                rAXILW_nxt_state <= (s_axi_cfg_wvalid == 1) ? AXIL_WADDR : AXIL_READY;
            AXIL_WADDR:
                rAXILW_nxt_state <= (s_axi_awready==1 && s_axi_awvalid==1) ? 
                                    (s_axi_wready==1 && s_axi_wvalid==1) ? AXIL_WRESP : AXIL_WDATA : AXIL_WADDR;
            AXIL_WDATA:
                rAXILW_nxt_state <= (s_axi_wready==1) ? AXIL_WRESP : AXIL_WDATA;
            AXIL_WRESP:
                rAXILW_nxt_state <= (s_axi_bvalid==1) ? AXIL_READY : AXIL_WRESP;
            default:
                rAXILW_nxt_state <= AXIL_RESET;    
        endcase
    end
 
    always @ (posedge s_axi_aclk) begin
        if(!s_axi_aresetn) begin
                s_axi_awaddr  <= 0;
                s_axi_awvalid <= 0;
                s_axi_wdata   <= 0;
                s_axi_wvalid  <= 0;
                s_axi_bready  <= 0;

                r_cfg_waddr   <= 0;
                r_cfg_wdata   <= 0;
        end else begin
            case(rAXILW_cur_state)
                AXIL_RESET : begin 
                    s_axi_awaddr  <= 0;
                    s_axi_awvalid <= 0;
                    s_axi_wdata   <= 0;
                    s_axi_wvalid  <= 0;
                    s_axi_bready  <= 0;

                    r_cfg_waddr   <= 0;
                    r_cfg_wdata   <= 0;
                end   
                AXIL_READY : begin 
                    s_axi_awaddr  <= 0;
                    s_axi_awvalid <= 0;
                    s_axi_wdata   <= 0;
                    s_axi_wvalid  <= 0;
                    s_axi_bready  <= 0;

                    r_cfg_waddr   <= s_axi_cfg_wvalid ? s_axi_cfg_waddr : 32'd0;
                    r_cfg_wdata   <= s_axi_cfg_wvalid ? s_axi_cfg_wdata : 32'd0;
                end    
                AXIL_WADDR : begin
                    s_axi_awaddr  <= r_cfg_waddr;
                    s_axi_awvalid <= 1;
                    s_axi_wdata   <= r_cfg_wdata;     
                    s_axi_wvalid  <= 1;
                    s_axi_bready  <= 0;     

                    r_cfg_waddr   <= r_cfg_waddr;
                    r_cfg_wdata   <= r_cfg_wdata;
                end       
                AXIL_WDATA : begin
                    s_axi_awaddr  <= s_axi_awaddr;
                    s_axi_awvalid <= 0;
                    s_axi_wdata   <= r_cfg_wdata;
                    s_axi_wvalid  <= (s_axi_wready==1'b1) ? 0 : s_axi_wvalid;
                    s_axi_bready  <= 0;     
                    
                    r_cfg_waddr   <= r_cfg_waddr;
                    r_cfg_wdata   <= r_cfg_wdata;
                end     
                AXIL_WRESP : begin
                    s_axi_awaddr  <= s_axi_awaddr;
                    s_axi_awvalid <= 0;
                    s_axi_wdata   <= r_cfg_wdata;
                    s_axi_wvalid  <= 0;
                    s_axi_bready  <= (s_axi_bvalid==1'b1) ? 1 : s_axi_bready;     
                    
                    r_cfg_waddr   <= r_cfg_waddr;
                    r_cfg_wdata   <= r_cfg_wdata;
                end              
                default : begin
                    s_axi_awaddr  <= 0;
                    s_axi_awvalid <= 0;
                    s_axi_wdata   <= 0;
                    s_axi_wvalid  <= 0;
                    s_axi_bready  <= 0;
                    
                    r_cfg_waddr   <= 0;
                    r_cfg_wdata   <= 0;
                end                                                  
            endcase
        end
    end
 
    assign s_axi_cfg_wready = (rAXILW_cur_state == AXIL_READY) ? 1'b1 : 1'b0;
    
endmodule