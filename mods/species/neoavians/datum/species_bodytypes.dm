/decl/bodytype/avian
	name =              "avian"
	bodytype_category = BODYTYPE_AVIAN
	icon_base =         'mods/species/neoavians/icons/body.dmi'
	blood_overlays =    'mods/species/neoavians/icons/blood_avian.dmi'
	limb_blend =        ICON_MULTIPLY
	bodytype_flag =     BODY_FLAG_AVIAN
	appearance_flags =  HAS_HAIR_COLOR | HAS_SKIN_COLOR | HAS_EYE_COLOR
	base_color = "#252525"
	base_eye_color = "#f5c842"
	mob_size = MOB_SIZE_SMALL
	has_organ = list(
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes/avian
	)
	override_limb_types = list(BP_TAIL = /obj/item/organ/external/tail/avian)
	default_h_style = /decl/sprite_accessory/hair/avian
	base_markings = list(/decl/sprite_accessory/marking/avian = "#454545")

	var/tail =              "tail_avian"
	var/tail_icon =         'mods/species/neoavians/icons/tail.dmi'
	var/tail_blend =        ICON_MULTIPLY
	var/tail_hair
	var/tail_hair_blend
	var/tail_states
	var/tail_animation

/decl/bodytype/avian/raptor
	name =              "raptor"
	icon_base =         'mods/species/neoavians/icons/body_raptor.dmi'
	tail_icon =         'mods/species/neoavians/icons/tail.dmi'
	tail =              "tail_raptor"
	tail_hair =         "over"
	tail_hair_blend =   ICON_MULTIPLY

/decl/bodytype/avian/additive
	name =              "avian, additive"
	icon_base =         'mods/species/neoavians/icons/body_add.dmi'
	health_hud_intensity = 3
	limb_blend =        ICON_ADD
	tail_blend =        ICON_ADD
	tail =              "tail_avian_add"

/decl/bodytype/avian/additive/raptor
	name =              "raptor, additive"
	icon_base =         'mods/species/neoavians/icons/body_raptor_add.dmi'
	tail =              "tail_raptor_add"
	tail_hair =         "over"
	tail_hair_blend =   ICON_ADD

/decl/bodytype/avian/Initialize()
	equip_adjust = list(
		slot_l_ear_str =     list("[NORTH]" = list("x" =  1, "y" = -5), "[EAST]" = list("x" =  -2, "y" = -5), "[SOUTH]" = list("x" = -1, "y" = -5),  "[WEST]" = list("x" =  0, "y" = -5)),
		slot_r_ear_str =     list("[NORTH]" = list("x" =  1, "y" = -5), "[EAST]" = list("x" =  0, "y" = -5), "[SOUTH]" = list("x" = -1, "y" = -5),  "[WEST]" = list("x" =  2, "y" = -5)),
		BP_L_HAND =          list("[NORTH]" = list("x" =  3, "y" = -3), "[EAST]" = list("x" =  1, "y" = -3), "[SOUTH]" = list("x" = -3, "y" = -3),  "[WEST]" = list("x" = -5, "y" = -3)),
		BP_R_HAND =          list("[NORTH]" = list("x" = -3, "y" = -3), "[EAST]" = list("x" =  5, "y" = -3), "[SOUTH]" = list("x" =  3, "y" = -3),  "[WEST]" = list("x" = -1, "y" = -3)),
		slot_head_str =      list("[NORTH]" = list("x" =  0, "y" = -5), "[EAST]" = list("x" =  1, "y" = -5), "[SOUTH]" = list("x" =  0, "y" = -5),  "[WEST]" = list("x" = -1, "y" = -5)),
		slot_wear_mask_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" =  2, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" = -2, "y" = -6)),
		slot_glasses_str =   list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" =  1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" = -1, "y" = -6)),
		slot_back_str =      list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" =  3, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" = -3, "y" = -6)),
		slot_w_uniform_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_tie_str       = list("[NORTH]" = list("x" =  0, "y" = -5), "[EAST]" = list("x" =  0, "y" = -5), "[SOUTH]" = list("x" =  0, "y" = -5),  "[WEST]" = list("x" =  0, "y" = -5)),
		slot_wear_id_str =   list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_wear_suit_str = list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6)),
		slot_belt_str =      list("[NORTH]" = list("x" =  0, "y" = -6), "[EAST]" = list("x" = -1, "y" = -6), "[SOUTH]" = list("x" =  0, "y" = -6),  "[WEST]" = list("x" =  1, "y" = -6))
	)
	. = ..()

/obj/item/organ/external/tail/avian/get_tail()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail

/obj/item/organ/external/tail/avian/get_tail_animation()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_animation

/obj/item/organ/external/tail/avian/get_tail_icon()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_icon

/obj/item/organ/external/tail/avian/get_tail_states()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_states

/obj/item/organ/external/tail/avian/get_tail_blend()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_blend

/obj/item/organ/external/tail/avian/get_tail_hair()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_hair

/obj/item/organ/external/tail/avian/get_tail_hair_blend()
	if(istype(bodytype, /decl/bodytype/avian))
		var/decl/bodytype/avian/bird_bod = bodytype
		return bird_bod.tail_hair_blend
