module led_blink_controller #(
    parameter CLK_FREQ_HZ = 100_000_000,
    parameter BLINK_FREQ_HZ = 1
)(
    input wire clk,
    input wire reset,
    output reg led
);

    localparam integer COUNT_MAX =
        CLK_FREQ_HZ / (2 * BLINK_FREQ_HZ);

    reg [31:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            led <= 0;
        end
        else begin
            if (counter >= COUNT_MAX - 1) begin
                counter <= 0;
                led <= ~led;
            end
            else begin
                counter <= counter + 1;
            end
        end
    end

endmodule

