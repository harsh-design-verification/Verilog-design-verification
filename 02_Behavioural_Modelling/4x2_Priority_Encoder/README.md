# 4:2 Priority Encoder – Behavioural Modelling

## 1. Overview

A 4:2 Priority Encoder is a combinational logic circuit that converts four input lines into a 2-bit binary output based on priority.

The design is implemented using Verilog Behavioural Modelling.

Priority order: D3 > D2 > D1 > D0.

## 2. Inputs and Outputs

Inputs:
- D0, D1, D2, D3 – Input Lines

Outputs:
- Y[1:0] – 2-bit Encoded Output
- Valid – Indicates whether any input is active

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- if-else statements
- Priority-based logic

## 4. Working Principle

- D3 has the highest priority and produces Y = 11.
- D2 produces Y = 10 when D3 is LOW.
- D1 produces Y = 01 when D3 and D2 are LOW.
- D0 produces Y = 00 when all higher-priority inputs are LOW.
- If all inputs are LOW, Valid = 0.

## 5. Project Structure

- rtl/priority_encoder_4x2.v
- tb/tb_priority_encoder_4x2.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing

Test Cases:
- No input active
- Individual inputs active
- Multiple inputs active
- Priority checking

## 7. Verification Objective

To verify correct priority selection, binary encoding and Valid output for different input combinations.

## 8. Key Learning Outcomes

- Understanding Priority Encoder architecture.
- Implementing priority logic using if-else statements.
- Understanding Valid output.
- Testbench development and functional verification.