set_pns_commit_mode true
# committing ring in strategy core
create_power_straps -direction vertical -start_at 380.420 -nets {VDD} -layer 67 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 221.000 -start_high_ends coordinate -start_high_ends_coordinate 380.600 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 224.000 -nets {VDD} -layer 67 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 221.000 -start_high_ends coordinate -start_high_ends_coordinate 380.600 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 224.000 -nets {VDD} -layer 68 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 221.000 -start_high_ends coordinate -start_high_ends_coordinate 383.420 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 377.600 -nets {VDD} -layer 68 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 221.000 -start_high_ends coordinate -start_high_ends_coordinate 383.420 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 389.420 -nets {VSS} -layer 67 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 212.000 -start_high_ends coordinate -start_high_ends_coordinate 389.600 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction vertical -start_at 215.000 -nets {VSS} -layer 67 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 212.000 -start_high_ends coordinate -start_high_ends_coordinate 389.600 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 215.000 -nets {VSS} -layer 68 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 212.000 -start_high_ends coordinate -start_high_ends_coordinate 392.420 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 386.600 -nets {VSS} -layer 68 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 212.000 -start_high_ends coordinate -start_high_ends_coordinate 392.420 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

create_power_straps -direction horizontal -start_at 386.600 -nets {VSS} -layer 68 -width 6.000 -start_low_ends coordinate -start_low_ends_coordinate 212.000 -start_high_ends coordinate -start_high_ends_coordinate 392.420 -extend_low_ends off -extend_high_ends off -keep_floating_wire_pieces -ignore_parallel_targets -define_parallel_targets_by_wire_directions -mark_as_ring 

set_pns_commit_mode false
