module halfadder_mux(
  input a,b,
  output sum,carry);
  assign sum=(~a &~b&0)|(~a&b&1)|(a&~b&1)|(a&b&0);
  assign carry=(~a & ~b &0)|(~a&b&0)|(a&~b&0)|(a&b&1);
endmodule
  
  
