module axil_read(
    input             s_axi_aclk      ,
    input             s_axi_aresetn   ,
    input             s_axi_arready   ,
    input             s_axi_rvalid    ,
    input      [31:0] s_axi_rdata     ,
    input       [1:0] s_axi_rresp     ,
    output reg [31:0] s_axi_araddr    ,
    output reg        s_axi_arvalid   ,
    output reg        s_axi_rready    ,
    
    input             s_axi_cfg_rvalid,
    input      [31:0] s_axi_cfg_raddr ,
    output     [31:0] s_axi_cfg_rdata ,
    output            s_axi_cfg_rdv   ,
    output            s_axi_cfg_rready
);

    reg      [31:0] r_cfg_raddr;
    reg      [31:0] r_cfg_rdata;
    reg             r_cfg_rdv;

    localparam AXILR_FSM_BIT = 4;
    localparam AXIL_RESET = 4'b0001;
    localparam AXIL_READY = 4'b0010;
    localparam AXIL_RADDR = 4'b0100;
    localparam AXIL_RDATA = 4'b1000;

    reg     [AXILR_FSM_BIT-1:0]       rAXILR_cur_state          ;
    reg     [AXILR_FSM_BIT-1:0]       rAXILR_nxt_state          ;
    
    always @ (posedge s_axi_aclk) begin
        if(!s_axi_aresetn)  
            rAXILR_cur_state <= AXIL_RESET;
        else                
            rAXILR_cur_state <= rAXILR_nxt_state;
    end

    always @ ( * ) begin
        case(rAXILR_cur_state)
            AXIL_RESET:
                rAXILR_nxt_state <= AXIL_READY;
            AXIL_READY:
                rAXILR_nxt_state <= (s_axi_cfg_rvalid==1) ? AXIL_RADDR : AXIL_READY;
            AXIL_RADDR:
                rAXILR_nxt_state <= (s_axi_arready==1 && s_axi_arvalid==1) ? AXIL_RDATA : AXIL_RADDR;
            AXIL_RDATA:
                rAXILR_nxt_state <= (s_axi_rvalid==1) ? AXIL_READY : AXIL_RDATA;
            default:
                rAXILR_nxt_state <= AXIL_RESET;    
        endcase
    end
     
    always @ (posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            s_axi_araddr  <= 0;
            s_axi_arvalid <= 0;
            s_axi_rready  <= 0;

            r_cfg_raddr   <= 0;
            r_cfg_rdata   <= 0;
            r_cfg_rdv     <= 0;
        end else begin
            case(rAXILR_cur_state)
                AXIL_RESET : begin 
                    s_axi_araddr  <= 0;
                    s_axi_arvalid <= 0;
                    s_axi_rready  <= 0;
                    
                    r_cfg_raddr   <= 0;
                    r_cfg_rdata   <= 0;
                    r_cfg_rdv     <= 0;
                end    
                AXIL_READY : begin 
                    s_axi_araddr  <= s_axi_cfg_rvalid ? s_axi_cfg_raddr : 32'd0;
                    s_axi_arvalid <= s_axi_cfg_rvalid ? 1'b1 : 1'b0;
                    s_axi_rready  <= 0;
                    
                    r_cfg_raddr   <= s_axi_cfg_rvalid ? s_axi_cfg_raddr : 32'd0;
                    r_cfg_rdata   <= 0;
                    r_cfg_rdv     <= 0;
                end    
                AXIL_RADDR : begin
                    s_axi_araddr  <= s_axi_araddr;
                    s_axi_arvalid <= (s_axi_arready==1) ? 32'd0 : s_axi_arvalid;
                    s_axi_rready  <= (s_axi_arready==1) ? 1'b1 : s_axi_rready;
                    
                    r_cfg_raddr   <= r_cfg_raddr;
                    r_cfg_rdata   <= 0;
                    r_cfg_rdv     <= 0;
                end       
                AXIL_RDATA : begin
                    s_axi_araddr  <= s_axi_araddr;
                    s_axi_arvalid <= 1'b0;
                    s_axi_rready  <= (s_axi_rvalid==1) ? 1'b0 : s_axi_rready;
                    
                    r_cfg_raddr   <= r_cfg_raddr;
                    r_cfg_rdata   <= (s_axi_rvalid==1) ? s_axi_rdata : 32'd0;
                    r_cfg_rdv     <= (s_axi_rvalid==1) ? 1'b1 : 1'b0;
                end  
                default : begin
                    s_axi_araddr  <= 0;
                    s_axi_arvalid <= 0;
                    s_axi_rready  <= 0;
                    
                    r_cfg_raddr   <= 0;
                    r_cfg_rdata   <= 0;
                    r_cfg_rdv     <= 0;                  
                end                                                  
            endcase
        end
    end

    assign s_axi_cfg_rdata  = r_cfg_rdata;
    assign s_axi_cfg_rdv    = r_cfg_rdv;
    assign s_axi_cfg_rready = (rAXILR_cur_state == AXIL_READY) ? 1'b1 : 1'b0;

endmodule