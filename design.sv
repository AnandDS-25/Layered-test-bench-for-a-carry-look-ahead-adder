`include "block.sv"

module cla(a,b,cin,s,cout);

input logic [31:0]a,b;
input logic cin;
output logic [31:0]s;
output logic cout;
 
logic fc0,fc1,fc2,fc3,fc4,fc5,fc6;

block b0(a[3:0]  , b[3:0]  , cin, s[3:0]  , fc0);
block b1(a[7:4]  , b[7:4]  , fc0, s[7:4]  , fc1);
block b2(a[11:8] , b[11:8] , fc1, s[11:8] , fc2);
block b3(a[15:12], b[15:12], fc2, s[15:12], fc3);
block b4(a[19:16], b[19:16], fc3, s[19:16], fc4);
block b5(a[23:20], b[23:20], fc4, s[23:20], fc5);
block b6(a[27:24], b[27:24], fc5, s[27:24], fc6);
block b7(a[31:28], b[31:28], fc6, s[31:28], cout);

endmodule