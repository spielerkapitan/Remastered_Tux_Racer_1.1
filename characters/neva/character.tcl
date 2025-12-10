#
# Setup player with texture, models, objects, animations, etc.
#

namespace eval TRCharacter_neva {
    proc Load { plyr plyr_num course difficulty is_ai display_only } {
	global tux_data_dir

	set character_name neva
	set character_dir_name neva

	set base_characters ":characters"
	if { $display_only } {
	    set base_characters ":display_characters"
	}

	set shared_container_name "${character_name}-shared"
	set shared_root "${base_characters}:$shared_container_name"
	objcreate s_container $shared_root

	set container_name [objuniquename $base_characters $character_name]
	objnew s_container $base_characters $container_name

	set curobj [objcur]
	objsel "${base_characters}:$container_name"

	set curdir [pwd]
	cd "$tux_data_dir/characters/$character_dir_name"

	# load tux_map texture
	objcreate s_container $shared_root:textures
	set character_texture_name $shared_root:textures:gown_map
	objcreate s_texture $character_texture_name \
		{-filename} {gownmap.png} \
		{-repeatable} {1}
	set character_bump_decal_name $shared_root:textures:gown_bump_decal
	objcreate s_texture $character_bump_decal_name \
		-filename gown_bump_decal.png
	set character_bump_map_name $shared_root:textures:gown_bump
	objcreate s_texture_bump $character_bump_map_name \
		-scale 5 \
		-filename gownbump.png
	
	source models.tcl
	source objects.tcl

	if { $display_only } {
	    # Don't want collidables for display-only character so that they
	    # don't get inserted into octree
	    foreach child [objget objects children] {
		objset $child -collidable_object null
	    }
	}

	source anim.tcl
	source sg.tcl
	source actions.tcl

	if [objcall $plyr is_a s_ai_player] {
	    TRCharacter::LoadAITargets $plyr $plyr_num $course \
		    $difficulty $character_name
	}

	# Setup preview camera
	objset $plyr -preview_camera_pos { 0 0.73 1.3 } \
		-preview_camera_dir { 0 -0.2 -1 }
	
	source player_setup.tcl

	# Restore current object and current working directory
	objsel $curobj
	cd $curdir
    }
}
