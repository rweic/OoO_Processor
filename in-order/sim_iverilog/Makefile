MODULE = toplevel

DSRC = ../src
DTST = ../test

SRC = $(DSRC)/*.v #$(DSRC)/$(MODULE).v $(DSRC)/regfile.v
HDR = $(DSRC)/PARAM.vh
TB = $(DTST)/$(MODULE)_tb.sv

incdir:=-I
defmacro:=-D
INCLUDE=$(incdir)$(DSRC) $(incdir)$(DTST)
TIMESCALE:=`timescale 1ns/100ps
DEFINE:=$(defmacro) TIMESCALE='$(TIMESCALE)'

VLOG = iverilog -W all -g2005-sv

TEST_LOG = test.log

#.PHONY: run clean

run:  $(SRC) $(HDR) $(TB)
	$(VLOG) $(INCLUDE) $(DEFINE) $(FLAGS) $(TB) $(HDR) $(SRC)
	./a.out $(TEST_LOG)
clean:
	rm *.vcd
	rm *.out