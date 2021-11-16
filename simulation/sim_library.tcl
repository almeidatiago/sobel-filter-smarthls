# Simulation library paths for ModelSim
if { [info exists ::env(LEGUP_ROOT_DIR_WIN) ] } {
	set root $::env(LEGUP_ROOT_DIR_WIN) 
} else {
	set root $::env(LEGUP_ROOT_DIR)
}
vmap polarfire $root/ip/libs/device/polarfire/polarfire
vmap smartfusion2 $root/ip/libs/device/smartfusion2/smartfusion2
vmap generic $root/ip/libs/generic/generic
vmap legup_fp $root/ip/libs/legup_fp/legup_fp
