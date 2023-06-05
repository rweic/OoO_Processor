TOPLEVEL=top_level_with_macros

SRC=./verilog/PARAM.vh \
	./verilog/alu.v \
	./verilog/regfile.v \
	./verilog/execute.v \
	./verilog/decode.v \
	./verilog/fetch.v \
	./verilog/memory_access.v \
	./verilog/hazard_detect.v \
	./verilog/writeback.v \
	./verilog/cpu.v \
	./SRAM/dmem/dmem.v \
	./SRAM/imem/imem.v \
	./verilog/top_level_with_macros.v \
	./verilog/top_level_with_macros_tb.sv \


$(TOPLEVEL).include:
	echo $(SRC) > $@

dve: 
	-dve -full64 &

verdi: $(TOPLEVEL).fsdb
	-verdi -ultra -ssf $<

$(TOPLEVEL).fsdb: $(TOPLEVEL).include
	-vcs -f $(TOPLEVEL).include +v2k -R +lint=all -sverilog -full64 \
	+neg_tchk +define+PRE_SYN=1 -kdb -debug_access+all -timescale=1ns/10ps -l $(TOPLEVEL).log

vcs: $(TOPLEVEL).fsdb

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

