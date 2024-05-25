`timescale 1ns / 1ps
module PulseConvert
# 
(
    parameter NumberOfSpan = 4
)
(
    input iClk0, 
    input iRstn0,
    input Pulse0,

    input iClk1, 
    input iRstn1,
    output Pulse1
);

    reg [NumberOfSpan:0] Signal_reg;
    reg       rD;

    always @ (posedge iClk0) begin
        if (!iRstn0) begin
            Signal_reg <= {NumberOfSpan{1'b0}};
            rD <= 1'b0;
        end else begin
            Signal_reg <= {Signal_reg[NumberOfSpan-1:0], Pulse0};
            if (Signal_reg == {{NumberOfSpan{1'b0}},1'b1}) begin
                rD <= 1'b1;
            end else if (Signal_reg == {1'b1, {NumberOfSpan{1'b0}}}) begin
                rD <= 1'b0;
            end else begin
                rD <= rD;
            end
        end
    end

    reg [1:0] rreg;
    reg       rPulse;
      
    always @ (posedge iClk1) begin
        if (!iRstn1) begin
            rreg <= 2'b00;
            rPulse <= 0;
        end else begin
            rreg <= {rreg[0], rD};
                
            if (rreg == 2'b01) begin
                rPulse <= 1'b1;
            end else begin
                rPulse <= 1'b0;
            end
        end
    end

    assign Pulse1 = rPulse;


endmodule
