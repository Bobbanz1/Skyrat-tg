/datum/keybinding/overmap
		category = CATEGORY_OVERMAP
		weight = WEIGHT_OVERMAP


// Strafing AND turning? It's more likely than you think!
/datum/keybinding/overmap/rotate_left
	hotkey_keys = "Q"
	name = "rotate_left"
	full_name = "Rotate Left"
	description = ""

/datum/keybinding/overmap/rotate_left/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	if(OM.move_by_mouse) return
	OM.keyboard_delta_angle_left = -15
	return TRUE

/datum/keybinding/overmap/rotate_left/up(client/user)
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	if(OM.move_by_mouse) return
	OM.keyboard_delta_angle_left = 0
	return TRUE

/datum/keybinding/overmap/rotate_right
	hotkey_keys = "E"
	name = "rotate_right"
	full_name = "Rotate Right"
	description = ""

/datum/keybinding/overmap/rotate_right/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	if(OM.move_by_mouse) return
	OM.keyboard_delta_angle_right = 15
	return TRUE

/datum/keybinding/overmap/rotate_right/up(client/user)
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	if(OM.move_by_mouse) return
	OM.keyboard_delta_angle_right = 0
	return TRUE

// Keys that are held down in other binding modes need both a down and an up to override correctly
/datum/keybinding/overmap/boost
	hotkey_keys = "Shift"
	name = "boost"
	full_name = "Boost"
	description = ""

/datum/keybinding/overmap/boost/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	OM.boost(NORTH)
	return TRUE

/datum/keybinding/overmap/boost/up(client/user)
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	return TRUE

/datum/keybinding/overmap/toggle_brakes
	hotkey_keys = "Alt"
	name = "toggle_brakes"
	full_name = "Toggle Brakes"
	description = ""

/datum/keybinding/overmap/toggle_brakes/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	OM.toggle_brakes()
	if(OM.helm && prob(80))
		var/sound = pick(GLOB.computer_beeps)
		playsound(OM.helm, sound, 100, 1)
	return TRUE

/datum/keybinding/overmap/toggle_brakes/up(client/user)
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	return TRUE

// Other ship controls
/datum/keybinding/overmap/toggle_inertia
	hotkey_keys = "X"
	name = "toggle_inertia"
	full_name = "Toggle Inertial Assistance"
	description = ""

/datum/keybinding/overmap/toggle_inertia/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	OM.toggle_inertia()
	if(OM.helm && prob(80))
		var/sound = pick(GLOB.computer_beeps)
		playsound(OM.helm, sound, 100, 1)
	return TRUE

/datum/keybinding/overmap/toggle_move_mode
	hotkey_keys = "C"
	name = "toggle_move_mode"
	full_name = "Toggle Mouse Movement"
	description = ""

/datum/keybinding/overmap/toggle_move_mode/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.pilot) return
	OM.toggle_move_mode()
	if(OM.helm && prob(80))
		var/sound = pick(GLOB.computer_beeps)
		playsound(OM.helm, sound, 100, 1)
	return TRUE

/datum/keybinding/overmap/cycle_firemode
	hotkey_keys = "Space"
	name = "cycle_firemode"
	full_name = "Cycle Firemode"
	description = ""

/datum/keybinding/overmap/cycle_firemode/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.gunner) return
	OM.cycle_firemode()
	if(OM.tactical && prob(80))
		var/sound = pick(GLOB.computer_beeps)
		playsound(OM.tactical, sound, 100, 1)
	return TRUE

// Small craft - safeties and countermeasures

/datum/keybinding/overmap/deploy_countermeasure
	hotkey_keys = "5"
	name = "deploy_countermeasure"
	full_name = "Deploy Countermeasure"
	description = ""

/datum/keybinding/overmap/deploy_countermeasure/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/small_craft/OM = M.overmap_ship
	if(!istype(OM)) return

	if(M != OM.pilot) return
	OM.countermeasure()
	return TRUE

/datum/keybinding/overmap/toggle_safety
	hotkey_keys = "Capslock"
	name = "toggle_safety"
	full_name = "Toggle Safeties"
	description = ""

/datum/keybinding/overmap/toggle_safety/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/small_craft/OM = M.overmap_ship
	if(!istype(OM)) return

	if(M != OM.gunner) return
	OM.toggle_safety()
	if(OM.helm && prob(80))
		var/sound = pick(GLOB.computer_beeps)
		playsound(OM.helm, sound, 100, 1)
	return TRUE

// Weapon selection - this is overly complicated but probably useful as a proof of concept
/datum/keybinding/overmap/weapon_1
	hotkey_keys = "1"
	name = "weapon_1"
	full_name = "Weapon 1"
	description = ""

/datum/keybinding/overmap/weapon_1/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.gunner) return
	OM.select_weapon(1)
	return TRUE

/datum/keybinding/overmap/weapon_2
	hotkey_keys = "2"
	name = "weapon_2"
	full_name = "Weapon 2"
	description = ""

/datum/keybinding/overmap/weapon_2/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.gunner) return
	OM.select_weapon(2)
	return TRUE

/datum/keybinding/overmap/weapon_3
	hotkey_keys = "3"
	name = "weapon_3"
	full_name = "Weapon 3"
	description = ""

/datum/keybinding/overmap/weapon_3/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.gunner) return
	OM.select_weapon(3)
	return TRUE

/datum/keybinding/overmap/weapon_4
	hotkey_keys = "4"
	name = "weapon_4"
	full_name = "Weapon 4"
	description = ""

/datum/keybinding/overmap/weapon_4/down(client/user)
	..()
	if(!user.mob) return
	var/mob/M = user.mob
	var/obj/structure/overmap/OM = M.overmap_ship
	if(!OM) return

	if(M != OM.gunner) return
	OM.select_weapon(4)
	return TRUE
