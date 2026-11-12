module mux_4x1 (
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output Y
);

    wire nS0, nS1;
    wire w0, w1, w2, w3;

    // NOT Gates
    not (nS0, S0);
    not (nS1, S1);

    // AND Gates
    and (w0, I0, nS1, nS0);
    and (w1, I1, nS1, S0);
    and (w2, I2, S1, nS0);
    and (w3, I3, S1, S0);

    // OR Gate
    or (Y, w0, w1, w2, w3);

endmodule