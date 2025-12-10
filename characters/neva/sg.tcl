objcreate {s_sgnode} {sg} \
	{-position} {0.0 0.330000013113 0.0} \
	{-use_fixed_drawable_bv} {1} \
	{-check_child_visibility} {0} \
	{-draw_reflection} {1}

objcreate {s_sganim} {sg:tuxroot} \
	{-bound_animations} {{( anim:crashing:tuxroot-rotateZ , z_rotation , 0 )} {( anim:left_turn:tuxroot-rotateY , y_radians , 0 )} {( anim:right_turn:tuxroot-rotateY , y_radians , 0 )} {( anim:flap:tuxroot-translateZ , z_translation , 0 )} {( anim:flap:tuxroot-rotateX , x_radians , 0 )} {( anim:flap_trans:tuxroot-rotateX , x_radians , 0 )} {( anim:paddle:tuxroot-translateY , y_translation , 0 )} {( anim:paddle:tuxroot-translateZ , z_translation , 0 )} {( anim:paddle:tuxroot-rotateX , x_radians , 0 )} {( anim:jump:tuxroot-translateY , y_translation , 0 )} {( anim:jump:tuxroot-translateZ , z_translation , 0 )} {( anim:jump:tuxroot-rotateX , x_radians , 0 )} {( anim:intro:tuxroot-translateY , y_translation , 1 )} {( anim:intro:tuxroot-translateZ , z_translation , 1 )} {( anim:intro:tuxroot-rotateX , x_radians , 1 )} {( anim:intro:tuxroot-rotateY , y_radians , 1 )} {( anim:intro:tuxroot-rotateZ , z_radians , 1 )} {( anim:end_win:tuxroot-translateX , x_translation , 1 )} {( anim:end_win:tuxroot-translateY , y_translation , 1 )} {( anim:end_win:tuxroot-translateZ , z_translation , 1 )} {( anim:end_win:tuxroot-rotateX , x_radians , 1 )} {( anim:end_win:tuxroot-rotateY , y_radians , 1 )} {( anim:end_win:tuxroot-rotateZ , z_radians , 1 )} {( anim:end_lose:tuxroot-rotateX , x_radians , 1 )} {( anim:end_lose:tuxroot-rotateY , y_radians , 1 )} {( anim:end_lose:tuxroot-rotateZ , z_radians , 1 )} {( anim:end_lose:tuxroot-translateY , y_translation , 1 )} {( anim:end_lose:tuxroot-translateZ , z_translation , 1 )}} \
	{-object3d} {objects:sphere} \
	{-collisions_enabled} {0}

objcreate {s_sganim} {sg:tuxroot:chest} \
	{-bound_animations} {{( anim:left_turn:chest-rotateZ , z_radians , 0 )} {( anim:right_turn:chest-rotateZ , z_radians , 0 )} {( anim:brake:chest-rotateX , x_radians , 0 )} {( anim:flap:chest-rotateX , x_radians , 0 )} {( anim:flap_trans:chest-rotateX , x_radians , 0 )} {( anim:paddle:chest-rotateX , x_radians , 0 )} {( anim:velocity:chest-rotateX , x_radians , 0 )} {( anim:force:chest-rotateX , x_radians , 0 )} {( anim:racing:chest-rotateX , x_radians , 0 )} {( anim:jump:chest-rotateX , x_radians , 0 )} {( anim:intro:chest-rotateX , x_radians , 1 )} {( anim:intro:chest-rotateY , y_radians , 1 )} {( anim:intro:chest-rotateZ , z_radians , 1 )} {( anim:end_lose:chest-rotateX , x_radians , 1 )}} \
	{-position} {0.0 0.125 0.0}

objcreate {s_sganim} {sg:tuxroot:chest:neck} \
	{-bound_animations} {{( anim:left_turn:neck-rotateZ , z_radians , 0 )} {( anim:right_turn:neck-rotateZ , z_radians , 0 )} {( anim:brake:neck-rotateX , x_radians , 0 )} {( anim:flap:neck-rotateX , x_radians , 0 )} {( anim:flap_trans:neck-rotateX , x_radians , 0 )} {( anim:paddle:neck-rotateX , x_radians , 0 )} {( anim:velocity:neck-rotateX , x_radians , 0 )} {( anim:force:neck-rotateX , x_radians , 0 )} {( anim:racing:neck-rotateX , x_radians , 0 )} {( anim:jump:neck-rotateX , x_radians , 0 )} {( anim:intro:neck-rotateX , x_radians , 1 )} {( anim:intro:neck-rotateZ , z_radians , 1 )} {( anim:end_lose:neck-rotateX , x_radians , 1 )}} \
	{-position} {0.0 0.127000004053 0.00300000002608}

objcreate {s_sganim} {sg:tuxroot:chest:neck:head} \
	{-bound_animations} {{( anim:left_turn:head-rotateZ , z_radians , 0 )} {( anim:right_turn:head-rotateZ , z_radians , 0 )} {( anim:brake:head-rotateX , x_radians , 0 )} {( anim:flap:head-rotateX , x_radians , 0 )} {( anim:flap_trans:head-rotateX , x_radians , 0 )} {( anim:paddle:head-rotateX , x_radians , 0 )} {( anim:velocity:head-rotateX , x_radians , 0 )} {( anim:force:head-rotateX , x_radians , 0 )} {( anim:racing:head-rotateX , x_radians , 0 )} {( anim:jump:head-rotateX , x_radians , 0 )} {( anim:intro:head-rotateX , x_radians , 1 )} {( anim:intro:head-rotateY , y_radians , 1 )} {( anim:end_lose:head-rotateX , x_radians , 1 )}} \
	{-position} {0.0 0.324999988079 -0.0179999992251}

objcreate {s_sganim} {sg:tuxroot:chest:neck:head:beak} \
	{-bound_animations} {{( anim:left_turn:beak-rotateX , x_radians , 0 )} {( anim:right_turn:beak-rotateX , x_radians , 0 )}} \
	{-position} {0.0 -0.0900000035763 0.097999997437}

objcreate {s_object3dinst} {sg:tuxroot:chest:neck:head:beak:lowerBeak1} \
	{-object3d} {objects:beak}

objcreate {s_object3dinst} {sg:tuxroot:chest:neck:head:head} \
	{-object3d} {objects:head} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:neck:neck2} \
	{-object3d} {objects:neck} \
	{-cast_shadow} {1}

objcreate {s_sganim} {sg:tuxroot:chest:rightCollarbone} \
	{-bound_animations} {{( anim:paddle:rightCollarbone-rotateX , x_radians , 0 )} {( anim:jump:rightCollarbone-rotateX , x_radians , 0 )} {( anim:end_lose:rightCollarbone-rotateX , x_radians , 1 )} {( anim:end_lose:rightCollarbone-rotateY , y_radians , 1 )} {( anim:end_lose:rightCollarbone-rotateZ , z_radians , 1 )}} \
	{-position} {-0.15000000596 0.144999995828 0.0}

objcreate {s_sganim} {sg:tuxroot:chest:rightCollarbone:rightShoulder} \
	{-bound_animations} {{( anim:left_turn:rightShoulder-rotateX , x_radians , 0 )} {( anim:left_turn:rightShoulder-rotateY , y_radians , 0 )} {( anim:right_turn:rightShoulder-rotateX , x_radians , 0 )} {( anim:right_turn:rightShoulder-rotateY , y_radians , 0 )} {( anim:right_turn:rightShoulder-rotateZ , z_radians , 0 )} {( anim:brake:rightShoulder-rotateX , x_radians , 0 )} {( anim:brake:rightShoulder-rotateY , y_radians , 0 )} {( anim:brake:rightShoulder-rotateZ , z_radians , 0 )} {( anim:flap:rightShoulder-rotateX , x_radians , 0 )} {( anim:flap:rightShoulder-rotateY , y_radians , 0 )} {( anim:flap:rightShoulder-rotateZ , z_radians , 0 )} {( anim:flap_trans:rightShoulder-rotateX , x_radians , 0 )} {( anim:flap_trans:rightShoulder-rotateY , y_radians , 0 )} {( anim:flap_trans:rightShoulder-rotateZ , z_radians , 0 )} {( anim:paddle:rightShoulder-rotateX , x_radians , 0 )} {( anim:paddle:rightShoulder-rotateY , y_radians , 0 )} {( anim:paddle:rightShoulder-rotateZ , z_radians , 0 )} {( anim:velocity:rightShoulder-rotateZ , z_radians , 0 )} {( anim:force:rightShoulder-rotateX , x_radians , 0 )} {( anim:racing:rightShoulder-rotateX , x_radians , 0 )} {( anim:jump:rightShoulder-rotateX , x_radians , 0 )} {( anim:jump:rightShoulder-rotateY , y_radians , 0 )} {( anim:jump:rightShoulder-rotateZ , z_radians , 0 )} {( anim:intro:rightShoulder-rotateX , x_radians , 1 )} {( anim:intro:rightShoulder-rotateZ , z_radians , 1 )} {( anim:end_win:rightShoulder-rotateX , x_radians , 1 )} {( anim:end_win:rightShoulder-rotateY , y_radians , 1 )} {( anim:end_win:rightShoulder-rotateZ , z_radians , 1 )} {( anim:end_lose:rightShoulder-rotateX , x_radians , 1 )} {( anim:end_lose:rightShoulder-rotateY , y_radians , 1 )} {( anim:end_lose:rightShoulder-rotateZ , z_radians , 1 )}} \
	{-position} {-0.082000002265 0.0270000007004 0.0}

objcreate {s_sganim} {sg:tuxroot:chest:rightCollarbone:rightShoulder:rightElbow} \
	{-bound_animations} {{( anim:left_turn:rightElbow-rotateX , x_radians , 0 )} {( anim:right_turn:rightElbow-rotateX , x_radians , 0 )} {( anim:brake:rightElbow-rotateX , x_radians , 0 )} {( anim:paddle:rightElbow-rotateX , x_radians , 0 )} {( anim:force:rightElbow-rotateX , x_radians , 0 )} {( anim:racing:rightElbow-rotateX , x_radians , 0 )} {( anim:jump:rightElbow-rotateX , x_radians , 0 )} {( anim:intro:rightElbow-rotateX , x_radians , 1 )} {( anim:end_win:rightElbow-rotateZ , z_radians , 1 )} {( anim:end_lose:rightElbow-rotateX , x_radians , 1 )}} \
	{-position} {-0.082000002265 -0.16400000453 -0.00800000037998}

objcreate {s_object3dinst} {sg:tuxroot:chest:rightCollarbone:rightShoulder:rightElbow:lowerRightArm} \
	{-object3d} {objects:rightarm2} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:rightCollarbone:rightShoulder:upperRightArm} \
	{-object3d} {objects:rightarm1} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:rightCollarbone:rightShoulder2} \
	{-object3d} {objects:rightshoulder} \
	{-cast_shadow} {1}

objcreate {s_sganim} {sg:tuxroot:chest:leftCollarbone} \
	{-bound_animations} {{( anim:paddle:leftCollarbone-rotateX , x_radians , 0 )} {( anim:jump:leftCollarbone-rotateX , x_radians , 0 )}} \
	{-position} {0.15000000596 0.144999995828 0.0}

objcreate {s_sganim} {sg:tuxroot:chest:leftCollarbone:leftShoulder} \
	{-bound_animations} {{( anim:left_turn:leftShoulder-rotateX , x_radians , 0 )} {( anim:left_turn:leftShoulder-rotateY , y_radians , 0 )} {( anim:left_turn:leftShoulder-rotateZ , z_radians , 0 )} {( anim:right_turn:leftShoulder-rotateX , x_radians , 0 )} {( anim:right_turn:leftShoulder-rotateY , y_radians , 0 )} {( anim:brake:leftShoulder-rotateX , x_radians , 0 )} {( anim:brake:leftShoulder-rotateY , y_radians , 0 )} {( anim:brake:leftShoulder-rotateZ , z_radians , 0 )} {( anim:flap:leftShoulder-rotateX , x_radians , 0 )} {( anim:flap:leftShoulder-rotateY , y_radians , 0 )} {( anim:flap:leftShoulder-rotateZ , z_radians , 0 )} {( anim:flap_trans:leftShoulder-rotateX , x_radians , 0 )} {( anim:flap_trans:leftShoulder-rotateY , y_radians , 0 )} {( anim:flap_trans:leftShoulder-rotateZ , z_radians , 0 )} {( anim:paddle:leftShoulder-rotateX , x_radians , 0 )} {( anim:paddle:leftShoulder-rotateY , y_radians , 0 )} {( anim:paddle:leftShoulder-rotateZ , z_radians , 0 )} {( anim:velocity:leftShoulder-rotateZ , z_radians , 0 )} {( anim:force:leftShoulder-rotateX , x_radians , 0 )} {( anim:racing:leftShoulder-rotateX , x_radians , 0 )} {( anim:jump:leftShoulder-rotateX , x_radians , 0 )} {( anim:jump:leftShoulder-rotateY , y_radians , 0 )} {( anim:jump:leftShoulder-rotateZ , z_radians , 0 )} {( anim:intro:leftShoulder-rotateX , x_radians , 1 )} {( anim:intro:leftShoulder-rotateZ , z_radians , 1 )} {( anim:end_win:leftShoulder-rotateX , x_radians , 1 )} {( anim:end_win:leftShoulder-rotateY , y_radians , 1 )} {( anim:end_win:leftShoulder-rotateZ , z_radians , 1 )} {( anim:end_lose:leftShoulder-rotateX , x_radians , 1 )} {( anim:end_lose:leftShoulder-rotateY , y_radians , 1 )} {( anim:end_lose:leftShoulder-rotateZ , z_radians , 1 )}} \
	{-position} {0.082000002265 0.0270000007004 0.0}

objcreate {s_sganim} {sg:tuxroot:chest:leftCollarbone:leftShoulder:leftElbow} \
	{-bound_animations} {{( anim:left_turn:leftElbow-rotateX , x_radians , 0 )} {( anim:right_turn:leftElbow-rotateX , x_radians , 0 )} {( anim:brake:leftElbow-rotateX , x_radians , 0 )} {( anim:paddle:leftElbow-rotateX , x_radians , 0 )} {( anim:force:leftElbow-rotateX , x_radians , 0 )} {( anim:racing:leftElbow-rotateX , x_radians , 0 )} {( anim:jump:leftElbow-rotateX , x_radians , 0 )} {( anim:intro:leftElbow-rotateX , x_radians , 1 )} {( anim:end_win:leftElbow-rotateZ , z_radians , 1 )} {( anim:end_lose:leftElbow-rotateX , x_radians , 1 )}} \
	{-position} {0.082000002265 -0.16400000453 -0.00800000037998}

objcreate {s_object3dinst} {sg:tuxroot:chest:leftCollarbone:leftShoulder:leftElbow:lowerLeftArm} \
	{-object3d} {objects:leftarm2} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:leftCollarbone:leftShoulder:upperLeftArm} \
	{-object3d} {objects:leftarm1} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:leftCollarbone:leftShoulder1} \
	{-object3d} {objects:leftshoulder} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:chest:chest2} \
	{-object3d} {objects:chest} \
	{-cast_shadow} {1}

objcreate {s_sganim} {sg:tuxroot:tail} \
	{-bound_animations} {{( anim:brake:tail-rotateX , x_radians , 0 )} {( anim:flap:tail-rotateX , x_radians , 0 )} {( anim:flap_trans:tail-rotateX , x_radians , 0 )} {( anim:paddle:tail-rotateX , x_radians , 0 )} {( anim:velocity:tail-rotateX , x_radians , 0 )} {( anim:force:tail-rotateX , x_radians , 0 )} {( anim:racing:tail-rotateX , x_radians , 0 )} {( anim:jump:tail-rotateX , x_radians , 0 )}} \
	{-position} {0.0 -0.0659999996424 -0.193000003695}

objcreate {s_object3dinst} {sg:tuxroot:tail:tail} \
	{-object3d} {objects:tail}

objcreate {s_sganim} {sg:tuxroot:rightHip} \
	{-bound_animations} {{( anim:left_turn:rightHip-rotateX , x_radians , 0 )} {( anim:left_turn:rightHip-rotateZ , z_radians , 0 )} {( anim:left_turn:rightHip-rotateY , y_radians , 0 )} {( anim:right_turn:rightHip-rotateX , x_radians , 0 )} {( anim:brake:rightHip-rotateX , x_radians , 0 )} {( anim:brake:rightHip-rotateY , y_radians , 0 )} {( anim:brake:rightHip-rotateZ , z_radians , 0 )} {( anim:flap:rightHip-rotateX , x_radians , 0 )} {( anim:flap_trans:rightHip-rotateX , x_radians , 0 )} {( anim:paddle:rightHip-rotateX , x_radians , 0 )} {( anim:velocity:rightHip-rotateX , x_radians , 0 )} {( anim:force:rightHip-rotateX , x_radians , 0 )} {( anim:force:rightHip-rotateZ , z_radians , 0 )} {( anim:racing:rightHip-rotateX , x_radians , 0 )} {( anim:racing:rightHip-rotateZ , z_radians , 0 )} {( anim:jump:rightHip-rotateX , x_radians , 0 )} {( anim:intro:rightHip-rotateX , x_radians , 1 )} {( anim:intro:rightHip-rotateY , y_radians , 1 )} {( anim:intro:rightHip-rotateZ , z_radians , 1 )} {( anim:end_win:rightHip-rotateX , x_radians , 1 )} {( anim:end_win:rightHip-rotateY , y_radians , 1 )} {( anim:end_win:rightHip-rotateZ , z_radians , 1 )} {( anim:end_lose:rightHip-rotateX , x_radians , 1 )} {( anim:end_lose:rightHip-rotateY , y_radians , 1 )} {( anim:end_lose:rightHip-rotateZ , z_radians , 1 )}} \
	{-position} {-0.107000000775 -0.0750000029802 0.0}

objcreate {s_sganim} {sg:tuxroot:rightHip:rightKnee} \
	{-bound_animations} {{( anim:left_turn:rightKnee-rotateX , x_radians , 0 )} {( anim:right_turn:rightKnee-rotateX , x_radians , 0 )} {( anim:brake:rightKnee-rotateX , x_radians , 0 )} {( anim:flap:rightKnee-rotateX , x_radians , 0 )} {( anim:flap_trans:rightKnee-rotateX , x_radians , 0 )} {( anim:paddle:rightKnee-rotateX , x_radians , 0 )} {( anim:velocity:rightKnee-rotateX , x_radians , 0 )} {( anim:force:rightKnee-rotateX , x_radians , 0 )} {( anim:racing:rightKnee-rotateX , x_radians , 0 )} {( anim:jump:rightKnee-rotateX , x_radians , 0 )} {( anim:intro:rightKnee-rotateX , x_radians , 1 )} {( anim:intro:rightKnee-rotateZ , z_radians , 1 )} {( anim:end_win:rightKnee-rotateX , x_radians , 1 )} {( anim:end_lose:rightKnee-rotateX , x_radians , 1 )} {( anim:end_lose:rightKnee-rotateY , y_radians , 1 )} {( anim:end_lose:rightKnee-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 -0.17499999702 0.0}

objcreate {s_sganim} {sg:tuxroot:rightHip:rightKnee:rightAnkle} \
	{-bound_animations} {{( anim:left_turn:rightAnkle-rotateX , x_radians , 0 )} {( anim:left_turn:rightAnkle-rotateY , y_radians , 0 )} {( anim:left_turn:rightAnkle-rotateZ , z_radians , 0 )} {( anim:right_turn:rightAnkle-rotateY , y_radians , 0 )} {( anim:right_turn:rightAnkle-rotateZ , z_radians , 0 )} {( anim:brake:rightAnkle-rotateX , x_radians , 0 )} {( anim:brake:rightAnkle-rotateY , y_radians , 0 )} {( anim:brake:rightAnkle-rotateZ , z_radians , 0 )} {( anim:flap:rightAnkle-rotateX , x_radians , 0 )} {( anim:flap_trans:rightAnkle-rotateX , x_radians , 0 )} {( anim:paddle:rightAnkle-rotateX , x_radians , 0 )} {( anim:velocity:rightAnkle-rotateX , x_radians , 0 )} {( anim:velocity:rightAnkle-rotateY , y_radians , 0 )} {( anim:force:rightAnkle-rotateX , x_radians , 0 )} {( anim:racing:rightAnkle-rotateX , x_radians , 0 )} {( anim:racing:rightAnkle-rotateY , y_radians , 0 )} {( anim:jump:rightAnkle-rotateX , x_radians , 0 )} {( anim:jump:rightAnkle-rotateY , y_radians , 0 )} {( anim:jump:rightAnkle-rotateZ , z_radians , 0 )} {( anim:intro:rightAnkle-rotateX , x_radians , 1 )} {( anim:intro:rightAnkle-rotateY , y_radians , 1 )} {( anim:intro:rightAnkle-rotateZ , z_radians , 1 )} {( anim:end_win:rightAnkle-rotateX , x_radians , 1 )} {( anim:end_win:rightAnkle-rotateY , y_radians , 1 )} {( anim:end_win:rightAnkle-rotateZ , z_radians , 1 )} {( anim:end_lose:rightAnkle-rotateX , x_radians , 1 )} {( anim:end_lose:rightAnkle-rotateY , y_radians , 1 )} {( anim:end_lose:rightAnkle-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 -0.15000000596 0.0}

objcreate {s_sganim} {sg:tuxroot:rightHip:rightKnee:rightAnkle:rightToe} \
	{-bound_animations} {{( anim:left_turn:rightToe-rotateX , x_radians , 0 )} {( anim:left_turn:rightToe-rotateY , y_radians , 0 )} {( anim:right_turn:rightToe-rotateX , x_radians , 0 )} {( anim:right_turn:rightToe-rotateY , y_radians , 0 )} {( anim:brake:rightToe-rotateX , x_radians , 0 )} {( anim:brake:rightToe-rotateY , y_radians , 0 )} {( anim:flap:rightToe-rotateX , x_radians , 0 )} {( anim:flap:rightToe-rotateY , y_radians , 0 )} {( anim:flap_trans:rightToe-rotateX , x_radians , 0 )} {( anim:flap_trans:rightToe-rotateY , y_radians , 0 )} {( anim:paddle:rightToe-rotateX , x_radians , 0 )} {( anim:paddle:rightToe-rotateY , y_radians , 0 )} {( anim:velocity:rightToe-rotateX , x_radians , 0 )} {( anim:force:rightToe-rotateX , x_radians , 0 )} {( anim:racing:rightToe-rotateX , x_radians , 0 )} {( anim:jump:rightToe-rotateX , x_radians , 0 )} {( anim:intro:rightToe-rotateX , x_radians , 1 )} {( anim:intro:rightToe-rotateY , y_radians , 1 )} {( anim:end_lose:rightToe-rotateX , x_radians , 1 )} {( anim:end_lose:rightToe-rotateY , y_radians , 1 )} {( anim:end_lose:rightToe-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 0.0010000000475 0.0869999974966}

objcreate {s_object3dinst} {sg:tuxroot:rightHip:rightKnee:rightAnkle:rightToe:rightToes} \
	{-object3d} {objects:righttoes} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:rightHip:rightKnee:rightAnkle:rightHeel} \
	{-object3d} {objects:rightfoot} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:rightHip:rightKnee:rightLowerLeg} \
	{-object3d} {objects:rightleg2} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:rightHip:rightUpperLeg} \
	{-object3d} {objects:rightleg1} \
	{-cast_shadow} {1}

objcreate {s_sganim} {sg:tuxroot:leftHip} \
	{-bound_animations} {{( anim:left_turn:leftHip-rotateX , x_radians , 0 )} {( anim:right_turn:leftHip-rotateX , x_radians , 0 )} {( anim:right_turn:leftHip-rotateY , y_radians , 0 )} {( anim:right_turn:leftHip-rotateZ , z_radians , 0 )} {( anim:brake:leftHip-rotateX , x_radians , 0 )} {( anim:brake:leftHip-rotateY , y_radians , 0 )} {( anim:brake:leftHip-rotateZ , z_radians , 0 )} {( anim:flap:leftHip-rotateX , x_radians , 0 )} {( anim:flap_trans:leftHip-rotateX , x_radians , 0 )} {( anim:paddle:leftHip-rotateX , x_radians , 0 )} {( anim:velocity:leftHip-rotateX , x_radians , 0 )} {( anim:force:leftHip-rotateX , x_radians , 0 )} {( anim:force:leftHip-rotateZ , z_radians , 0 )} {( anim:racing:leftHip-rotateX , x_radians , 0 )} {( anim:racing:leftHip-rotateZ , z_radians , 0 )} {( anim:jump:leftHip-rotateX , x_radians , 0 )} {( anim:intro:leftHip-rotateX , x_radians , 1 )} {( anim:intro:leftHip-rotateY , y_radians , 1 )} {( anim:intro:leftHip-rotateZ , z_radians , 1 )} {( anim:end_win:leftHip-rotateX , x_radians , 1 )} {( anim:end_win:leftHip-rotateY , y_radians , 1 )} {( anim:end_win:leftHip-rotateZ , z_radians , 1 )} {( anim:end_lose:leftHip-rotateX , x_radians , 1 )} {( anim:end_lose:leftHip-rotateY , y_radians , 1 )} {( anim:end_lose:leftHip-rotateZ , z_radians , 1 )}} \
	{-position} {0.107000000775 -0.0750000029802 0.0}

objcreate {s_sganim} {sg:tuxroot:leftHip:leftKnee} \
	{-bound_animations} {{( anim:left_turn:leftKnee-rotateX , x_radians , 0 )} {( anim:right_turn:leftKnee-rotateX , x_radians , 0 )} {( anim:brake:leftKnee-rotateX , x_radians , 0 )} {( anim:flap:leftKnee-rotateX , x_radians , 0 )} {( anim:flap_trans:leftKnee-rotateX , x_radians , 0 )} {( anim:paddle:leftKnee-rotateX , x_radians , 0 )} {( anim:velocity:leftKnee-rotateX , x_radians , 0 )} {( anim:force:leftKnee-rotateX , x_radians , 0 )} {( anim:racing:leftKnee-rotateX , x_radians , 0 )} {( anim:jump:leftKnee-rotateX , x_radians , 0 )} {( anim:intro:leftKnee-rotateX , x_radians , 1 )} {( anim:intro:leftKnee-rotateZ , z_radians , 1 )} {( anim:end_win:leftKnee-rotateX , x_radians , 1 )} {( anim:end_lose:leftKnee-rotateX , x_radians , 1 )} {( anim:end_lose:leftKnee-rotateY , y_radians , 1 )} {( anim:end_lose:leftKnee-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 -0.17499999702 0.0}

objcreate {s_sganim} {sg:tuxroot:leftHip:leftKnee:LeftAnkle} \
	{-bound_animations} {{( anim:right_turn:LeftAnkle-rotateX , x_radians , 0 )} {( anim:right_turn:LeftAnkle-rotateY , y_radians , 0 )} {( anim:right_turn:LeftAnkle-rotateZ , z_radians , 0 )} {( anim:brake:LeftAnkle-rotateX , x_radians , 0 )} {( anim:brake:LeftAnkle-rotateY , y_radians , 0 )} {( anim:brake:LeftAnkle-rotateZ , z_radians , 0 )} {( anim:flap:LeftAnkle-rotateX , x_radians , 0 )} {( anim:flap_trans:LeftAnkle-rotateX , x_radians , 0 )} {( anim:paddle:LeftAnkle-rotateX , x_radians , 0 )} {( anim:velocity:LeftAnkle-rotateX , x_radians , 0 )} {( anim:velocity:LeftAnkle-rotateY , y_radians , 0 )} {( anim:force:LeftAnkle-rotateX , x_radians , 0 )} {( anim:racing:LeftAnkle-rotateX , x_radians , 0 )} {( anim:racing:LeftAnkle-rotateY , y_radians , 0 )} {( anim:jump:LeftAnkle-rotateX , x_radians , 0 )} {( anim:jump:LeftAnkle-rotateY , y_radians , 0 )} {( anim:jump:LeftAnkle-rotateZ , z_radians , 0 )} {( anim:intro:LeftAnkle-rotateX , x_radians , 1 )} {( anim:intro:LeftAnkle-rotateY , y_radians , 1 )} {( anim:intro:LeftAnkle-rotateZ , z_radians , 1 )} {( anim:end_win:LeftAnkle-rotateX , x_radians , 1 )} {( anim:end_win:LeftAnkle-rotateY , y_radians , 1 )} {( anim:end_win:LeftAnkle-rotateZ , z_radians , 1 )} {( anim:end_lose:LeftAnkle-rotateX , x_radians , 1 )} {( anim:end_lose:LeftAnkle-rotateY , y_radians , 1 )} {( anim:end_lose:LeftAnkle-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 -0.15000000596 0.0}

objcreate {s_sganim} {sg:tuxroot:leftHip:leftKnee:LeftAnkle:LeftToe} \
	{-bound_animations} {{( anim:left_turn:LeftToe-rotateX , x_radians , 0 )} {( anim:left_turn:LeftToe-rotateY , y_radians , 0 )} {( anim:right_turn:LeftToe-rotateX , x_radians , 0 )} {( anim:right_turn:LeftToe-rotateY , y_radians , 0 )} {( anim:brake:LeftToe-rotateX , x_radians , 0 )} {( anim:brake:LeftToe-rotateY , y_radians , 0 )} {( anim:flap:LeftToe-rotateX , x_radians , 0 )} {( anim:flap:LeftToe-rotateY , y_radians , 0 )} {( anim:flap_trans:LeftToe-rotateX , x_radians , 0 )} {( anim:flap_trans:LeftToe-rotateY , y_radians , 0 )} {( anim:paddle:LeftToe-rotateX , x_radians , 0 )} {( anim:paddle:LeftToe-rotateY , y_radians , 0 )} {( anim:velocity:LeftToe-rotateX , x_radians , 0 )} {( anim:force:LeftToe-rotateX , x_radians , 0 )} {( anim:racing:LeftToe-rotateX , x_radians , 0 )} {( anim:jump:LeftToe-rotateX , x_radians , 0 )} {( anim:intro:LeftToe-rotateX , x_radians , 1 )} {( anim:intro:LeftToe-rotateY , y_radians , 1 )} {( anim:end_win:LeftToe-rotateX , x_radians , 1 )} {( anim:end_win:LeftToe-rotateY , y_radians , 1 )} {( anim:end_lose:LeftToe-rotateX , x_radians , 1 )} {( anim:end_lose:LeftToe-rotateY , y_radians , 1 )} {( anim:end_lose:LeftToe-rotateZ , z_radians , 1 )}} \
	{-position} {0.0 0.0010000000475 0.0869999974966}

objcreate {s_object3dinst} {sg:tuxroot:leftHip:leftKnee:LeftAnkle:LeftToe:leftToes} \
	{-object3d} {objects:lefttoes} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:leftHip:leftKnee:LeftAnkle:leftHeel} \
	{-object3d} {objects:leftfoot} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:leftHip:leftKnee:leftLowerLeg} \
	{-object3d} {objects:leftleg2} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:leftHip:leftUpperLeg} \
	{-object3d} {objects:leftleg1} \
	{-cast_shadow} {1}

objcreate {s_object3dinst} {sg:tuxroot:butt2} \
	{-object3d} {objects:butt} \
	{-cast_shadow} {1}
