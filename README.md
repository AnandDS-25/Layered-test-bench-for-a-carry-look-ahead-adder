# Layered Testbench for Carry Look-Ahead Adder - 4-bit

This project implements a **4-bit Carry Look-Ahead Adder (CLA)** using a **layered SystemVerilog testbench**. The testbench architecture is inspired by UVM methodology and separates functionality into clear modules:

- **Generator**: Produces random/directed input vectors  
- **Driver**: Applies inputs (A, B, Cin) to the DUT  
- **Monitor**: Observes and collects DUT output (Sum, Cout)  
- **Scoreboard**: Validates output correctness against expected result  

---

🔧 **Files**

- `design.sv` – 4-bit CLA design  
- `testbench.sv` – Top-level testbench module  
- `generator.sv`, `driver.sv`, `monitor.sv`, `scoreboard.sv` – Layered components  
- `interface.sv`, `transaction.sv`, `environment.sv`, `test.sv` – Supporting modules for interface and integration  

---

✅ **Features**

- Adder width: 4-bit  
- Modular and scalable testbench structure  
- Self-checking testbench with expected vs. actual comparison  
- Easy to expand for larger bit-width adders  

---

📁 **Output**

The output displays input values (A, B, Cin), the expected result (Sum, Cout), and whether the DUT output matches:

