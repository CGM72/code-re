# SystemVerilog Practice: Enabled Counter / 활성화 신호가 있는 카운터

## Problem / 문제
**EN:** Design a 4-bit up-counter that increments on each rising clock edge when `enable` is high, holds its value otherwise, and resets to zero on an active-low synchronous reset.

**KO:** `enable`이 1이면 클럭 상승 에지마다 1씩 증가하고, 0이면 값을 유지하는 4비트 업 카운터를 설계하세요. Active-low 동기 리셋이 활성화되면 0으로 초기화하세요.

## Requirements / 조건
**EN:** Use `always_ff`, nonblocking assignments, and reset priority. Wrap from 15 to 0.

**KO:** `always_ff`, 논블로킹 할당을 사용하고 리셋에 우선순위를 부여하세요. 15 다음에는 0으로 돌아가야 합니다.

## Hint / 힌트
**EN:** Use `@(posedge clk)` and check `!rst_n` before `enable`.

**KO:** `@(posedge clk)`를 사용하고 `enable`보다 `!rst_n`을 먼저 확인하세요.

## Example / 예시
After reset, three enabled rising edges produce 3; a disabled edge keeps 3.
리셋 후 활성화된 상승 에지 3번이면 3이 되고, 비활성화된 에지에서는 3을 유지합니다.

## Solution / 풀이
See `solution.sv`.
