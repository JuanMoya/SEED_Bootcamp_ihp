`timescale 1ns/1ps

module tb_sumador_4b;

    reg clk_tb;
    reg rst_tb;
    reg [3:0] a_in_tb;
    reg [3:0] b_in_tb;
    reg cin_in_tb;
    wire [3:0] sum_out_tb;
    wire cout_out_tb;

    // Instancia del DUT (Device Under Test)
    sumador_4b uut (
        .clk(clk_tb),
        .rst(rst_tb),
        .a_in(a_in_tb),
        .b_in(b_in_tb),
        .cin_in(cin_in_tb),
        .sum_out(sum_out_tb),
        .cout_out(cout_out_tb)
    );

    // Generador de reloj: periodo de 10ns (100 MHz)
    always
    begin
        #5 clk_tb=!clk_tb;
    end

    // Proceso principal de estímulos
    initial begin
        $dumpfile("sumador_4b.vcd"); $dumpvars;

        // Inicialización
        clk_tb = 0;
        rst_tb = 1;
        a_in_tb = 4'b0000;
        b_in_tb = 4'b0000;
        cin_in_tb = 0;

        //Desactiva reset
        #15;
        rst_tb = 0;

        // Pruebas básicas
        #10; a_in_tb = 4'b0001; b_in_tb = 4'b0010; cin_in_tb = 0;  // 1 + 2 = 3
        #10; a_in_tb = 4'b0101; b_in_tb = 4'b0011; cin_in_tb = 0;  // 5 + 3 = 8
        #10; a_in_tb = 4'b1111; b_in_tb = 4'b0001; cin_in_tb = 0;  // 15 + 1 = 16 (carry)
        #10; a_in_tb = 4'b1010; b_in_tb = 4'b0101; cin_in_tb = 1;  // 10 + 5 + 1 = 16
        #10; a_in_tb = 4'b0110; b_in_tb = 4'b0110; cin_in_tb = 0;  // 6 + 6 = 12
        #10; a_in_tb = 4'b0111; b_in_tb = 4'b1001; cin_in_tb = 1;  // 7 + 9 + 1 = 17

        // Espera final
        #20;
        $finish;
    end

    // Monitoreo de señales
    initial begin
        $display("Tiempo | a_in | b_in | cin_in | sum_out | cout_out");
        $monitor("%4t |  %b  |  %b  |   %b   |   %b   |    %b",
                 $time, a_in_tb, b_in_tb, cin_in_tb, sum_out_tb, cout_out_tb);
    end

endmodule
