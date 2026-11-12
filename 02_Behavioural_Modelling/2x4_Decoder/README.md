# 2:4 Decoder – Behavioural Modelling

## 1. Overview

A 2:4 Decoder is a combinational logic circuit that converts a 2-bit binary input into one of four active outputs when the Enable input is HIGH.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- A, B – 2-bit Binary Inputs
- En – Enable Input

Outputs:
- Y0, Y1, Y2, Y3 – Decoded Outputs

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- if-else statement
- case statement

## 4. Working Principle

- When En = 0, all outputs remain LOW.
- When En = 1 and AB = 00, Y0 becomes HIGH.
- When En = 1 and AB = 01, Y1 becomes HIGH.
- When En = 1 and AB = 10, Y2 becomes HIGH.
- When En = 1 and AB = 11, Y3 becomes HIGH.

## 5. Project Structure

- rtl/decoder_2x4.v
- tb/tb_decoder_2x4.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Loop-Based Testing
- Test Cases: All 8 combinations of Enable and binary inputs

## 7. Verification Objective

To verify correct decoding of binary inputs and enable functionality for all possible input combinations.

## 8. Key Learning Outcomes

- Understanding Decoder architecture.
- Behavioural Modelling using case statements.
- Enable-controlled logic.
- Testbench development and functional verification.