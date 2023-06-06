# EE478 In-Order and Out-of-Order RISCV 32IM Processor Performance Comparison
## Rouwei Chen, Elijah Carino, George Beatty
- Project Goal: Compare the performance of an In-Order and Out-of-Order RISCV 32IM processor by 
  comparing the number of cycles required to execute the same set of assembly instructions.


## In-Order Processor 
### Pre-Syn Simulation
- Use Makefile to prepare the simulation and generate the coverage report
- in-order/top_level_no_macros/sim/presyn

1. make vcs
2. make coverage (in-order/top_level_no_macros/sim/presyn/urgReport/hierarchy.html)
3. make verdi

### Synthesis
- Reports: in-order/top_level_no_macros/sapr/syn/reports
- TCL Scripts: in-order/top_level_no_macros/src/syn
- Synthesized Netlist: in-order/top_level_no_macros/sapr/syn/results/cpu.syn.v

To Re-Run Synthesis
1. go to sapr/syn repository
2. make clean
3. dc_shell -f syn.tcl

### Post-Syn Simulation
- in-order/top_level_no_macros/sim/postsyn
- To re-make th simulation, delete .fsdb, .vcd, and .include files
- 
1. make vcs
3. make verdi

### APR
- Die Area: 500x500
- Clk Speed: 15 ns
- DRC: Clean
- Link to directory: in-order/top_level_no_macros/sapr/apr/design_lib

To Open Layout:
1. enter repository above 
2. icc_shell -shared_license
3. start_gui
4. once gui opens, go to file -> Open Design and select the design_lib folder
5. choose the final layout

### Post-APR Simulation
- in-order/top_level_no_macros/sim/postapr
- Use Makefile to prepare the simulation and generate the coverage report
- To re-make th simulation, delete .fsdb, .vcd, and .include files

1. make vcs
3. make verdi



## Out-of-Order Processor
Out-of-Order is almost complete. We are still copmleting the debugging process, but the RTL is mostly complete and we are beginnign 
to synthesize the modules. 

out-of-order/src

### VCS Coverage Report


### Pre-Syn Simulation


### Synthesis


### Post-Syn Simulation


### APR


### Post-APR Simulation



# Processor Performance Comparison 
### GCD

### Fibonacci Sequence



- risc-v compiler toolchain: https://github.com/riscv-collab/riscv-gnu-toolchain

