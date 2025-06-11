`include "interface.sv"
`include "test"
module tbench_top;
  
  intf i_intf();
  
  test t1(i_intf);
  
  cla cla1 (
    .a(i_intf.a),
    .b(i_intf.b),
    .cin(i_intf.cin),
    .s(i_intf.s),
    .cout(i_intf.cout)
   );
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  
endmodule