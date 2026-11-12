Half Subtractor – Gate-Level Modelling

## 1. Overview
A Half Subtractor is a combinational logic circuit used to subtract one single-bit binary input from another.

## 2. Inputs and Outputs

Inputs:
- A (Minuend)
- B (Subtrahend)

Outputs:
- Diff (Difference)
- Borrow

## 3. Boolean Expressions

Diff = A XOR B

Borrow = NOT A AND B

## 4. Truth Table

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

## 5. Project Structure

- rtl/half_subtractor.v
- tb/tb_half_subtractor.v

## 6. Design Methodology

Gate-Level Modelling using:
- XOR gate
- NOT operation
- AND gate

## 7. Verification

- Testbench: Directed Testing
- Test Cases: All four input combinations

## 8. Verification Objective

To verify the Difference and Borrow outputs for every possible input combination.