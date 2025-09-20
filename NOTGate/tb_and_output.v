module tb_not_gate_using_mux;
    reg A;
    wire Y;
    not_gate_using_mux uut (
        .A(A),
        .Y(Y)
    );
    initial begin
      $monitor("a=%0d,NOT(Y)=%0d",A,Y);
        A = 0; #10;
        A = 1; #10;
        $finish;
    end
endmodule
//output:
a=0,NOT(Y)=1
a=1,NOT(Y)=0
