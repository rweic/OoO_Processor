# EE478 In-Order and Out-of-Order RISCV 32IM Processor Performance Comparison
## Rouwei Chen, Elijah Carino, George Beatty
- Project Goal: Compare the performance of an In-Order and Out-of-Order RISCV 32IM processor by 
  comparing the number of cycles required to execute the same set of assembly instructions.


## In-Order Processor 
### Pre-Syn Simulation
- repo: OoO_Processor/in-order/top_level_no_macros/sim/presyn
- Use Makefile to prepare the simulation and generate the coverage report

1. make vcs
2. make coverage (in-order/top_level_no_macros/sim/presyn/urgReport/hierarchy.html)
3. make verdi

### Synthesis
- repo: OoO_Processor/OoO_Processor/in-order/top_level_no_macros/sapr/syn
- Reports: OoO_Processor/in-order/top_level_no_macros/sapr/syn/reports
- TCL Scripts: in-order/top_level_no_macros/src/syn
- Synthesized Netlist: in-order/top_level_no_macros/sapr/syn/results/cpu.syn.v

To Re-Run Synthesis
1. go to sapr/syn repository
2. make clean
3. dc_shell -f syn.tcl

### Post-Syn Simulation
- repo: OoO_Processor/in-order/top_level_no_macros/sim/postsyn
- To re-make th simulation, delete .fsdb, .vcd, and .include files
- 
1. make vcs
3. make verdi

### APR
- repo: OoO_Processor/OoO_Processor/in-order/top_level_no_macros/sapr/apr
- TCL Scripts: in-order/top_level_no_macros/src/apr
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
- repo: OoO_Processor/in-order/top_level_no_macros/sim/postapr
- Use Makefile to prepare the simulation and generate the coverage report
- To re-make th simulation, delete .fsdb, .vcd, and .include files

1. make vcs
3. make verdi



## Out-of-Order Processor
Out-of-Order is almost complete. We are still copmleting the debugging process, but the RTL is mostly complete and we are beginnign 
to synthesize the modules. 

Directory: out-of-order/src

List of Files:

1. toplevel.v

Toplevel module includes the core, the data memory and instruction memory.

2. core.v

3. dmem.v

This is the OpenRAM generated verilog file which is used in the design.

4. imem.v

This is the OpenRAM generated verilog file which is used in the design. Instruction for testing were added here by initializing the memory. This is for testing only.

5. fetch.v

This module fetch instruction from instruction memory.

6. decode.v

This module pre-assign resource.

7. decoder.v

This is the submodule for decode, which could be reused for superscalar machine.

8. rename.v

The rename module was supposed to solve the name dependencies. The file also holds the module freelist.

9. rs.v

The rs module is for reservation station. The file also holds the module reservation_station_entry.

10. priority_management.v

This module select the entry for allocate and the entry for issueing with certain priority.

11. regfile.v

12. arith.v

Funtion unit arithmetic, including alu and part of the decoding remaining, takes one cycle to execute.

13. alu.v

14. lsu.v

Funtion unit load store unit, takes two cycle to execute.

15. mul.v

Funtion unit multiplier, takes two cycle to execute.

16. rob.v

Reorder buffer, used for commitment.

17. PARAM.vh

This is the header files for holding the commonly used parameters among modules.

### VCS Coverage Report


### Pre-Syn Simulation
Sub-module Simulations:

Directory: out-of-order/test

List of Files:

1. toplevel_tb.sv

This is the toplevel testbench which basically includes the clk_i and reset_i manipulation. And the acutal instruction for test is in the source file imem.v

2. rename_tb.sv

This testbench test for the rename correctness, it feeds in some combination of logic register indexes with name dependencies, and check for the correctness of the renaming.

3. rs_tb.sv

This testbench test for the reservation station, it feeds in some combination of logic register indexes with name dependencies, and check for the correctness of the renaming.

4. priority_select_tb.sv & priority_issue_tb.sv

These two testbenches are both for priority_management module, which were two modules but later merged into one because of the high similarity in the input signals.

5. arith_tb.sv

This testbench test for functional unit (arith/ALU unit).

6. lsu_tb.sv

This testbench test for functional unit (load store unit).

7. mul_tb.sv

This testbench test for functional unit (multiplier unit).

### Synthesis


### Post-Syn Simulation


### APR


### Post-APR Simulation



# Processor Performance Comparison 

## Comparing runtimes of each processor in doing the following:
##### 1. GCD
##### 2. Fibonacci Sequence
##### 3. Matrix Multiplication

#### Written algorithims in C and compiled into RISC Assembly with either:
https://godbolt.org/

risc-v compiler toolchain: https://github.com/riscv-collab/riscv-gnu-toolchain



- risc-v compiler toolchain: https://github.com/riscv-collab/riscv-gnu-toolchain

