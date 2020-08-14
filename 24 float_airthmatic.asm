.data
        num1: .float 3.14
        num2: .float 2.12

.text
        lwc1 $f2, num1
        lwc1 $f4, num2
        
        add.s $f12, $f4, $f2
        
        li $v0, 2
        syscall
        
#For double airthmatic operation declare as .double
#Then load them from memory to f registers
#After that using add.d instruction.
#NOTE: Always store floating results in f12 register.
#Then invoke the system call.

#For division use div.d instruction.
        
        
