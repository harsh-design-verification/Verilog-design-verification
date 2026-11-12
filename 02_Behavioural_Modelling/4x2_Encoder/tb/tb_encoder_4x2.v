`timescale 1ns/1ps

module tb_encoder_4x2;

    reg D0, D1, D2, D3;
    wire Y0, Y1;

    // DUT Instantiation
    encoder_4x2 dut (
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .Y0(Y0),
        .Y1(Y1)
    );

    initial begin

        $display("D3 D2 D1 D0 | Y1 Y0");
        $monitor(" %b  %b  %b  %b |  %b  %b",
                  D3, D2, D1, D0, Y1, Y0);

        // D0 Active
        D3 = 0; D2 = 0; D1 = 0; D0 = 1; #10;
        if ({Y1,Y0} !== 2'b00)
            $display("ERROR: D0 Test Failed!");

        // D1 Active
        D3 = 0; D2 = 0; D1 = 1; D0 = 0; #10;
        if ({Y1,Y0} !== 2'b01)
            $display("ERROR: D1 Test Failed!");

        // D2 Active
        D3 = 0; D2 = 1; D1 = 0; D0 = 0; #10;
        if ({Y1,Y0} !== 2'b10)
            $display("ERROR: D2 Test Failed!");

        // D3 Active
        D3 = 1; D2 = 0; D1 = 0; D0 = 0; #10;
        if ({Y1,Y0} !== 2'b11)
            $display("ERROR: D3 Test Failed!");

        // No Input Active
        D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;

        // Multiple Inputs Active
        D3 = 0; D2 = 1; D1 = 1; D0 = 0; #10;

        $display("Encoder Testing Completed.");
        $finish;

    end

endmodule