module tb;
  reg[3:0]a;
  reg[3:0]b;
  reg cin;
  wire cout;
  wire[3:0]s;
  parallel_adder u1 (.a(a),.b(b),.cin(cin),.cout(cout),.s(s));
  initial begin
    $monitor("a=%0d,b=%0d,cin=%0d,cout=%0d,s=%0d",a,b,cin,cout,s);
    a=4'b0011;b=4'b1000;cin=1'b1;#3;
    a=4'b1001;b=4'b0110;cin=1'b0;#3;
    a=4'b1010;b=4'b1010;cin=1'b1;#3;
    
  end
endmodule
//output:
# KERNEL: a=3,b=8,cin=1,cout=0,s=12
# KERNEL: a=9,b=6,cin=0,cout=0,s=15
# KERNEL: a=10,b=10,cin=0,cout=1,s=4
