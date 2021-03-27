proc Diag3 {a b} {
    set c 3 
    expr {sqrt( $a * $a + $b * $b )}
}

proc Factorial {x} {
    set i 1; 
    set product 1
    
    while { $i <= $x } {
        set product [expr { $product * $i } ]
        incr i
    } 
    return $product
}

proc Factorial2 {x} {
    if {$x <= 1} {
        return 1
    } else {
        return [expr {$x} * [Factorial2 [expr {$x - 1}]]]
    }
}

proc c {x} {
    return [expr {$x * [d 2]}]
}



proc d {x} {
    return $x
}

?puts [d 5]; puts [c 5];

