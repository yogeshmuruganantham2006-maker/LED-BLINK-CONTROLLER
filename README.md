
# VLSI LED Blink Controller

## Project Overview
The VLSI LED Blink Controller is a digital design project implemented using Verilog HDL. It uses a counter-based clock divider to generate periodic LED ON and OFF signals.

## Objectives
- Understand sequential logic design.
- Implement a digital clock divider.
- Generate periodic LED blinking.
- Verify the design using simulation.

## Features
- Parameterized clock frequency.
- Adjustable LED blinking frequency.
- Counter-based timing control.
- Asynchronous reset.
- RTL simulation and verification.

## Hardware and Software Requirements
- Xilinx Vivado
- Verilog HDL
- FPGA development board (optional)

## Default Configuration
- Input Clock: 100 MHz
- LED Blinking Frequency: 1 Hz
- ON Duration: 0.5 seconds
- OFF Duration: 0.5 seconds

## Project Structure
```text
VLSI-LED-Blink-Controller/
├── src/
│   └── led_blink_controller.v
├── testbench/
│   └── led_blink_tb.v
└── README.md
```

## Simulation Procedure
1. Open Xilinx Vivado.
2. Create a new RTL project.
3. Add the main Verilog source file.
4. Add the testbench as a simulation source.
5. Set the testbench as the simulation top module.
6. Run Behavioral Simulation.
7. Observe LED output transitions.

## Applications
- Digital electronics.
- VLSI design learning.
- FPGA-based LED control.
- Clock divider implementation.

## Author
Yogesh M

## License
This project is available for educational purposes.
