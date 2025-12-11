# Procedures for collision responses

proc moveHouse {node player} {
    set pos [objget $node position]
    set pos [lreplace $pos 2 2 [expr {[lindex $pos 2] - 1}]]
    objset $node {-position} $pos
}

proc startAnimation {action node player} {
    if { [llength [objget $action children]] == 0 } {
	objcall $action start
    }
}


proc linkToParentAndCreateAction {anim channel node player} {
    regsub -all : $anim _ underscoreanim 
    regsub -all : $node _ underscorenode 
    set name "${underscorenode}_${underscoreanim}"

    if { ![objexists ":actions:tmp"] } {
	objcreate s_container :actions:tmp
    }

    if { ![objexists ":actions:tmp:$name"] } {
	set parent [objget $node parent]

	# Link the anim to the node
	set current_curves [objget $parent bound_animations]
	objset $parent {-bound_animations} "$current_curves \{\( $anim \, \
		$channel \, 1 \) \} "

	# Create the action
	objcreate s_action_anim :actions:tmp:$name \
		{-root_anim} $anim \
		{-root_object} $parent

	# Start the action
	objcall :actions:tmp:$name start
    }
}

proc autolinkAnimSibling {anim_root node player} {

    set parent [objget $node parent]
    set target_node "$parent:anim"

    regsub -all : $target_node _ underscorenode 
    regsub -all : $anim_root _ underscoreanim 
    set name "${underscorenode}_${underscoreanim}"

    if { ![objexists ":actions:tmp"] } {
	objcreate s_container :actions:tmp
    }
    
    if { [objexists ":actions:tmp:$name"] } {
	return;
    }

    set current_curves [objget $target_node bound_animations]

    set anim_children [objget $anim_root children]

    set channelMap(rotateX) x_rotation
    set channelMap(rotateY) y_rotation
    set channelMap(rotateZ) z_rotation
    set channelMap(translateX) x_translation
    set channelMap(translateY) y_translation
    set channelMap(translateZ) z_translation
    set channelMap(scaleX) x_scale
    set channelMap(scaleY) y_scale
    set channelMap(scaleZ) z_scale
    set channelMap(terrainX) x_terrain
    set channelMap(terrainZ) z_terrain

    foreach anim $anim_children {

	set curveName [objget $anim basename]
	set channel $channelMap($curveName)

	# Link the anim to the node
	lappend current_curves  "\( $anim \, $channel \, 1 \)"
    }

    objset $target_node {-bound_animations} $current_curves 

    # Create the action
    objcreate s_action_anim :actions:tmp:$name \
	    {-root_anim} $anim_root \
	    {-root_object} $parent
    
    # Start the action
    objcall :actions:tmp:$name start

    # Enable all sounds that are children of $target_node
    enableSounds $target_node $player
}

proc enableSounds {node plyr} {
    if { [objcall $node is_a s_sound3dinst] } {
	objset $node -enabled 1
    }
    if { [objcall $node is_a s_container] } {
	foreach child [objget $node children] {
	    enableSounds $child $plyr
	}
    }
}
                                               
proc resetPlayer {node plyr} {
    objcall $plyr reset
}
                                               
proc launchPlayer {node plyr} {
    set dir [ objget $node y_vector ]
    set dir [lreplace $dir 0 0 [expr {[lindex $dir 0] * 60}]]
    set dir [lreplace $dir 1 1 [expr {[lindex $dir 1] * 60}]]
    set dir [lreplace $dir 2 2 [expr {[lindex $dir 2] * 60}]]

    objcall $plyr accelerate .1 $dir
}
                                               
proc speedPlayer {node plyr} {
    set dir [ objget $node z_vector ]
    set dir [lreplace $dir 0 0 [expr {[lindex $dir 0] * -30}]]
    set dir [lreplace $dir 1 1 [expr {[lindex $dir 1] * -30}]]
    set dir [lreplace $dir 2 2 [expr {[lindex $dir 2] * -30}]]

    objcall $plyr accelerate .2 $dir
}

proc speedPlayer60 {node plyr} {
    set dir [ objget $node z_vector ]
    set dir [lreplace $dir 0 0 [expr {[lindex $dir 0] * -60}]]
    set dir [lreplace $dir 1 1 [expr {[lindex $dir 1] * -60}]]
    set dir [lreplace $dir 2 2 [expr {[lindex $dir 2] * -60}]]

    objcall $plyr accelerate .2 $dir
}

proc turning_powerup {node plyr} {
    objcall $plyr set_turn_multiplier 10 5
    objdel $node
}
