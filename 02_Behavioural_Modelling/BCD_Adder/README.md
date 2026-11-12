# BCD Adder – Behavioural Modelling

## 1. Overview

A BCD Adder is a combinational logic circuit that adds two BCD digits and an input carry to generate a valid BCD sum.

If the binary sum exceeds 9, a correction value of 6 (0110) is added to obtain the correct BCD result.

## 2. Inputs and Outputs

Inputs:
- A[3:0] – First BCD Digit
- B[3:0] – Second BCD Digit
- Cin – Carry Input

Outputs:
- Sum[3:0] – BCD Sum
- Cout – Carry Output

## 3. Design Methodology

- Behavioural Modelling
- always @(*) block
- Arithmetic operations
- Conditional statements
- BCD correction logic

## 4. Working Principle

1. Add A, B and Cin.
2. Check whether the binary sum is greater than 9.
3. If the sum exceeds 9, add 6 for BCD correction.
4. Generate the corrected 4-bit sum and carry output.

## 5. Project Structure

- rtl/bcd_adder.v
- tb/tb_bcd_adder.v

## 6. Simulation and Verification

- HDL: Verilog
- Modelling: Behavioural
- Simulator: Aldec Riviera-PRO
- Platform: EDA Playground
- Testbench: Loop-Based Testing

Test Cases:
- All valid BCD digit combinations (0–9).
- Carry input LOW and HIGH.
- BCD correction cases.
- Carry generation cases.

Total Test Cases: 200

## 7. Verification Objective

To verify BCD addition, correction logic and carry generation for all valid input combinations.

## 8. Key Learning Outcomes

- Understanding BCD arithmetic.
- Implementing BCD correction logic.
- Using conditional statements in Verilog.
- Testbench development and functional verification.