module ula_74181(
    input logic[3:0] a, b, s,
    input logic m, c_in,
    output logic[3:0] f,
    output logic a_eq_b, c_out
);
always_comb begin : operacoes
    case (m)
        1'b0: case (s)
            4'b0000: {c_out, f} = a + c_in;
            4'b0001: {c_out, f} = (a | b) + c_in;
            4'b0010: {c_out, f} = 5'b0 + (a | (~b & 4'b1111)) + c_in;
            4'b0011: begin
                f = -1 + c_in; 
                c_out = 0;
            end
            4'b0100: {c_out, f} = a + (a & ~b) + c_in;
            4'b0101: {c_out, f} = (a | b) + (a & ~b) + c_in;
            4'b0110: {c_out, f} = a - b - c_in;
            4'b0111: begin
                f = (a & ~b) - c_in; 
                c_out = 0;
            end
            4'b1000: {c_out, f} = a + (a & b) + c_in;
            4'b1001: {c_out, f} = a + b + c_in;
            4'b1010: {c_out, f} = (a | (~b & 4'b1111)) + (a & b) + c_in;
            4'b1011: begin 
                f = (a & b) - c_in; 
                c_out = 0;
            end
            4'b1100: {c_out, f} = a + a + c_in;
            4'b1101: {c_out, f} = (a | b) + a + c_in;
            4'b1110: {c_out, f} = (a | (~b & 4'b1111)) + a + c_in;
            4'b1111: begin 
                f = a - c_in; 
                c_out = 0;
            end
            default: begin 
                f = 4'b0000; 
                c_out = 0;
            end
        endcase 
        1'b1: case (s)
            4'b0000: begin 
                f = ~a;
                c_out = 0;
            end
            4'b0001: begin 
                f = ~(a | b);
                c_out = 0;
            end
            4'b0010: begin 
                f = ~a & b;
                c_out = 0;
            end
            4'b0011: begin 
                f = 0;
                c_out = 0;
            end
            4'b0100: begin 
                f = ~(a & b);
                c_out = 0;
            end
            4'b0101: begin 
                f = ~b;
                c_out = 0;
            end
            4'b0110: begin 
                f = a ^ b;
                c_out = 0;
            end
            4'b0111: begin 
                f = a & ~b;
                c_out = 0;
            end
            4'b1000: begin 
                f = ~a | b;
                c_out = 0;
            end
            4'b1001: begin 
                f = ~(a ^ b);
                c_out = 0;
            end
            4'b1010: begin 
                f = b;
                c_out = 0;
            end
            4'b1011: begin 
                f = a & b;
                c_out = 0;
            end
            4'b1100: begin 
                f = 1;
                c_out = 0;
            end
            4'b1101: begin 
                f = a | ~b;
                c_out = 0;
            end
            4'b1110: begin 
                f = a | b;
                c_out = 0;
            end
            4'b1111: begin 
                f = a;
                c_out = 0;
            end
            default: begin 
                f = 4'b0000;
                c_out = 0;
            end
        endcase
        default: begin 
            f = 4'b0000; 
            c_out = 0;
        end
    endcase


    a_eq_b = a == b;
end
endmodule