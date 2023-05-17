LDVERSION= $(shell $(PIC_LD) -v | grep -q 2.30 ;echo $$?)
ifeq ($(LDVERSION), 0)
     LD_NORELAX_FLAG= --no-relax
endif

ARCHIVE_OBJS=
ARCHIVE_OBJS += _8895_archive_1.so
_8895_archive_1.so : archive.0/_8895_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -Bsymbolic $(LD_NORELAX_FLAG)  -o .//../simv.daidir//_8895_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_8895_archive_1.so $@




VCS_CU_ARC_OBJS = 


O0_OBJS =

$(O0_OBJS) : %.o: %.c
	$(CC_CG) $(CFLAGS_O0) -c -o $@ $<


%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<
CU_UDP_OBJS = \
objs/udps/T7p0B.o objs/udps/LUUB2.o objs/udps/xbI2P.o objs/udps/b1HMI.o objs/udps/r1svH.o  \
objs/udps/TtP1m.o objs/udps/yiFgW.o objs/udps/gEIcq.o objs/udps/m9nzD.o objs/udps/BKdDj.o  \
objs/udps/fTq4m.o objs/udps/nC9PF.o objs/udps/u1p1q.o objs/udps/Ka3iY.o objs/udps/dnrsM.o  \
objs/udps/GUwfU.o objs/udps/H7wg2.o objs/udps/zPvv6.o objs/udps/TxnM0.o objs/udps/raLFp.o  \
objs/udps/CI3nG.o objs/udps/eAL5P.o objs/udps/rkFjN.o objs/udps/IAPS0.o objs/udps/FU5wF.o  \
objs/udps/YUnBu.o objs/udps/U3y5c.o objs/udps/ybMuj.o objs/udps/L3597.o objs/udps/Fdess.o  \


CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
objs/amcQw_d.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

