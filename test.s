.text
main:   # Put your code here
        # Loads the value from memory in 8 bit offset, to register t1
        lw              t1, 8(x0)
        # Perform add i to value loaded from memory, adding 12 and XORing
        addi            t2, t1, 12
        # Storing the result in memory at offset 16
        sw              t2, 16(x0)
        add		t6, x0, x0
        beq		t6, x0, finish

deadend: beq	t6, x0, deadend        

finish:
        lw		t4, 0(x0)
        lw		t5, 4(x0)
        sw		t5, 0xFF(t4)
        beq		t6, x0, deadend


