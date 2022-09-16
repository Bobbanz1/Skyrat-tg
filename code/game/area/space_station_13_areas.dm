/*

### This file contains a list of all the areas in your station. Format is as follows:

/area/CATEGORY/OR/DESCRIPTOR/NAME   (you can make as many subdivisions as you want)
	name = "NICE NAME" (not required but makes things really nice)
	icon = 'ICON FILENAME' (defaults to 'icons/area_misc.dmi')
	icon_state = "NAME OF ICON" (defaults to "unknown" (blank))
	requires_power = FALSE (defaults to true)
	ambience_index = AMBIENCE_GENERIC   (picks the ambience from an assoc list in ambience.dm)
	ambientsounds = list() (defaults to ambience_index's assoc on Initialize(). override it as "ambientsounds = list('sound/ambience/signal.ogg')" or by changing ambience_index)

NOTE: there are two lists of areas in the end of this file: centcom and station itself. Please maintain these lists valid. --rastaf0

*/


/*-----------------------------------------------------------------------------*/

/area/asteroid
	name = "Asteroid"
	icon_state = "asteroid"
	requires_power = FALSE
	has_gravity = STANDARD_GRAVITY
	ambience_index = AMBIENCE_MINING
	sound_environment = SOUND_AREA_ASTEROID
	area_flags = UNIQUE_AREA

/area/asteroid/nearstation
	//dynamic_lighting = DYNAMIC_LIGHTING_FORCED
	ambience_index = AMBIENCE_RUINS
	always_unpowered = FALSE
	requires_power = TRUE
	area_flags = UNIQUE_AREA | BLOBS_ALLOWED
