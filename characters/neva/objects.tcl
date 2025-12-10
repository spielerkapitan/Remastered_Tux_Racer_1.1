
# Collidables
objcreate s_container collidables
objcreate s_collidable_sphere collidables:sphere \
	-radius 0.5 \
	-friction_coeff 0.0

# Collision responses
objcreate s_container collision_responses
objcreate s_collision_response_player_rebound collision_responses:rebound \
	-player $plyr

# Objects
objcreate {s_container} {objects}

set specular_colour {0.5 0.5 0.5}
set bump_specular_factor 1.0

# ----- Begin output of [objserialize objects]
objcreate {s_container} {objects}

objcreate {s_object3d} {objects:leftleg1} \
	{-drawable_model} $shared_root:models:leftleg1 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftleg1_low

objcreate {s_object3d} {objects:leftleg2} \
	{-drawable_model} $shared_root:models:leftleg2 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftleg2_low

objcreate {s_object3d} {objects:leftshoulder} \
	{-drawable_model} $shared_root:models:leftshoulder \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftshoulder_low

objcreate {s_object3d} {objects:lefttoes} \
	{-drawable_model} $shared_root:models:lefttoes \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:lefttoes_low

objcreate {s_object3d} {objects:neck} \
	{-drawable_model} $shared_root:models:neck \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:neck_low

objcreate {s_object3d} {objects:rightarm1} \
	{-drawable_model} $shared_root:models:rightarm1 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightarm1_low

objcreate {s_object3d} {objects:rightarm2} \
	{-drawable_model} $shared_root:models:rightarm2 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightarm2_low

objcreate {s_object3d} {objects:rightfoot} \
	{-drawable_model} $shared_root:models:rightfoot \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightfoot_low

objcreate {s_object3d} {objects:rightleg1} \
	{-drawable_model} $shared_root:models:rightleg1 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightleg1_low

objcreate {s_object3d} {objects:rightleg2} \
	{-drawable_model} $shared_root:models:rightleg2 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightleg2_low

objcreate {s_object3d} {objects:rightshoulder} \
	{-drawable_model} $shared_root:models:rightshoulder \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:rightshoulder_low

objcreate {s_object3d} {objects:righttoes} \
	{-drawable_model} $shared_root:models:righttoes \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:righttoes_low

objcreate {s_object3d} {objects:tail} \
	{-drawable_model} $shared_root:models:tail \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tail_low

objcreate {s_object3d} {objects:beak} \
	{-drawable_model} $shared_root:models:beak \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:beak_low

objcreate {s_object3d} {objects:butt} \
	{-drawable_model} $shared_root:models:butt \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:butt_low

objcreate {s_object3d} {objects:chest} \
	{-drawable_model} $shared_root:models:chest \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:chest_low

objcreate {s_object3d} {objects:head} \
	{-drawable_model} $shared_root:models:head \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:nevahead_low

objcreate {s_object3d} {objects:leftarm1} \
	{-drawable_model} $shared_root:models:leftarm1 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftarm1_low

objcreate {s_object3d} {objects:leftarm2} \
	{-drawable_model} $shared_root:models:leftarm2 \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftarm2_low

objcreate {s_object3d} {objects:leftfoot} \
	{-drawable_model} $shared_root:models:leftfoot \
	{-texture} $character_texture_name \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-bump_specular_pass} {1} \
	{-specular_pass} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:leftfoot_low

objcreate {s_object3d} {objects:sphere} \
	{-collidable_object} {collidables:sphere} \
	{-collision_response_list} {collision_responses:rebound}

# Add bump-mapping to all objects
foreach child [objget objects children] {
    objset $child -bump_map_texture $character_bump_map_name \
	    -bump_mapping_enabled 1
}

