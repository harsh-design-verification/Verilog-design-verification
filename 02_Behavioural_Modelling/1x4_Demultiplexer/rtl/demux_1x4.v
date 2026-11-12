module demux_1x4 (
    input D,
    input S0,
    input S1,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);

    always @(*) begin

        Y0 = 1'b0;
        Y1 = 1'b0;
        Y2 = 1'b0;
        Y3 = 1'b0;

        case ({S1, S0})

            2'b00: Y0 = D;
            2'b01: Y1 = D;
            2'b10: Y2 = D;
            2'b11: Y3 = D;

            default: begin
                Y0 = 1'b0;
                Y1 = 1'b0;
                Y2 = 1'b0;
                Y3 = 1'b0;
            end

        endcase
    end

endmodule