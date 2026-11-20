// Answer for Q01. Keep this file separate from mux2_exercise.v.
module mux2_answer (
    input  wire a,
    input  wire b,
    input  wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
