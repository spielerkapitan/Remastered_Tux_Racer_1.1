
namespace eval TRSounds {
    # For each directoy in $path, a new action is created with the name of
    # that directory, and all the sounds in that directory are assocsiated
    # with the action.
    proc Load { path soundtype } {
	set olddir [pwd]
	cd $path
	foreach dir [glob -nocomplain *] {
	    if { ![file isdir $dir] } {
		continue
	    }
	    if {[string toupper $dir] == "CVS"} {
		continue
	    }

	    set soundlist []

	    set dir [string tolower $dir]
	    
	    objcreate s_container ":sounds:$dir"

	    cd $dir

	    set extra_settings ""
	    
	    foreach sound [glob *] {
		if { [string tolower $sound] == "settings.txt" } {
		    # Get loop count from file
		    if [catch {open $sound r} fileId] {
			tux_warning "Couldn't open $sound";
		    } else {
			while { ![eof $fileId] } {
			    gets $fileId setting 
			    set extra_settings "$extra_settings $setting"
			}
			close $fileId
		    }
		    continue;
		}

		if { ![string match -nocase "*.wav" $sound] } {
		    continue
		}
		set soundname [string range $sound 0 \
			[expr [string length $sound] - 5]]
		set soundname [string tolower $soundname]
		objcreate "s_$soundtype" :sounds:$dir:$soundname \
			-filename $sound
		
		lappend soundlist :sounds:$dir:$soundname
	    }

	    eval objcreate "s_action_\$soundtype" :actions:sounds:\$dir \
		    -sounds \$soundlist $extra_settings

	    cd ..
	}
	cd $olddir
    }
}; # namespace TRSounds
