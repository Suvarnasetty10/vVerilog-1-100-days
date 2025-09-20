module or_gate_using_mux (
    input wire A,
    input wire B,
    output wire Y
);
    // Inputs to 2:1 MUX
    wire I0;  // Connected to B
    wire I1;  // Connected to constant 1

    assign I0 = B;
    assign I1 = 1'b1;

    // 2:1 MUX logic: Y = S'I0 + S I1, here S = A
    assign Y = (~A & I0) | (A & I1);
endmodule
