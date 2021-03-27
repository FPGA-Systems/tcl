
save_constraints

set pins [get_pins -of_objects [get_selected_objects ]]

set clocks [get_clocks -of_objects [get_selected_objects]]
#connect_debug_port u_ila_0/clk [get_nets [list resp_gen_i0/CLK ]]

create_debug_core u_ila_0 ila

set k 0

set width 1
set probe_num 0

for {set i 0} {$i  < [expr [llength $pins]]} {incr i $width } {
    
    set pin [ lindex $pins $i ]
    set width 1
    
    if {[get_property IS_CONNECTED $pin ] == 1} {
        
        set net [get_nets -of_objects $pin ]
    
        if {[get_property BUS_WIDTH $net ] eq ""} {
            #not a bus - single width net
            puts "width of $net = 1"
            set width 1
        } else {
           #bus
           set width [ get_property BUS_WIDTH $net ]
           puts "width of $net = $width"
        }
        if  {$i > 0} { create_debug_port u_ila_0 probe }
        set_property port_width $width [get_debug_ports u_ila_0/probe${probe_num}]        
        puts "probe${probe_num} width = $width"
        
        for {set j 0} {$j < $width } {incr j} {
             set pin [ lindex $pins [ expr $i + $j ] ]
             set net [get_nets -of_objects $pin ]
             connect_debug_port u_ila_0/probe${probe_num} [get_nets $net]
             puts "connected to probe$probe_num  -> $net"
        } 
        incr probe_num
    }
    
}

