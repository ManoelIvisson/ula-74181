module ula_74181(
    input logic[3:0] a, b, s,
    input logic m,
    output logic[3:0] f
);
always_comb begin : operacoes
    case (m)
        1'b0: case (s)
            4'b0000: f = ~a;
            4'b0001: f = ~a;
            4'b0010: f = ~a;
            4'b0011: f = ~a;
            4'b0100: f = ~a;
            4'b0101: f = ~a;
            4'b0110: f = ~a;
            4'b0111: f = ~a;
            4'b1000: f = ~a;
            4'b1001: f = ~a;
            4'b1010: f = ~a;
            4'b1011: f = ~a;
            4'b1100: f = ~a;
            4'b1101: f = ~a;
            4'b1110: f = ~a;
            4'b1111: f = ~a;
        endcase 
        1'b1: case (s)
            4'b0000: f = ~a;
            4'b0001: f = ~(a | b);
            4'b0010: f = ~a & b;
            4'b0011: f = 0;
            4'b0100: f = ~(a & b);
            4'b0101: f = ~b;
            4'b0110: f = a ^ b;
            4'b0111: f = a & ~b;
            4'b1000: f = ~a | b;
            4'b1001: f = ~(a ^ b);
            4'b1010: f = b;
            4'b1011: f = a & b;
            4'b1100: f = 1;
            4'b1101: f = a | ~b;
            4'b1110: f = a | b;
            4'b1111: f = a;
        endcase
    endcase
end
endmodule