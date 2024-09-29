
set DIR [file dirname [file normalize [info script]]]
puts "Dir: $DIR"

add_files $DIR/rtl

#add_files -fileset [current_fileset -constrset] $DIR/constr
#set_property USED_IN {implementation} [get_files [glob $DIR/constr/*]]
#foreach FILE [glob $DIR/constr/*] {
#	set BASENAME [file rootname [file tail $FILE]]
#	set_property SCOPED_TO_REF $BASENAME [get_files $FILE]
#}
