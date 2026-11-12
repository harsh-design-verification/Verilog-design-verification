# 4:1 Multiplexer – Behavioural Modelling

## 1. Overview

A 4:1 Multiplexer is a combinational logic circuit that selects one of four input signals and transfers it to a single output using two select lines.

The design is implemented using Verilog Behavioural Modelling.

## 2. Inputs and Outputs

Inputs:
- I0, I1, I2, I3 – Data Inputs
- S0, S1 – Select Lines

Output:
- Y – Selected Output

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- case statement
- Concatenation of select signals

## 4. Working Principle

- S1S0 = 00 selects I0.
- S1S0 = 01 selects I1.
- S1S0 = 10 selects I2.
- S1S0 = 11 selects I3.

## 5. Project Structure

- rtl/mux_4x1.v
- tb/tb_mux_4x1.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Loop-Based Testing
- Test Cases: All 4 select-line combinations

## 7. Verification Objective

To verify correct input selection for all possible combinations of select lines.

## 8. Key Learning Outcomes

- Understanding Multiplexer architecture.
- Behavioural Modelling using case statements.
- Combinational logic design.
- Testbench development and functional verification.