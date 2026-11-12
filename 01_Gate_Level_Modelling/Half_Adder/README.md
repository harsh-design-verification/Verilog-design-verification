
# Half Adder – Gate-Level Modelling

## 1. Overview
A Half Adder is a combinational logic circuit used to add two single-bit binary inputs.

## 2. Inputs and Outputs

Inputs:
- A
- B

Outputs:
- Sum
- Carry

## 3. Boolean Expressions

Sum = A XOR B

Carry = A AND B

## 4. Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## 5. Project Structure

- rtl/half_adder.v
- tb/tb_half_adder.v

## 6. Design Methodology

Gate-Level Modelling using Verilog primitive gates:
- XOR gate
- AND gate

## 7. Simulation and Verification

- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All four input combinations

## 8. Verification Objective

To verify the Sum and Carry outputs for every possible input combination.
