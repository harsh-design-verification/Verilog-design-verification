# 4-Bit Ripple Carry Adder – Gate-Level Modelling

## 1. Overview

A 4-Bit Ripple Carry Adder is a combinational logic circuit used to add two 4-bit binary numbers along with an input carry.

The design is implemented using four Full Adder modules connected through module instantiation.

## 2. Inputs and Outputs

Inputs:
- A[3:0] – First 4-bit binary number
- B[3:0] – Second 4-bit binary number
- Cin – Initial Carry Input

Outputs:
- Sum[3:0] – 4-bit Sum
- Cout – Final Carry Output

## 3. Design Methodology

- Gate-Level Modelling
- Modular RTL Design
- Full Adder Module Instantiation
- Four Full Adder instances are connected in cascade.
- Carry output of each stage is connected to the next stage.

## 4. Working Principle

- FA0 adds A[0], B[0] and Cin.
- FA1 adds A[1], B[1] and Carry[0].
- FA2 adds A[2], B[2] and Carry[1].
- FA3 adds A[3], B[3] and Carry[2].
- The final carry is available at Cout.

## 5. Project Structure

- rtl/ripple_carry_adder.v
- tb/tb_ripple_carry_adder.v

Dependency:
- Full_Adder/rtl/full_adder.v

## 6. Simulation and Verification

- HDL: Verilog
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: Different combinations of 4-bit inputs and carry input.

## 7. Verification Objective

To verify the 4-bit addition operation, carry propagation between Full Adder stages and final carry output for different input combinations.

## 8. Key Learning Outcomes

- Understanding Ripple Carry Adder architecture.
- Module instantiation in Verilog.
- Modular RTL design.
- Carry propagation mechanism.
- Testbench development and functional verification.