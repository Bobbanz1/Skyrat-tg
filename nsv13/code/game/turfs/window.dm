/obj/structure/window/fulltile
	icon = 'modular_skyrat/modules/aesthetics/windows/icons/window.dmi'
	canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

/obj/structure/window/reinforced/fulltile
	icon = 'modular_skyrat/modules/aesthetics/windows/icons/r_window.dmi'
	canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

/obj/structure/window/plasma/fulltile
	icon = 'modular_skyrat/modules/aesthetics/windows/icons/window_plasma.dmi'
	icon_state = "window-0"
	base_icon_state = "window"
	canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

/obj/structure/window/plasma/reinforced/fulltile
	icon = 'modular_skyrat/modules/aesthetics/windows/icons/r_window_plasma.dmi'
	icon_state = "reinforced_window-0"
	base_icon_state = "reinforced_window"
	canSmoothWith = list(SMOOTH_GROUP_WALLS, SMOOTH_GROUP_WINDOW_FULLTILE, SMOOTH_GROUP_AIRLOCK)

//"wall grilles" that smooth like regular walls do because why not

/obj/structure/grille/wall
	color = "#707070" //So close to being "nice" that it hurts.
	smoothing_flags = SMOOTH_BITMASK
	smoothing_groups = list(SMOOTH_GROUP_WINDOW_FULLTILE)
	canSmoothWith = list(SMOOTH_GROUP_WINDOW_FULLTILE)
	//legacy_smooth = TRUE //Override /tg/ iconsmooths
	icon = 'nsv13/icons/obj/grille.dmi'
	canSmoothWith = list(/turf/closed/wall,/obj/machinery/door,/obj/structure/window/fulltile,/obj/structure/window/reinforced/fulltile, /obj/structure/window/plasma/fulltile, /obj/structure/falsewall)
