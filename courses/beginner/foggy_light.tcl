objcreate {s_course} {:course} \
	{-light0_on} {1} \
	{-light0_ambient} {0.360000014305 0.389999985695 0.409999996424 1.0} \
	{-light0_diffuse} {0.569999992847 0.550000011921 0.5 1.0} \
	{-light0_specular} {0.3 0.3 0.3 1.0} \
	{-light0_position} {1.0 1.0 -0.800000011921 0.0} 

set fog_dist 50
set far_clip [tux_get_param forward_clip_distance]
if { $fog_dist > $far_clip } {
    set fog_dist $far_clip
} 

tux_fog -on -mode linear -start -10 -end $fog_dist -colour { 0.73 0.73 0.73 1.0 }

tux_particle_colour { 0.8 0.8 0.8 1.0 }

tux_load_texture envmap ../beginner/beginnerovercast_right.png 0
  
tux_load_texture beginner-front ../beginner/beginnerovercast_front.png 0
tux_load_texture beginner-right ../beginner/beginnerovercast_right.png 0
tux_load_texture beginner-left ../beginner/beginnerovercast_left.png 0
tux_load_texture beginner-back ../beginner/beginnerovercast_back.png 0
tux_load_texture beginner-top ../beginner/beginnerovercast_top.png 0
tux_load_texture beginner-bottom ../beginner/beginnerovercast_bottom.png 0

tux_bind_texture sky_front beginner-front
tux_bind_texture sky_right beginner-right
tux_bind_texture sky_left beginner-left
tux_bind_texture sky_back beginner-back
tux_bind_texture sky_top beginner-top
tux_bind_texture sky_bottom beginner-bottom

objcreate {s_texture_cube} {:textures:cubemap} \
	{-filename} {../beginner/beginnerovercast_}
