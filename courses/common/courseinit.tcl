# Course initialization script
# Sets basic course paramaters before the lighting is set.

set cwd [pwd]

# Extract cup directory
if { ![regexp {^(.*)/[^/]*/?} $cwd dummy cup_dir] } {
    tux_warning "Couldn't determine cup directory"

    set cup_dir "$tux_data_dir/courses"
}

tux_goto_data_dir

cd courses/common

#
# Lighting
#
set conditions [tux_get_race_conditions]
if { $conditions == "sunny" } {
    source $cup_dir/sunny_light.tcl
} elseif { $conditions == "cloudy" } {
    source $cup_dir/foggy_light.tcl
} elseif { $conditions == "night" } {
    source $cup_dir/sunset_light.tcl
} 

#
# Music
#
if [file exists $cup_dir/music.tcl] {
    source $cup_dir/music.tcl
} else {
    select_racing_music 1
}

source procs.tcl

source sounds.tcl

objcall :servers:render set_loading_text [ gs loading_terrain_textures]
source terrain_textures.tcl

objcall :servers:render set_loading_text [ gs loading_terrains]
source terrains.tcl

objcall :servers:render set_loading_text [ gs loading_object_textures]
source object_textures.tcl

objcall :servers:render set_loading_text [ gs loading_objects]
source objects.tcl

objcall :servers:render set_loading_text [ gs loading_terrain_map]

objcall :course:heightmap load_terrain "$cwd/terrain.png"

objcall :servers:render set_loading_text [ gs placing_objects]

cd $cwd

if [file exists "items.tcl"] {
    source "items.tcl"
}
