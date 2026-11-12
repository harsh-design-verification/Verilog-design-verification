# Half Adder – Behavioural Modelling

## 1. Overview

A Half Adder is a combinational logic circuit used to add two single-bit binary inputs and generate Sum and Carry outputs.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- A – First binary input
- B – Second binary input

Outputs:
- Sum – XOR of inputs
- Carry – AND of inputs

## 3. Boolean Expressions

- Sum = A ^ B
- Carry = A & B

## 4. Working Principle

- When both inputs are 0, Sum and Carry are 0.
- When one input is 1, Sum is 1.
- When both inputs are 1, Carry is 1.

## 5. Project Structure

- rtl/half_adder.v
- tb/tb_half_adder.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All 4 input combinations

## 7. Verification Objective

To verify the Sum and Carry outputs for all possible input combinations.

## 8. Key Learning Outcomes

- Understanding Behavioural Modelling.
- Using always @(*) block.
- Combinational logic implementation.
- Testbench development and functional verification.