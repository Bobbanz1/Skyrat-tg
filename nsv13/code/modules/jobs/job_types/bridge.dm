/datum/job/bridge
	title = "Bridge Staff"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	department_head = list("Executive Officer")
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The executive officer"
	selection_color = "#ddddff"
	req_admin_notify = 1
	minimal_player_age = 2
	exp_requirements = 60

	outfit = /datum/outfit/job/bridge
	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	departments_list = list(DEPARTMENT_MUNITIONS, DEPARTMENT_COMMAND)

/datum/id_trim/job/bridge
	assignment = "Air Traffic Controller"
	trim_state = "trim_unknown"
	sechud_icon_state = SECHUD_UNKNOWN
	minimal_access = list(
		ACCESS_COMMAND, ACCESS_MAINT_TUNNELS, ACCESS_CONSTRUCTION, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH,
	)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_CHANGE_IDS,
		ACCESS_HOP,
		)
	job = /datum/job/bridge

/datum/outfit/job/bridge
	name = "Bridge Staff"
	jobtype = /datum/job/bridge

	id = /obj/item/card/id/advanced/silver
	id_trim = /datum/id_trim/job/bridge
	ears = /obj/item/radio/headset/headset_bridge
	uniform = /obj/item/clothing/under/ship/officer
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/beret/durathread

/obj/effect/landmark/start/bridge
	name = "Bridge Staff"
	icon_state = "Bridge Staff"
