
#define RANGE

/obj/item/ammo_casing/energy/laser
	projectile_type = /obj/item/projectile/beam/laser
	select_name = "kill"

/obj/item/ammo_casing/energy/lasergun
	projectile_type = /obj/item/projectile/beam/laser
	e_cost = 83
	select_name = "kill"

/obj/item/ammo_casing/energy/lasergun/old
	projectile_type = /obj/item/projectile/beam/laser
	e_cost = 200
	select_name = "kill"

/obj/item/ammo_casing/energy/laser/hos
	e_cost = 120

/obj/item/ammo_casing/energy/laser/practice
	projectile_type = /obj/item/projectile/beam/practice
	select_name = "practice"
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/scatter
	projectile_type = /obj/item/projectile/beam/scatter
	pellets = 5
	variance = 25
	select_name = "scatter"

/obj/item/ammo_casing/energy/laser/scatter/disabler
	projectile_type = /obj/item/projectile/beam/disabler
	pellets = 3
	variance = 15
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/heavy
	projectile_type = /obj/item/projectile/beam/laser/heavylaser
	select_name = "anti-vehicle"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/item/ammo_casing/energy/laser/pulse
	projectile_type = /obj/item/projectile/beam/pulse
	e_cost = 200
	select_name = "DESTROY"
	fire_sound = 'sound/weapons/pulse.ogg'

/obj/item/ammo_casing/energy/laser/bluetag
	projectile_type = /obj/item/projectile/beam/lasertag/bluetag
	select_name = "bluetag"
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/bluetag/hitscan
	projectile_type = /obj/item/projectile/beam/lasertag/bluetag/hitscan

/obj/item/ammo_casing/energy/laser/redtag
	projectile_type = /obj/item/projectile/beam/lasertag/redtag
	select_name = "redtag"
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/redtag/hitscan
	projectile_type = /obj/item/projectile/beam/lasertag/redtag/hitscan

/obj/item/ammo_casing/energy/xray
	projectile_type = /obj/item/projectile/beam/xray
	e_cost = 50
	fire_sound = 'sound/weapons/laser3.ogg'

/obj/item/ammo_casing/energy/mindflayer
	projectile_type = /obj/item/projectile/beam/mindflayer
	select_name = "MINDFUCK"
	fire_sound = 'sound/weapons/laser.ogg'
	var/range = 2

/obj/item/ammo_casing/energy/laser/Corellian
	projectile_type = /obj/item/projectile/beam/laser/Corellian
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/A280c.ogg'

/obj/item/ammo_casing/energy/laser/bowcasterbolt
	projectile_type = /obj/item/projectile/beam/laser/bowcasterbolt
	e_cost = 50 //20 shots
	fire_sound = 'sound/weapons/blasters/Disruptor.ogg'

/obj/item/ammo_casing/energy/laser/dl44
	projectile_type = /obj/item/projectile/beam/laser/Imperial
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/DL44.ogg'

/obj/item/ammo_casing/energy/laser/Imperial
	projectile_type = /obj/item/projectile/beam/laser/Imperial
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/E11.ogg'

/obj/item/ammo_casing/energy/laser/Repeater
	projectile_type = /obj/item/projectile/beam/laser/Repeater
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/Repeater.ogg'

/obj/item/ammo_casing/energy/laser/Civilian
	projectile_type = /obj/item/projectile/beam/laser/Repeater
	e_cost = 75 //20 shots

/obj/item/ammo_casing/energy/laser/avb
	projectile_type = /obj/item/projectile/beam/laser/avb
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/pistolweak
	projectile_type = /obj/item/projectile/beam/laser/pistolweak
	e_cost = 0.2 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/SonicCannon
	projectile_type = /obj/item/projectile/beam/laser/Sonic
	e_cost = 50 //20 shots
	fire_sound = 'sound/weapons/blasters/Sonic.ogg'

/obj/item/ammo_casing/energy/laser/Imperiallong
	projectile_type = /obj/item/projectile/beam/laser/long
	e_cost = 130 //20 shots
	fire_sound = 'sound/weapons/blasters/Pistol.ogg'

/obj/item/ammo_casing/energy/laser/longrifle
	projectile_type = /obj/item/projectile/beam/laser/long
	e_cost = 350 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/pistolcharge
	projectile_type = /obj/item/projectile/beam/laser/lhs
	e_cost = 80 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/pistolburst
	projectile_type = /obj/item/projectile/beam/laser/lhs
	e_cost = 100 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/outrider
	projectile_type = /obj/item/projectile/beam/laser/long
	e_cost = 450 //20 shots
	fire_sound = 'sound/weapons/blasters/Longrifle.ogg'

/obj/item/ammo_casing/energy/laser/Explosive
	projectile_type = /obj/item/projectile/beam/laser/Explosive
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/Heavycannon.ogg'

/obj/item/ammo_casing/energy/laser/Westar
	projectile_type = /obj/item/projectile/beam/laser/Westar
	e_cost = 10 //20 shots
	fire_sound = 'sound/weapons/blasters/Westar.ogg'

/obj/item/ammo_casing/energy/laser/Westarcustom
	projectile_type = /obj/item/projectile/beam/laser/Westar
	e_cost = 2 //20 shots
	fire_sound = 'sound/weapons/blasters/Westar.ogg'

/obj/item/ammo_casing/energy/laser/Bryar
	projectile_type = /obj/item/projectile/beam/laser/Imperial
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/Westar.ogg'

/obj/item/ammo_casing/energy/laser/redsaber
	projectile_type = /obj/item/projectile/beam/laser/redsaber
	e_cost = 75 //20 shots
	fire_sound = 'sound/weapons/blasters/Lightsaber_swing.ogg'
	var/range = 2