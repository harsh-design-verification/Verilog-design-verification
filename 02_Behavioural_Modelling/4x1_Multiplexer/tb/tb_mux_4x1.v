`timescale 1ns/1ps

module tb_mux_4x1;

    reg I0, I1, I2, I3;
    reg S0, S1;

    wire Y;

    // DUT Instantiation
    mux_4x1 dut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );

    integer i;

    initial begin

        $display("S1 S0 | I0 I1 I2 I3 | Y");

        for (i = 0; i < 4; i = i + 1) begin

            {S1, S0} = i;

            I0 = 1;
            I1 = 0;
            I2 = 1;
            I3 = 0;

            #10;

            $display(" %b  %b |  %b  %b  %b  %b | %b",
                      S1, S0, I0, I1, I2, I3, Y);

        end

        $finish;
    end

endmodule