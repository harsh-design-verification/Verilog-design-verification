module half_subtractor (
    input A,
    input B,
    output reg Diff,
    output reg Borrow
);

    always @(*) begin
        Diff   = A ^ B;
        Borrow = (~A) & B;
    end

endmodule