`include "voter.v"
module voter_tb;
reg [3:0] IN;
wire [3:1] OUT;
voter_if v( IN, OUT );
initial
begin
    $dumpfile("voter.vcd");
    $dumpvars(0, v);
    #0  IN[3:0] = 4'b0000;
    #10 IN[3:0] = 4'b0001;
    #10 IN[3:0] = 4'b0010;
    #10 IN[3:0] = 4'b0011;
    #10 IN[3:0] = 4'b0100;
    #10 IN[3:0] = 4'b0101;
    #10 IN[3:0] = 4'b0110;
    #10 IN[3:0] = 4'b0111;
    #10 IN[3:0] = 4'b1000;
    #10 IN[3:0] = 4'b1001;
    #10 IN[3:0] = 4'b1010;
    #10 IN[3:0] = 4'b1011;
    #10 IN[3:0] = 4'b1100;
    #10 IN[3:0] = 4'b1101;
    #10 IN[3:0] = 4'b1110;
    #10 IN[3:0] = 4'b1111;
    #10 $finish;
end
endmodule
