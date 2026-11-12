module encoder_4x2 (
    input D0,
    input D1,
    input D2,
    input D3,
    output reg Y0,
    output reg Y1
);

    always @(*) begin

        case ({D3, D2, D1, D0})

            4'b0001: begin
                Y1 = 1'b0;
                Y0 = 1'b0;
            end

            4'b0010: begin
                Y1 = 1'b0;
                Y0 = 1'b1;
            end

            4'b0100: begin
                Y1 = 1'b1;
                Y0 = 1'b0;
            end

            4'b1000: begin
                Y1 = 1'b1;
                Y0 = 1'b1;
            end

            default: begin
                Y1 = 1'b0;
                Y0 = 1'b0;
            end

        endcase
    end

endmodule