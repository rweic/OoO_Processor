
set macro "sram_2_16_freepdk45"
# MW Library name
set LIBNAME $macro
# Reference techfile
set TFPATH [getenv "ADK_PATH"]
set REF_TF "$TFPATH/rtk-tech.tf"
# Reference library
set REF_LIB "$TFPATH/stdcells.mwlib"

# Cleanup previous work
# exec rm -rf $LIBNAME

# Create the milkyway library and open it
extend_mw_layers

create_mw_lib $LIBNAME \
   -technology $REF_TF \
   -hier_separator / \
   -mw_reference_library $REF_LIB \

open_mw_lib $LIBNAME

# Create the individual CEL views (and attach to the open library)
   create_mw_cel $macro
   save_mw_cel   $macro
   close_mw_cel  $macro

# Close the library
close_mw_lib

# Update each macro with its physical data
   read_lef \
      -lib_name $LIBNAME \
       -tech_lef_files ${macro}.lef \
       -cell_lef_files ${macro}.lef \
       -layer_mapping  ${macro}.lef \
      -cell_version merge

# Finish
exit

