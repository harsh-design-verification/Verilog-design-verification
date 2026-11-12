# Full Adder – Behavioural Modelling

## 1. Overview

A Full Adder is a combinational logic circuit used to add three single-bit binary inputs and generate Sum and Carry outputs.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- A – First binary input
- B – Second binary input
- Cin – Carry Input

Outputs:
- Sum – Sum output
- Cout – Carry output

## 3. Boolean Expressions

- Sum = A ^ B ^ Cin
- Cout = (A & B) | (B & Cin) | (A & Cin)

## 4. Working Principle

- The circuit adds A, B and Cin.
- Sum represents the least significant bit of the addition.
- Cout represents the carry generated from the addition.

## 5. Project Structure

- rtl/full_adder.v
- tb/tb_full_adder.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All 8 input combinations

## 7. Verification Objective

To verify the Sum and Carry outputs for all possible combinations of three input bits.

## 8. Key Learning Outcomes

- Understanding Behavioural Modelling.
- Using always @(*) block.
- Arithmetic and Boolean operations.
- Combinational logic implementation.
- Testbench development and functional verification.