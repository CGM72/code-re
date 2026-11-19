# RTL Coding Practice

Small Verilog/SystemVerilog exercises with focused changes and simple testbenches.

## Exercises

- `rtl/up_counter.sv`: parameterized enabled up-counter with asynchronous active-low reset.
- `tb/tb_up_counter.sv`: basic reset, enable, increment, and wrap-around checks.

## Run with Icarus Verilog

```sh
iverilog -g2012 -s tb_up_counter -o sim.vvp rtl/up_counter.sv tb/tb_up_counter.sv
vvp sim.vvp
```

Each change should represent a real exercise, fix, or verification improvement rather than an empty contribution.
