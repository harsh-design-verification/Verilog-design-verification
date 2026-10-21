Verilog HDL Design & Verification Portfolio

About This Repository

This repository showcases my hands-on learning journey in Verilog HDL, RTL design, digital logic, simulation, and Design Verification. It contains practical projects developed to strengthen my fundamentals and build industry-relevant skills.

Project 1: Half Adder

Objective

Design and simulate a Half Adder using Verilog HDL and verify its outputs for all possible input combinations.

RTL Design

The Half Adder performs binary addition of two 1-bit inputs.

- Sum: A XOR B
- Carry: A AND B

Project Structure

verilog-design-verification/

verilog-design-verification/
├── rtl/
│   └── half_adder.v
├── tb/
│   └── tb_half_adder.v
└── README.md


Verification Environment

- HDL: Verilog
- Simulation Platform: EDA Playground
- Simulator: Aldec Riviera-PRO
- Testbench: Applies all four input combinations and displays the outputs.

Simulation Results


| A | B | Expected Sum | Expected Carry |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

Result: The simulated outputs matched the expected Half Adder truth table for all four input combinations.

Key Learning Outcomes

- Verilog module structure and gate-level modeling
- Module instantiation and port connections
- Testbench development
- Simulation execution and output analysis

Future Learning Goals

- Full Adder design and verification
- Multiplexers, encoders, and decoders
- Sequential circuit design and verification
- SystemVerilog fundamentals
- Advanced Design Verification concepts

Career Goal

Aspiring VLSI Design Verification Engineer, building strong fundamentals through consistent learning and hands-on projects.



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
- 
