.data
        message:   .asciiz "Enter the value of Pi: "
        zeroFloat: .float 0.0

.text
        lwc1 $f4, zeroFloat
        
        #ask user to enter the value of Pi
        li $v0, 4
        la $a0, message
        syscall
        
        #get user input
        li $v0, 6
        syscall
        
        #display the message
        li $v0, 2
        add.s $f12, $f0, $f4
        syscall
        
        
