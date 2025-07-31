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
    # 10
    $display("Operação a + 1: tempo=%0t: byte a=%b byte b=%b bits s=%b byte f=%b", $time, a, b, s, f);

    $stop;
end
endmodule