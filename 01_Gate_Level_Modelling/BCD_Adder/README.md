# BCD Adder – Using Ripple Carry Adder Instantiation

## 1. Overview

A BCD Adder is a combinational logic circuit used to add two 4-bit BCD numbers and generate a valid BCD result.

The design is implemented using two 4-bit Ripple Carry Adders along with BCD correction logic.

## 2. Inputs and Outputs

Inputs:
- a_bcd[3:0] – First BCD input
- b_bcd[3:0] – Second BCD input
- Cin – Carry Input

Outputs:
- sum_bcd[3:0] – BCD Sum
- Cout – Decimal Carry Output

## 3. Design Methodology

- Modular RTL Design
- Ripple Carry Adder Module Instantiation
- Gate-Level Correction Logic
- Two Ripple Carry Adder instances are used.

## 4. Working Principle

**First Stage – Binary Addition**

The first Ripple Carry Adder adds two BCD inputs along with the carry input and generates an intermediate sum.

**Second Stage – BCD Correction Detection**

The correction logic checks whether the intermediate result is greater than 9 or a carry is generated.

Invalid BCD results require correction by adding 0110 (decimal 6).

**Third Stage – BCD Correction**

The second Ripple Carry Adder adds the correction value to the intermediate sum.

The final result is generated in valid BCD format.

## 5. Project Structure

- rtl/bcd_adder.v
- tb/tb_bcd_adder.v

Dependencies:
- Full_Adder/rtl/full_adder.v
- Ripple_Carry_Adder/rtl/ripple_carry_adder.v

## 6. Simulation and Verification

- HDL: Verilog
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed and Loop-Based Testing
- Test Cases: 200 combinations of valid BCD inputs and carry input.

## 7. Verification Objective

To verify BCD addition, correction logic, decimal carry generation and valid BCD output for all possible valid input combinations.

## 8. Key Learning Outcomes

- Understanding BCD arithmetic.
- BCD correction logic implementation.
- Ripple Carry Adder instantiation.
- Modular RTL design.
- Reusing previously developed modules.
- Testbench development and functional verification.