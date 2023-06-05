set_pns_commit_mode true
# committing ring in strategy vdd_ring
create_power_straps -direction horizontal -start_at 6.3000 -nets {VDD} -layer 13 -width 3.0000 -start_low_ends coordinate -start_low_ends_coordinate 4.8000 -start_high_ends coordinate -start_high_ends_coordinate 583.1300 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 581.7000 -nets {VDD} -layer 13 -width 3.0000 -start_low_ends coordinate -start_low_ends_coordinate 4.8000 -start_high_ends coordinate -start_high_ends_coordinate 583.1300 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 581.6300 -nets {VDD} -layer 15 -width 3.0000 -start_low_ends coordinate -start_low_ends_coordinate 4.8000 -start_high_ends coordinate -start_high_ends_coordinate 583.2000 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 6.3000 -nets {VDD} -layer 15 -width 3.0000 -start_low_ends coordinate -start_low_ends_coordinate 4.8000 -start_high_ends coordinate -start_high_ends_coordinate 583.2000 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 6.3000 -nets {VDD} -layer 15 -width 3.0000 -start_low_ends coordinate -start_low_ends_coordinate 4.8000 -start_high_ends coordinate -start_high_ends_coordinate 583.2000 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

set_pns_commit_mode false
