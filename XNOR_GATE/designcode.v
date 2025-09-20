module xnor_gate_using_mux (
    input wire a,
    input wire b,
    output wire y
);
    wire I0; 
    wire I1;
    assign I0 = ~b;
    assign I1 = b;
  assign y = (~a & I0) | (a & I1);
endmodule
