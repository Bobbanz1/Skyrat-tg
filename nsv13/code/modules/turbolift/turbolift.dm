/obj/machinery/turbolift_button
	name = "Lift call button"
	desc = "A button used to call turbolifts to your floor. You feel like mashing it incessently..."

/obj/machinery/door/airlock/turbolift/ship
	name = "turbolift blast door"
	icon = 'nsv13/goonstation/icons/turbolift_blast_door.dmi'
	desc = "A bulkhead which opens and closes."

 // Turbolifts
/datum/map_template/shuttle/turbolift/nsv/enterprise
	prefix = "_maps/shuttles/turbolifts/nsv/"
	port_id = "debug"
	suffix = "enterprise"
	name = "aircraft elevator (SGC Enterprise)"

/datum/map_template/shuttle/turbolift/nsv/galactica
	prefix = "_maps/shuttles/turbolifts/nsv/"
	port_id = "turbolift"
	suffix = "galactica"
	name = "aircraft elevator (NSV Galactica)"

/datum/map_template/shuttle/turbolift/nsv/galactica/secondary
	prefix = "_maps/shuttles/turbolifts/nsv/"
	port_id = "turbolift"
	suffix = "galactica_secondary"
	name = "aircraft elevator (NSV Galactica, Secondary)"
