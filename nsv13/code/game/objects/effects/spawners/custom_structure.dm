/obj/effect/spawner/structure/window/shuttle
	name = "shuttle window spawner"
	icon_state = "swindow_spawner"
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/shuttle)


//plastitanium window

/obj/effect/spawner/structure/window/plastitanium
	name = "plastitanium window spawner"
	icon_state = "plastitaniumwindow_spawner"
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/plastitanium)


/obj/effect/spawner/structure/window/plasma/reinforced
	name = "reinforced plasma window spawner"
	icon_state = "prwindow_spawner"
	spawn_list = list(/obj/machinery/door/firedoor/window, /obj/structure/grille, /obj/structure/window/reinforced/plasma/fulltile) //NSV13, adds window firedoors to window spawners

/obj/effect/spawner/structure/window/hollow/plasma/reinforced
	name = "hollow reinforced plasma window spawner"
	icon_state = "phrwindow_spawner_full"
	spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/east, /obj/structure/window/reinforced/plasma/spawner/west)

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/end
	icon_state = "phrwindow_spawner_end"

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/end/Initialize()
	switch(dir)
		if(NORTH)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/east, /obj/structure/window/reinforced/plasma/spawner/west)
		if(EAST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/east)
		if(SOUTH)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/east, /obj/structure/window/reinforced/plasma/spawner/west)
		if(WEST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/west)
	. = ..()

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/middle
	icon_state = "phrwindow_spawner_middle"

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/middle/Initialize()
	switch(dir)
		if(NORTH,SOUTH)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/north)
		if(EAST,WEST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/east, /obj/structure/window/reinforced/plasma/spawner/west)
	. = ..()

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/directional
	icon_state = "phrwindow_spawner_directional"

/obj/effect/spawner/structure/window/hollow/plasma/reinforced/directional/Initialize()
	switch(dir)
		if(NORTH)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/north)
		if(NORTHEAST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/east)
		if(EAST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/east)
		if(SOUTHEAST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/east)
		if(SOUTH)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma)
		if(SOUTHWEST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma, /obj/structure/window/reinforced/plasma/spawner/west)
		if(WEST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/west)
		if(NORTHWEST)
			spawn_list = list(/obj/structure/grille, /obj/structure/window/reinforced/plasma/spawner/north, /obj/structure/window/reinforced/plasma/spawner/west)
	. = ..()
