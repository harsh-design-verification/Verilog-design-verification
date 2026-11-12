# 1:4 Demultiplexer – Behavioural Modelling

## 1. Overview

A 1:4 Demultiplexer is a combinational logic circuit that routes a single data input to one of four outputs based on two select lines.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- D – Data Input
- S0, S1 – Select Lines

Outputs:
- Y0, Y1, Y2, Y3 – Data Outputs

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- case statement
- Output initialization

## 4. Working Principle

- S1S0 = 00 routes D to Y0.
- S1S0 = 01 routes D to Y1.
- S1S0 = 10 routes D to Y2.
- S1S0 = 11 routes D to Y3.

All non-selected outputs remain LOW.

## 5. Project Structure

- rtl/demux_1x4.v
- tb/tb_demux_1x4.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Loop-Based Testing
- Test Cases: 8 combinations of data input and select lines

## 7. Verification Objective

To verify correct routing of the input data to the selected output for all possible input combinations.

## 8. Key Learning Outcomes

- Understanding Demultiplexer architecture.
- Behavioural Modelling using case statements.
- Data routing using select lines.
- Testbench development and functional verification.