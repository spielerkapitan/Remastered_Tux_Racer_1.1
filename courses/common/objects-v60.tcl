# objects.tcl
#
# Specify standard objects

source tree_polyhedron.tcl

tux_load_model default_obj default.obj.strip
tux_load_texture default_tex default.png

tux_load_texture fish herring_standard.png 0
tux_load_texture shrub shrub.png 0
tux_load_texture tree tree.png 0
tux_load_texture tree_barren tree_barren.png 0
tux_load_texture flag1 flag.png 0
tux_load_texture finish finish.png 0
tux_load_texture start start.png 0
tux_load_texture r R.png 0

# ----- Begin output of [objserialize :models]
if { ![objexists :models] } { 
    objnew {:classes:s_container} {:} {models}
}
objset {:models} \
	{-locked} {0}

if { ![objexists :models:billboard] } { 
    objnew {:classes:s_model_billboard} {:models} {billboard}
}

if { ![objexists :models:tree_billboard] } { 
    objnew {:classes:s_model_tree} {:models} {tree_billboard}
}

if { ![objexists :models:tree_poly] } { 
    objnew {:classes:s_model_obj} {:models} {tree_poly}
}
objset {:models:tree_poly} \
	{-filename} {treepoly.obj.strip}
# ----- End output of [objserialize :models]

# ----- Begin output of [objserialize :collidables]
if { ![objexists :collidables] } { 
    objnew {:classes:s_container} {:} {collidables}
}

if { ![objexists :collidables:herring] } { 
    objnew {:classes:s_collidable_herring} {:collidables} {herring}
}

if { ![objexists :collidables:billboard_tree] } { 
    objnew {:classes:s_collidable_obj} {:collidables} {billboard_tree}
}
objtryset {:collidables:billboard_tree} \
	{-model} {:models:tree_poly} \
	{-friction_coeff} {0.6} \
	{-collide_with_camera} {0}
# ----- End output of [objserialize :collidables]

# ----- Begin output of [objserialize :collision_responses]
if { ![objexists :collision_responses] } { 
    objnew {:classes:s_container} {:} {collision_responses}
}
objset {:collision_responses} \
	{-locked} {0}

if { ![objexists :collision_responses:herring] } { 
    objnew {:classes:s_collision_response_herring} {:collision_responses} {herring}
}
objset {:collision_responses:herring} \
	{-herring_value} {1}

if { ![objexists :collision_responses:physics] } { 
    objnew {:classes:s_collision_response_physics} {:collision_responses} {physics}
}
# ----- End output of [objserialize :collision_responses]


# ----- Begin output of [objserialize :objects]
if { ![objexists :objects] } { 
    objnew {:classes:s_container} {:} {objects}
}
objset {:objects} \
	{-locked} {0}

if { ![objexists :objects:herring] } { 
    objnew {:classes:s_object3d} {:objects} {herring}
}
objset {:objects:herring} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:fish} \
	{-collidable_object} {:collidables:herring} \
	{-height} {0.2} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {0.5 1.0 0.5} \
	{-reset_point} {0} \
	{-collision_response_list} {:collision_responses:herring} \
	{-billboard} {1} \
	{-size_variance} {0.0} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}

if { ![objexists :objects:tree3] } { 
    objnew {:classes:s_object3d} {:objects} {tree3}
}
objset {:objects:tree3} \
	{-drawable_model} {:models:tree_billboard} \
	{-texture} {:textures:shrub} \
	{-collidable_object} {:collidables:billboard_tree} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {0.7 1.0 0.7} \
	{-reset_point} {0} \
	{-collision_response_list} {:collision_responses:physics} \
	{-billboard} {0} \
	{-size_variance} {0.5} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}

if { ![objexists :objects:tree1] } { 
    objnew {:classes:s_object3d} {:objects} {tree1}
}
objset {:objects:tree1} \
	{-drawable_model} {:models:tree_billboard} \
	{-texture} {:textures:tree} \
	{-collidable_object} {:collidables:billboard_tree} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {0.7 2.5 0.7} \
	{-reset_point} {0} \
	{-collision_response_list} {:collision_responses:physics} \
	{-billboard} {0} \
	{-size_variance} {0.5} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}

if { ![objexists :objects:tree2] } { 
    objnew {:classes:s_object3d} {:objects} {tree2}
}
objset {:objects:tree2} \
	{-drawable_model} {:models:tree_billboard} \
	{-texture} {:textures:tree_barren} \
	{-collidable_object} {:collidables:billboard_tree} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {0.7 2.5 0.7} \
	{-reset_point} {0} \
	{-collision_response_list} {:collision_responses:physics} \
	{-billboard} {0} \
	{-size_variance} {0.5} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}

if { ![objexists :objects:flag] } { 
    objnew {:classes:s_object3d} {:objects} {flag}
}
objset {:objects:flag} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:flag1} \
	{-collidable_object} {null} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {0.5 1.0 0.5} \
	{-reset_point} {0} \
	{-collision_response_list} {} \
	{-billboard} {1} \
	{-size_variance} {0.0} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}

if { ![objexists :objects:finish] } { 
    objnew {:classes:s_object3d} {:objects} {finish}
}
objset {:objects:finish} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:finish} \
	{-collidable_object} {null} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {4.5 6.0 4.5} \
	{-reset_point} {0} \
	{-collision_response_list} {} \
	{-billboard} {1} \
	{-size_variance} {0.0} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {1}

if { ![objexists :objects:start] } { 
    objnew {:classes:s_object3d} {:objects} {start}
}
objset {:objects:start} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:start} \
	{-collidable_object} {null} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {4.5 6.0 4.5} \
	{-reset_point} {0} \
	{-collision_response_list} {} \
	{-billboard} {1} \
	{-size_variance} {0.0} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {1}

if { ![objexists :objects:reset] } { 
    objnew {:classes:s_object3d} {:objects} {reset}
}
objset {:objects:reset} \
	{-drawable_model} {:models:billboard} \
	{-texture} {:textures:r} \
	{-collidable_object} {null} \
	{-height} {0.0} \
	{-rotation} {0.0 0.0 0.0} \
	{-scale} {1.0 2.0 1.0} \
	{-reset_point} {1} \
	{-collision_response_list} {} \
	{-billboard} {1} \
	{-size_variance} {0.0} \
	{-normal} {0.0 0.0 1.0} \
	{-use_normal} {0}
# ----- End output of [objserialize :objects]


# ----- Begin output of [objserialize :palette]
if { ![objexists :palette] } { 
    objnew {:classes:s_object3d_palette} {:} {palette}
}
objset {:palette} \
	{-mappings} {\
	{(255, 128, 255) => :objects:reset} \
	{(128, 128,   0) => :objects:start} \
	{(255, 255,   0) => :objects:finish} \
	{(255, 255, 255) => :objects:tree1} \
	{(194,  40,  40) => :objects:flag} \
	{( 28, 185, 204) => :objects:herring} \
	{(255,  96,   0) => :objects:tree2} \
	{(  0, 255,  48) => :objects:tree3} \
    }
# ----- End output of [objserialize :palette]
