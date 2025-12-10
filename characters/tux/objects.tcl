
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

objcreate {s_object3d} {objects:tuxleftleg1} \
	{-drawable_model} $shared_root:models:tuxleftleg1 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftleg1_low

objcreate {s_object3d} {objects:tuxleftleg2} \
	{-drawable_model} $shared_root:models:tuxleftleg2 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftleg2_low

objcreate {s_object3d} {objects:tuxleftshoulder} \
	{-drawable_model} $shared_root:models:tuxleftshoulder \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftshoulder_low


objcreate {s_object3d} {objects:tuxlefttoes} \
	{-drawable_model} $shared_root:models:tuxlefttoes \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxlefttoes_low


objcreate {s_object3d} {objects:tuxneck} \
	{-drawable_model} $shared_root:models:tuxneck \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxneck_low


objcreate {s_object3d} {objects:tuxrightarm1} \
	{-drawable_model} $shared_root:models:tuxrightarm1 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightarm1_low


objcreate {s_object3d} {objects:tuxrightarm2} \
	{-drawable_model} $shared_root:models:tuxrightarm2 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightarm2_low


objcreate {s_object3d} {objects:tuxrightfoot} \
	{-drawable_model} $shared_root:models:tuxrightfoot \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightfoot_low


objcreate {s_object3d} {objects:tuxrightleg1} \
	{-drawable_model} $shared_root:models:tuxrightleg1 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightleg1_low


objcreate {s_object3d} {objects:tuxrightleg2} \
	{-drawable_model} $shared_root:models:tuxrightleg2 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightleg2_low


objcreate {s_object3d} {objects:tuxrightshoulder} \
	{-drawable_model} $shared_root:models:tuxrightshoulder \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrightshoulder_low

objcreate {s_object3d} {objects:tuxrighttoes} \
	{-drawable_model} $shared_root:models:tuxrighttoes \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxrighttoes_low


objcreate {s_object3d} {objects:tuxtail} \
	{-drawable_model} $shared_root:models:tuxtail \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxtail_low


objcreate {s_object3d} {objects:tuxbeak} \
	{-drawable_model} $shared_root:models:tuxbeak \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxbeak_low


objcreate {s_object3d} {objects:tuxbutt} \
	{-drawable_model} $shared_root:models:tuxbutt \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxbutt_low


objcreate {s_object3d} {objects:tuxchest} \
	{-drawable_model} $shared_root:models:tuxchest \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxchest_low


objcreate {s_object3d} {objects:tuxhead} \
	{-drawable_model} $shared_root:models:tuxhead \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxhead_low


objcreate {s_object3d} {objects:tuxleftarm1} \
	{-drawable_model} $shared_root:models:tuxleftarm1 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftarm1_low


objcreate {s_object3d} {objects:tuxleftarm2} \
	{-drawable_model} $shared_root:models:tuxleftarm2 \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftarm2_low


objcreate {s_object3d} {objects:tuxleftfoot} \
	{-drawable_model} $shared_root:models:tuxleftfoot \
	{-texture} $character_texture_name \
	{-specular_colour} $specular_colour \
	{-bump_specular_factor} $bump_specular_factor \
	{-specular_exp} {20.0} \
	{-specular_pass} {1} \
	{-bump_specular_pass} {1} \
	{-bump_map_decal_texture} $character_bump_decal_name \
	{-bump_map_texture} $character_bump_name \
	{-bump_mapping_enabled} {1} \
	-lowres_distance 200.0 \
	-lowres_model $shared_root:models:tuxleftfoot_low


objcreate {s_object3d} {objects:sphere} \
	{-collidable_object} {collidables:sphere} \
	{-collision_response_list} {collision_responses:rebound}

