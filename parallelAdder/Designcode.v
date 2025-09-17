// Code your design here
module FA(
  input a,b,cin,
  output sum, cout);
  assign sum=a^b^cin;
  assign cout=a&b|b&cin|cin&a;
endmodule

module parallel_adder
  (
    input[3:0]a,
    input[3:0]b,
    input cin,
    output cout,
    output[3:0]s
  );
  wire c1,c2,c3;
  FA u1(.a(a[0]),.b(b[0]),.cin(cin),.sum(s[0]),.cout(c1));
  FA u2(.a(a[1]),.b(b[1]),.cin(c1),.sum(s[1]),.cout(c2));
  FA u3(.a(a[2]),.b(b[2]),.cin(c2),.sum(s[2]),.cout(c3));
  FA u4(.a(a[3]),.b(b[3]),.cin(c3),.sum(s[3]),.cout(cout));
endmodule

