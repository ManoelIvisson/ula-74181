module tb_ula_74181;

logic[3:0] a, b, s, f, c_out;
logic m, c_in, a_eq_b;

ula_74181 uut (.a(a), .b(b), .s(s), .m(m), .c_in(c_in), .f(f), .c_out(c_out), .a_eq_b(a_eq_b));

initial
begin
    $dumpfile("onda.vcd");
    $dumpvars(0, tb_ula_74181);

    // Operação Aritimetica - a + 1
    a = 4'b0000; 
    b = 4'b0000; 
    m = 1'b0;    
    c_in = 1'b0; 
    s = 4'b0000; 
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);
    
    // Operação Aritimetica - a | b
    a = 4'b0001; 
    b = 4'b0010; 
    m = 1'b0;    
    c_in = 1'b1; 
    s = 4'b0001; 
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a | ~b) + 1
    a = 4'b0001;
    b = 4'b0011;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b0010;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - -1
    a = 4'b0011;
    b = 4'b0011;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b0011;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a + (a & ~b) + 1
    a = 4'b0001;
    b = 4'b0011;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b0100;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a | b) + (a & ~b)
    a = 4'b0101;
    b = 4'b0011;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b0101;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a - b
    a = 4'b0101;
    b = 4'b0011;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b0110;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a & ~b) - 1
    a = 4'b1101;
    b = 4'b1010;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b0111;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a + (a & b) + 1
    a = 4'b1101;
    b = 4'b1010;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b1000;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a + b
    a = 4'b0101;
    b = 4'b1010;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b1001;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a | ~b) + (a & b) + 1
    a = 4'b0101;
    b = 4'b1010;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b1010;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a & b) - 1
    a = 4'b0100;
    b = 4'b1110;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b1011;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a + a + 1
    a = 4'b0001;
    b = 4'b0110;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b1100;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a | b) + a
    a = 4'b0001;
    b = 4'b0110;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b1101;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - (a | ~b) + a + 1
    a = 4'b1001;
    b = 4'b0110;
    m = 1'b0;
    c_in = 1'b0;
    s = 4'b1110;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação Aritimetica - a - 1
    a = 4'b1001;
    b = 4'b0110;
    m = 1'b0;
    c_in = 1'b1;
    s = 4'b1111;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~a
    a = 4'b0001;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0000;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~(a | b)
    a = 4'b0001;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0001;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~a & b
    a = 4'b0001;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0010;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - 0
    a = 4'b1111;
    b = 4'b1001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0011;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~(a & b)
    a = 4'b1011;
    b = 4'b1001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0100;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~b
    a = 4'b1011;
    b = 4'b1001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0101;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a ^ b
    a = 4'b1011;
    b = 4'b1101;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0110;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a & ~b
    a = 4'b1100;
    b = 4'b1101;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b0111;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~a | b
    a = 4'b1100;
    b = 4'b1101;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1000;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - ~(a ^ b)
    a = 4'b1100;
    b = 4'b1011;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1001;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - b
    a = 4'b0000;
    b = 4'b1011;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1010;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a & b
    a = 4'b1010;
    b = 4'b1011;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1011;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - 1
    a = 4'b1010;
    b = 4'b1011;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1100;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a | ~b
    a = 4'b1011;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1101;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a | b
    a = 4'b1011;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1110;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    // Operação lógica - a
    a = 4'b1001;
    b = 4'b0001;
    m = 1'b1;
    c_in = 1'b0;
    s = 4'b1111;
    # 10;
    $display("t=%0t: a=%b b=%b s=%b f=%b", $time, a, b, s, f);

    $stop;
end
endmodule