# terrains.tcl
#
# Define standard terrains.

# ----- Begin output of [objserialize :terrains]
objcreate {s_container} {:terrains}

# draw ice first so reflections work properly
objcreate {s_terrain} {:terrains:ice} \
	{-colour} {1 0 0} \
	{-terrain} {:textures:terrain:ice} \
	{-envmap_texture} {:textures:envmap} \
	{-transition_textures} {:textures:terrain:transition_soft0 :textures:terrain:transition_soft1 :textures:terrain:transition_soft2 :textures:terrain:transition_soft3} \
	{-friction} {0.22} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:ice_slide}

objcreate {s_terrain} {:terrains:deepice} \
	{-colour} {184 184 184} \
	{-terrain} {:textures:terrain:deepice} \
	{-envmap_texture} {:textures:envmap} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.2} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:ice_slide}

objcreate {s_terrain} {:terrains:ice2} \
	{-colour} {106 106 106} \
	{-terrain} {:textures:terrain:ice2} \
	{-envmap_texture} {:textures:envmap} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.2} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:ice_slide}

objcreate {s_terrain} {:terrains:rock} \
	{-colour} {126 126 126} \
	{-terrain} {:textures:terrain:rock} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.9} \
	{-comp_depth} {0.01} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:redrock} \
	{-colour} {11 0 0} \
	{-terrain} {:textures:terrain:redrock} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.8} \
	{-comp_depth} {0.01} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:slate1} \
	{-colour} {0 11 0} \
	{-terrain} {:textures:terrain:slate1} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.7} \
	{-comp_depth} {0.01} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:slate2} \
	{-colour} {0 15 0} \
	{-terrain} {:textures:terrain:slate2} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.7} \
	{-comp_depth} {0.01} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:mud} \
	{-colour} {0 0 255} \
	{-terrain} {:textures:terrain:mud} \
	{-track_head_texture} {:textures:terrain:muda} \
	{-track_mark_texture} {:textures:terrain:mudb} \
	{-track_tail_texture} {:textures:terrain:mudc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.09} \
	{-sound_action} {:actions:sounds:mud_slide}

objcreate {s_terrain} {:terrains:pebbles2} \
	{-colour} {219 219 219} \
	{-terrain} {:textures:terrain:pebbles2} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.6} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:pavement1} \
	{-colour} {194 194 194} \
	{-terrain} {:textures:terrain:pavement1} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.6} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:rock_slide}

objcreate {s_terrain} {:terrains:icyroad} \
	{-colour} {164 164 164} \
	{-terrain} {:textures:terrain:icyroad} \
	{-transition_textures} {:textures:terrain:transition_hard0 :textures:terrain:transition_hard1 :textures:terrain:transition_hard2 :textures:terrain:transition_hard3} \
	{-friction} {0.2} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:ice_slide}

objcreate {s_terrain} {:terrains:icycobblestone} \
	{-colour} {170 170 170} \
	{-terrain} {:textures:terrain:icycobblestone} \
	{-transition_textures} {:textures:terrain:transition_hard0 :textures:terrain:transition_hard1 :textures:terrain:transition_hard2 :textures:terrain:transition_hard3} \
	{-friction} {0.25} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:ice_slide}

objcreate {s_terrain} {:terrains:dirt} \
	{-colour} {210 210 210} \
	{-terrain} {:textures:terrain:dirt} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.5} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:mud_slide}

objcreate {s_terrain} {:terrains:grass} \
	{-colour} {72 72 72} \
	{-terrain} {:textures:terrain:grass} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:grass_slide}

objcreate {s_terrain} {:terrains:forestfloor} \
	{-colour} {3 0 0} \
	{-terrain} {:textures:terrain:forestfloor} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.5} \
	{-comp_depth} {0.01} \
	{-sound_action} {:actions:sounds:forestfloor_slide}

objcreate {s_terrain} {:terrains:forestfloor2} \
	{-colour} {43 43 43} \
	{-terrain} {:textures:terrain:forestfloor2} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.5} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:forestfloor_slide}


objcreate {s_terrain} {:terrains:pebblesnow} \
	{-colour} {238 238 238} \
	{-terrain} {:textures:terrain:pebblesnow} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.5} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snow2streak1} \
	{-colour} {0 99 0} \
	{-terrain} {:textures:terrain:snow2streak1} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.06} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snow2streak2} \
	{-colour} {0 103 0} \
	{-terrain} {:textures:terrain:snow2streak2} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.06} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowruts} \
	{-colour} {0 107 0} \
	{-terrain} {:textures:terrain:snowruts} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.11} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:thinsnow} \
	{-colour} {0 3 0} \
	{-terrain} {:textures:terrain:thinsnow} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.06} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:patternsnow} \
	{-colour} {7 0 0} \
	{-terrain} {:textures:terrain:patternsnow} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.11} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowprints} \
	{-colour} {0 7 0} \
	{-terrain} {:textures:terrain:snowprints} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.11} \
	{-sound_action} {:actions:sounds:snow_slide}


objcreate {s_terrain} {:terrains:snow} \
	{-colour} {255 255 255} \
	{-terrain} {:textures:terrain:snow} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-particle_texture} {:textures:snow_particle} \
	{-transition_textures} {:textures:terrain:transition_snow0 :textures:terrain:transition_snow1 :textures:terrain:transition_snow2 :textures:terrain:transition_snow3} \
	{-friction} {0.35} \
	{-comp_depth} {0.11} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:driftsnow} \
	{-colour} {90 90 90} \
	{-terrain} {:textures:terrain:driftsnow} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.11} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:sawdust} \
	{-colour} {100 100 100} \
	{-terrain} {:textures:terrain:sawdust} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.4} \
	{-comp_depth} {0.03} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowy_path} \
	{-colour} {69 69 69} \
	{-terrain} {:textures:terrain:snowy_path} \
	{-track_head_texture} {:textures:terrain:muda} \
	{-track_mark_texture} {:textures:terrain:mudb} \
	{-track_tail_texture} {:textures:terrain:mudc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.35} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}
	
objcreate {s_terrain} {:terrains:snowydeepice} \
	{-colour} {0 92 95} \
	{-terrain} {:textures:terrain:snowydeepice} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.3} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowyice} \
	{-colour} {30 42 95} \
	{-terrain} {:textures:terrain:snowyice} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.3} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowygrass} \
	{-colour} {70 42 25} \
	{-terrain} {:textures:terrain:snowygrass} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.3} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowydeadgrass} \
	{-colour} {70 42 25} \
	{-terrain} {:textures:terrain:snowydeadgrass} \
	{-track_head_texture} {:textures:terrain:snowa} \
	{-track_mark_texture} {:textures:terrain:snowb} \
	{-track_tail_texture} {:textures:terrain:snowc} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.3} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}

objcreate {s_terrain} {:terrains:snowyslate} \
	{-colour} {70 142 125} \
	{-terrain} {:textures:terrain:snowyslate} \
	{-transition_textures} {:textures:terrain:transition0 :textures:terrain:transition1 :textures:terrain:transition2 :textures:terrain:transition3} \
	{-friction} {0.3} \
	{-comp_depth} {0.07} \
	{-sound_action} {:actions:sounds:snow_slide}

# ----- End output of [objserialize :terrains]
