#!/bin/csh -f

cd /home/projects/ee478.2023spr/gbeatty3/OoO_Processor/in-order/top_level_no_macros/sim/postapr

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/home/lab.apps/vlsiapps_new/vcs/current/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

