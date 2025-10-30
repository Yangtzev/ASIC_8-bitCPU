`timescale 1 ns / 1 ns

module clkgen (
    output reg clk
);

    initial begin
        clk = 0;
    end

    always #10 clk = ~clk;  

endmodule

