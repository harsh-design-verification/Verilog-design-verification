# Full Adder – Gate-Level Modelling

## 1. Overview
A Full Adder is a combinational logic circuit that adds three single-bit inputs.

## 2. Inputs and Outputs

Inputs:
- A
- B
- Cin (Carry Input)

Outputs:
- Sum
- Cout (Carry Output)

## 3. Boolean Expressions

Sum = A XOR B XOR Cin

Cout = (A AND B) OR ((A XOR B) AND Cin)

## 4. Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

## 5. Project Structure

- rtl/full_adder.v
- tb/tb_full_adder.v

## 6. Design Methodology

Gate-Level Modelling using:
- XOR gates
- AND gates
- OR gate

## 7. Simulation and Verification

- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Directed Testing
- Test Cases: All eight input combinations

## 8. Verification Objective

To verify the Sum and Carry outputs for all possible input combinations.