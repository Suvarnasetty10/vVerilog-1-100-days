module tb_xnor_gate_using_mux;
    reg a, b;
    wire y;
    xnor_gate_using_mux uut (
      .a(a),
      .b(b),
      .y(y)
    );
    initial begin
      $monitor("a=%0d,b=%0d,xnor(Y)=%0d",a,b,y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
//output:
# KERNEL: a=0,b=0,xnor(Y)=1
# KERNEL: a=0,b=1,xnor(Y)=0
# KERNEL: a=1,b=0,xnor(Y)=0
# KERNEL: a=1,b=1,xnor(Y)=1
