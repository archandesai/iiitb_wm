# iiitb_wm

ASIC design of automatic washing machine

## Introduction

Washing machines are everywhere these days. In this projects we will try to implement ASIC design of Aoutomatic washing machine.

![Washing machine](https://user-images.githubusercontent.com/110079753/182373089-20ff5a7f-3fa0-4641-be5f-c933e174825f.jpg)
Above given image is the state diagram of Aoutomatic washing machine

In a specific automatic washing machine there are usually six states as given above such as, Check door, Fill water, Add detergent, Cycle, Drain water and Spin.


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
$   cd iiitb_wm
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
# GLS - Gate Level Simulation
GLS is generating the simulation output by running test bench with netlist file generated from synthesis as design under test. Netlist is logically same as RTL code, therefore, same test bench can be used for it.

**Why GLS?**

The main reasons for running GLS are as follows:

  * To verify the power up and reset operation of the design and also to check that the design does not have any unintentional dependencies on initial conditions.
  * To give confidence in verification of low power structures, absent in RTL and added during synthesis. 
  * It is a probable method to catch multicycle paths if tests exercising them are available.
  * Power estimation is done on netlist for the power numbers. 
  * To verify DFT structures absent in RTL and added during or after synthesis. Scan chains are generally inserted after the gate level netlist has been created. Hence, gate level simulations are often used to determine whether scan chains are correct. GLS is also required to simulate ATPG patterns. 
  * Tester patterns (patterns to screen parts for functional or structural defects on tester) simulations are done on gate level netlist.
  * To help reveal glitches on edge sensitive signals due to combination logic. Using both worst and best-case timing may be necessary.
  * It is a probable method to check the critical timing paths of asynchronous designs that are skipped by STA.
  * To avoid simulation artifacts that can mask bugs at RTL level (because of no delays at RTL level).
  * Could give insight to constructs that can cause simulation-synthesis mismatch and can cause issues at the netlist level.
  * To check special logic circuits and design topology that may include feedback and/or initial state considerations, or circuit tricks. If a designer is concerned about some logic then this is good candidate for gate simulation. Typically, it is a good idea to check reset circuits in gate simulation. Also, to check if we have any uninitialized logic in the design which is not intended and can cause issues on silicon.
  * To check if design works at the desired frequency with actual delays in place.
  * It is a probable method to find out the need for synchronizers if absent in design. It will cause “x” propagation on timing violation on that flop.

Below picture gives an insight of the procedure. Here while using iverilog, you also include gate level verilog models to generate GLS simulation.

![image](https://user-images.githubusercontent.com/72696170/183296780-4bad9547-69e9-4cee-b791-acb5a38951bf.png)



# SIMULATION
Pre - synthesis simulation waveform:
![pre]![Screenshot from 2022-08-16 23-17-02](https://user-images.githubusercontent.com/110079753/184945366-80562068-8839-4a1b-b7a5-772d8141741f.png)

Post - synthesis simulation waveform:
![post]![Screenshot from 2022-08-16 14-29-24](https://user-images.githubusercontent.com/110079753/184944682-8e1a9e65-c063-497a-8d3c-90cfb19ebea6.png)

# FUTURE WORKS
* Installation of openlane.
* Floor planning.


## Contributors 

- **Archan Desai** 
- **Kunal Ghosh** 
- **Rakshit Bhatia**
- **Ishan Desai**
- **Arsh Kedia** 


## Contact Information

- Archan Desau, Postgraduate Student, International Institute of Information Technology, Bangalore  archan.desai00@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com



