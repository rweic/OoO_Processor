
set macros [list \
    sram_2_16_freepdk45_TT_1p0V_25C
]

foreach macro $macros {
    read_lib ${macro}.lib
    write_lib -format db "[get_object_name [get_libs]]" -output ${macro}.db
    remove_lib "[get_object_name [get_libs]]"
}

# Finish
exit

