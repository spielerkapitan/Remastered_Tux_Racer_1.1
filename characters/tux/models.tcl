objcreate {s_container} $shared_root:models

foreach model [glob -nocomplain *.obj.strip] {
    regexp {(.*)\.obj\.strip} $model dummy name
    objcreate {s_model_obj} $shared_root:models:$name \
	    -filename $model
}
