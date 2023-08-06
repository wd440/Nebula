/datum/fabricator_recipe/device_component
	path = /obj/item/stock_parts/console_screen
	category = "Devices and Components"

/datum/fabricator_recipe/device_component/keyboard
	path = /obj/item/stock_parts/keyboard

/datum/fabricator_recipe/device_component/cataloguer
	path = /obj/item/cataloguer

/datum/fabricator_recipe/device_component/pda
	path = /obj/item/modular_computer/pda

/datum/fabricator_recipe/device_component/tesla_component
	path = /obj/item/stock_parts/power/apc/buildable

/datum/fabricator_recipe/device_component/radio_transmitter
	path = /obj/item/stock_parts/radio/transmitter/basic/buildable

/datum/fabricator_recipe/device_component/radio_transmitter_event
	path = /obj/item/stock_parts/radio/transmitter/on_event/buildable

/datum/fabricator_recipe/device_component/radio_receiver
	path = /obj/item/stock_parts/radio/receiver/buildable

/datum/fabricator_recipe/device_component/battery_backup_crap
	name = "battery backup (weak)"
	path = /obj/item/stock_parts/power/battery/buildable/crap

/datum/fabricator_recipe/device_component/battery_backup_stock
	name = "battery backup (standard)"
	path = /obj/item/stock_parts/power/battery/buildable/stock

/datum/fabricator_recipe/device_component/battery_backup_turbo
	name = "battery backup (rapid)"
	path = /obj/item/stock_parts/power/battery/buildable/turbo

/datum/fabricator_recipe/device_component/battery_backup_responsive
	name = "battery backup (responsive)"
	path = /obj/item/stock_parts/power/battery/buildable/responsive

/datum/fabricator_recipe/device_component/terminal
	path = /obj/item/stock_parts/power/terminal/buildable

/datum/fabricator_recipe/device_component/access_lock
	path = /obj/item/stock_parts/access_lock/buildable

/datum/fabricator_recipe/device_component/network_lock
	path = /obj/item/stock_parts/network_receiver/network_lock/buildable

/datum/fabricator_recipe/device_component/network_receiver
	path = /obj/item/stock_parts/network_receiver/buildable

/datum/fabricator_recipe/device_component/igniter
	path = /obj/item/assembly/igniter

/datum/fabricator_recipe/device_component/signaler
	path = /obj/item/assembly/signaler

/datum/fabricator_recipe/device_component/sensor_infra
	path = /obj/item/assembly/infra

/datum/fabricator_recipe/device_component/timer
	path = /obj/item/assembly/timer

/datum/fabricator_recipe/device_component/sensor_prox
	path = /obj/item/assembly/prox_sensor

/datum/fabricator_recipe/device_component/cable_coil
	path = /obj/item/stack/cable_coil/single

/datum/fabricator_recipe/device_component/net_cable_coil
	path = /obj/item/stack/net_cable_coil/single

/datum/fabricator_recipe/device_component/beartrap
	path = /obj/item/beartrap
	hidden = TRUE

/datum/fabricator_recipe/device_component/cell
	path = /obj/item/cell

/datum/fabricator_recipe/device_component/cell_apc
	path = /obj/item/cell/apc

/datum/fabricator_recipe/device_component/cell_device
	path = /obj/item/cell/device

/datum/fabricator_recipe/device_component/cell_fuel
	path = /obj/item/cell/fuel

/datum/fabricator_recipe/device_component/cell_fuel_device
	path = /obj/item/cell/device/fuel

/datum/fabricator_recipe/device_component/ecigcartridge
	path = /obj/item/chems/ecig_cartridge/blank

/datum/fabricator_recipe/device_component/conveyor_construct
	path = /obj/item/conveyor_construct

/datum/fabricator_recipe/device_component/conveyor_switch_construct
	path = /obj/item/conveyor_switch_construct

/datum/fabricator_recipe/device_component/conveyor_switch_oneway_construct
	path = /obj/item/conveyor_switch_construct/oneway

/datum/fabricator_recipe/device_component/fusebox
	path = /obj/item/stock_parts/shielding/electric

/datum/fabricator_recipe/device_component/armor
	path = /obj/item/stock_parts/shielding/kinetic

/datum/fabricator_recipe/device_component/heatsink
	path = /obj/item/stock_parts/shielding/heat

/datum/fabricator_recipe/device_component/comp_part/get_product_name()
	. = "computer part ([..()])"

/datum/fabricator_recipe/device_component/comp_part
	category = "Computer Parts"
	path = /obj/item/stock_parts/computer/card_slot

/datum/fabricator_recipe/device_component/comp_part/cpu
	path = /obj/item/stock_parts/computer/processor_unit

/datum/fabricator_recipe/device_component/comp_part/cpu_small
	path = /obj/item/stock_parts/computer/processor_unit/small
