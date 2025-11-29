# -*-tcl-*-
# Initialization script for Squid Engine

if { ![info exists tux_data_dir] } {
    set tux_data_dir [pwd]
}

#---------------------------------------------------------------------------
#
# Library procedures
#
#---------------------------------------------------------------------------

#---------------------------------------------------------------------------
#
# Returns list of all classes from which object is derived, starting with 
# top-level ancestor (i.e., s_object)
#
proc objclasslist { { obj . } } {
    set objclass [objget $obj class]
    set curclass $objclass
    set classlist [list $objclass]

    while {1} {
	set curclass [objget $curclass ancestor]
	if { $curclass == "null" } {
	    break;
	}
	set classlist [concat $curclass $classlist]
    }
    return $classlist
}

#---------------------------------------------------------------------------
#
# 'ls'-like function for objects
#
proc objls { {obj .} } {
    # Make sure obj is a container
    if { ![objcall $obj is_a s_container] } {
	error "'$obj' is not an s_container"
    }

    set children [objget $obj children]

    set new_children [list]
    foreach child $children {
	set child [objget $child basename]
	lappend new_children $child
    }

    set new_children [lsort -ascii $new_children]

    return $new_children
}

#---------------------------------------------------------------------------
#
# Executes objset in a catch block.
#
proc objtryset { obj args } {
    set cmd [concat [list objset $obj ] $args ]
    if {[catch $cmd msg ] } { 
	tux_warning "Warning: error during\n$cmd\n$msg" 
    }
}

#---------------------------------------------------------------------------
#
# Returns code which will restore object to its current state
#
proc objserialize { {obj .} } {

    if { ![objget $obj serializable] } {
	# Object isn't serializable
	return
    }

    set basename [objget $obj basename]
    set class [objget $obj class]
    set parent [objget $obj parent]
    set properties [objget $class:properties children]

    # Create a new instance of object so we can compare current property 
    # values to default values.
    if { ![objexists :tmp] } {
	objnew s_container : tmp
    }

    set suffix 0
    while {1} {
	set protoname "[objget $class basename]-$suffix"
	if { ![objexists ":tmp:$protoname"] } {
	    set prototype [objnew $class :tmp $protoname]
	    break
	} else {
	    incr suffix
	}
    }

    set setcode "objcreate {[objget $class basename]} {$obj}"

    foreach prop $properties {
	set access [objget $prop access]

	if { $access != "rw" } {
	    # Can't serialize using this property...
	    continue
	}

	set propname [objget $prop basename]

	set value [objget $obj $propname]

	if { "$value" != "[objget $prototype $propname]" } {

	    set setcode  "$setcode \\\n	{-$propname} {$value}"
	}
    }

    objdel $prototype

    if { [objcall $obj is_a s_container] && \
	 [objget $obj serialize_children] } {
	foreach child [objget $obj children] {
	    set setcode "$setcode\n\n[objserialize $child]"
	}
    }

    return $setcode
}

#---------------------------------------------------------------------------
#
# Copies an object.
#
proc objcp { obj newparent newname } {

    if { ![objexists $obj] } {
	error "$obj does not exist"
    }

    if { ![objget $obj serializable] } {
	tux_warning "$obj is not serializable, skipping..."
	return
    }

    if { ![objexists $newparent] } {
	error "$newparent does not exist"
    }

    set newobj "$newparent:$newname"

    if { [objexists $newobj] } {
	error "$newobj already exists"
    }

    # Copy object
    set class [objget $obj class]

    objnew $class $newparent $newname

    set properties [objget $class:properties children]

    foreach prop $properties {
	set access [objget $prop access]
	set propname [objget $prop basename]

	if { $access != "rw" } {
	    continue
	}

	objset $newobj -$propname [objget $obj $propname]
    }

    if [objcall $obj is_a s_container] {
	# Copy children
	foreach child [objget $obj children] {
	    objcp $child $newobj [objget $child basename]
	}
    }
}

#---------------------------------------------------------------------------
#
# objreset -- resets the r/w properties of an object to their default 
# settings
#
proc objreset { obj } {
    set suffix 0

    if { ![objexists $obj] } {
	error "$obj does not exist"
    }

    if { ![objexists :tmp] } {
	objnew s_container : tmp
    }

    set class [objget $obj class]

    while {1} {
	set protoname "[objget $class basename]-$suffix"
	if { ![objexists ":tmp:$protoname"] } {
	    set prototype [objnew $class :tmp $protoname]
	    break
	} else {
	    incr suffix
	}
    }

    set props [objget "$class:properties" children]
    foreach prop $props {
	set propname [objget $prop basename]
	set access [objget $prop access]

	if {$access == "rw"} {
	    objset $obj -$propname [objget $prototype $propname]
	}
    }

    objdel $prototype
}

#---------------------------------------------------------------------------
#
# objcreate -- creates (if necessary) and initializes a new object
#
proc objcreate { class obj args } {
    
    if { ![regexp {^(.*):([^:]*)$} $obj dummy parent name] } {
	set parent .
	set name $obj
    }
    if { "$parent" == "" } {
	set parent ":"
    }

    if [objexists $obj] {
	set curclass [objget $obj class]

	if { $curclass != "$class" && \
		[objget $curclass basename] != "$class" } {
	    error "$obj already exists and is of the wrong class"
	}

	set class $curclass

	#
	# Reset properties not specified in args
	#

	# Figure out which properties have been set
	array set setprops {}
	for {set i 0} {$i<[llength $args]} {incr i 2} {
	    set setprops([lindex $args $i]) 1
	}

	if { ![objexists :tmp] } {
	    objnew s_container : tmp
	}
	
	# Create a "prototype object", from which we get defaults
	set suffix 0
	while {1} {
	    set protoname "[objget $class basename]-$suffix"
	    if { ![objexists ":tmp:$protoname"] } {
		set prototype [objnew $class :tmp $protoname]
		break
	    } else {
		incr suffix
	    }
	}

	# Now we reset properties not in $args
	foreach prop [objget $class:properties children] {
	    set propname [objget $prop basename]
	    set access [objget $prop access]

	    if [info exists setprops("-$propname")] {
		# This is set in $args, don't need to reset
		continue
	    }

	    if { $access == "rw" } {
		objset $obj -$propname [objget $prototype $propname]
	    }
	}

	objdel $prototype
    } else {
	if [catch {objnew $class $parent $name} msg] {
	    error "could not create $obj: $msg"
	}
    }

    if { [llength $args] > 0 } {
	eval [concat [list objtryset $obj] $args]
    }
}


#---------------------------------------------------------------------------
#
# Creates a unique object name given a parent and a prefix
#
proc objuniquename { parent prefix } {
    set suffix 0
    set name $prefix
    while {1} {
	if { ![objexists "$parent:$name"] } {
	    break
	} else {
	    incr suffix
	}
	set name "$prefix-$suffix"
    }

    return $name
}


#---------------------------------------------------------------------------
#
# Returns true iff pkg is loaded
#
proc IsPackageLoaded { pkg } {
    set pkgnames [package names]
    return [expr [lsearch $pkgnames $pkg] >= 0]
}


#---------------------------------------------------------------------------
#
# Wraps callbacks in the proper namespace.
#
# Based on example 14-4, p 171 in _Practical Programming in Tcl and
# Tk_, 2nd Ed. by Brent B. Welch.
#
proc code { args } {
    set namespace [uplevel {namespace current}]
    return [list namespace inscope $namespace $args]
}

#---------------------------------------------------------------------------
#
# min and max functions
#
proc min { a b } {
    if { $a < $b } {
	return $a
    }
    return $b
}

proc max { a b } {
    if { $a > $b } {
	return $a
    }
    return $b
}


#---------------------------------------------------------------------------
#
# Source our Tcl library files
#
#---------------------------------------------------------------------------
source "tcllib/quadtree.tcl"
source "tcllib/saveheights.tcl"
source "tcllib/sounds.tcl"


#---------------------------------------------------------------------------
#
# Source Tk-related files if Tk is loaded
#
#---------------------------------------------------------------------------
if { [IsPackageLoaded Tk] } {
    source tk_init.tcl
}
