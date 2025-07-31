module ula_8bits(
    input logic[7:0] a, b, 
    input logic[3:0] s,
    input logic m, c_in,
    output logic[7:0] f,
    output logic a_eq_b, c_out
);

    logic[3:0] f_primeira, f_segunda;
    logic c_out_primeira, c_out_segunda;
    logic a_eq_b_primeira, a_eq_b_segunda;

    ula_74181 primeira_ula (
        .a(a[3:0]),
        .b(b[3:0]),
        .s(s),
        .m(m),
        .c_in(c_in),
        .f(f_primeira),
        .c_out(c_out_primeira),
        .a_eq_b(a_eq_b_primeira)
    );

    ula_74181 segunda_ula (
        .a(a[7:4]),
        .b(b[7:4]),
        .s(s),
        .m(m),
        .c_in(c_out_primeira),
        .f(f_segunda),
        .c_out(c_out_segunda),
        .a_eq_b(a_eq_b_segunda)
    );

    assign f = {f_segunda, f_primeira};
    assign c_out = c_out_segunda;
    assign a_eq_b = a_eq_b_primeira & a_eq_b_segunda;
endmodule