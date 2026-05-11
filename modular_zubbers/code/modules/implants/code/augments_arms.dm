//IMPLANTS
/obj/item/organ/cyberimp/arm/toolkit/rope
	name = "climbing hook implant"
	desc = "An implanted grappling hook."
	items_to_create = list(/obj/item/climbing_hook/implanted)

/obj/item/flashlight/seclite/implant
	name = "implanted seclite"
	desc = "A robust bulb from a seclite installed at the base of your palm. Flex arm and press lens in to toggle."
	icon = 'modular_zubbers/icons/obj/equipment/seclite_implant.dmi'
	icon_state = "mini-light"
	inhand_icon_state = "mini-light"
	lefthand_file = 'modular_zubbers/icons/mob/inhands/seclite_implant_lefthand.dmi'
	righthand_file = 'modular_zubbers/icons/mob/inhands/seclite_implant_righthand.dmi'
	force = 0

/obj/item/lighter/integrated
	name = "thumbtip lighter"
	desc = "Galactic polling indicated outrageous market demand for this particular cybernetic addition - specifically a hinged false fingertip with a standard lighter housing inside, with many firms citing 'increased reproductive acquisition' as one of the primary survey results. Translated into Sol Common, this means that lighting cigarettes with your finger helps you pull. Allegedly."

/obj/item/organ/cyberimp/arm/toolkit/seclite
	name = "seclite implant"
	desc = "An implanted model of seclite installed in the palm."
	items_to_create = list(/obj/item/flashlight/seclite/implant)

/obj/item/organ/cyberimp/arm/toolkit/penfour
	name = "four color pen implant"
	desc = "A cybernetic fingertip replacement containing a four color pen."
	items_to_create = list(/obj/item/pen/fourcolor)

/obj/item/organ/cyberimp/arm/toolkit/tape_recorder
	name = "universal recorder implant"
	desc = "A tape recorder implanted within the forearm. Triple press button on wrist to quickly start and stop recording. Further controls on inside facing of casette slot panel."
	items_to_create = list(/obj/item/taperecorder)

/obj/item/organ/cyberimp/arm/toolkit/foamforce_implant
	name = "donksoft pop-up blaster implant"
	desc = "An implanted foam dart blaster from Donksoft. Do not aim at face. Do not use modified darts."
	items_to_create = list(/obj/item/gun/ballistic/toy/foamforce_implant)

/obj/item/organ/cyberimp/arm/toolkit/civilian_lighter
	name = "thumbtip lighter implant"
	desc = "This extraordinarily useless implant was a product of market demand, and it exists because the galactic diaspora apparently craves the ability to light things with their thumbtips."
	items_to_create = list(/obj/item/lighter/integrated)

/obj/item/organ/cyberimp/arm/toolkit/civilian_lighter/emp_act(severity)
	. = ..()
	if(. & EMP_PROTECT_SELF || !IS_ROBOTIC_ORGAN(src))
		return
	var/effect_chance = 0
	switch(severity)
		if(EMP_LIGHT)
			effect_chance = 15
		if(EMP_HEAVY)
			effect_chance = 30
	if(prob(effect_chance) && owner)
		owner.visible_message(
			span_danger("[owner]'s thumbtip lighter sparks repeatedly!"),
			span_warning("Your thumbtip lighter malfunctions, sparking uncontrollably!")
		)
		do_sparks(3, TRUE, owner)
		owner.adjust_fire_stacks(1)
		playsound(owner, 'sound/items/lighter/lighter_on.ogg', 50, TRUE)

//LEFT ARM IMPLANTS
/obj/item/organ/cyberimp/arm/toolkit/power_cord/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/rope/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/civilian_lighter/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/seclite/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/pillow/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/penfour/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/tape_recorder/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/foamforce_implant/left_arm
	zone = BODY_ZONE_L_ARM
	slot = ORGAN_SLOT_LEFT_ARM_AUG

//RIGHT ARM IMPLANTS
/obj/item/organ/cyberimp/arm/toolkit/power_cord/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/rope/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/civilian_lighter/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/seclite/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/pillow/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/penfour/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/tape_recorder/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG

/obj/item/organ/cyberimp/arm/toolkit/foamforce_implant/right_arm
	zone = BODY_ZONE_R_ARM
	slot = ORGAN_SLOT_RIGHT_ARM_AUG
