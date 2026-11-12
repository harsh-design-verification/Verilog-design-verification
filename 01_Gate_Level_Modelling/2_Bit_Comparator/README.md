# 2-Bit Comparator – Gate-Level Modelling

## 1. Overview

A 2-Bit Comparator is a combinational logic circuit used to compare two 2-bit binary numbers and determine their magnitude relationship.

It generates three outputs indicating whether A is greater than, equal to or less than B.

## 2. Inputs and Outputs

Inputs:
- A[1:0] – First 2-bit binary number
- B[1:0] – Second 2-bit binary number

Outputs:
- A_gt_B – Indicates A is greater than B
- A_eq_B – Indicates A is equal to B
- A_lt_B – Indicates A is less than B

## 3. Design Methodology

Gate-Level Modelling using:
- XNOR gates
- AND gates
- OR gates
- NOT gates

## 4. Working Principle

- **Greater Than:** Checks whether A is greater than B.
- **Equal To:** Checks whether both binary inputs are equal.
- **Less Than:** Checks whether A is less than B.

For every input combination, exactly one output should be HIGH.

## 5. Project Structure

- rtl/two_bit_comparator.v
- tb/tb_two_bit_comparator.v

## 6. Simulation and Verification

- HDL: Verilog
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Loop-Based Testing
- Test Cases: All 16 input combinations

## 7. Verification Objective

To verify the Greater Than, Equal To and Less Than outputs for every possible combination of two 2-bit binary inputs.

## 8. Key Learning Outcomes

- Understanding magnitude comparators.
- Boolean logic implementation.
- Gate-Level Modelling.
- Relational comparison.
- Testbench development and functional verification.