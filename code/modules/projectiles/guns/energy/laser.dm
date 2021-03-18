/obj/item/gun/energy/laser
	name = "laser gun"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon_state = "laser"
	item_state = "laser"
	block_upgrade_walk = 1
	w_class = WEIGHT_CLASS_NORMAL
	materials = list(/datum/material/iron=2000)
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun)
	ammo_x_offset = 1
	shaded_charge = 1

/obj/item/gun/energy/laser/practice
	name = "practice laser gun"
	desc = "A modified version of the basic laser gun, this one fires less concentrated energy bolts designed for target practice."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/practice)
	clumsy_check = 0
	item_flags = NONE

/obj/item/gun/energy/laser/retro
	name ="retro laser gun"
	icon_state = "retro"
	desc = "An older model of the basic lasergun, no longer used by Nanotrasen's private security or military forces. Nevertheless, it is still quite deadly and easy to maintain, making it a favorite amongst pirates and other outlaws."
	ammo_x_offset = 3

/obj/item/gun/energy/laser/retro/old
	name ="laser gun"
	icon_state = "retro"
	desc = "First generation lasergun, developed by Nanotrasen. Suffers from ammo issues but its unique ability to recharge its ammo without the need of a magazine helps compensate. You really hope someone has developed a better lasergun while you were in cryo."
	ammo_type = list(/obj/item/ammo_casing/energy/lasergun/old)
	ammo_x_offset = 3

/obj/item/gun/energy/laser/captain
	name = "antique laser gun"
	icon_state = "caplaser"
	item_state = "caplaser"
	desc = "This is an antique laser gun. All craftsmanship is of the highest quality. It is decorated with assistant leather and chrome. The object menaces with spikes of energy. On the item is an image of Space Station 13. The station is exploding."
	force = 10
	ammo_x_offset = 3
	selfcharge = 1
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	weapon_weight = WEAPON_LIGHT

/obj/item/gun/energy/laser/captain/scattershot
	name = "scatter shot laser rifle"
	icon_state = "lasercannon"
	item_state = "laser"
	desc = "An industrial-grade heavy-duty laser rifle with a modified laser lens to scatter its shot into multiple smaller lasers. The inner-core can self-charge for theoretically infinite use."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/laser)

/obj/item/gun/energy/laser/cyborg
	can_charge = FALSE
	desc = "An energy-based laser gun that draws power from the cyborg's internal energy cell directly. So this is what freedom looks like?"
	use_cyborg_cell = TRUE

/obj/item/gun/energy/laser/cyborg/emp_act()
	return

/obj/item/gun/energy/laser/scatter
	name = "scatter laser gun"
	desc = "A laser gun equipped with a refraction kit that spreads bolts."
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter, /obj/item/ammo_casing/energy/laser)

/obj/item/gun/energy/laser/scatter/shotty
	name = "energy shotgun"
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "cshotgun"
	item_state = "shotgun"
	desc = "A combat shotgun gutted and refitted with an internal laser system. Can switch between taser and scattered disabler shots."
	shaded_charge = 0
	pin = /obj/item/firing_pin/implant/mindshield
	ammo_type = list(/obj/item/ammo_casing/energy/laser/scatter/disabler, /obj/item/ammo_casing/energy/electrode)

///Laser Cannon

/obj/item/gun/energy/lasercannon
	name = "accelerator laser cannon"
	desc = "An advanced laser cannon that does more damage the farther away the target is."
	icon_state = "lasercannon"
	item_state = "laser"
	w_class = WEIGHT_CLASS_BULKY
	force = 10
	flags_1 =  CONDUCT_1
	slot_flags = ITEM_SLOT_BACK
	ammo_type = list(/obj/item/ammo_casing/energy/laser/accelerator)
	pin = null
	ammo_x_offset = 3

/obj/item/ammo_casing/energy/laser/accelerator
	projectile_type = /obj/item/projectile/beam/laser/accelerator
	select_name = "accelerator"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/item/projectile/beam/laser/accelerator
	name = "accelerator laser"
	icon_state = "scatterlaser"
	range = 255
	damage = 6

/obj/item/projectile/beam/laser/accelerator/Range()
	..()
	damage += 7
	transform *= 1 + ((damage/7) * 0.2)//20% larger per tile

/obj/item/gun/energy/xray
	name = "\improper X-ray laser gun"
	desc = "A high-power laser gun capable of expelling concentrated X-ray blasts that pass through multiple soft targets and heavier materials."
	icon_state = "xray"
	item_state = null
	ammo_type = list(/obj/item/ammo_casing/energy/xray)
	pin = null
	ammo_x_offset = 3

////////Laser Tag////////////////////

/obj/item/gun/energy/laser/bluetag
	name = "laser tag gun"
	icon_state = "bluetag"
	desc = "A retro laser gun modified to fire harmless blue beams of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bluetag)
	item_flags = NONE
	clumsy_check = FALSE
	pin = /obj/item/firing_pin/tag/blue
	ammo_x_offset = 2
	selfcharge = TRUE

/obj/item/gun/energy/laser/bluetag/hitscan
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bluetag/hitscan)

/obj/item/gun/energy/laser/redtag
	name = "laser tag gun"
	icon_state = "redtag"
	desc = "A retro laser gun modified to fire harmless beams red of light. Sound effects included!"
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redtag)
	item_flags = NONE
	clumsy_check = FALSE
	pin = /obj/item/firing_pin/tag/red
	ammo_x_offset = 2
	selfcharge = TRUE

/obj/item/gun/energy/laser/redtag/hitscan
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redtag/hitscan)

/obj/item/gun/energy/laser/corellian
	name = "Corellian Rifle"
	desc = "A burst-fire blaster favoured by more veteran members of the New Republic."
	icon_state = "corellian_rifle"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 3
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/imperialrepeater
	name = "tl-50 repeater"
	desc = "A repeating blaster, used for room-clearing by imperial commandoes and suppression by rank-and-file soldiers."
	icon_state = "tl50"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 5
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/t21
	name = "tl-21"
	desc = "A repeating blaster, issued to New Republic squadrons for sustained fire."
	icon_state = "t21"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 5
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY


/obj/item/gun/energy/laser/a280c
	name = "Corellian Rifle"
	desc = "Standard issue in the New Republic, the A280c is a reliable blaster-rifle which has seen use across the Galaxy."
	icon_state = "a280c"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/bowcaster
	name = "Bowcaster"
	desc = "While not authentic, this pure-energy Bowcaster still packs a punch, at the expense of a smaller capacity.."
	icon_state = "bowcaster"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	selfcharge = 2
	ammo_type = list(/obj/item/ammo_casing/energy/laser/bowcasterbolt)
	cell_type = /obj/item/stock_parts/cell/ammo/bowcharge
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/LytechD8
	name = "Lytech D8"
	desc = "A locally-produced blaster pistol, manufactured for local defense forces before the breakout of conflict between the New Republic and the Imperial Remnant on Mortooine. It is now found in use by both sides."
	icon_state = "Lytech D8"
	item_state = "blasterp"
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 2
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

	/obj/item/gun/energy/laser/E11NOT
	name = "E-11"
	desc = "Made infamous by the Empire, the Blastech E-11 has seen service all across the galaxy, and is the Stormtrooper's best friend."
	icon_state = "E-11"
	item_state = "laser-rifle9"
	fire_delay = 3.5
	burst_size = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/E_11
	name = "e-11"
	desc = "Made infamous by the Empire, the Blastech E-11 has seen service all across the galaxy."
	icon_state = "E11h"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/bryar
	name = "Bryar Rifle Mod-L"
	desc = "Popular amongst Imperial citizens, the Bryar rifle is a commercial rifle using Imperial blaster technology."
	icon_state = "bryarrifle"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 4
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DH17
	name = "DH-17"
	desc = "A small carbine which has seen extensive use by the Rebel Alliance, and now by the New Republic. Small and compact."
	icon_state = "DH17"
	item_state = "blasterp"
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Corellian)
	w_class = WEIGHT_CLASS_NORMAL
	cell_type = /obj/item/stock_parts/cell/ammo/smallcharge
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/tuskenblaster
	name = "Cycler Rifle"
	desc = "A tusken cycler rifle, a traditional weapon for the sandpeople."
	icon_state = "cyclerrifle"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	can_bayonet = TRUE
	knife_x_offset = 23
	knife_y_offset = 14
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/SonicRifle
	name = "sg-82 sonic rifle"
	desc = "A civillian-market sonic weapon."
	icon_state = "sonicrifle"
	item_state = "laser-rifle9"
	fire_delay = 2
	burst_size = 1
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/SonicCannon)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/guttergun
	name = "Gutter gun"
	desc = "A rapid fire blaster which has come to be much beloved by criminals of all standings and positions."
	icon_state = "guttergun"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 4
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/gutterrifle
	name = "Gutter rifle"
	desc = "This cobbled together gun has been modified and re-built so many times,it's anyone's guess what this gun was originally built on."
	icon_state = "gutterrifle"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	knife_x_offset = 23
	knife_y_offset = 14
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/huntsmod
	name = "Huntslas AB"
	desc = "A retro-fitted and upgraded Hunts-las, the AB fires a two-round burst at the cost of more frequent over-heating."
	icon_state = "huntslas_ab"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 2
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/outrider)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/huntslas
	name = "Huntslas"
	desc = "A cheap copy of a Sorosuub hunting blaster, the Huntslas fires a heavy bolt but has low heat-tolerances due to amateur metal-work."
	icon_state = "Huntslas"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/longrifle)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/scopedhuntslas
	name = "Scoped Huntslas"
	desc = "A cheap copy of a Sorosuub hunting blaster, the Huntslas fires a heavy bolt but has low heat-tolerances due to amateur metal-work. This one has a scope."
	icon_state = "Huntslas Scoped"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	can_bayonet = TRUE
	knife_x_offset = 23
	knife_y_offset = 14
	ammo_type = list(/obj/item/ammo_casing/energy/laser/longrifle)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DLT19
	name = "DLT-19X"
	desc = "A long-range blaster, issued to Imperial scouts and marksmen."
	icon_state = "dlt"
	item_state = "laser-rifle9"
	fire_delay = 3
	burst_size = 1
	selfcharge = 1
	zoomable = TRUE
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Repeater)
	cell_type = /obj/item/stock_parts/cell/ammo/mfc
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/energy/laser/DL44
	name = "DL-44"
	desc = "A popular blaster, the Blastech DL44 fires a heavy blaster bolt."
	icon_state = "dl44"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/dl44)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/westar
	name = "westar-34 commercial"
	desc = "Expertly crafted and favoured amongst many warrior groups, the Westar 34 is designed to fire a mid-yield blaster bolt, while having a high overheat tolerance."
	icon_state = "westarhardline"
	item_state = "westarhardline"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Westar)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/westarcustom
	name = "westar-34 custom"
	desc = "Expertly crafted and favoured amongst many warrior groups, the Westar 34 is designed to fire a mid-yield blaster bolt, while having a high overheat tolerance. This version has been custom-made to offer an incredibly-high overheat tolerance."
	icon_state = "westarcustom"
	item_state = "westarcustom"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Westarcustom)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/Bryarp
	name = "Bryar Pistol"
	desc = "A Bryar rifle, cut down and modified to be easier to handle with a single hand."
	icon_state = "Bryar pistol"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/lhb
	name = "LHB 2"
	desc = "Produced by Lytech, a company operating on the neighbouring planet of Talruk, the LH-2 features an insulative barrel which helps mitigate overheating."
	icon_state = "lhb2"
	item_state = "blasterp"
	selfcharge = 7
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolcharge)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/orinuma
	name = "Ori Numa"
	desc = "Custom-made for the Boss, this blaster pistols fires bursts of blaster bolts."
	icon_state = "orinuma"
	item_state = "blasterp"
	burst_size = 3
	selfcharge = 5
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolburst)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/power5
	name = "Merr-Sonn Power 5 Blaster"
	desc = "One of Merr-Sonn's early attempts at entering the blaster market. The fact that Blastech lost the lawsuit against Merr-Sonn over this blaster is nothing short of a miracle, as the Power 5 is a near-copy of the DL44, the only true differences in construction being the plasma-bolt focuser, which creates a weaker projectile, the barrel-alloys, which are worse, and its lack of dignity. Find another blaster, and do so quickly."
	icon_state = "power5"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistolweak)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/se14c
	name = "se-14c"
	desc = "The Blastech SE-14c is a reliable, easy-to-produce blaster pisol, and as such it has found wide use amongst the forces of the Empire."
	icon_state = "se14"
	item_state = "blasterp"
	selfcharge = 3
	ammo_type = list(/obj/item/ammo_casing/energy/laser/Imperial)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/ec
	slot_flags = ITEM_SLOT_BELT

/obj/item/gun/energy/laser/redsaber
	name = "lightsaber"
	desc = "An elegant weapon, from a more civilised age."
	icon_state = "sithsaber"
	item_state = "redsaber"
	selfcharge = 1
	ammo_type = list(/obj/item/ammo_casing/energy/laser/redsaber)
	w_class = WEIGHT_CLASS_NORMAL
	weapon_weight = WEAPON_LIGHT
	cell_type = /obj/item/stock_parts/cell/ammo/crystal
	slot_flags = ITEM_SLOT_BELT
