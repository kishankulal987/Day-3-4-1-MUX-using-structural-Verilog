Overview

This project implements a 4x1 Multiplexer (MUX) in Verilog using a structural design approach. The 4x1 MUX selects one of four input bits (I[3:0]) based on a 2-bit select line (sel[1:0]) and produces a single-bit output (y). It leverages a hierarchical design by instantiating 2x1 MUX modules. A testbench is included for simulation and verification.

Modules

mux2X1





Description: A 2x1 MUX used as a building block for the 4x1 MUX.



Inputs:





I[1:0]: 2-bit input vector (I[0], I[1]).



sel: Single-bit select line.



Output:





y: Single-bit output, selects I[1] if sel = 1, else I[0].



Functionality: Uses a conditional assignment (assign y = sel ? I[1] : I[0];) for selection.



Style: Dataflow modeling.

mux4X1_struct





Description: A 4x1 MUX implemented structurally.



Inputs:





I[3:0]: 4-bit input vector (I[0], I[1], I[2], I[3]).



sel[1:0]: 2-bit select line to choose one of the four inputs.



Output:





y: Single-bit output, the selected input.



Functionality:





Uses three 2x1 MUX instances: two for the first stage (selecting between I[1:0] and I[3:2]) and one for the final stage (selecting between intermediate results).



Selection logic:





sel = 00: y = I[0]



sel = 01: y = I[1]



sel = 10: y = I[2]



sel = 11: y = I[3]



Style: Structural modeling.

mux4X1_tb





Description: A testbench to simulate and verify the 4x1 MUX.



Functionality:





Inputs: 4-bit vector I and 2-bit select line sel.



Uses nested loops to test all combinations of I (0 to 15) and sel (0 to 3).



Applies a 10ns delay between test cases.



Monitors and displays I, sel, and output y using $monitor.



Time Scale: Defined as 1ns / 1ps for simulation precision.



Purpose: Verifies the 4x1 MUX correctly selects the intended input.

Files





mux2X1.v: Verilog module for the 2x1 MUX.



mux4X1_struct.v: Verilog module for the 4x1 MUX.



mux4X1_tb.v: Testbench for simulation.

Circuit Diagram

Below is the circuit diagram for the 4x1 MUX.
![4x1_mux_schematic](https://github.com/user-attachments/assets/81a789ba-2d87-4458-ab5b-33e3aeeb1b0e)

Simulation in Vivado





Setup:





Open Xilinx Vivado (e.g., 2023.2 or later).



Create a new RTL project and specify a project name/location.



Add Files:





Add mux2X1.v, mux4X1_struct.v, and mux4X1_tb.v via "Add Sources."



Set mux4X1_tb as the top module for simulation.



Run Simulation:





Go to "Flow" > "Run Simulation" > "Run Behavioral Simulation."



Vivado’s XSim simulator executes the testbench.



View Results:





Check the console for $monitor output (see below).



Open the waveform viewer to visualize signals.

Simulation Waveform

Below is the simulation waveform from Vivado, showing inputs I[3:0], select lines sel[1:0], and output y over time.
![Screenshot 2025-06-03 205408](https://github.com/user-attachments/assets/c405883b-6515-47f0-b090-9d65a4121140)


Console Output

Below is the console output from the testbench simulation.
![Screenshot 2025-06-03 205445](https://github.com/user-attachments/assets/a5e67f6a-5240-48c5-80b2-e2121a0bd6be)






I=0000 sel=00 out=0



I=0001 sel=00 out=1



I=0010 sel=01 out=1



I=1100 sel=10 out=0



I=1111 sel=11 out=1

Features





Hierarchical Design: Builds a 4x1 MUX using 2x1 MUX modules.



Exhaustive Testing: Testbench covers all input and select line combinations.



Educational: Great for learning structural Verilog and MUX concepts.



Synthesizable: Suitable for FPGA implementation.
