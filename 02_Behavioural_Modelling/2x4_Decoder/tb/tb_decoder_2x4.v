`timescale 1ns/1ps

module tb_decoder_2x4;

    reg A, B, En;
    wire Y0, Y1, Y2, Y3;

    integer i, j;

    // DUT Instantiation
    decoder_2x4 dut (
        .A(A),
        .B(B),
        .En(En),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin

        $display("En A B | Y0 Y1 Y2 Y3");

        for (i = 0; i <= 1; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin

                En = i;
                {A, B} = j;

                #10;

                $display("%b  %b %b | %b  %b  %b  %b",
                    En, A, B, Y0, Y1, Y2, Y3);

                if (En == 0 && {Y0,Y1,Y2,Y3} !== 4'b0000)
                    $display("ERROR: Decoder output should be zero!");

                if (En == 1 && {Y0,Y1,Y2,Y3} !== (4'b0001 << j))
                    $display("ERROR: Decoder output mismatch!");

            end
        end

        $display("Decoder Testing Completed.");
        $finish;
    end

endmodule