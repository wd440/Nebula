/obj/item/megaphone
	name = "megaphone"
	desc = "A device used to project your voice. Loudly."
	icon = 'icons/obj/items/device/megaphone.dmi'
	icon_state = "megaphone"
	item_state = "radio"
	w_class = ITEM_SIZE_SMALL
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	material = /decl/material/solid/plastic
	matter = list(
		/decl/material/solid/metal/copper    = MATTER_AMOUNT_REINFORCEMENT, 
		/decl/material/solid/silicon         = MATTER_AMOUNT_REINFORCEMENT, 
		/decl/material/solid/metal/aluminium = MATTER_AMOUNT_SECONDARY,
	)
	var/spamcheck = 0
	var/emagged = 0
	var/insults = 0
	var/list/insultmsg = list("FUCK EVERYONE!", "I'M A TATER!", "ALL SECURITY TO SHOOT ME ON SIGHT!", "I HAVE A BOMB!", "CAPTAIN IS A COMDOM!", "FOR THE SYNDICATE!")

/obj/item/megaphone/attack_self(mob/user)
	if(user.client)
		if(user.client.prefs.muted & MUTE_IC)
			to_chat(src, "<span class='warning'>You cannot speak in IC (muted).</span>")
			return
	if(user.is_silenced())
		return
	if(spamcheck)
		to_chat(user, "<span class='warning'>\The [src] needs to recharge!</span>")
		return

	var/message = sanitize(input(user, "Shout a message?", "Megaphone", null)  as text)
	if(!message)
		return
	message = capitalize(message)
	if ((src.loc == user && usr.stat == 0))
		if(emagged)
			if(insults)
				for(var/mob/O in (viewers(user)))
					O.show_message("<B>[user]</B> broadcasts, <FONT size=3>\"[pick(insultmsg)]\"</FONT>",2) // 2 stands for hearable message
				insults--
			else
				to_chat(user, "<span class='warning'>*BZZZZzzzzzt*</span>")
		else
			for(var/mob/O in (viewers(user)))
				O.show_message("<B>[user]</B> broadcasts, <FONT size=3>\"[message]\"</FONT>",2) // 2 stands for hearable message

		spamcheck = 1
		spawn(20)
			spamcheck = 0
		return

/obj/item/megaphone/emag_act(var/remaining_charges, var/mob/user)
	if(!emagged)
		to_chat(user, "<span class='warning'>You overload \the [src]'s voice synthesizer.</span>")
		emagged = 1
		insults = rand(1, 3)//to prevent dickflooding
		return 1
