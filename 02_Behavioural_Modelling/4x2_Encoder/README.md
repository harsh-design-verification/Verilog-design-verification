# 4:2 Encoder – Behavioural Modelling

## 1. Overview

A 4:2 Encoder is a combinational logic circuit that converts one active input among four input lines into a 2-bit binary output.

The design is implemented using Verilog Behavioural Modelling and assumes only one input is HIGH at a time.

## 2. Inputs and Outputs

Inputs:
- D0, D1, D2, D3 – Input Lines

Outputs:
- Y1, Y0 – 2-bit Encoded Output

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- case statement
- One-hot input assumption

## 4. Working Principle

- D0 active produces Y1Y0 = 00.
- D1 active produces Y1Y0 = 01.
- D2 active produces Y1Y0 = 10.
- D3 active produces Y1Y0 = 11.
- Invalid input patterns produce default output 00.

## 5. Project Structure

- rtl/encoder_4x2.v
- tb/tb_encoder_4x2.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing

Test Cases:
- D0 active
- D1 active
- D2 active
- D3 active
- No input active
- Multiple inputs active

## 7. Verification Objective

To verify correct binary encoding for all valid one-hot input combinations and check default behaviour for invalid input patterns.

## 8. Key Learning Outcomes

- Understanding Encoder architecture.
- Behavioural Modelling using case statements.
- One-hot input representation.
- Testbench development and functional verification.