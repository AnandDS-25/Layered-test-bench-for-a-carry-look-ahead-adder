`include "gen.sv"
`include "prop.sv"
`include "FA.sv"

module block(a,b,cin,s,cout);

input logic [3:0]a,b;
input logic cin; 
output logic [3:0]s; 
output logic cout;

logic g0,g1,g2,g3,p0,p1,p2,p3;
logic gg,gp;
logic sc0,sc1,sc2,sc3;

//Generate 
gen G0(a[0],b[0],g0);
gen G1(a[1],b[1],g1);
gen G2(a[2],b[2],g2);
gen G3(a[3],b[3],g3);

//Propogate
prop P0(a[0],b[0],p0);
prop P1(a[1],b[1],p1);
prop P2(a[2],b[2],p2);
prop P3(a[3],b[3],p3);

//grup generate, group propagate
assign gg=g3|(p3&(g2|(p2&(g1|(p1&(g0))))));
assign gp=p3&p2&p1&p0;

//next carry
assign cout=gg|(cin&gp);

//sum
FA F1(a[0],b[0],cin,s[0],sc0);
FA F2(a[1],b[1],sc0,s[1],sc1);
FA F3(a[2],b[2],sc1,s[2],sc2);
FA F4(a[3],b[3],sc2,s[3],sc3);

endmodule