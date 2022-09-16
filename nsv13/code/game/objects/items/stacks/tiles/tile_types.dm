/obj/item/stack/tile/glass
	name = "glass tile"
	icon = 'nsv13/icons/obj/tiles.dmi'
	singular_name = "glass floor tile"
	desc = "The glass you walk on."
	icon_state = "glass_tile"
	turf_type = /turf/open/floor/glass
	mats_per_unit = list(/datum/material/glass=500)

/obj/item/stack/tile/glass/reinforced
	name = "reinforced glass tile"
	singular_name = "reinforced glass tile"
	desc = "The glass you walk on."
	icon_state = "rglass_tile"
	turf_type = /turf/open/floor/glass/reinforced
	mats_per_unit = list(/datum/material/glass=500, /datum/material/iron=250)

