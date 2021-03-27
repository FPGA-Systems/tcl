proc find_clock {cell} {
    set clocks [get_clocks -of_objects $cell ]
    
    if { [llength $clocks] > 1} {
        return "Cell have more then one clock"
    }
    
    return [lindex $clocks 0]
}

proc ldelete { list value } {
    set ix [lsearch -exact $list $value]
    if {$ix >= 0} {
        return [lreplace $list $ix $ix]
    } else {
        return $list
    }
}

proc debug { cell ila_name } {
    
    save_constraints
    
    set pins [get_pins -of_objects $cell ]
    
    create_debug_core $ila_name ila
    
    connect_debug_port ${ila_name}/clk [get_nets -hierarchical  [find_clock $cell ]]
    
    #remove clocks from list
    list pin_without_clock $pins
    set i 0
    
    foreach pin $pins {
        set is_clk [get_nets -of_objects [$pin ] -filter "TYPE == GLOBAL_CLOCK"]
        if {[llength $is_clk ] != 0]} {
            ldelete $pin_without_clock $i
        }
    } 
    
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
            if  {$i > 0} { create_debug_port $ila_name probe }
            set_property port_width $width [get_debug_ports ${ila_name}/probe${probe_num}]        
            puts "probe${probe_num} width = $width"
            
            for {set j 0} {$j < $width } {incr j} {
                 set pin [ lindex $pins [ expr $i + $j ] ]
                 set net [get_nets -of_objects $pin ]
                 connect_debug_port ${ila_name}/probe${probe_num} [get_nets $net]
                 puts "connected to probe$probe_num  -> $net"
            } 
            incr probe_num
        }
        
    }

}
