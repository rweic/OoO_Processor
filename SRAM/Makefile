
MW_EXEC=$(EDA_TOOLS_PATH)/mw/current/bin/AMD.64/Milkyway
LC_EXEC=$(EDA_TOOLS_PATH)/lc/current/bin/lc_shell

# TCL scripts
TCL_LC=$(PWD)/convert_lib.tcl
TCL_MW=$(PWD)/create_fram.tcl

# Directories
LOGDIR=./results
RESULTDIR=./results 
REPORTDIR=./reports
MACRODIR=.

# MW library
MACRO_LIB=./
.PHONY: all clean create_lib create_fram

#MACRO=sram_2_16_freepdk45
MACRO=dmem
#MACRO=imem

convert_lib:
	cd $(MACRO) && $(LC_EXEC) -64bit -f $(TCL_LC) | tee convert_lib.log

create_fram:
	cd $(MACRO) && $(MW_EXEC) -nullDisplay -f $(TCL_MW) | tee create_fram.log
	-@ rm -rf Milkyway.*

clean:
	-@ rm -rf $(MACRO_LIB) \
			  $(LOGDIR) \
			  $(RESULTDIR) \
			  $(REPORTDIR) \
			  sram_lib \
			  *defineVarRoute* \
			  *.db \
			  *.svf \
			  *.log \
			  Milkyway.* \
			  rf alib-52 \
			  rf WORK
