`timescale 1ns/1ps

module tb_two_bit_comparator;

    reg [1:0] A, B;

    wire A_gt_B;
    wire A_eq_B;
    wire A_lt_B;

    integer i, j;

    // DUT Instantiation
    two_bit_comparator dut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    initial begin

        $display("A  B | A_gt_B A_eq_B A_lt_B");

        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin

                A = i;
                B = j;

                #10;

                $display("%b %b |    %b      %b      %b",
                    A, B, A_gt_B, A_eq_B, A_lt_B);

                if (A_gt_B !== (i > j) ||
                    A_eq_B !== (i == j) ||
                    A_lt_B !== (i < j)) begin

                    $display("ERROR: Test Failed!");

                end

            end
        end

        $display("Comparator Testing Completed.");
        $finish;

    end

endmodule