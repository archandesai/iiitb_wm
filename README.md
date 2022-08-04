# iiitb_wm

ASIC design of automatic washing machine

## Introduction

Washing machines are everywhere these days. In this projects we will try to implement ASIC design of Aoutomatic washing machine.

![Washing machine](https://user-images.githubusercontent.com/110079753/182373089-20ff5a7f-3fa0-4641-be5f-c933e174825f.jpg)
Above given image is the state diagram of Aoutomatic washing machine

In a specific automatic washing machine there are usually six states as given above such as, Check door, Fill water, Add detergent, Cycle, Drain water and Spin.

![Automatic Washing machine](https://user-images.githubusercontent.com/110079753/182374552-91e3eaa5-d47a-4b4e-bfb2-92fa187378f1.PNG)
This is a simulation waveform of Automatic Washing machine.

### About iverilog

Icarus Verilog or iverilog is an implementation of the Verilog hardware description language.

### About GTKWave

GTKWave is a fully featured GTK+ v1. 2 based wave viewer for Unix and Win32 which reads Ver Structural Verilog Compiler generated AET files as well as standard Verilog VCD/EVCD files and allows their viewing.

### Downloading iberilog and gtkwave

#### For Ubuntu

Open your terminal and write following command.

```
$ sudo apt update
$ sudo apt install iverilog
$ sudo apt install gtkwave
```

### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
$   sudo apt install -y git
$   git clone $ https://github.com/archandesai/iiitb_wm
$   cd iiitb_pwm_gen
$   iverilog iiitb_wm.v iiitb_wm_tb.v
$   ./a.out
$   gtkwave iiitb_wm_tb.vcd
```
## synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains
```
$   sudo apt-get update
$   sudo apt-get -y install yosys
```
to synthesize
```
$   yosys -s yosys_run.sh
```



## Contributors 

- **Archan Desai** 
- **Kunal Ghosh** 



## Acknowledgments


- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd.
- Ishan Desai
## Contact Information

- Archan Desau, Postgraduate Student, International Institute of Information Technology, Bangalore  archan.desai00@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com



