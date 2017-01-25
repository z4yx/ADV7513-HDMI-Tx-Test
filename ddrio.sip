set_global_assignment -entity "ddrio" -library "lib_ddrio" -name IP_TOOL_NAME "altera_gpio_lite"
set_global_assignment -entity "ddrio" -library "lib_ddrio" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "ddrio" -library "lib_ddrio" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_ddrio" -name SPD_FILE [file join $::quartus(sip_path) "ddrio.spd"]

set_global_assignment -library "lib_ddrio" -name MISC_FILE [file join $::quartus(sip_path) "ddrio_sim/ddrio.v"]
set_global_assignment -library "lib_ddrio" -name MISC_FILE [file join $::quartus(sip_path) "ddrio_sim/altera_gpio_lite/altera_gpio_lite.sv"]
