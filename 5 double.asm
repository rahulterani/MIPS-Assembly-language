.data
        double:     .double 7.543           #it's stored in RAM
        zeroDouble: .double 0.0
        
        
.text
        #move double value in coprocessor 1
        ldc1 $f2, double                #double is stored in f2 and f3 [load double coprocessor1]
        ldc1 $f0, zeroDouble            #zeroDouble is stored in f0 and f1
        
        li    $v0, 3                    #syscall number to load double value
        add.d $f12, $f2, $f0            #f0 + f2 = f12 ans stored in f12
        syscall
