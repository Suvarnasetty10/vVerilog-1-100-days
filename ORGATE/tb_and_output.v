module tb_or_gate_using_mux;
    reg A, B;
    wire Y;
    or_gate_using_mux uut (
        .A(A),
        .B(B),
        .Y(Y)
    );
    initial begin
      $monitor("a=%0d,b=%0d,OR(Y)=%0d",A,B,Y);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
        $finish;
    end
endmodule
output:
# KERNEL: a=0,b=0,OR(Y)=0
# KERNEL: a=0,b=1,OR(Y)=1
# KERNEL: a=1,b=0,OR(Y)=1
# KERNEL: a=1,b=1,OR(Y)=1
