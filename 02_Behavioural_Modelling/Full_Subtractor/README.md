# Full Subtractor – Behavioural Modelling

## 1. Overview

A Full Subtractor is a combinational logic circuit used to subtract two binary inputs along with a Borrow Input and generate Difference and Borrow outputs.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- A – Minuend
- B – Subtrahend
- Bin – Borrow Input

Outputs:
- Diff – Difference output
- Bout – Borrow output

## 3. Boolean Expressions

- Diff = A ^ B ^ Bin
- Bout = (~A & B) | (~(A ^ B) & Bin)

## 4. Working Principle

- The circuit performs A - B - Bin.
- Diff represents the subtraction result.
- Bout indicates whether a borrow is generated.

## 5. Project Structure

- rtl/full_subtractor.v
- tb/tb_full_subtractor.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All 8 input combinations

## 7. Verification Objective

To verify Difference and Borrow outputs for all possible combinations of three input bits.

## 8. Key Learning Outcomes

- Understanding Behavioural Modelling.
- Using always @(*) block.
- Subtraction logic implementation.
- Combinational circuit design.
- Testbench development and functional verification.