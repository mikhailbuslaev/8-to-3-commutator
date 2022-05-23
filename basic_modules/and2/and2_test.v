`include "and2.v"
`timescale 1ns/1ns

module and2_test;
    reg a, b;
    wire out;
    initial begin
        a <= 0;
        b <= 0;
    end
    and2 dd0(.a(a),.b(b),.out(out));
    always #10 a = ~a;
    always #5 b = ~b;
    initial begin
        $dumpfile("and2_test.vcd");
        $dumpvars;
        $display("test complete");
        #50;
        $finish;
    end
endmodule