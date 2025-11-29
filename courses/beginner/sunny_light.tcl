objset :course \
	{-light0_on} {1} \
	{-light0_ambient} {0.40000000596 0.40000000596 0.479999989271 1.0} \
	{-light0_diffuse} {1.0 1.0 1.0 1.0} \
	{-light0_specular} {0.800000011921 0.800000011921 0.800000011921 1.0} \
	{-light0_position} {1.0 1.0 -1.0 0.0} 

tux_fog -on -mode linear -density 0.005 -colour { 1.0 1.0 1.0 1 } -start 0 \
    -end [tux_get_param forward_clip_distance]
  
tux_particle_colour { 0.95 0.95 1.0 1.0 }

tux_load_texture envmap ../beginner/beginnercube_right.png 0

tux_load_texture beginner-front ../beginner/beginnercube_front.png 0
tux_load_texture beginner-right ../beginner/beginnercube_right.png 0
tux_load_texture beginner-left ../beginner/beginnercube_left.png 0
tux_load_texture beginner-back ../beginner/beginnercube_back.png 0
tux_load_texture beginner-top ../beginner/beginnercube_top.png 0
tux_load_texture beginner-bottom ../beginner/beginnercube_bottom.png 0

tux_bind_texture sky_front beginner-front
tux_bind_texture sky_right beginner-right
tux_bind_texture sky_left beginner-left
tux_bind_texture sky_back beginner-back
tux_bind_texture sky_top beginner-top
tux_bind_texture sky_bottom beginner-bottom

objcreate {s_texture_cube} {:textures:cubemap} \
	{-filename} {../beginner/beginnercube_}
