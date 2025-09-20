module not_gate_using_mux (
    input wire A,
    input wire B,
    output wire Y
);
    wire I0;  
    wire I1; 
    assign I0 = 1'b1;
    assign I1 = 1'b0;
    assign Y = (~A & I0) | (A & I1);
endmodule
