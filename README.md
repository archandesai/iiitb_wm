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
 sudo apt update
 sudo apt install iverilog
 sudo apt install gtkwave
```

### Functional Simulation
To clone the Repository and download the Netlist files for Simulation, enter the following commands in your terminal.
```
   sudo apt install -y git
   git clone $ https://github.com/archandesai/iiitb_wm
   cd iiitb_wm
   iverilog iiitb_wm.v iiitb_wm_tb.v
   ./a.out
   gtkwave iiitb_wm_tb.vcd
```
## synthesis of verilog code

#### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains
```
   sudo apt-get update
   sudo apt-get -y install yosys
```
to synthesize
```
   yosys -s yosys_run.sh
```
# GLS - Gate Level Simulation
GLS is generating the simulation output by running test bench with netlist file generated from synthesis as design under test. Netlist is logically same as RTL code, therefore, same test bench can be used for it.

Below picture gives an insight of the procedure. Here while using iverilog, you also include gate level verilog models to generate GLS simulation.

![image](https://user-images.githubusercontent.com/72696170/183296780-4bad9547-69e9-4cee-b791-acb5a38951bf.png)


# SIMULATION
Pre - synthesis simulation waveform:
![pre][Screenshot from 2022-08-16 23-17-02](https://user-images.githubusercontent.com/110079753/184945366-80562068-8839-4a1b-b7a5-772d8141741f.png)

Post - synthesis simulation waveform:
![post][Screenshot from 2022-08-16 14-29-24](https://user-images.githubusercontent.com/110079753/184944682-8e1a9e65-c063-497a-8d3c-90cfb19ebea6.png)


# PHYSICAL DESIGN

## OpenLane

OpenLane is an automated RTL to GDSII flow based on several components including OpenROAD, Yosys, Magic, Netgen, CVC, SPEF-Extractor, CU-GR, Klayout and a number of custom scripts for design exploration and optimization. The flow performs full ASIC implementation steps from RTL all the way down to GDSII.

First you have to install prerequsites.
```
 apt install -y build-essential python3 python3-venv python3-pip
 
```
The docker installation is given here: https://docs.docker.com/engine/install/ubuntu/

```
  git clone https://github.com/The-OpenROAD-Project/OpenLane.git
  cd OpenLane/
  sudo make
  sudo make test
```
## MAGIC

Magic is a venerable VLSI layout tool, written in the 1980's at Berkeley by John Ousterhout, now famous primarily for writing the scripting interpreter language Tcl. Due largely in part to its liberal Berkeley open-source license, magic has remained popular with universities and small companies. The open-source license has allowed VLSI engineers with a bent toward programming to implement clever ideas and help magic stay abreast of fabrication technology. However, it is the well thought-out core algorithms which lend to magic the greatest part of its popularity. Magic is widely cited as being the easiest tool to use for circuit layout, even for people who ultimately rely on commercial tools for their product design flow. More about magic at http://opencircuitdesign.com/magic/index.html

Run following commands one by one to fulfill the system requirement.

```
 sudo apt-get install m4
 sudo apt-get install tcsh
 sudo apt-get install csh
 sudo apt-get install libx11-dev
 sudo apt-get install tcl-dev tk-dev
 sudo apt-get install libcairo2-dev
 sudo apt-get install mesa-common-dev libglu1-mesa-dev
 sudo apt-get install libncurses-dev
```

# Stats

![Screenshot from 2022-08-30 15-43-32](https://user-images.githubusercontent.com/110079753/187411613-0130c3ac-e316-477f-9e8f-87ef52b712b5.png)


# LAYOUT


![Screenshot from 2022-08-30 15-38-20](https://user-images.githubusercontent.com/110079753/187410773-7a725e44-60e4-4051-86c0-a89c21daef4a.png)
![Screenshot from 2022-08-30 15-37-43](https://user-images.githubusercontent.com/110079753/187410707-caa29762-7b8d-44f9-ba0a-531ed186e761.png)




## Contributors 


- **Archan Desai** 
- **Kunal Ghosh** 
- **Rakshit Bhatia**
- **Ishan Desai**
- **Arsh Kedia** 


## Contact Information

- Archan Desau, Postgraduate Student, International Institute of Information Technology, Bangalore  archan.desai00@gmail.com
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com



