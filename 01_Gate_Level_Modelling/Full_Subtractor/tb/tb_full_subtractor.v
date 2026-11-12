`timescale 1ns/1ps

module tb_full_subtractor;

    reg A, B, Bin;
    wire Diff, Bout;

    // DUT Instantiation
    full_subtractor dut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin

        $display("A B Bin | Diff Bout");
        $monitor("%b %b  %b  |  %b    %b",
                  A, B, Bin, Diff, Bout);

        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $finish;
    end

endmodule