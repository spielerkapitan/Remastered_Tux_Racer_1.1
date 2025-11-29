
#
# Procedure to get course name, author, and par time from course.tcl file.
#
proc get_course_info { } {
    if [catch {open course.tcl r} fileId] {
	tux_warning "Couldn't open course.tcl in [pwd]"
	return {}
    }

    set name ""
    set author ""
    set par_time ""

    while {[gets $fileId line] >= 0} {
	regexp {tux_course_name *([^;]*)} $line match name
	regexp {tux_course_author *([^;]*)} $line match author
	regexp {tux_par_time *([^;]*)} $line match par_time

	if { $author != "" && $name != "" && $par_time != "" } {
	    break;
	}
    }

    if { $author == "" } {
	set author "Unknown"
    }

    if { $name == "" } {
	set name "Unknown"
    }

    if { $par_time == "" } {
        set par_time 120.0
    } 

    eval "set name $name"
    eval "set author $author"
    eval "set par_time $par_time"

    return [list $name $author $par_time];
}

set cwd [pwd]
tux_goto_data_dir

tux_load_texture noicon textures/noicon.png 0

cd courses

tux_load_texture no_preview common/nopreview.png 0
tux_bind_texture no_preview no_preview

#
# Bind preview textures if they exist
#
foreach cup [glob -nocomplain *] {
    if { $cup == "common" || $cup == "contrib" } {
	continue;
    }
    if [file isdirectory $cup] {
	foreach course [glob -nocomplain "$cup/*"] {
	    if [file exists "$course/preview.png"] {
		set course [string tolower $course] ;# Assumes all course dirs are lower case
		tux_load_texture $course "$course/preview.png" 0
		tux_bind_texture $course $course
	    }
	}
    }
}

set contrib_course_list {}
set open_course_list {}

lappend open_course_list [ list  \
	-course "beginner/beginner1" -name [ gs beginner1 ] \
	-description [ gs beginner1_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "beginner/beginner2" -name [ gs beginner2 ] \
	-description [ gs beginner2_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "beginner/beginner3" -name [ gs beginner3 ] \
	-description [ gs beginner3_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "arctic/arctic1" -name [ gs arctic1 ] \
	-description [ gs arctic1_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "arctic/arctic2" -name [ gs arctic2 ] \
	-description [ gs arctic2_desc ] \
	-par_time 150.0 ]
lappend open_course_list [ list  \
	-course "arctic/arctic3" -name [ gs arctic3 ] \
	-description [ gs arctic3_desc ] \
	-par_time 170.0 ]
lappend open_course_list [ list  \
	-course "forest/forest1" -name [ gs forest1 ] \
	-description [ gs forest1_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "forest/forest2" -name [ gs forest2 ] \
	-description [ gs forest2_desc ] \
	-par_time 200.0 ]
lappend open_course_list [ list  \
	-course "forest/forest3" -name [ gs forest3 ] \
	-description [ gs forest3_desc ] \
	-par_time 200.0 ]
lappend open_course_list [ list  \
	-course "mountain/mountain1" -name [ gs mountain1 ] \
	-description [ gs mountain1_desc ] \
	-par_time 300.0 ]
lappend open_course_list [ list  \
	-course "mountain/mountain2" -name [ gs mountain2 ] \
	-description [ gs mountain2_desc ] \
	-par_time 300.0 ]
lappend open_course_list [ list  \
	-course "mountain/mountain3" -name [ gs mountain3 ] \
	-description [ gs mountain3_desc ] \
	-par_time 300.0 ]
lappend open_course_list [ list  \
	-course "glacier/glacier1" -name [ gs glacier1] \
	-description [ gs glacier1_desc ] \
	-par_time 160.0 ]
lappend open_course_list [ list  \
	-course "glacier/glacier2" -name [ gs glacier2] \
	-description [ gs glacier2_desc ] \
	-par_time 165.0 ]
lappend open_course_list [ list  \
	-course "glacier/glacier3" -name [ gs glacier3] \
	-description [ gs glacier3_desc ] \
	-par_time 150.0 ]
lappend open_course_list [ list  \
	-course "swiss/swiss1" -name [ gs swiss1 ] \
	-description [ gs swiss1_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "swiss/swiss3" -name [ gs swiss3 ] \
	-description [ gs swiss3_desc ] \
	-par_time 100.0 ]
lappend open_course_list [ list  \
	-course "swiss/swiss2" -name [ gs swiss2 ] \
	-description [ gs swiss2_desc ] \
	-par_time 100.0 ]

tux_open_courses [concat $open_course_list $contrib_course_list ]

tux_load_texture herring_run_icon common/herringrunicon.png 0
tux_load_texture cup_icon common/cupicon.png 0

tux_events [ list \
	[ list \
	-name [ gs solo_challenge ] -icon herring_run_icon -cups [ list \
 	  [ list \
          -name [ gs beginner_cup ] -icon cup_icon -races [ list \
	    [ list \
            -course beginner/beginner1 \
		    -name [ gs beginner1 ] \
		    -description [ gs beginner1_desc ] \
		    -herring { 16 24 25 } \
		    -time { 75 58 53.5 } \
		    -par_time 75.0 \
		    -score { 0 0 0 } \
		    -mirrored no -conditions sunny \
		    -windy no -snowing no
            ] \
            [ list \
	    -course beginner/beginner2 \
	            -name [ gs beginner2 ] \
        	    -description [ gs beginner2_desc ] \
        	    -herring { 20 30 31 } \
        	    -time { 75 55 51.5 } \
		    -par_time 75.0 \
        	    -score { 0 0 0 } \
        	    -mirrored no -conditions cloudy \
        	    -windy no -snowing no
            ] \
	    [ list \
            -course beginner/beginner3 \
		    -name [ gs beginner3 ] \
		    -description [ gs beginner3_desc ] \
		    -herring { 18 23 24 } \
		    -time { 75 57 52 } \
		    -par_time 75.0 \
		    -score { 0 0 0 } \
		    -mirrored no -conditions sunny \
		    -windy no -snowing yes
            ] 
	  ] 	
          ] \
          [ list \
	  -name [ gs arctic_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course arctic/arctic1 \
	    -name [ gs arctic1 ] \
	    -description [ gs arctic1_desc ] \
	    -herring { 25 36 41 } \
	    -time { 140 120 116  } \
	    -par_time 140.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing yes
            ] \
            [ list \
	    -course arctic/arctic2 \
	    -name [ gs arctic2 ] \
	    -description [ gs arctic2_desc ] \
	    -herring { 35 56 68 } \
	    -time { 165 144 140  } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
            [ list \
	    -course arctic/arctic3 \
	    -name [ gs arctic3 ] \
	    -description [ gs arctic3_desc ] \
	    -herring { 35 50 52 } \
	    -time { 160 137 123  } \
	    -par_time 160.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] 
	  ] 	
	  ] \
	  [ list \
          -name [ gs forest_cup ] -icon cup_icon -races [ list \
	    [ list \
            -course forest/forest1 \
	    -name [ gs forest1 ] \
	    -description [ gs forest1_desc ] \
	    -herring { 25 36 40 } \
	    -time { 145 120 115 } \
	    -par_time 145.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course forest/forest2 \
	    -name [ gs forest2 ] \
	    -description [ gs forest2_desc ] \
	    -herring { 52 64 70 } \
	    -time { 165 140 125 } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing no
	    ] \
	    [ list \
	    -course forest/forest3 \
	    -name [ gs forest3 ] \
	    -description [ gs forest3_desc ] \
	    -herring { 18 28 32 } \
	    -time { 150 130 127 } \
	    -par_time 150.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ]
	  ] 
	  ] \
	  [ list \
          -name [ gs mountain_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course mountain/mountain1 \
	    -name [ gs mountain1 ] \
	    -description [ gs mountain1_desc ] \
	    -herring { 30 38 35 } \
	    -time { 190 164 145 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course mountain/mountain2 \
	    -name [ gs mountain2 ] \
	    -description [ gs mountain2_desc ] \
	    -herring { 40 56 60 } \
	    -time { 185 165 155 } \
	    -par_time 185.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions night \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course mountain/mountain3 \
	    -name [ gs mountain3 ] \
	    -description [ gs mountain3_desc ] \
	    -herring { 40 50 56 } \
	    -time { 210 192 187 } \
	    -par_time 210.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing no
            ]
	  ]
	  ] \
	  [ list \
          -name [ gs glacier_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course glacier/glacier1 \
	    -name [ gs glacier1 ] \
	    -description [ gs glacier1_desc ] \
	    -herring { 30 38 44 } \
	    -time { 160 139 135 } \
	    -par_time 160.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course glacier/glacier2 \
	    -name [ gs glacier2 ] \
	    -description [ gs glacier2_desc ] \
	    -herring { 28 33 35 } \
	    -time { 150 132 127 } \
	    -par_time 150.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course glacier/glacier3 \
	    -name [ gs glacier3 ] \
	    -description [ gs glacier3_desc ] \
	    -herring { 25 32 35 } \
	    -time { 155 136 132 } \
	    -par_time 155.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ]
	  ]
	  ] \
	  [ list \
          -name [ gs swiss_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course swiss/swiss1 \
	    -name [ gs swiss1 ] \
	    -description [ gs swiss1_desc ] \
	    -herring { 60 70 72 } \
	    -time { 190 168 162 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course swiss/swiss3 \
	    -name [ gs swiss3 ] \
	    -description [ gs swiss3_desc ] \
	    -herring { 28 40 44 } \
	    -time { 190 168 160 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course swiss/swiss2 \
	    -name [ gs swiss2 ] \
	    -description [ gs swiss2_desc ] \
	    -herring { 40 45 50 } \
	    -time { 165 150 146 } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] 
	  ]
	  ]
	]
      ] \
      [ list \
      -name [ gs race_vs_opponents ] -icon herring_run_icon -cups [ list \
 	  [ list \
          -name [ gs beginner_cup ] -icon cup_icon -races [ list \
	    [ list \
            -course beginner/beginner1 \
		    -name [ gs beginner1 ] \
		    -description [ gs beginner1_desc ] \
		    -herring { 0 0 0 } \
		    -time { 0 0 0 } \
		    -par_time 75.0 \
		    -score { 0 0 0 } \
		    -opponents { 1 1 1 } \
		    -mirrored no -conditions sunny \
		    -windy no -snowing no
            ] \
            [ list \
	    -course beginner/beginner2 \
	            -name [ gs beginner2 ] \
        	    -description [ gs beginner2_desc ] \
        	    -herring { 0 0 0 } \
        	    -time { 0 0 0 } \
		    -par_time 75.0 \
        	    -score { 0 0 0 } \
		    -opponents { 1 1 1 } \
        	    -mirrored no -conditions cloudy \
        	    -windy no -snowing no
            ] \
	    [ list \
            -course beginner/beginner3 \
		    -name [ gs beginner3 ] \
		    -description [ gs beginner3_desc ] \
		    -herring { 0 0 0 } \
		    -time { 0 0 0 } \
		    -par_time 75.0 \
		    -score { 0 0 0 } \
		    -opponents { 1 1 1 } \
		    -mirrored no -conditions sunny \
		    -windy no -snowing yes
            ] 
	  ] 	
          ] \
          [ list \
	  -name [ gs arctic_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course arctic/arctic1 \
	    -name [ gs arctic1 ] \
	    -description [ gs arctic1_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 120.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing yes
            ] \
            [ list \
	    -course arctic/arctic2 \
	    -name [ gs arctic2 ] \
	    -description [ gs arctic2_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
            [ list \
	    -course arctic/arctic3 \
	    -name [ gs arctic3 ] \
	    -description [ gs arctic3_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 160.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] 
	  ] 	
	  ] \
	  [ list \
          -name [ gs forest_cup ] -icon cup_icon -races [ list \
	    [ list \
            -course forest/forest1 \
	    -name [ gs forest1 ] \
	    -description [ gs forest1_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 145.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course forest/forest2 \
	    -name [ gs forest2 ] \
	    -description [ gs forest2_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing no
	    ] \
	    [ list \
	    -course forest/forest3 \
	    -name [ gs forest3 ] \
	    -description [ gs forest3_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 150.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ]
	  ] 
	  ] \
	  [ list \
          -name [ gs mountain_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course mountain/mountain1 \
	    -name [ gs mountain1 ] \
	    -description [ gs mountain1_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course mountain/mountain2 \
	    -name [ gs mountain2 ] \
	    -description [ gs mountain2_desc ] \
	    -herring { 0 0 0 } \
	    -time { 0 0 0 } \
	    -par_time 185.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions night \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course mountain/mountain3 \
	    -name [ gs mountain3 ] \
	    -description [ gs mountain3_desc ] \
	    -herring { 50 55 60 } \
	    -time { 255 210 195 } \
	    -par_time 210.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing no
            ]
	  ]
	  ] \
	  [ list \
          -name [ gs glacier_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course glacier/glacier1 \
	    -name [ gs glacier1 ] \
	    -description [ gs glacier1_desc ] \
	    -herring { 30 35 40 } \
	    -time { 180 165 150 } \
	    -par_time 160.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course glacier/glacier2 \
	    -name [ gs glacier2 ] \
	    -description [ gs glacier2_desc ] \
	    -herring { 20 25 30 } \
	    -time { 180 165 135 } \
	    -par_time 150.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course glacier/glacier3 \
	    -name [ gs glacier3 ] \
	    -description [ gs glacier3_desc ] \
	    -herring { 20 25 30 } \
	    -time { 180 150 135 } \
	    -par_time 155.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ]
	  ]
	  ] \
	  [ list \
          -name [ gs swiss_cup ] -icon cup_icon -races [ list \
	    [ list \
	    -course swiss/swiss1 \
	    -name [ gs swiss1 ] \
	    -description [ gs swiss1_desc ] \
	    -herring { 40 50 60 } \
	    -time { 240 200 180 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions sunny \
	    -windy no -snowing no
            ] \
	    [ list \
	    -course swiss/swiss3 \
	    -name [ gs swiss3 ] \
	    -description [ gs swiss3_desc ] \
	    -herring { 25 30 35 } \
	    -time { 180 165 150 } \
	    -par_time 190.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions cloudy \
	    -windy no -snowing yes
            ] \
	    [ list \
	    -course swiss/swiss2 \
	    -name [ gs swiss2 ] \
	    -description [ gs swiss2_desc ] \
	    -herring { 30 45 55 } \
	    -time { 200 180 165 } \
	    -par_time 165.0 \
	    -score { 0 0 0 } \
	    -opponents { 1 1 1 } \
	    -mirrored no -conditions night \
	    -windy no -snowing no
            ] 
	  ]
	  ]
     ]
   ]  
]
    

cd $cwd

