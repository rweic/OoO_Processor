SHELL = tcsh
TOPLEVEL=toplevel

dve: 
	-dve -full64 &

verdi: $(TOPLEVEL).fsdb
	-verdi -ultra -ssf $<

$(TOPLEVEL).fsdb: $(TOPLEVEL).include
	-vcs -cm line+cond+branch -f $(TOPLEVEL).include +v2k -R +lint=all -sverilog -full64 \
	+neg_tchk +define+PRE_SYN=1 -kdb -debug_access+all -timescale=1ns/10ps -l $(TOPLEVEL).log

vcs: $(TOPLEVEL).fsdb

coverage:
	make vcs -B
	./simv
	urg -full64 -dir simv.vdb

clean:
	-rm -r alib-52
	-rm -r db
	-rm -r ddc
	-rm -r $(TOPLEVEL)_design
	-rm -r reports
	-rm -r netlist
	-rm -r csrc
	-rm -r simv.daidir
	-rm -r DVEfiles
	-rm *.log
	-rm vcdplus.vpd
	-rm ucli.key
	-rm default.svf
	-rm simv
	-rm -r results
	-rm -r tmp
	-rm -rf design_lib
	-rm -rf pna_output

clean-all:
	-rm -r alib-52
	-rm -r db
	-rm -r ddc
	-rm -r $(TOPLEVEL)_design
	-rm -r reports
	-rm -r netlist
	-rm -r csrc
	-rm -r simv.daidir
	-rm -r DVEfiles
	-rm *.log
	-rm vcdplus.vpd
	-rm ucli.key
	-rm default.svf
	-rm simv
	-rm -r results
	-rm -r tmp
	-rm -rf design_lib
	-rm -rf pna_output
	-rm -f .fsm.sch.verilog.xml
	-rm -rf simv.vdb
	-rm -f toplevel.fsdb
	-rm -f toplevel.vcd
	-rm -rf urgReport
	-rm -f verdi_config_file
	-rm -f cm.log
	-rm -rf csrc
	-rm -f novas_dump.log
	-rm -f novas.conf
	-rm -f novas.rc
	-rm -rf verdiLog

