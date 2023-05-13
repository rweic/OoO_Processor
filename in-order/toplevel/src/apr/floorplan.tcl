# ==========================================================================
# GENERAL ROUTING PARAMETERS
# ==========================================================================
# Set Min/Max Routing Layers and routing directions


#Then, once routing layer preferences have been established, place pins.
# set_fp_pin_constraints -hard_constraints {layer location} -block_level -use_physical_constraints on
#  set_pin_physical_constraints [all_inputs] \
#                   -side 1 \
#                   -width 0.1 \
#                   -depth 0.1 \
#                   -layers {metal2}

#  set_pin_physical_constraints [all_outputs] \
#                   -side 3 \
#                   -width 0.1 \
#                   -depth 0.1 \
#                   -layers {metal2}

#set_physical_constraints [all_inputs] \
#                    -side 1 \
#                    -width 0.1 \
#                    -depth 0.1 \
#                    -layers {metal2,metal4}
#
#set_physical_constraints [all_outputs] \
#                    -side 3 \
#                    -width 0.1 \
#                    -depth 0.1 \
#                    -layers {metal2,metal4}

derive_pg_connection -power_net VDD -power_pin VDD -ground_net VSS -ground_pin VSS
derive_pg_connection

if {[file isfile pin_placement.txt]} {
    exec python3 $SCRIPTS_DIR/gen_pin_placement.py -t pin_placement.txt -o pin_placement.tcl
    }

if {[file isfile pin_placement.tcl]} {
    # Fix the pin metal layer change problem
    set_fp_pin_constraints -hard_constraints {layer location} -block_level -use_physical_constraints on
    source pin_placement.tcl -echo
}

#### SET FLOORPLAN VARIABLES ######
set CELL_HEIGHT 1.4
set CORE_WIDTH_IN_CELL_HEIGHTS  50
set CORE_HEIGHT_IN_CELL_HEIGHTS 35
set POWER_RING_CHANNEL_WIDTH [expr 10*$CELL_HEIGHT]

set CORE_WIDTH  [expr $CORE_WIDTH_IN_CELL_HEIGHTS * $CELL_HEIGHT]
set CORE_HEIGHT [expr $CORE_HEIGHT_IN_CELL_HEIGHTS * $CELL_HEIGHT]

create_floorplan -control_type width_and_height \
                 -core_width  $CORE_WIDTH \
                 -core_height $CORE_HEIGHT \
                 -core_aspect_ratio 1.50 \
                 -left_io2core $POWER_RING_CHANNEL_WIDTH \
                 -right_io2core $POWER_RING_CHANNEL_WIDTH \
                 -top_io2core $POWER_RING_CHANNEL_WIDTH \
                 -bottom_io2core $POWER_RING_CHANNEL_WIDTH \
                 -flip_first_row


# Power straps are not created on the very top and bottom edges of the core, so to
# prevent cells (especially filler) from being placed there, later to create LVS
# errors, remove all the rows and then re-add them with offsets
cut_row -all
add_row \
   -within [get_attribute [get_core_area] bbox] \
   -top_offset $CELL_HEIGHT \
   -bottom_offset $CELL_HEIGHT
   #-flip_first_row \

### ADD STUFF HERE FOR THE MACRO PLACEMENT.
##### PLACING YOUR RAM AND DERIVING CELL INFO######
set RAM_2B_16 "ram"

# Get height and width of RAM
set RAM_2B_16_HEIGHT [get_attribute $RAM_2B_16 height]
set RAM_2B_16_WIDTH  [get_attribute $RAM_2B_16 width] 

# Set Origin of RAM
set RAM_2B_16_LLX [expr 14*$CELL_HEIGHT]
set RAM_2B_16_LLY [expr 14*$CELL_HEIGHT]
# Derive URX and URY corner for placement blockage. "Width" and "Height" are along wrong axes because we rotated the RAM.
set RAM_2B_16_URX [expr $RAM_2B_16_LLX + $RAM_2B_16_HEIGHT]
set RAM_2B_16_URY [expr $RAM_2B_16_LLY + $RAM_2B_16_WIDTH]

set GUARD_SPACING [expr 2*$CELL_HEIGHT]

set_attribute $RAM_2B_16 orientation "E"

set_cell_location \
   -coordinates [list [expr $RAM_2B_16_LLX ] [expr $RAM_2B_16_LLY]] \
   -fixed \
   $RAM_2B_16

# Create blockage for filler-cell placement. 
create_placement_blockage \
   -bbox [list [expr $RAM_2B_16_LLX - $GUARD_SPACING] [expr $RAM_2B_16_LLY - $GUARD_SPACING] \
               [expr $RAM_2B_16_URX + $GUARD_SPACING] [expr $RAM_2B_16_URY + $GUARD_SPACING]] \
   -type hard

# Connect RAM power to power grid
connect_net VDD [get_pins -all ram/vdd]
connect_net VSS [get_pins -all ram/gnd]