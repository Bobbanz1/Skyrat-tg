// Gas defines because i hate typepaths
#define GAS_O2					"o2"
#define GAS_N2					"n2"
#define GAS_CO2					"co2"
#define GAS_PLASMA				"plasma"
#define GAS_H2O					"water_vapor"
#define GAS_HYPERNOB			"nob"
#define GAS_NITROUS				"n2o"
#define GAS_NITRYL				"no2"
#define GAS_TRITIUM				"tritium"
#define GAS_BZ					"bz"
#define GAS_STIMULUM			"stim"
#define GAS_PLUOXIUM			"pluox"

//#define GAS_MIASMA				"miasma" //NSV13 - no miasma
#define GAS_CONSTRICTED_PLASMA  "constricted_plasma" //NSV13
#define GAS_NUCLEIUM			"nucleium" //NSV13

//Emergency skinsuits
#define EMERGENCY_HELM_MIN_TEMP_PROTECT		2.0		//The helmet is pressurized with air from the oxygen tank. If they don't take damage from that they won't take damage here
#define EMERGENCY_SUIT_MIN_TEMP_PROTECT		237		//This is the approximate average temperature of Mt. Everest in the winter

#define HELMET_MIN_TEMP_PROTECT				160		//For normal helmets
#define HELMET_MAX_TEMP_PROTECT				600		//For normal helmets
#define ARMOR_MIN_TEMP_PROTECT				160		//For armor
#define ARMOR_MAX_TEMP_PROTECT				600		//For armor

#define GLOVES_MIN_TEMP_PROTECT				2.0		//For some gloves (black and)
#define GLOVES_MAX_TEMP_PROTECT				1500	//For some gloves
#define SHOES_MIN_TEMP_PROTECT				2.0		//For gloves
#define SHOES_MAX_TEMP_PROTECT				1500	//For gloves

#define PRESSURE_DAMAGE_COEFFICIENT			4		//! The amount of pressure damage someone takes is equal to (pressure / HAZARD_HIGH_PRESSURE)*PRESSURE_DAMAGE_COEFFICIENT, with the maximum of MAX_PRESSURE_DAMAGE
#define MAX_HIGH_PRESSURE_DAMAGE			4
#define LOW_PRESSURE_DAMAGE					4		//! The amount of damage someone takes when in a low pressure area (The pressure threshold is so low that it doesn't make sense to do any calculations, so it just applies this flat value).

#define COLD_SLOWDOWN_FACTOR				20		//! Humans are slowed by the difference between bodytemp and BODYTEMP_COLD_DAMAGE_LIMIT divided by this
