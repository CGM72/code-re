// 2:1 multiplexer solution / 2:1 멀티플렉서 풀이
module mux2 (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
