/datum/job/air_traffic_controller
	title = "Air Traffic Controller"
	department_head = list("Master At Arms")
	departments_list = list(
		/datum/job_department/engineering,
		/datum/job_department/security,
		)
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Master At Arms"
	selection_color = "#ffd1a2"

	outfit = /datum/outfit/job/air_traffic_controller

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_MUN
	mind_traits = list(TRAIT_MUNITIONS_METABOLISM)
	display_order = JOB_DISPLAY_ORDER_DEFAULT
	display_rank = "SGT" //nsv13 - Displays the player's actual rank alongside their name, such as GSGT Sergei Koralev

/datum/id_trim/job/air_traffic_controller
	assignment = "Air Traffic Controller"
	trim_state = "trim_unknown"
	sechud_icon_state = SECHUD_UNKNOWN
	minimal_access = list(
		ACCESS_MAINT_TUNNELS, ACCESS_MUNITIONS, ACCESS_MUNITIONS_STORAGE, ACCESS_HANGAR,
	)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	job = /datum/job/air_traffic_controller

/datum/outfit/job/air_traffic_controller
	name = "Air Traffic Controller"
	jobtype = /datum/job/air_traffic_controller

	ears = /obj/item/radio/headset/munitions/atc
	uniform = /obj/item/clothing/under/ship/officer
	suit = /obj/item/clothing/suit/hazardvest
	head = /obj/item/clothing/head/beret/ship/pilot
	gloves = /obj/item/clothing/gloves/color/brown
	shoes = /obj/item/clothing/shoes/jackboots
	r_pocket = /obj/item/flashlight/atc_wavy_sticks
	id = /obj/item/card/id/advanced
	id_trim = /datum/id_trim/job/air_traffic_controller
	backpack = /obj/item/storage/backpack/munitions
	satchel = /obj/item/storage/backpack/satchel/munitions
	duffelbag = /obj/item/storage/backpack/duffelbag/munitions

/obj/effect/landmark/start/air_traffic_controller
	name = "Air Traffic Controller"
	icon_state = "Air Traffic Controller"
