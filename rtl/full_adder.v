
module full_adder (
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    wire x1, a1, a2;

    xor (x1, A, B);
    xor (Sum, x1, Cin);

    and (a1, A, B);
    and (a2, x1, Cin);

    or (Cout, a1, a2);

endmodule
