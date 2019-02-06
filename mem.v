module mem(
    input clk,
    input [32:0] mem,
    output [32:0] wave
);

assign wave = mem;

endmodule