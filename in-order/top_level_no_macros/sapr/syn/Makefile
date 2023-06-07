SHELL = /bin/bash
.PHONY: syn clean

RESULTDIR=./results
REPORTDIR=./reports
LOGDIR=./results

syn:
	@if [ ! -d $(RESULTDIR) ]; then mkdir $(RESULTDIR); fi
	@if [ ! -d $(REPORTDIR) ]; then mkdir $(REPORTDIR); fi
	@$(shell which tcsh) -c 'dc_shell -f syn.tcl | tee $(LOGDIR)/syn.log'

clean:
	-@ rm -rf $(LOGDIR) \
			  $(RESULTDIR) \
			  $(REPORTDIR) \
			  *defineVarRoute* \
			  *.db \
			  *.svf \
			  *.log \
			  Milkyway.* \
			  design_lib \
			  tmp \
			  alib-52 \
			  WORK

