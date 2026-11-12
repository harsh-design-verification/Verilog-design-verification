`timescale 1ns/1ps

module tb_bcd_adder;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    integer i, j, k;
    integer expected;

    // DUT Instantiation
    bcd_adder dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $display(" A    B   Cin | Cout Sum");

        for (i = 0; i <= 9; i = i + 1) begin
            for (j = 0; j <= 9; j = j + 1) begin
                for (k = 0; k <= 1; k = k + 1) begin

                    A = i;
                    B = j;
                    Cin = k;

                    expected = i + j + k;

                    #10;

                    if (expected > 9) begin
                        expected = expected + 6;
                    end

                    if ({Cout, Sum} !== expected[4:0])
                        $display("ERROR: A=%d B=%d Cin=%d", i, j, k);

                    $display("%d    %d    %d  |  %b   %d",
                             A, B, Cin, Cout, Sum);

                end
            end
        end

        $display("BCD Adder Testing Completed.");

        $finish;

    end

endmodule