module FA(input logic a,b,c, output logic sum,cout);
assign sum=a^b^c;
assign cout=(a&b)|(b&c)|(c&a);
endmodule