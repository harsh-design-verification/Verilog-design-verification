module full_subtractor (
    input A,
    input B,
    input Bin,
    output reg Diff,
    output reg Bout
);

    always @(*) begin
        Diff = A ^ B ^ Bin;
        Bout = (~A & B) | (~(A ^ B) & Bin);
    end

endmodule