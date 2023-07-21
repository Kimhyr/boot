; same as `print` but using a calling convention.
GLOBAL  print
print:
        push     bp
        mov      bp, sp

        

        mov      sp, bp
        pop      bp
        ret
