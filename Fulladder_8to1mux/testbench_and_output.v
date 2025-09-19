// Code your testbench here
// or browse Examples
module tb;
  reg a,b,cin;
  wire sum,carry;
  fulladder_mux u1(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial begin
    a=0;b=0;cin=0;#3;
    a=0;b=0;cin=1;#3;
    a=0;b=1;cin=0;#3;
    a=0;b=1;cin=1;#3;
    a=1;b=0;cin=0;#3;
    a=1;b=0;cin=1;#3;
    a=1;b=1;cin=0;#3;
    a=1;b=1;cin=0;#3;
    a=1;b=1;cin=1;#3;
  end
  initial begin
    $monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,carry=%0d",a,b,cin,sum,carry);
  end
endmodule
//output:
# KERNEL: a=0,b=0,cin=0,sum=0,carry=0
# KERNEL: a=0,b=0,cin=1,sum=1,carry=0
# KERNEL: a=0,b=1,cin=0,sum=1,carry=0
# KERNEL: a=0,b=1,cin=1,sum=0,carry=1
# KERNEL: a=1,b=0,cin=0,sum=1,carry=0
# KERNEL: a=1,b=0,cin=1,sum=0,carry=1
# KERNEL: a=1,b=1,cin=0,sum=0,carry=1
# KERNEL: a=1,b=1,cin=1,sum=1,carry=1
    
    
