class transaction;

// Stimulus are declared with rand keyword
 
  rand bit [31:0] a;  
  rand bit [31:0] b;
  rand bit cin;
  
  bit [31:0]s;
  bit cout;

//Function for Displaying values of a , b and sum , carry  
  function void display(string name);
    $display("----------------------------------------");
    $display(" %s ",name);
    $display("----------------------------------------");
    $display("a    =  %b",a);
    $display("b    =  %b",b);
    $display("cin  =  %b",cin);
    $display("sum  =  %b",s);
    $display("cout =  %b",cout);
    $display("----------------------------------------");
  endfunction
  
  
endclass