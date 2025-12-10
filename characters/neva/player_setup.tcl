
objset $plyr \
	-drawable sg \
	-character_container . \
	-collidable_node sg:tuxroot

if [objexists :actions:sounds:gusty_wind] {
    objset $plyr -airborne_sound :actions:sounds:gusty_wind
}
if [objexists :actions:sounds:flap] {
    objset $plyr -flap_sound :actions:sounds:flap
}
if [objexists :actions:sounds:paddle] {
    objset $plyr -paddle_sound :actions:sounds:paddle
}
if [objexists :actions:sounds:jump_charge] {
    objset $plyr -jump_charge_sound :actions:sounds:jump_charge
}
if [objexists :actions:sounds:jump] {
    objset $plyr -jump_sound :actions:sounds:jump
}
if [objexists :actions:sounds:crash] {
    objset $plyr -crash_sound :actions:sounds:crash
}
if [objexists :actions:sounds:trick] {
    objset $plyr -trick_sound :actions:sounds:trick
}
if [objexists :actions:sounds:trick_land] {
    objset $plyr -trick_land_sound :actions:sounds:trick_land
}

if [objexists ai_targets] {
    objset $plyr -ai_target_container ai_targets
}

# animation linking
foreach anim [objget anim children] {
    set anim_name [objget $anim basename]

    set bound_anims [objget $plyr animations]

    set new_anim [list ( $anim_name , sg:tuxroot , $anim , actions:anim:$anim_name ) ]
    lappend bound_anims $new_anim

    objset $plyr -animations $bound_anims
}
