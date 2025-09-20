module and_gate_using_mux (
    input wire a,
    input wire b,
    output wire y
);
    // Inputs to 2:1 MUX
    wire I0;  // Connected to B
    wire I1;  // Connected to constant 1

    assign I0 = 1'b0;
    assign I1 = b;

    // 2:1 MUX logic: Y = S'I0 + S I1, here S = A
  assign y = (~a & I0) | (a & I1);
endmodule
