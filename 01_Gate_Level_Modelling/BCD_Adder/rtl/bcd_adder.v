module bcd_adder (
    input [3:0] a_bcd,
    input [3:0] b_bcd,
    input Cin,
    output [3:0] sum_bcd,
    output Cout
);

    wire [3:0] sum_temp;
    wire c_out_temp;

    wire a1, a2, o1;
    wire [3:0] b_rca_2;

    // First Ripple Carry Adder
    ripple_carry_adder RCA1 (
        .A(a_bcd),
        .B(b_bcd),
        .Cin(Cin),
        .Sum(sum_temp),
        .Cout(c_out_temp)
    );

    // BCD Invalid Detection Logic
    and G1(a1, sum_temp[3], sum_temp[2]);

    and G2(a2, sum_temp[3], sum_temp[1]);

    or G3(o1, c_out_temp, a1, a2);

    // BCD Correction: 0110
    assign b_rca_2[3] = 1'b0;
    assign b_rca_2[2] = o1;
    assign b_rca_2[1] = o1;
    assign b_rca_2[0] = 1'b0;

    // Second Ripple Carry Adder
    ripple_carry_adder RCA2 (
        .A(sum_temp),
        .B(b_rca_2),
        .Cin(1'b0),
        .Sum(sum_bcd),
        .Cout()
    );

    // Decimal Carry Output
    assign Cout = o1;

endmodule