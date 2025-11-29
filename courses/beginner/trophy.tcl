objcreate {s_model_obj} {:models:trophy} \
	{-filename} {trophy_beginner.obj.strip}

objcreate s_texture :textures:object:trophy \
	-repeatable 1 -filename trophy_beginner.png

objcreate s_texture :textures:object:trophy_beginner_env \
	-repeatable 1 -filename trophy_beginner_env.png

objcreate {s_object3d} {:objects:trophy} \
	{-drawable_model} {:models:trophy} \
	{-texture} {:textures:object:trophy} \
	{-envmap_alpha_texture} {:textures:object:trophy_beginner_env} \
	{-envmap_texture} {:textures:trophy:trophy_env} \
	{-cubemap_texture} {:textures:trophy:trophy_cube} \
	{-envmap_alpha} {0.5}

objcreate {s_container} {:anim:course}

objcreate {s_anim_curve} {:anim:course:trophy_spin} \
	{-keyframes} {{( 0.0000, 0.0000, 36.0000, 36.0000 ) } {( 10.0000, 360.0000, 36.0000, 36.0000 ) }} \
	{-loop} {1}

objcreate {s_sgnode} {:trophy:trans} \
	{-position} {0 -1.9 -5} \
	{-rotation} {20.0 0.0 0.0}

objcreate {s_sganim} {:trophy:trans:anim} \
	{-bound_animations} {{( :anim:course:trophy_spin , y_rotation , 1 )}} \
	{-position} {0.0 0.0 0.0}

objcreate {s_object3dinst} {:trophy:trans:anim:obj} \
	{-object3d} {:objects:trophy}

objcreate {s_container} {:actions:course}

objcreate {s_action_anim} {:actions:course:trophy} \
	{-root_anim} {:anim:course:trophy_spin} \
	{-root_object} {:trophy:trans:anim}

objcall :actions:course:trophy start
