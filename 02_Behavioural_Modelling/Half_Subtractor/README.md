# Half Subtractor – Behavioural Modelling

## 1. Overview

A Half Subtractor is a combinational logic circuit used to subtract one single-bit binary input from another and generate Difference and Borrow outputs.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- A – Minuend
- B – Subtrahend

Outputs:
- Diff – Difference output
- Borrow – Borrow output

## 3. Boolean Expressions

- Diff = A ^ B
- Borrow = (~A) & B

## 4. Working Principle

- The circuit performs A - B.
- Difference represents the subtraction result.
- Borrow indicates whether a borrow is required.

## 5. Project Structure

- rtl/half_subtractor.v
- tb/tb_half_subtractor.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All 4 input combinations

## 7. Verification Objective

To verify the Difference and Borrow outputs for all possible input combinations.

## 8. Key Learning Outcomes

- Understanding Behavioural Modelling.
- Using always @(*) block.
- Subtraction logic implementation.
- Combinational circuit design.
- Testbench development and functional verification.