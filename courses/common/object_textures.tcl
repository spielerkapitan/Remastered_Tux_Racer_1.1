objcreate s_container :textures:object

objcreate s_texture :textures:object:bannerL \
	-filename bannerL.png

objcreate s_texture :textures:object:sign \
	-filename sign.png

objcreate s_texture :textures:object:boulder \
	-filename boulder.png

objcreate s_texture :textures:object:large_rock \
	-filename large_rock.png

objcreate s_texture :textures:object:a \
	-filename A.png

objcreate s_texture :textures:object:s \
	-filename S.png

objcreate s_texture :textures:object:tree \
	-filename tree.png

objcreate s_texture :textures:object:start \
	-filename start.png

objcreate s_texture :textures:object:startgate_decal \
	-filename startgate_decal.png

objcreate s_texture_bump :textures:object:startgate_bump \
	-scale 2 \
	-filename startgate_bump.png

objcreate s_texture :textures:object:r \
	-filename R.png

objcreate s_texture :textures:object:flag \
	-filename flag.png

objcreate s_texture :textures:object:fish \
	-filename fish.png

objcreate s_texture :textures:object:finish \
	-filename finish.png

objcreate s_texture :textures:object:accel1 \
	-filename accel1.png

objcreate s_texture :textures:object:accel2 \
	-filename accel2.png

objcreate s_texture :textures:object:accel3 \
	-filename accel3.png

objcreate s_texture :textures:object:accel4 \
	-filename accel4.png

objcreate s_texture :textures:object:jump1 \
	-filename jump1.png

objcreate s_texture :textures:object:jump2 \
	-filename jump2.png

objcreate s_texture :textures:object:jump3 \
	-filename jump3.png

objcreate s_texture :textures:object:rock \
	-filename rock.png

objcreate s_texture :textures:object:turning_pad \
	-filename turning_pu.png
	
objcreate s_texture :textures:object:stargreen \
	-filename stargreen.png

objcreate s_texture :textures:object:speaker \
	-filename speaker.png

objcreate s_texture :textures:object:staryellow \
	-filename staryellow.png

objcreate s_texture :textures:object:large_sign_right\
	-filename large_sign_right.png

objcreate s_texture :textures:object:large_sign_left\
	-filename large_sign_left.png

objcreate s_texture :textures:object:bridge_closed\
	-filename bridge_closed.png

objcreate s_texture :textures:object:treebillboard \
	-filename treebillboard_snowy.png

objcreate s_container :textures:trophy

objcreate s_texture :textures:trophy:trophy_env\
	-filename trophy_env.png

objcreate {s_texture_cube} {:textures:trophy:trophy_cube} \
	{-filename} {trophycube_}

#----Load object textures cup
set commondir [pwd]

if { [file exists $cup_dir/object_textures.tcl] } {
    cd $cup_dir
    source object_textures.tcl
}

cd $commondir
