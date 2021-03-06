#	NODE tmp$0(0) COST - 1.000000, DEGREES - 0
#	NODE y(1) COST - 3.000000, DEGREES - 0
#	NODE tmp$0(0) IN REG $s0
.text
# function main
# formals: 
# locals: x (loc: -4); tmp$0 (loc: -8); 
# space for locals: 8 bytes
#
_main:
# block 0 
# def = 11;
# use = 00;
# in  = 00;
# out = 00;
    # -LEADER- block (0)
    # livenow=00
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -8($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=00
    # move 81, tmp$0
    li $t0, 81
    move $s0, $t0 	# tmp$0

    # block (0)
    # livenow=10
    # move tmp$0, y
    move $t0, $s0	# tmp$0
    sb $t0, _y

    # block (0)
    # livenow=00
    # param y
    lb $t0, _y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00
    # param y
    lb $t0, _y
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (0)
    # livenow=00
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (0)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (0)
    # livenow=00
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (0)
    # livenow=00
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
_y:  .space 1

.align 2
.data
__nl: .asciiz "\n"
.align 2
.text
# println: print out an integer followed by a newline
 _println:
    li $v0, 1
    lw $a0, 0($sp)
    syscall
    li $v0, 4
    la $a0, __nl
    syscall
    jr $ra

# jump to _main, where user code starts, at start of execution
main:
    j _main

