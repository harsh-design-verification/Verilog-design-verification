# 4:1 Multiplexer – Gate-Level Modelling

## 1. Overview

A 4:1 Multiplexer is a combinational logic circuit that selects one of four input signals and transfers it to a single output based on two select lines.

## 2. Inputs and Outputs

Inputs:
- I0, I1, I2, I3 – Data Inputs
- S0, S1 – Select Lines

Output:
- Y – Selected Output

## 3. Design Methodology

Gate-Level Modelling using:
- NOT Gates
- AND Gates
- OR Gate

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
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All four select-line combinations with different data inputs.

## 7. Verification Objective

To verify correct data selection for all four combinations of select lines.

## 8. Key Learning Outcomes

- Understanding Multiplexer architecture.
- Gate-Level Modelling.
- Select-line operation.
- Testbench development and functional verification.