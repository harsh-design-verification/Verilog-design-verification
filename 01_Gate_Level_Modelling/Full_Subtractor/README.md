# Full Subtractor – Gate-Level Modelling

## 1. Overview
A Full Subtractor is a combinational logic circuit that subtracts two single-bit inputs along with a borrow input.

## 2. Inputs and Outputs

Inputs:
- A (Minuend)
- B (Subtrahend)
- Bin (Borrow Input)

Outputs:
- Diff (Difference)
- Bout (Borrow Output)

## 3. Boolean Expressions

Diff = A XOR B XOR Bin

Bout = (~A AND B) OR (~(A XOR B) AND Bin)

## 4. Truth Table

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

## 5. Project Structure

- rtl/full_subtractor.v
- tb/tb_full_subtractor.v

## 6. Design Methodology

Gate-Level Modelling using:
- XOR gates
- AND gates
- OR gate
- NOT operation

## 7. Verification

- Testbench: Directed Testing
- Test Cases: All eight input combinations

## 8. Verification Objective

To verify the Difference and Borrow outputs for all possible input combinations.