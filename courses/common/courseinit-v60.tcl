# Course initialization script
# Sets basic course paramaters before the lighting is set.

set cwd [pwd]
tux_goto_data_dir
cd courses/common

#
# Lighting
#
set conditions [tux_get_race_conditions]
if { $conditions == "sunny" } {
    source sunny_light.tcl
} elseif { $conditions == "cloudy" } {
    source foggy_light.tcl
} elseif { $conditions == "night" } {
    source night_light.tcl
} 


source sounds.tcl

source terrain_textures.tcl
source terrains.tcl

source objects-v60.tcl

tux_terrain "$cwd/terrain.png"          ;# bitmap specifying terrain types

cd $cwd

if [file exists "items.tcl"] {
    source "items.tcl"
}
