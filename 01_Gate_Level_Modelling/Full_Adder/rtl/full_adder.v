
module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    wire x1, x2, x3;

    xor (x1, A, B);
    xor (Sum, x1, Cin);

    and (x2, A, B);
    and (x3, x1, Cin);

    or (Cout, x2, x3);

endmodule
