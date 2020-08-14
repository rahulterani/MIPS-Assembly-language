.data
        message: .asciiz "Enter your age: "
        reply:   .asciiz "Your age is: "

.text
        #ask user to enter the age
        li $v0, 4
        la $a0, message
        syscall
        
        #get user input
        li $v0, 5                                #syscall nuber to get the input(int) from user
        #the entered age by default stored in v0 register
        syscall
        
        #store the result to t0
        move $t0, $v0
        
        #display the message
        li $v0, 4
        la $a0, reply
        syscall
        
        #print the age
        li $v0, 1
        move $a0, $t0
        syscall
