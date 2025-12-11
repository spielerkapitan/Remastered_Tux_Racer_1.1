#
# Set Up Sounds
#

set old_dir [pwd]

tux_goto_data_dir

objcreate {s_container} {:sounds}

# Load sounds in courses/common/sound3d
TRSounds::Load courses/common/sound3d sound3d

#----Load sounds for cup
if { [file exists $cup_dir/sounds.tcl] } {
    cd $cup_dir
    source sounds.tcl
}

cd $old_dir
