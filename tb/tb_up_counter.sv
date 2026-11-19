`timescale 1ns/1ps
module tb_up_counter;
    logic clk = 0;
    logic rst_n = 0;
    logic enable = 0;
    logic [3:0] count;

    always #5 clk = ~clk;

    up_counter #(.WIDTH(4)) dut (.*);

    task automatic step;
        @(posedge clk);
        #1;
    endtask

    initial begin
        step();
        if (count !== 4'd0) $fatal(1, "reset failed");
        @(negedge clk);
        rst_n = 1;
        enable = 1;
        repeat (3) step();
        if (count !== 4'd3) $fatal(1, "increment failed");
        @(negedge clk);
        enable = 0;
        repeat (2) step();
        if (count !== 4'd3) $fatal(1, "hold failed");
        @(negedge clk);
        enable = 1;
        repeat (13) step();
        if (count !== 4'd0) $fatal(1, "wrap-around failed");
        $display("PASS: counter basic checks");
        $finish;
    end
endmodule
