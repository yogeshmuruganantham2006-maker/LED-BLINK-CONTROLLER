`timescale 1ns/1ps

module led_blink_tb;

    reg clk;
    reg reset;
    wire led;

    led_blink_controller #(
        .CLK_FREQ_HZ(100),
        .BLINK_FREQ_HZ(2)
    ) uut (
        .clk(clk),
        .reset(reset),
        .led(led)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("led_blink.vcd");
        $dumpvars(0, led_blink_tb);

        reset = 1;

        repeat(2) @(posedge clk);
        @(negedge clk);
        reset = 0;

        if (led !== 0)
            $fatal(1, "FAIL: LED reset value incorrect");

        repeat(24) @(posedge clk);
        #1;

        if (led !== 0)
            $fatal(1, "FAIL: LED toggled too early");

        @(posedge clk);
        #1;

        if (led !== 1)
            $fatal(1, "FAIL: LED did not turn ON");

        repeat(24) @(posedge clk);
        #1;

        if (led !== 1)
            $fatal(1, "FAIL: LED turned OFF too early");

        @(posedge clk);
        #1;

        if (led !== 0)
            $fatal(1, "FAIL: LED did not turn OFF");

        $display("PASS: LED Blink Controller simulation successful");

        $finish;
    end

endmodule
