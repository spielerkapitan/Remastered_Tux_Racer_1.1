objcreate {s_container} {actions}
objcreate {s_container} {actions:anim}

foreach anim [objget anim children] {
    set anim_name [objget $anim basename]
    objcreate {s_action_anim} actions:anim:$anim_name \
	    {-root_anim} $anim \
	    {-root_object} {sg:tuxroot}
}
