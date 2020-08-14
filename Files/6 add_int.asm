.data
        var1: .word 5                   #integer is 32bits
        var2: .word 10

.text
        lw $t0, var1                    #you can also use: lw $t0, var1($zero)
        lw $t1, var2
        
        add $t2, $t1, $t0               #$t2 = $t0, $t1
        
        li $v0, 1                               #syscall nuber for integers
        add $a0, $zero, $t2             #a0 = 0 + 15 
        #shortcut:      move $a0, $t2
        syscall                                 #invoke call
        