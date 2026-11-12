`timescale 1ns/1ps

module tb_bcd_adder;

    reg [3:0] a_bcd, b_bcd;
    reg Cin;

    wire [3:0] sum_bcd;
    wire Cout;

    integer i, j, k;
    integer expected_total;
    integer expected_sum;
    integer expected_carry;

    // DUT Instantiation
    bcd_adder dut (
        .a_bcd(a_bcd),
        .b_bcd(b_bcd),
        .Cin(Cin),
        .sum_bcd(sum_bcd),
        .Cout(Cout)
    );

    initial begin

        $display("A  B  Cin | Cout  Sum");

        for (i = 0; i <= 9; i = i + 1) begin
            for (j = 0; j <= 9; j = j + 1) begin
                for (k = 0; k <= 1; k = k + 1) begin

                    a_bcd = i;
                    b_bcd = j;
                    Cin = k;

                    expected_total = i + j + k;
                    expected_sum = expected_total % 10;
                    expected_carry = expected_total / 10;

                    #10;

                    $display("%d  %d   %d  |   %d    %d",
                        a_bcd, b_bcd, Cin, Cout, sum_bcd);

                    if (sum_bcd !== expected_sum[3:0] ||
                        Cout !== expected_carry[0]) begin

                        $display("ERROR: Test failed!");

                    end

                end
            end
        end

        $display("BCD Adder Testing Completed.");
        $finish;

    end

endmodule