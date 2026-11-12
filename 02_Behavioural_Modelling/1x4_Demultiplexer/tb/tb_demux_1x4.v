`timescale 1ns/1ps

module tb_demux_1x4;

    reg D;
    reg S0, S1;

    wire Y0, Y1, Y2, Y3;

    integer i, j;

    // DUT Instantiation
    demux_1x4 dut (
        .D(D),
        .S0(S0),
        .S1(S1),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin

        $display("D S1 S0 | Y0 Y1 Y2 Y3");

        for (i = 0; i <= 1; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin

                D = i;
                {S1, S0} = j;

                #10;

                $display("%b  %b  %b | %b  %b  %b  %b",
                    D, S1, S0, Y0, Y1, Y2, Y3);

                if (Y0 !== ((j == 0) ? D : 1'b0) ||
                    Y1 !== ((j == 1) ? D : 1'b0) ||
                    Y2 !== ((j == 2) ? D : 1'b0) ||
                    Y3 !== ((j == 3) ? D : 1'b0)) begin
                    $display("ERROR: Test Failed!");
                end

            end
        end

        $display("Demultiplexer Testing Completed.");
        $finish;
    end

endmodule