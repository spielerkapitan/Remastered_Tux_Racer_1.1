#
# Initialize characters
#

set curdir [pwd]
cd "$tux_data_dir/characters"

foreach character [glob -nocomplain *] {
    if { ![file isdirectory $character] } {
	continue;
    }

    if [file exists "$character/character.tcl"] {
	source "$character/character.tcl"
    }
}

cd $curdir

objset :servers:character -characters {Tux Boris Samuel Neva}

namespace eval TRCharacter {
    proc LoadAITargets {plyr plyr_num course difficulty character_name} {
	global tux_data_dir

	set targets_dir "$tux_data_dir/courses/$course/ai_targets/$difficulty"

	if {![file isdirectory $targets_dir]} {
	    tux_warning "no AI targets for difficulty level $difficulty"
	    return
	}

	set files [lsort [glob -nocomplain -directory $targets_dir {*.tcl}]]
	set numfiles [llength $files]

	if { $numfiles == 0 } {
	    tux_warning "no AI targets for difficulty level $difficulty"
	    return
	}

	set filenum [expr $plyr_num % $numfiles]

	source [lindex $files $filenum]
    }
}
