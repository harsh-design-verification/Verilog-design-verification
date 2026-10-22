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



Project 2: Full Adder

Objective

Design and simulate a Full Adder using Verilog HDL and verify its outputs for all possible input combinations.

RTL Design

The Full Adder performs binary addition of three 1-bit inputs: A, B, and Cin (Carry-in).

- Sum: A XOR B XOR Cin
- Carry: (A AND B) OR (B AND Cin) OR (A AND Cin)

Project Structure

verilog-design-verification/
├── rtl/
│   └── full_adder.v
├── tb/
│   └── tb_full_adder.v
└── README.md

Verification Environment

- HDL: Verilog
- Simulation Platform: EDA Playground
- Simulator: Aldec Riviera-PRO
- Testbench: Applies all eight input combinations and displays the outputs.

Simulation Results

A| B| Cin| Expected Sum| Expected Carry
0| 0| 0| 0| 0
0| 0| 1| 1| 0
0| 1| 0| 1| 0
0| 1| 1| 0| 1
1| 0| 0| 1| 0
1| 0| 1| 0| 1
1| 1| 0| 0| 1
1| 1| 1| 1| 1

Result: The simulated outputs matched the expected Full Adder truth table for all eight input combinations.

Key Learning Outcomes

- Verilog module structure and gate-level modeling
- Boolean expressions using XOR, AND, and OR gates
- Module instantiation and port connections
- Testbench development
- Simulation execution and output analysis

Future Learning Goals

- Multiplexers, encoders, and decoders
- 4-bit Ripple Carry Adder design and verification
- Sequential circuit design and verification
- SystemVerilog fundamentals
- Advanced Design Verification concepts

Career Goal

Aspiring VLSI Design Verification Engineer, building strong fundamentals through consistent learning and hands-on projects.


