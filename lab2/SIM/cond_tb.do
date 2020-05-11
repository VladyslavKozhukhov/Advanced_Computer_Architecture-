onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /cond_tb/din
add wave -noupdate -radix unsigned /cond_tb/D_prev
add wave -noupdate /cond_tb/cond
add wave -noupdate /cond_tb/riseSig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47152696 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {123046876 ps}
