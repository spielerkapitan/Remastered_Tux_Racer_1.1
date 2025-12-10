objcreate {s_container} {anim}

objcreate {s_alias_container} {anim:left_turn} \
	-filename leftturn.anim

objcreate {s_alias_container} {anim:right_turn} \
	-filename rightturn.anim

objcreate {s_alias_container} {anim:brake} \
	-filename brake.anim

objcreate {s_alias_container} {anim:flap} \
	-filename flap.anim

objcreate {s_alias_container} {anim:flap_trans} \
	-filename flap_trans.anim

objcreate {s_alias_container} {anim:paddle} \
	-filename paddle.anim

objcreate {s_alias_container} {anim:velocity} \
	-filename velocity.anim

objcreate {s_alias_container} {anim:force} \
	-filename force.anim

objcreate {s_alias_container} {anim:racing} \
	-filename racing.anim

objcreate {s_alias_container} {anim:jump} \
	-filename jump.anim

objcreate {s_alias_container} {anim:intro} \
	-filename intro.anim

objcreate {s_alias_container} {anim:end_win} \
	-filename endloop.anim

objcreate {s_alias_container} {anim:end_lose} \
	-filename tux_lose.anim

# Make it loopy
foreach curve [objget anim:end_win children] {
    objset $curve -loop 1
}
foreach curve [objget anim:end_lose children] {
    objset $curve -loop 1
}

objcreate {s_container} {anim:crashing}
objcreate {s_anim_curve} {anim:crashing:tuxroot-rotateZ} \
	{-keyframes} {{( 0.0000, 0.0000, 10.0000, 10.0000 ) } {( 1.0000, 360.0000, 10.0000, 10.0000 ) }} \
	{-loop} {1}

objcreate {s_container} {anim:trick_left}
objcreate {s_anim_curve} {anim:trick_left:tuxroot-rotateY} \
	{-keyframes} {{( 0.0000, 0.0000, -10.0000, -10.0000 ) } {( 1.0000, -360.0000, -10.0000, -10.0000 ) }} \
	{-loop} {1}

objcreate {s_container} {anim:trick_right}
objcreate {s_anim_curve} {anim:trick_right:tuxroot-rotateY} \
	{-keyframes} {{( 0.0000, 0.0000, 10.0000, 10.0000 ) } {( 1.0000, 360.0000, 10.0000, 10.0000 ) }} \
	{-loop} {1}

objcreate {s_container} {anim:trick_back}
objcreate {s_anim_curve} {anim:trick_back:tuxroot-rotateX} \
	{-keyframes} {{( 0.0000, 0.0000, -10.0000, -10.0000 ) } {( 1.0000, -360.0000, -10.0000, -10.0000 ) }} \
	{-loop} {1}

objcreate {s_container} {anim:trick_front}
objcreate {s_anim_curve} {anim:trick_front:tuxroot-rotateX} \
	{-keyframes} {{( 0.0000, 0.0000, 10.0000, 10.0000 ) } {( 1.0000, 360.0000, 10.0000, 10.0000 ) }} \
	{-loop} {1}
