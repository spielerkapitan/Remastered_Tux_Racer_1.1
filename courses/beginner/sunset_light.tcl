objset :course \
	{-light0_on} {1} \
	{-light0_ambient} {0.34999999404 0.34999999404 0.379999995232 1.0} \
	{-light0_diffuse} {0.740000009537 0.550000011921 0.319999992847 1.0} \
	{-light0_specular} {0.9 0.8 0.75 1.0} \
	{-light0_position} {1.0 1.0 0.699999988079 0.0}

tux_fog -on -mode linear -density 0.005 -colour { 0.53 0.45 0.43 1 } -start 0 \
    -end [tux_get_param forward_clip_distance]

  
#
# Environmental sphere map
tux_load_texture envmap ../beginner/beginnerevening_right.png 0

tux_particle_colour { 0.9 0.8 0.65 1.0 }

tux_load_texture beginner-front ../beginner/beginnerevening_front.png 0
tux_load_texture beginner-right ../beginner/beginnerevening_right.png 0
tux_load_texture beginner-left ../beginner/beginnerevening_left.png 0
tux_load_texture beginner-back ../beginner/beginnerevening_back.png 0
tux_load_texture beginner-top ../beginner/beginnerevening_top.png 0
tux_load_texture beginner-bottom ../beginner/beginnerevening_bottom.png 0

tux_bind_texture sky_front beginner-front
tux_bind_texture sky_right beginner-right
tux_bind_texture sky_left beginner-left
tux_bind_texture sky_back beginner-back
tux_bind_texture sky_top beginner-top
tux_bind_texture sky_bottom beginner-bottom

objcreate {s_texture_cube} {:textures:cubemap} \
	{-filename} {../beginner/beginnerevening_}
