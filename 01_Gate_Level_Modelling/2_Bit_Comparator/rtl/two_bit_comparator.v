module two_bit_comparator (
    input [1:0] A,
    input [1:0] B,
    output A_gt_B,
    output A_eq_B,
    output A_lt_B
);

    wire x1, x2;
    wire nA1, nB1, nA0, nB0;
    wire g1, g2, l1, l2;

    // Equality Logic
    xnor (x1, A[1], B[1]);
    xnor (x2, A[0], B[0]);
    and (A_eq_B, x1, x2);

    // Greater Than Logic
    not (nB1, B[1]);
    not (nB0, B[0]);

    and (g1, A[1], nB1);
    and (g2, x1, A[0], nB0);
    or (A_gt_B, g1, g2);

    // Less Than Logic
    not (nA1, A[1]);
    not (nA0, A[0]);

    and (l1, nA1, B[1]);
    and (l2, x1, nA0, B[0]);
    or (A_lt_B, l1, l2);

endmodule