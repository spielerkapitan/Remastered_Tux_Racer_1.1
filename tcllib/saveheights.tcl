
namespace eval TRSaveHeights {
    variable savedHeights

    proc Save { node } {
	variable savedHeights

	if { ![objcall $node is_a s_sgnode] } {
	    error "$node is not an s_sgnode"
	}

	if [info exists savedHeights] {
	    unset savedHeights
	}

	SaveAux $node 
    }

    proc SaveAux { node } {
	variable savedHeights

	foreach child [objget $node children] {
	    if { [objcall $child is_a s_sgnode] } {
		if { ![objget $child world_matrix_is_identity] || \
			[objget $child class] != ":classes:s_sgnode" } {
		    set savedHeights($child) \
			    [objget $child height_above_terrain]
		} else {
		    SaveAux $child
		}
	    }
	}
    }

    proc Restore { } {
	variable savedHeights

	foreach node [array names savedHeights] {
	    if { ![objexists $node] } {
		continue
	    }
	    if { ![objcall $node is_a s_sgnode] } {
		continue
	    }
	    objcall $node set_height_above_terrain $savedHeights($node)
	}
    }
}
