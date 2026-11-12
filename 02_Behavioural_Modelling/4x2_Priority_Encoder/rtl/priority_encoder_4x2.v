module priority_encoder_4x2 (
    input D0,
    input D1,
    input D2,
    input D3,
    output reg [1:0] Y,
    output reg Valid
);

    always @(*) begin

        Valid = 1'b1;

        if (D3)
            Y = 2'b11;

        else if (D2)
            Y = 2'b10;

        else if (D1)
            Y = 2'b01;

        else if (D0)
            Y = 2'b00;

        else begin
            Y = 2'b00;
            Valid = 1'b0;
        end

    end

endmodule