/datum/outfit/syndicate_empty/boarding/captain
	name = "Syndicate Captain (Boarding)"
	id = /obj/item/card/id/syndicate/nuke_leader
	gloves = /obj/item/clothing/gloves/combat
	neck = /obj/item/clothing/neck/cloak/syndcap
	head = /obj/item/clothing/head/helmet/space/beret
	suit = /obj/item/clothing/suit/space/officer
	l_pocket = /obj/item/ammo_box/magazine/m9mm_aps
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/APS
	implants = list()

/datum/outfit/syndicate_empty/boarding
	name = "Syndicate Crewman (Boarding)"
	head = /obj/item/clothing/head/hos/beret/syndicate
	id = /obj/item/card/id/syndicate/nuke_leader
	suit = /obj/item/clothing/suit/ship/syndicate_crew
	l_pocket = /obj/item/ammo_box/magazine/m10mm
	r_pocket = /obj/item/gun/ballistic/automatic/pistol
	back = /obj/item/storage/backpack/duffelbag/syndie
	backpack_contents = list(/obj/item/storage/box/syndie=1,\
	/obj/item/knife/combat/survival=1)

/obj/effect/mob_spawn/ghost_role/human/syndicate/boarding
	name = "Syndicate Crewman"
	you_are_text = "You are a Syndicate Crewman."
	flavour_text = "Your job is to follow the orders of your captain. You must decide on a role for yourself amongst your crew, then fulfill it. Defend your ship at all costs."
	important_text = "If you're stuck for what to do, ahelp!. The ship will need engineers, munitions techs, sometimes even pilots. You can even conduct counter boarding..."
	outfit = /datum/outfit/syndicate_empty/boarding
	prompt_name = "Syndicate Crew"

/obj/effect/mob_spawn/ghost_role/human/syndicate/boarding/Initialize()
	. = ..()
	return INITIALIZE_HINT_LATELOAD

/obj/effect/mob_spawn/ghost_role/human/syndicate/boarding/LateInitialize()
	. = ..()
	notify_ghosts("The crew has boarded a live Syndicate ship! The Syndicate navy is now recruiting...", source = src, alert_overlay = mutable_appearance(src.icon, src.icon_state), action=NOTIFY_ATTACK)

/obj/effect/mob_spawn/ghost_role/human/syndicate/boarding_captain
	name = "Syndicate Navy Captain"
	you_are_text = "You are the captain of a Syndicate naval vessel."
	flavour_text = "Your job is to oversee your crew, defend your ship with your life. Destroy as many Nanotrasen ships as you can."
	important_text = "As the captain, you should not abandon your ship. If you desert, your bloodline may be terminated."
	outfit = /datum/outfit/syndicate_empty/boarding/captain
