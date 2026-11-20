# C Practice — Count Set Bits (2026-11-20)

## Problem
Write `int count_ones(unsigned int value)` that returns how many bits of `value` are 1. Do not use compiler built-ins.

Examples: `count_ones(0) == 0`, `count_ones(7) == 3`, `count_ones(10) == 2`.

## Hint
Use `value & 1u` to inspect the lowest bit, then shift right by one position.

## Solution
See `solution.c`. The loop counts each low bit and shifts until the value is zero.

## Build and run
`gcc -std=c11 -Wall -Wextra -pedantic solution.c -o bit_count && ./bit_count`
