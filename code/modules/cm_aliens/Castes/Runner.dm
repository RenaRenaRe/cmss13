//Xenomorph Runner - Colonial Marines - Apophis775 - Last Edit: 22MAY2015

/mob/living/carbon/Xenomorph/Runner
	caste = "Runner"
	name = "Runner"
	desc = "A small red alien that looks like it could run fairly quickly..."
	icon_state = "Runner Walking"
	melee_damage_lower = 10
	melee_damage_upper = 20
	health = 120
	maxHealth = 120
	storedplasma = 50
	plasma_gain = 1
	maxplasma = 100
	jellyMax = 200
	caste_desc = "A fast, four-legged terror, but weak in sustained combat."
	speed = -1.5
	evolves_to = list("Hunter")
	charge_type = 3 //Pounce - Runner
	pass_flags = PASSTABLE
	attack_delay = -4

	inherent_verbs = list(
		/mob/living/carbon/Xenomorph/proc/regurgitate,
		/mob/living/carbon/Xenomorph/proc/vent_crawl,
		/mob/living/carbon/Xenomorph/proc/Pounce,
		/mob/living/carbon/Xenomorph/proc/transfer_plasma,
		/mob/living/carbon/Xenomorph/Larva/proc/xenohide,
		/mob/living/carbon/Xenomorph/proc/tail_attack
		)


/mob/living/carbon/Xenomorph/Runner/ClickOn(var/atom/A, params)

	var/list/modifiers = params2list(params)
	if(modifiers["middle"] && middle_mouse_toggle)
		Pounce(A)
		return
	if(modifiers["shift"] && shift_mouse_toggle)
		Pounce(A)
		return
	..()


