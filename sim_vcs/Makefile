TESTBENCH = TOPCELL

# Source Files
SRC = src/*.v

# Testbenches
TB = test/$(TESTBENCH)_tb.v

#incdir:=+incdir+
#defmacro:=+define+
#DEFINE+=$(defmacro)DATA_W=32
#INCLUDE+=$(incdir)$(_DIR)

# VCS simulation
SIM_TOOL = vcs
COV_REPORT_FLAG = -cm line+cond+tgl
SIM_FLAG = +v2k -R +lint=all -sverilog -full64 -debug_acc+pp+dmptf -debug_region+cell+encrypt +define+VCD
TIMESCALE = -timescale=1ns/10ps
LOG_FLAG = -l $(TESTBENCH)_test.log

sim-vcs:	$(SRC)
	$(SIM_TOOL) $(COV_REPORT_FLAG) $(SRC) $(SIM_FLAG) $(TIMESCALE) $(LOG_FLAG)

clean: 
	@rm a.out
