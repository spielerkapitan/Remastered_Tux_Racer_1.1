# objects.tcl
#
# Specify standard objects

objcall :servers:render set_loading_text [gs loading_common_objects]
 
# ----- Begin output of [objserialize :models]
objcreate {s_model_billboard} {:models:billboard}

objcreate {s_model_obj} {:models:tree_poly} \
	{-filename} {treepoly.obj.strip}

objcreate {s_model_obj} {:models:tree} \
	{-filename} {tree.obj.strip} \
	{-backface_culling} {0}
	
objcreate {s_model_obj} {:models:gate} \
	{-filename} {gate.obj.strip} \
	-backface_culling 0
	
objcreate {s_model_obj} {:models:startgate} \
	{-filename} {startgate.obj.strip} \
	-backface_culling 0
	
objcreate {s_model_obj} {:models:bannerL} \
	{-filename} {bannerL.obj.strip} \
	{-backface_culling} {0}
	
objcreate {s_model_obj} {:models:bannerS} \
	{-filename} {bannerS.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:flag} \
	{-filename} {flag.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:fish} \
	{-filename} {fish.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:fish_low} \
	{-filename} {fish_low.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:signr} \
	{-filename} {signr.obj.strip}

objcreate {s_model_obj} {:models:signc} \
	{-filename} {signc.obj.strip}

objcreate {s_model_obj} {:models:signl} \
	{-filename} {signl.obj.strip}

objcreate {s_model_obj} {:models:boulder} \
	{-filename} {boulder.obj.strip}

objcreate {s_model_obj} {:models:large_rock} \
	{-filename} {large_rock.obj.strip}

objcreate {s_model_obj} {:models:square} \
	{-filename} {square.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:pad} \
	{-filename} {pad.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:turning_pad} \
	{-filename} {turning_pu.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:star} \
	{-filename} {star.obj.strip} 

objcreate {s_model_obj} {:models:staryellow} \
	{-filename} {star.obj.strip} 

objcreate {s_model_obj} {:models:bridge_closed} \
	{-filename} {bridge_closed.obj.strip}

objcreate {s_model_obj} {:models:treebillboardtiny} \
	{-filename} {treebillboardtiny.obj.strip} \
	{-backface_culling} {0}

objcreate {s_model_obj} {:models:treebillboardsmall} \
	{-filename} {treebillboardsmall.obj.strip} \
	{-backface_culling} {0}

# ----- End output of [objserialize :models]


# ----- Begin output of [objserialize :collidables]
objcreate {s_collidable_herring} {:collidables:fish} \
	{-collide_with_camera} {0}

objcreate {s_collidable_obj} {:collidables:tree} \
	{-model} {:models:tree} \
	{-friction_coeff} {0.3} \
	{-collide_with_camera} {0}

objcreate {s_collidable_obj} {:collidables:billboard_tree} \
	{-model} {:models:tree_poly} \
	{-friction_coeff} {0.6} \
	{-collide_with_camera} {0}

objcreate {s_collidable_boundary} {:collidables:boundary} \
	{-width} {10.0}
	
objcreate {s_collidable_obj} {:collidables:bannerL} \
	{-model} {:models:bannerL} \
	{-friction_coeff} {0.5}
	
objcreate {s_collidable_obj} {:collidables:bannerS} \
	{-model} {:models:bannerS} \
	{-friction_coeff} {0.5}
	
objcreate {s_collidable_obj} {:collidables:gate} \
	{-model} {:models:gate} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:startgate} \
	{-model} {:models:startgate} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:signc} \
	{-model} {:models:signc} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:signr} \
	{-model} {:models:signr} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:signl} \
	{-model} {:models:signl} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:boulder} \
	{-model} {:models:boulder} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:large_rock} \
	{-model} {:models:large_rock} \
	{-friction_coeff} {0.3}

objcreate {s_collidable_obj} {:collidables:pad} \
	{-model} {:models:pad} \
	{-collide_with_camera} {0}

objcreate {s_collidable_obj} {:collidables:square} \
	{-model} {:models:square} \
	{-double_sided} {1} \
	{-collide_with_camera} {0}

objcreate {s_collidable_obj} {:collidables:turning_pad} \
	{-model} {:models:turning_pad} \
	{-collide_with_camera} {0}

objcreate {s_collidable_obj} {:collidables:bridge_closed} \
	{-model} {:models:bridge_closed} \
	{-friction_coeff} {0.3}

# ----- End output of [objserialize :collidables]


# ----- Begin output of [objserialize :collision_responses]
objcreate {s_collision_response_herring} \
	{:collision_responses:herring}

objcreate {s_collision_response_sound3d} {:collision_responses:herring_sound} \
	-action :actions:sounds:fish_pickup

objcreate {s_collision_response_sound3d} {:collision_responses:tree_hit_sound} \
	-action :actions:sounds:tree_hit \
	-delay 1 \
	-min_speed 5

objcreate {s_collision_response_sound3d} {:collision_responses:rock_hit_sound} \
	-action :actions:sounds:rock_hit \
	-delay 1 \
	-min_speed 5

objcreate {s_collision_response_sound3d} {:collision_responses:wood_hit_sound} \
	-action :actions:sounds:wood_hit \
	-delay 1 \
	-min_speed 5

objcreate {s_collision_response_sound3d} {:collision_responses:launch_pad_sound} \
	-action :actions:sounds:launch_pad \
	-delay 1

objcreate {s_collision_response_sound3d} {:collision_responses:speed_pad_sound} \
	-action :actions:sounds:speed_pad \
	-delay 1

objcreate {s_collision_response_sound3d} {:collision_responses:turning_pwrup_sound} \
	-action :actions:sounds:turning_pwrup \
	-delay 1

objcreate {s_collision_response_physics} \
	{:collision_responses:physics}

objcreate {s_collision_response_script} {:collision_responses:reset_player} \
	{-script} {resetPlayer}

objcreate {s_collision_response_script} {:collision_responses:launch_player} \
	{-script} {launchPlayer}

objcreate {s_collision_response_script} {:collision_responses:speed_player} \
	{-script} {speedPlayer}

objcreate {s_collision_response_script} {:collision_responses:speed_player60} \
	{-script} {speedPlayer60}
	
objcreate {s_collision_response_script} {:collision_responses:turn_player} \
	{-script} {turning_powerup}
# ----- End output of [objserialize :collision_responses]


# ----- Begin output of [objserialize :objects]
objcreate {s_object3d} {:objects:anim_node} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:a} \
	{-animation} {1}

objcreate {s_object3d} {:objects:finish} \
	{-drawable_model} {:models:gate} \
	{-texture} {:textures:object:finish} \
	{-collidable_object} {:collidables:gate} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound}

objcreate {s_object3d} {:objects:flag} \
	{-drawable_model} {:models:flag} \
	{-texture} {:textures:object:flag}

objcreate {s_object3d} {:objects:herring} \
	{-drawable_model} {:models:fish} \
	{-texture} {:textures:object:fish} \
	-lowres_distance 100.0 \
	-lowres_model :models:fish_low \
	{-collidable_object} {:collidables:fish} \
	{-collision_response_list} {:collision_responses:herring \
                                    :collision_responses:herring_sound}

objcreate {s_object3d} {:objects:reset} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:r} \
	{-scale} {1.0 2.0 1.0} \
	{-reset_point} {1} \
	{-billboard} {1}

objcreate {s_object3d} {:objects:start_point} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:s} \
	{-scale} {1.0 1.0 1.0} \
	{-start_point} {1} \
	{-billboard} {1}

objcreate {s_object3d} {:objects:start} \
	{-drawable_model} {:models:gate} \
	{-texture} {:textures:object:start} \
	{-collidable_object} {:collidables:gate} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound}

objcreate {s_object3d} {:objects:startgate} \
	{-drawable_model} {:models:startgate} \
	{-texture} {:textures:object:startgate_decal} \
	{-collidable_object} {:collidables:startgate} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound} \
	{-bump_map_decal_texture} {:textures:object:startgate_decal} \
	{-bump_map_texture} {:textures:object:startgate_bump} \
	{-bump_mapping_enabled} {1}

objcreate {s_object3d} {:objects:tree} \
	{-drawable_model} {:models:tree} \
	{-texture} {:textures:object:tree} \
	-lowres_distance 100.0 \
	-lowres_model :models:treebillboardsmall \
	-lowres_texture :textures:object:treebillboard \
	{-collidable_object} {:collidables:tree} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:tree_hit_sound} \
	{-size_variance} {0.5}

objcreate {s_object3d} {:objects:bannerL} \
	{-drawable_model} {:models:bannerL} \
	{-texture} {:textures:object:bannerL} \
	{-collidable_object} {:collidables:bannerL} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:wood_hit_sound}
	
objcreate {s_object3d} {:objects:bannerS} \
	{-drawable_model} {:models:bannerS} \
	{-texture} {:textures:object:bannerL} \
	{-collidable_object} {:collidables:bannerS} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:wood_hit_sound}
	
objcreate {s_object3d} {:objects:signr} \
	{-drawable_model} {:models:signr} \
	{-texture} {:textures:object:sign} \
	{-collidable_object} {:collidables:signr} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:wood_hit_sound}

objcreate {s_object3d} {:objects:signl} \
	{-drawable_model} {:models:signl} \
	{-texture} {:textures:object:sign} \
	{-collidable_object} {:collidables:signl} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:wood_hit_sound}

objcreate {s_object3d} {:objects:signc} \
	{-drawable_model} {:models:signc} \
	{-texture} {:textures:object:sign} \
	{-collidable_object} {:collidables:signc} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:wood_hit_sound}

objcreate {s_object3d} {:objects:boulder} \
	{-drawable_model} {:models:boulder} \
	{-texture} {:textures:object:boulder} \
	{-collidable_object} {:collidables:boulder} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound}

objcreate {s_object3d} {:objects:boundary} \
	{-collidable_object} {:collidables:boundary} \
	{-collision_response_list} {:collision_responses:physics}

objcreate {s_object3d} {:objects:reset_square} \
	{-collidable_object} {:collidables:square} \
	{-collision_response_list} {:collision_responses:reset_player}

objcreate {s_object3d} {:objects:launch_pad} \
	{-drawable_model} {:models:pad} \
	{-collidable_object} {:collidables:pad} \
	{-collision_response_list} {:collision_responses:launch_player :collision_responses:physics :collision_responses:launch_pad_sound} \
	{-anim_texture} {1} \
	{-anim_texture_list} {{:textures:object:jump1 0.5} \
	{:textures:object:jump2 0.5} {:textures:object:jump3 0.5}}
	
objcreate {s_object3d} {:objects:speed_pad} \
	{-drawable_model} {:models:pad} \
	{-collidable_object} {:collidables:pad} \
	{-collision_response_list} {:collision_responses:speed_player :collision_responses:physics :collision_responses:speed_pad_sound} \
	{-anim_texture} {1} \
	{-anim_texture_list} {{:textures:object:accel4 0.5} \
	{:textures:object:accel3 0.5} {:textures:object:accel2 0.5} \
	{:textures:object:accel1 0.5}}
	
objcreate {s_object3d} {:objects:speed_pad60} \
	{-drawable_model} {:models:pad} \
	{-collidable_object} {:collidables:pad} \
	{-collision_response_list} {:collision_responses:speed_player60 :collision_responses:physics :collision_responses:speed_pad_sound} \
	{-anim_texture} {1} \
	{-anim_texture_list} {{:textures:object:accel4 0.5} \
	{:textures:object:accel3 0.5} {:textures:object:accel2 0.5} \
	{:textures:object:accel1 0.5}}

objcreate {s_object3d} {:objects:turning_pad} \
	{-drawable_model} {:models:turning_pad} \
	{-texture} {:textures:object:turning_pad} \
	{-collidable_object} {:collidables:turning_pad} \
	{-collision_response_list} {:collision_responses:turn_player :collision_responses:physics :collision_responses:turning_pwrup_sound}

objcreate {s_object3d} {:objects:large_rock} \
	{-drawable_model} {:models:large_rock} \
	{-texture} {:textures:object:large_rock} \
	{-collidable_object} {:collidables:large_rock} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound} \
	{-size_variance} {0.1}

objcreate {s_object3d} {:objects:bridge_closed} \
	{-drawable_model} {:models:bridge_closed} \
	{-texture} {:textures:object:bridge_closed} \
	{-collidable_object} {:collidables:bridge_closed} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound} \
	{-size_variance} {0.1}

objcreate {s_object3d} {:objects:large_sign_right} \
	{-drawable_model} {:models:bridge_closed} \
	{-texture} {:textures:object:large_sign_right} \
	{-collidable_object} {:collidables:bridge_closed} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound} \
	{-size_variance} {0.1}

objcreate {s_object3d} {:objects:large_sign_left} \
	{-drawable_model} {:models:bridge_closed} \
	{-texture} {:textures:object:large_sign_left} \
	{-collidable_object} {:collidables:bridge_closed} \
	{-collision_response_list} {:collision_responses:physics :collision_responses:rock_hit_sound} \
	{-size_variance} {0.1}

objcreate {s_object3d} {:objects:snd_birds_forest} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-height 10 \
	-billboard 1 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:forestbirds \
	-sound_delay 3 \
	-sound_delay_variance 2 \
	-sound_pos_variance {5 5 5} \
	-scale {4 4 4}

objcreate {s_object3d} {:objects:snd_birds_caw} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-height 15 \
	-billboard 1 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:caw_birds \
	-sound_delay 10 \
	-sound_delay_variance 8 \
	-sound_pos_variance {15 5 15} \
	-scale {4 4 4}

objcreate {s_object3d} {:objects:snd_rolling_boulder} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-billboard 1 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:rolling_boulder \
	-scale {4 4 4}

objcreate {s_object3d} {:objects:snd_truck} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-billboard 1 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:truck \
	-scale {4 4 4}

objcreate {s_object3d} {:objects:snd_rushing_water} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-billboard 1 \
	-height 5 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:rushing_water

objcreate {s_object3d} {:objects:snd_whistling_wind} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:object:speaker} \
	-billboard 1 \
	-height 5 \
	-sound_emitter 1 \
	-sound_action :actions:sounds:whistling_wind

objcreate {s_object3d} {:objects:stargreen} \
	{-drawable_model} {:models:star} \
	{-texture} {:textures:object:stargreen} 

objcreate {s_object3d} {:objects:staryellow} \
	{-drawable_model} {:models:star} \
	{-texture} {:textures:object:staryellow}
# ----- End output of [objserialize :objects]

# ----- Begin output of [objserialize :palette]
objcreate {s_object3d_palette} {:palette} \
	{-mappings} {\
	{(255, 128, 255) => :objects:reset} \
	{(255, 255, 255) => :objects:tree} \
	{(194,  40,  40) => :objects:flag} \
	{( 28, 185, 204) => :objects:herring} \
    }
# ----- End output of [objserialize :palette]


#----Load objects for cup
objcall :servers:render set_loading_text [gs loading_cup_objects]

set commondir [pwd]

if { [file exists $cup_dir/objects.tcl] } {
    cd $cup_dir
    source objects.tcl
}

cd $commondir

#----Load objects for trophy
objcall :servers:render set_loading_text [gs loading_trophy]

set commondir [pwd]

if { [file exists $cup_dir/trophy.tcl] } {
    cd $cup_dir
    source trophy.tcl
}

cd $commondir

