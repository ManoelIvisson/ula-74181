module tb_ula_74181;

logic[3:0] a, b, s, f, c_out;
logic m, c_in, a_eq_b;


ula_74181 uut (.a(a), .b(b), .s(s), .m(m), .c_in(c_in), .f(f), .c_out(c_out), .a_eq_b(a_eq_b));

initial
begin
    $dumpfile("onda.vcd");
    $dumpvars(0, tb_ula_74181);
    a = 4'b0000;
    b = 4'b0000;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b0000;
    # 200;
    
    $stop;
end
endmodule