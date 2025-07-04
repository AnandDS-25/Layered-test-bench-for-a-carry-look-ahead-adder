class driver;
  
  virtual intf vif;
  
  mailbox gen2driv;
  
  function new(virtual intf vif,mailbox gen2driv); 
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction
  
  task main;
    
    repeat(1) 
      begin
       transaction trans;
      
        gen2driv.get(trans);
       
        vif.a     <= trans.a;
        vif.b     <= trans.b;
        vif.cin   <= trans.cin;
      
        
        trans.s     = vif.s;
        trans.cout  = vif.cout;      
        trans.display("Driver");
        
    end
  endtask
  
endclass