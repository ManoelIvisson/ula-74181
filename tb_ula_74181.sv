module tb_ula_74181;

logic[3:0] a, b, s, f;
logic m, c_in, a_eq_b, c_out;

ula_74181 uut (.a(a), .b(b), .s(s), .m(m), .c_in(c_in), .f(f), .c_out(c_out), .a_eq_b(a_eq_b));

integer i;
logic [7:0] valores_a [0:1];
logic [7:0] valores_b [0:1];
logic [0:1] valores_cin;

initial
begin
    $dumpfile("onda.vcd");
    $dumpvars(0, tb_ula_74181);

    // Casos de teste para a mesma operação
    valores_a[0] = 4'b1000;
    valores_b[0] = 4'b1010;
    valores_a[1] = 4'b1001;
    valores_b[1] = 4'b0011;
    valores_cin[0] = 1'b0;
    valores_cin[1] = 1'b1;

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0000;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0001;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação (a | ~b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0010;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação (a | ~b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0011;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação -1 + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0100;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a + (a & ~b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0101;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação (a | b) + (a & ~b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0110;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a - b - c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0111;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação (a & ~b) - c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1000;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a + (a & b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1001;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  a + b + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1010;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  (a | ~b) + (a & b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1011;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  (a & b) - c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1100;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  a + a + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1101;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  (a | b) + a + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1110;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação (a | ~b) + (a & b) + c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1111;
        m = 1'b0;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a - c_in: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end
    
    // Operações lógicas

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0000;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~a: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0001;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~(a | b): tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0010;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~a & b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0011;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação 0: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0100;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~(a & b): tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0101;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0110;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a ^ b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b0111;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a & ~b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1000;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~a | b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1001;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação ~(a ^ b): tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1010;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação  b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1011;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a & b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1100;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação 1: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1101;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a | ~b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1110;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a | b: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    for (i = 0; i < 2; i = i + 1) begin
        a = valores_a[i];
        b = valores_b[i];
        s = 4'b1111;
        m = 1'b1;
        c_in = valores_cin[i];
        #1;
        $display("Loop Operação a: tempo=%0t: a=%b b=%b s=%b f=%b c_in=%b", 
                 $time, a, b, s, f, c_in);
    end

    $finish;
end
endmodule