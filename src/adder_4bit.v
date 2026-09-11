`default_nettype none

module adder_4bit (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire [3:0] s,
    output wire       cout
);
    assign {cout, s} = {1'b0, a} + {1'b0, b};
endmodule

`default_nettype wire
