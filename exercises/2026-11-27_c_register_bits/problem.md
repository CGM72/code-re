# C Practice: Set and Clear Register Bits / 레지스터 비트 설정 및 해제

## Problem / 문제
**EN:** Write a function that sets bit 3 and clears bit 1 of a 32-bit unsigned register value, preserving all other bits.

**KO:** 32비트 부호 없는 레지스터 값에서 비트 3을 1로 설정하고 비트 1을 0으로 초기화하는 함수를 작성하세요. 나머지 비트는 유지해야 합니다.

## Requirements / 조건
- EN: Use `uint32_t`, bitwise OR, AND, NOT, and shift operators. Bit numbering starts at 0.
- KO: `uint32_t`와 비트 OR, AND, NOT, 시프트 연산자를 사용하세요. 비트 번호는 0부터 시작합니다.

## Example / 예시
`0x06 (0110) -> 0x0C (1100)`

## Hint / 힌트
EN: OR with a one-bit mask to set a bit; AND with an inverted mask to clear a bit.
KO: 비트를 설정할 때는 마스크와 OR, 해제할 때는 반전된 마스크와 AND 연산을 수행하세요.

## Solution / 풀이
See [solution.c](solution.c). / 정답 파일을 확인하세요.

Build / 빌드: `cc -std=c11 -Wall -Wextra -pedantic solution.c -o practice && ./practice`
