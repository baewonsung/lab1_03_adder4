`timescale 1ns/1ps
`default_nettype none

module tb_adder_4bit;
    logic [3:0] a;
    logic [3:0] b;
    wire  [3:0] s;
    wire        cout;

    integer n;
    integer checked;
    logic [4:0] expected;

    adder_4bit dut (
        .a(a),
        .b(b),
        .s(s),
        .cout(cout)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_adder_4bit);

        a = 4'd0;
        b = 4'd0;
        checked = 0;

        for (n = 0; n < 256; n = n + 1) begin
            a = n / 16;
            b = n % 16;
            expected = (n / 16) + (n % 16);
            #10;

            if ({cout, s} !== expected) begin
                $fatal(1,
                    "LAB1_FAIL adder_4bit input_a=%0d input_b=%0d expected=%0h actual=%0h",
                    a, b, expected, {cout, s});
            end

            checked = checked + 1;
            $display(
                "LAB1_CASE adder_4bit input_a=%0d input_b=%0d expected=%0h actual=%0h PASS",
                a, b, expected, {cout, s});
        end

        if (checked != 256) begin
            $fatal(1, "LAB1_FAIL adder_4bit incomplete checked=%0d", checked);
        end

        $display("LAB1_PASS adder_4bit cases=%0d", checked);
        $finish;
    end

    initial begin
        #3000;
        $fatal(1, "LAB1_FAIL adder_4bit watchdog timeout");
    end
endmodule

`default_nettype wire
