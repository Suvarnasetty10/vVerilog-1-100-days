module tb_nor_gate_using_mux;
    reg a, b;
    wire y;
    nor_gate_using_mux uut (
      .a(a),
      .b(b),
      .y(y)
    );
    initial begin
      $monitor("a=%0d,b=%0d,nor(Y)=%0d",a,b,y);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
//output:
# KERNEL: a=0,b=0,nor(Y)=1
# KERNEL: a=0,b=1,nor(Y)=0
# KERNEL: a=1,b=0,nor(Y)=0
# KERNEL: a=1,b=1,nor(Y)=0
