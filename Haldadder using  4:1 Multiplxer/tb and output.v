module tb;
  reg a,b;
  wire sum ,carry;
  halfadder_mux u1(.a(a),.b(b),.sum(sum),.carry(carry));
  initial begin
    a=0;b=0;#3;
    a=0;b=1;#3;
    a=1;b=0;#3;
    a=1;b=1;#3;
  end
  initial begin
    $monitor("a=%0d,b=%0d,sum=%0d,carry=%0d",a,b,sum,carry);
  end
endmodule
//output:
# KERNEL: a=0,b=0,sum=0,carry=0
# KERNEL: a=0,b=1,sum=1,carry=0
# KERNEL: a=1,b=0,sum=1,carry=0
# KERNEL: a=1,b=1,sum=0,carry=1
