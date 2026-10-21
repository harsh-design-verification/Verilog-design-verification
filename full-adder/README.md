
# Full Adder Using Verilog HDL

## 1. Project Overview
This project implements a Full Adder circuit using Verilog HDL. The design performs binary addition of three 1-bit inputs and generates Sum and Carry outputs.

## 2. Objective
To design, simulate, and verify a Full Adder using Verilog HDL and a testbench.

## 3. Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

## 4. Boolean Expressions
- Sum = A XOR B XOR Cin
- Carry Out = (A AND B) OR (B AND Cin) OR (A AND Cin)

## 5. Project Structure
- rtl/ - Verilog RTL design
- tb/ - Verilog testbench

## 6. Verification
The testbench verifies all 8 possible input combinations and checks the Sum and Carry outputs.

## 7. Tools Used
- Verilog HDL
- RTL Design
- Simulation and Functional Verification

## 8. Learning Outcomes
- Understanding combinational logic design
- Implementing a Full Adder using Verilog
- Writing and running a testbench
- Verifying digital circuit functionality
