.data
        message: .asciiz "Enter the value of E: "    #E value is: 2.71

.text
        #display message on screen
        li $v0, 4
        la $a0, message
        syscall
        
        #get the double value from user
        li $v0, 7                                    #syscall nuber to get the double value from user
        syscall
        
        #display the user input
        li $v0, 3
        add.d $f12, $f0, $f2
        syscall
        
        