
namespace eval TRQuadTree {

    proc Rearrange { node levels } {
	
	set min_x  999999
	set max_x -999999
	set min_z  999999
	set max_z -999999

	
	# Traverse tree rooted at node, and create a list of all sgnodes that 
	# we're going to move
	set nodelist [TraverseNodes $node]

	# Find min and max coords
	foreach n $nodelist {
	    if [objget $n drawable_bv_is_defined] {
		set pos [objget $n drawable_bv_center]
	    } else {
		set pos [objget $n position]
	    }

	    set xpos [lindex $pos 0]
	    set zpos [lindex $pos 2]
	    if { $xpos < $min_x } { set min_x $xpos }
	    if { $xpos > $max_x } { set max_x $xpos }
	    if { $zpos < $min_z } { set min_z $zpos }
	    if { $zpos > $max_z } { set max_z $zpos }
	}

	if { $min_x > $max_x || $min_z > $max_z } {
	    return;
	}

	# Create root node of quadtree
	set quadroot(x_orig) $min_x
	set quadroot(z_orig) $min_z
	set quadroot(size) [max [expr $max_x - $min_x] [expr $max_z - $min_z]]
	set quadroot(level) [expr $levels-1]
	set quadroot(node) $node
	set quadroot(child,0) {}
	set quadroot(child,1) {}
	set quadroot(child,2) {}
	set quadroot(child,3) {}

	foreach n $nodelist {
	    InsertInQuadTree $n quadroot
	}

	# Remove any sgnodes without non-sgnode children
	CleanUpSceneGraph $node
    }

    proc InsertInQuadTree { node quadarray } {
	upvar 1 $quadarray quad

	if [objget $node drawable_bv_is_defined] {
	    set pos [objget $node drawable_bv_center]
	} else {
	    set pos [objget $node position]
	}
	set xpos [lindex $pos 0]
	set zpos [lindex $pos 2]

	if { $quad(level) == 0 } {
	    set suffix ""
	    set i 0
	    while {1} {
		if [objexists "$quad(node):[objget $node basename]$suffix"] {
		    incr i
		    set suffix "-$i"
		} else {
		    break
		}
	    }

	    objmv $node $quad(node) "[objget $node basename]$suffix"

	} else {

	    if { $xpos < $quad(x_orig) + $quad(size)/2.0 } {
		if { $zpos < $quad(z_orig) + $quad(size)/2.0 } {
		    set index 0
		} else {
		    set index 2
		}
	    } else {
		if { $zpos < $quad(z_orig) + $quad(size)/2.0 } {
		    set index 1
		} else {
		    set index 3
		}
	    }

	    if { $quad(child,$index) == "" } {
		CreateChild quad $index
	    }
	    array set childquad $quad(child,$index)
	    InsertInQuadTree $node childquad
	    set quad(child,$index) [array get childquad]
	    unset childquad
	}
    }

    proc CreateChild { quadarray index } {
	upvar 1 $quadarray quad

	# Create root node of quadtree
	set child(size) [expr $quad(size) / 2.0 ]

	set child(x_orig) [expr $quad(x_orig)]
	if { $index % 2 == 1 } {
	    set child(x_orig) [expr $child(x_orig) + $child(size)]
	}

	set child(z_orig) [expr $quad(z_orig)]
	if { $index >= 2 } {
	    set child(z_orig) [expr $child(z_orig) + $child(size)]
	}

	set child(level) [expr $quad(level)-1]

	set suffix ""
	set i 0
	while {1} {
	    if [catch {objnew s_sgnode $quad(node) node$index$suffix} newobj] {
		incr i
		set suffix "-$i"
	    } else {
		break
	    }
	}
	set child(node) $newobj

	set child(child,0) {}
	set child(child,1) {}
	set child(child,2) {}
	set child(child,3) {}

	set quad(child,$index) [array get child]
    }

    proc TraverseNodes { node } {
	set nodelist [list]
	foreach child [objget $node children] {
	    if { [objcall $child is_a s_sgnode] && \
		    [objget $child allow_quadtreeify] } {

		if { ![objget $child world_matrix_is_identity] || \
		      [objget $child class] != ":classes:s_sgnode" } {
		    lappend nodelist $child
		} else {
		    set nodelist [concat $nodelist [TraverseNodes $child]]
		}
	    }
	}
	return $nodelist
    }

    proc CleanUpSceneGraph { node } {
	foreach child [objget $node children] {
	    CleanUpSceneGraph $child
	}

	if { [objget $node class] == ":classes:s_sgnode" && \
             [objget $node num_children] == 0 && \
	     [objcall $node can_delete] } {
	    objdel $node
	}
    }
}
