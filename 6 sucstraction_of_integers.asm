.data
        var1: .word 4                   #integer is 32bits
        var2: .word 20


.text
        lw $t0, var1
        lw $t1, var2
        
        sub $t2, $t1, $t0               #t2 = t1 - t0
        
        li $v0, 1
        move $a0, $t2                   #moves the value t2 -> a0
        syscall