# LAB1-03 4비트 가산기 — Xsim 사전 시뮬레이션

`a[3:0]`와 `b[3:0]`를 더해 `{cout,s[3:0]}`로 출력한다. 0부터 255까지 256개 입력 조합을 Xsim으로 자동 검사한다.

- RTL: `src/adder_4bit.v`
- 테스트벤치: `sim/tb_adder_4bit.sv`
- 통과 기준: `LAB1_PASS adder_4bit cases=256`, 종료 2560 ns
- 파형: `build/sim/wave.vcd`

`LAB1.code-workspace`를 열고 **터미널 → 작업 실행... → 02 Simulate**를 실행한다. 파형은 **03 Open waveform**으로 연다.
