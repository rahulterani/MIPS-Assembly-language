.data
        message1: .asciiz "Both numbers are equal."
        message2: .asciiz "Both numbers aren't equal."
        num1:     .float 3.45
        num2:     .float 3.451

.text
        main:
                lwc1 $f0, num1
                lwc1 $f2, num2
                
                c.eq.s $f0, $f2                 
                #compare, if these two are equal set cp1 = 1 else cp1 = 0
                
                bc1t exit

                li $v0, 4
                la $a0, message2
                syscall
                
                li $v0, 10
                syscall

        exit:
                li $v0, 4
                la $a0, message1
                syscall
                
                li $v0, 10
                syscall