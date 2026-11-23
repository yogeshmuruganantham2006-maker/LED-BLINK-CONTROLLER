## Nexys A7 - LED Blink Controller

## 100 MHz Clock
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk }]

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }]

## LED 0
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { led }]
