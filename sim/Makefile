DSRC = ../src
DTST = ../test

SRC = $(DSRC)/alu.v
HDR = $(DSRC)/PARAM.vh
TB = $(DTST)/alu_tb.sv

incdir:=-I
defmacro:=-D
INCLUDE=$(incdir)$(DSRC) $(incdir)$(DTST)

VLOG = 	iverilog -W all -g2005-sv
FLAGS = -v -o

.PHONY: run clean

run:  $(SRC) $(HDR) $(TB)
	$(VLOG) $(INCLUDE) $(FLAGS) $(TB) $(HDR) $(SRC) ./a.out

clean:
	rm *.vcd
	rm *.out