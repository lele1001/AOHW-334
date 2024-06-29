create_project project_1 . -force -part xc7z020clg484-1

ipx::edit_ip_in_project -name edit ./component.xml

#set magic settings                                                                                                          
#### this one is to enable the fifo_generator instantiation                                                                  
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]

#ipx::open_ipxact_file ./component.xml
