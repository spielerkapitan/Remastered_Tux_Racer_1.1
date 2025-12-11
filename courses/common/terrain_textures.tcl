# ----- Begin output of [objserialize :textures:terrain]
if { ![objexists :textures:terrain] } { 
    objnew {:classes:s_container} {:textures} {terrain}
}

if { ![objexists :textures:terrain:snowa] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowa}
}
objtryset {:textures:terrain:snowa} \
	{-filename} {buttstart.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowb] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowb}
}
objtryset {:textures:terrain:snowb} \
	{-filename} {buttprint.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowc] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowc}
}
objtryset {:textures:terrain:snowc} \
	{-filename} {buttstop.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:muda] } { 
    objnew {:classes:s_texture} {:textures:terrain} {muda}
}
objtryset {:textures:terrain:muda} \
	{-filename} {mudstart.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:mudb] } { 
    objnew {:classes:s_texture} {:textures:terrain} {mudb}
}
objtryset {:textures:terrain:mudb} \
	{-filename} {mudprint.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:mudc] } { 
    objnew {:classes:s_texture} {:textures:terrain} {mudc}
}
objtryset {:textures:terrain:mudc} \
	{-filename} {mudstop.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition0] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition0}
}
objtryset {:textures:terrain:transition0} \
	{-filename} {transition0.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition1}
}
objtryset {:textures:terrain:transition1} \
	{-filename} {transition1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition2}
}
objtryset {:textures:terrain:transition2} \
	{-filename} {transition2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition3] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition3}
}
objtryset {:textures:terrain:transition3} \
	{-filename} {transition3.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_hard0] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_hard0}
}
objtryset {:textures:terrain:transition_hard0} \
	{-filename} {transition_hard0.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_hard1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_hard1}
}
objtryset {:textures:terrain:transition_hard1} \
	{-filename} {transition_hard1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_hard2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_hard2}
}
objtryset {:textures:terrain:transition_hard2} \
	{-filename} {transition_hard2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_hard3] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_hard3}
}
objtryset {:textures:terrain:transition_hard3} \
	{-filename} {transition_hard3.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_snow0] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_snow0}
}
objtryset {:textures:terrain:transition_snow0} \
	{-filename} {transition_snow0.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_snow1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_snow1}
}
objtryset {:textures:terrain:transition_snow1} \
	{-filename} {transition_snow1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_snow2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_snow2}
}
objtryset {:textures:terrain:transition_snow2} \
	{-filename} {transition_snow2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_snow3] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_snow3}
}
objtryset {:textures:terrain:transition_snow3} \
	{-filename} {transition_snow3.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_soft0] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_soft0}
}
objtryset {:textures:terrain:transition_soft0} \
	{-filename} {transition_soft0.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_soft1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_soft1}
}
objtryset {:textures:terrain:transition_soft1} \
	{-filename} {transition_soft1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_soft2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_soft2}
}
objtryset {:textures:terrain:transition_soft2} \
	{-filename} {transition_soft2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:transition_soft3] } { 
    objnew {:classes:s_texture} {:textures:terrain} {transition_soft3}
}
objtryset {:textures:terrain:transition_soft3} \
	{-filename} {transition_soft3.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snow] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snow}
}
objtryset {:textures:terrain:snow} \
	{-filename} {snow.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:ice] } { 
    objnew {:classes:s_texture} {:textures:terrain} {ice}
}
objtryset {:textures:terrain:ice} \
	{-filename} {ice.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:rock] } { 
    objnew {:classes:s_texture} {:textures:terrain} {rock}
}
objtryset {:textures:terrain:rock} \
	{-filename} {rock.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:mud] } { 
    objnew {:classes:s_texture} {:textures:terrain} {mud}
}
objtryset {:textures:terrain:mud} \
	{-filename} {mud.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:pebblesnow] } { 
    objnew {:classes:s_texture} {:textures:terrain} {pebblesnow}
}
objtryset {:textures:terrain:pebblesnow} \
	{-filename} {pebblesnow.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:pebbles2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {pebbles2}
}
objtryset {:textures:terrain:pebbles2} \
	{-filename} {pebbles2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:pavement1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {pavement1}
}
objtryset {:textures:terrain:pavement1} \
	{-filename} {pavement1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:icyroad] } { 
    objnew {:classes:s_texture} {:textures:terrain} {icyroad}
}
objtryset {:textures:terrain:icyroad} \
	{-filename} {icyroad.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:icycobblestone] } { 
    objnew {:classes:s_texture} {:textures:terrain} {icycobblestone}
}
objtryset {:textures:terrain:icycobblestone} \
	{-filename} {icycobblestone.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:ice2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {ice2}
}
objtryset {:textures:terrain:ice2} \
	{-filename} {ice2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:grass] } { 
    objnew {:classes:s_texture} {:textures:terrain} {grass}
}
objtryset {:textures:terrain:grass} \
	{-filename} {grass.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:forestfloor2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {forestfloor2}
}
objtryset {:textures:terrain:forestfloor2} \
	{-filename} {forestfloor2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:driftsnow] } { 
    objnew {:classes:s_texture} {:textures:terrain} {driftsnow}
}
objtryset {:textures:terrain:driftsnow} \
	{-filename} {driftsnow.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:dirt] } { 
    objnew {:classes:s_texture} {:textures:terrain} {dirt}
}
objtryset {:textures:terrain:dirt} \
	{-filename} {dirt.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:deepice] } { 
    objnew {:classes:s_texture} {:textures:terrain} {deepice}
}
objtryset {:textures:terrain:deepice} \
	{-filename} {deepice.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:forestfloor] } { 
    objnew {:classes:s_texture} {:textures:terrain} {forestfloor}
}
objtryset {:textures:terrain:forestfloor} \
	{-filename} {forestfloor.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:patternsnow] } { 
    objnew {:classes:s_texture} {:textures:terrain} {patternsnow}
}
objtryset {:textures:terrain:patternsnow} \
	{-filename} {patternsnow.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:thinsnow] } { 
    objnew {:classes:s_texture} {:textures:terrain} {thinsnow}
}
objtryset {:textures:terrain:thinsnow} \
	{-filename} {thinsnow.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowprints] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowprints}
}
objtryset {:textures:terrain:snowprints} \
	{-filename} {snowprints.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:slate1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {slate1}
}
objtryset {:textures:terrain:slate1} \
	{-filename} {slate1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:slate2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {slate2}
}
objtryset {:textures:terrain:slate2} \
	{-filename} {slate2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snow2streak1] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snow2streak1}
}
objtryset {:textures:terrain:snow2streak1} \
	{-filename} {snow2streak1.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snow2streak2] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snow2streak2}
}
objtryset {:textures:terrain:snow2streak2} \
	{-filename} {snow2streak2.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowruts] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowruts}
}
objtryset {:textures:terrain:snowruts} \
	{-filename} {snow2straight.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:redrock] } { 
    objnew {:classes:s_texture} {:textures:terrain} {redrock}
}
objtryset {:textures:terrain:redrock} \
	{-filename} {redrock.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:sawdust] } { 
    objnew {:classes:s_texture} {:textures:terrain} {sawdust}
}
objtryset {:textures:terrain:sawdust} \
	{-filename} {sawdust.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowy_path] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowy_path}
}
objtryset {:textures:terrain:snowy_path} \
	{-filename} {snowy_path.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowydeepice] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowydeepice}
}
objtryset {:textures:terrain:snowydeepice} \
	{-filename} {snowydeepice.png} \
	{-repeatable} {1}
	
if { ![objexists :textures:terrain:snowyice] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowyice}
}
objtryset {:textures:terrain:snowyice} \
	{-filename} {snowyice.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowygrass] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowygrass}
}
objtryset {:textures:terrain:snowygrass} \
	{-filename} {snowygrass.png} \
	{-repeatable} {1}
	
if { ![objexists :textures:terrain:snowydeadgrass] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowydeadgrass}
}
objtryset {:textures:terrain:snowydeadgrass} \
	{-filename} {snowydeadgrass.png} \
	{-repeatable} {1}

if { ![objexists :textures:terrain:snowyslate] } { 
    objnew {:classes:s_texture} {:textures:terrain} {snowyslate}
}
objtryset {:textures:terrain:snowyslate} \
	{-filename} {snowy_slate.png} \
	{-repeatable} {1}

# ----- End output of [objserialize :textures:terrain]
