`timescale 10ns/1ns
`include "./mem.v"

module testbench;

reg [32:0] memory [251:0]; 			//申请n个33位的存储单元

reg [32:0] mem;
reg clk;
wire [32:0] out; 

mem mem_tb(
	.clk(clk),
	.mem(mem),
	.wave(out)
);

initial begin
	clk = 1;
	forever #1 clk = ~clk;
end

integer i;
initial begin
	mem = {33{1'b0}};
	#10
	for(i=0; i<251; i=i+1) begin
		#10							// 此数值控制字符宽度
		mem = memory[i]; 
	end

end

initial begin
	$readmemb("memb.txt", memory);
end

initial begin
	$dumpfile("./tmp/testbench.vcd");
    $dumpvars(0, testbench);
    #2520
    $finish;
end

endmodule