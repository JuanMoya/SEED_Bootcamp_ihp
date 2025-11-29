module sumador_4b (
    input  clk,   
    input  rst,
    input  [3:0] a_in, //4 bit
    input  [3:0] b_in, //4 bit
    input  cin_in,
    output reg  [3:0]  sum_out,
    output reg  cout_out
);

    wire [4:0] sum_temp; //cout_out & sum_out
    reg [3:0] a_reg, b_reg;
    reg cin_reg;

    // Operación combinacional del sumador
    assign sum_temp = a_reg + b_reg + cin_reg;

    always @(posedge clk) begin
        if (rst) begin
            //Reset sincrónico
            a_reg <= 4'b0;
            b_reg <= 4'b0;
            cin_reg <= 1'b0;
            sum_out <= 4'b0;
            cout_out <= 1'b0;
        end 
        else begin
            //Operación normal
            a_reg <= a_in;
            b_reg <= b_in;
            cin_reg <= cin_in;
            //Salidas
            sum_out  <= sum_temp[3:0];
            cout_out <= sum_temp[4];
        end
    end

endmodule