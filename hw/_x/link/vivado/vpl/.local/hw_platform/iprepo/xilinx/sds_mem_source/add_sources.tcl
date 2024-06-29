
set DIR [file dirname [file normalize [info script]]]
puts "Dir: $DIR"

add_files $DIR/rtl
add_files -fileset [current_fileset -constrset] $DIR/constr

set_property USED_IN {implementation} [get_files [glob $DIR/constr/*]]
set_property PROCESSING_ORDER EARLY [get_files [glob $DIR/constr/*]]


