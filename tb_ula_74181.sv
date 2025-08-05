module tb_ula_74181;

logic[3:0] a, b, s, f;
logic m, c_in, a_eq_b, c_out;

ula_74181 uut (.a(a), .b(b), .s(s), .m(m), .c_in(c_in), .f(f), .c_out(c_out), .a_eq_b(a_eq_b));

initial
begin
    $dumpfile("onda.vcd");
    $dumpvars(0, tb_ula_74181);

   

    $stop;
end
endmodule