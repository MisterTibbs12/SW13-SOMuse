/turf/open/water
	gender = PLURAL
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/chasm/lavaland
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	planetary_atmos = TRUE
	slowdown = 1
	bullet_sizzle = TRUE
	bullet_bounce_sound = null //needs a splashing sound one day.

	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_WATER
	heavyfootstep = FOOTSTEP_WATER

/turf/open/water/hangarfloor
	gender = PLURAL
	name = "hangar floor"
	desc = "Grated floor cover."
	icon = 'icons/turf/floors.dmi'
	icon_state = "hangarfloor"
	baseturfs = /turf/open/chasm/lavaland
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	planetary_atmos = TRUE

/turf/open/water/hangarfloorstripe
	gender = PLURAL
	name = "hangar floor"
	desc = "Grated floor cover."
	icon = 'icons/turf/floors.dmi'
	icon_state = "hangarfloor_striped"
	baseturfs = /turf/open/chasm/lavaland
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	planetary_atmos = TRUE