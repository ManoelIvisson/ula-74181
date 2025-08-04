module tb_ula_8bits;

logic[7:0] a, b, f;
logic[3:0] s;
logic m, c_in, a_eq_b, c_out;

ula_8bits uut (.a(a), .b(b), .s(s), .m(m), .c_in(c_in), .f(f), .c_out(c_out), .a_eq_b(a_eq_b));

initial
begin
    $dumpfile("onda_8bits.vcd");
    $dumpvars(0, tb_ula_8bits);

    a = 8'b00000000;
    b = 8'b00000000;
    s = 4'b0000;
    m = 1'b0;
    c_in = 1'b0;
    # 10;
    $display("Operação a + c_in(0): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    a = 8'b00000000;
    b = 8'b01001010;
    s = 4'b0000;
    m = 1'b0;
    c_in = 1'b1;
    # 10;
    $display("Operação a + c_in(1): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    a = 8'b00011000;
    b = 8'b01001010;
    s = 4'b0001;
    m = 1'b0;
    c_in = 1'b1;
    # 10;
    $display("Operação (a | b) + c_in(1): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    a = 8'b00111000;
    b = 8'b01001010;
    s = 4'b0001;
    m = 1'b0;
    c_in = 1'b0;
    # 10;
    $display("Operação (a | b) + c_in(0): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    a = 8'b01011000;
    b = 8'b10001000;
    s = 4'b0010;
    m = 1'b0;
    c_in = 1'b1;
    #1;
    $display("Operação (a | ~b) + c_in(1): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b c_out=%b", $time, a, b, s, f, c_out);

    a = 8'b10101000;
    b = 8'b00000011;
    s = 4'b0010;
    m = 1'b0;
    c_in = 1'b0;
    #1;
    $display("Operação (a | ~b) + c_in(0): tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    $finish;
end
endmodule