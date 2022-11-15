//config files
#define CONFIG_GET(X) global.config.Get(/datum/config_entry/##X)
#define CONFIG_SET(X, Y) global.config.Set(/datum/config_entry/##X, ##Y)

#define CONFIG_MAPS_FILE "maps.txt"

//flags
/// can't edit
#define CONFIG_ENTRY_LOCKED 1
/// can't see value
#define CONFIG_ENTRY_HIDDEN 2

/// Force the config directory to be something other than "config"
#define OVERRIDE_CONFIG_DIRECTORY_PARAMETER "config-directory"

/// Folder directory for strings
#define STRING_DIRECTORY "strings"

/// Folder directory for data
#define DATA_DIRECTORY "data"

/// Folder directory for maps
#define MAP_DIRECTORY "_maps"

// NSV13 - starmap file
#define STARMAP_FILE "starmap/starmap.json"
