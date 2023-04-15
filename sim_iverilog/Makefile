MODULE = regfile

DSRC = ../src
DTST = ../test

SRC = $(DSRC)/$(MODULE).v
HDR = $(DSRC)/PARAM.vh
TB = $(DTST)/$(MODULE)_tb.sv

incdir:=-I
defmacro:=-D
INCLUDE=$(incdir)$(DSRC) $(incdir)$(DTST)

VLOG = iverilog -W all -g2005-sv

TEST_LOG = test.log

#.PHONY: run clean

run:  $(SRC) $(HDR) $(TB)
	$(VLOG) $(INCLUDE) $(FLAGS) $(TB) $(HDR) $(SRC)  
	./a.out $(TEST_LOG)
clean:
	rm *.vcd
	rm *.out