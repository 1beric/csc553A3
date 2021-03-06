#	LIVERANGE: EDGE i(0) -> n(1)
#	LIVERANGE: EDGE i(0) -> x(3)
#	LIVERANGE: EDGE i(0) -> x(3)
#	LIVERANGE: EDGE tmp$1(5) -> n(1)
#	LIVERANGE: EDGE tmp$1(5) -> x(3)
#	LIVERANGE: EDGE tmp$4(2) -> i(0)
#	LIVERANGE: EDGE tmp$4(2) -> n(1)
#	LIVERANGE: EDGE tmp$4(2) -> x(3)
#	NODE i(0) COST - 71.000000, DEGREES - 4
#	NODE n(1) COST - 21.000000, DEGREES - 3
#	NODE tmp$4(2) COST - 10.000000, DEGREES - 2
#	NODE x(3) COST - 0.000000, DEGREES - 3
#	NODE tmp$3(4) COST - 10.000000, DEGREES - 0
#	NODE tmp$1(5) COST - 10.000000, DEGREES - 2
#	NODE tmp$1(5) IN REG $s0
#	NODE tmp$4(2) IN REG $s1
#	NODE i(0) IN REG $s0
.text
# function init
# formals: x (loc: 8); n (loc: 12); 
# locals: i (loc: -4); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -24); 
# space for locals: 24 bytes
#
_init:
# block 0 
# def = 100000;
# use = 000000;
# in  = 010100;
# out = 110100;
    # -LEADER- block (0)
    # livenow=010100
    # enter init
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -24($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=010100
    # move 0, i
    li $t0, 0
    move $s0, $t0 	# i

# block 1 
# def = 000000;
# use = 110000;
# in  = 110100;
# out = 110100;
    # -LEADER- block (1)
    # livenow=110100
    # label 0
Lbl0:

    # block (1)
    # livenow=110100
    # if_ge i, n, label 2
    move $t0, $s0	# i
    lw $t1, 12($fp)	# n
    bge $t0, $t1, Lbl2

# block 2 
# def = 001011;
# use = 100100;
# in  = 110100;
# out = 110100;
    # -LEADER- block (2)
    # livenow=110100
    # label 1
Lbl1:

    # block (2)
    # livenow=110100
    # mul i, 4, tmp$4
    move $t0, $s0	# i
    li $t1, 4
    mul $t2, $t0, $t1
    move $s1, $t2	# tmp$4

    # block (2)
    # livenow=111100
    # add x, tmp$4, tmp$3
    lw $t0, 8($fp)	# x
    move $t1, $s1	# tmp$4
    add $t2, $t0, $t1
    sw $t2, -20($fp)	# tmp$3, -1

    # block (2)
    # livenow=110100
    # move i, deref(tmp$3)
    move $t0, $s0	# i
    lw $t1, -20($fp)	# tmp$3
    sw $t0, 0($t1)	# deref(tmp$3)

    # block (2)
    # livenow=110100
    # add i, 1, tmp$1
    move $t0, $s0	# i
    li $t1, 1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$1

    # block (2)
    # livenow=010101
    # move tmp$1, i
    move $t0, $s0	# tmp$1
    move $s0, $t0 	# i

    # block (2)
    # livenow=110100
    # goto label 0
    j Lbl0

# block 3 
# def = 000000;
# use = 010000;
# in  = 010000;
# out = 000000;
    # -LEADER- block (3)
    # livenow=010000
    # label 2
Lbl2:

    # block (3)
    # livenow=010000
    # leave init
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=010000
    # ret n
    lw $v0, 12($fp)	# n
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=000000
    # leave init
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function init

#	LIVERANGE: EDGE n(1) -> c(0)
#	LIVERANGE: EDGE n(1) -> x(4)
#	LIVERANGE: EDGE tmp$6(2) -> c(0)
#	LIVERANGE: EDGE tmp$6(2) -> x(4)
#	LIVERANGE: EDGE c(0) -> x(4)
#	LIVERANGE: EDGE tmp$13(7) -> c(0)
#	LIVERANGE: EDGE tmp$13(7) -> x(4)
#	LIVERANGE: EDGE tmp$9(6) -> n(1)
#	LIVERANGE: EDGE tmp$9(6) -> x(4)
#	LIVERANGE: EDGE tmp$11(3) -> c(0)
#	LIVERANGE: EDGE tmp$11(3) -> n(1)
#	LIVERANGE: EDGE tmp$11(3) -> x(4)
#	NODE c(0) COST - 32.000000, DEGREES - 5
#	NODE n(1) COST - 63.000000, DEGREES - 4
#	NODE tmp$6(2) COST - 1.000000, DEGREES - 2
#	NODE tmp$11(3) COST - 10.000000, DEGREES - 2
#	NODE x(4) COST - 0.000000, DEGREES - 5
#	NODE tmp$8(5) COST - 20.000000, DEGREES - 0
#	NODE tmp$9(6) COST - 10.000000, DEGREES - 2
#	NODE tmp$13(7) COST - 10.000000, DEGREES - 2
#	NODE tmp$8(5) IN REG $s0
#	NODE tmp$11(3) IN REG $s2
#	NODE tmp$6(2) IN REG $s1
#	NODE c(0) IN REG $s0
#	NODE tmp$13(7) IN REG $s1
#	NODE tmp$9(6) IN REG $s0
#	NODE tmp$8(5) IN REG $s0
#	NODE tmp$11(3) IN REG $s2
#	NODE tmp$6(2) IN REG $s1
#	NODE c(0) IN REG $s0
#	NODE c(0) IN REG $s0
.text
# function count
# formals: x (loc: 8); n (loc: 12); 
# locals: c (loc: -4); tmp$5 (loc: -8); tmp$6 (loc: -12); tmp$7 (loc: -16); tmp$8 (loc: -20); tmp$9 (loc: -24); tmp$10 (loc: -28); tmp$11 (loc: -32); tmp$12 (loc: -36); tmp$13 (loc: -40); tmp$14 (loc: -44); 
# space for locals: 44 bytes
#
_count:
# block 4 
# def = 10100000;
# use = 01000000;
# in  = 01001000;
# out = 11001000;
    # -LEADER- block (4)
    # livenow=01001000
    # enter count
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -44($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (4)
    # livenow=01001000
    # move 0, c
    li $t0, 0
    move $s0, $t0 	# c

    # block (4)
    # livenow=11001000
    # sub n, 1, tmp$6
    lw $t0, 12($fp)	# n
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$6

    # block (4)
    # livenow=10101000
    # move tmp$6, n
    move $t0, $s1	# tmp$6
    sw $t0, 12($fp)	# n

# block 5 
# def = 00000000;
# use = 01000000;
# in  = 11001000;
# out = 11001000;
    # -LEADER- block (5)
    # livenow=11001000
    # label 3
Lbl3:

    # block (5)
    # livenow=11001000
    # if_lt n, 0, label 5
    lw $t0, 12($fp)	# n
    li $t1, 0
    blt $t0, $t1, Lbl5

# block 6 
# def = 00010111;
# use = 11001000;
# in  = 11001000;
# out = 11001000;
    # -LEADER- block (6)
    # livenow=11001000
    # label 4
Lbl4:

    # block (6)
    # livenow=11001000
    # mul n, 4, tmp$11
    lw $t0, 12($fp)	# n
    li $t1, 4
    mul $t2, $t0, $t1
    move $s2, $t2	# tmp$11

    # block (6)
    # livenow=11011000
    # add x, tmp$11, tmp$10
    lw $t0, 8($fp)	# x
    move $t1, $s2	# tmp$11
    add $t2, $t0, $t1
    sw $t2, -28($fp)	# tmp$10, -1

    # block (6)
    # livenow=11001000
    # add c, deref(tmp$10), tmp$9
    move $t0, $s0	# c
    lw $t1, -28($fp)	# tmp$10
    lw $t1, 0($t1)	# deref(tmp$10)
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$9

    # block (6)
    # livenow=01001010
    # move tmp$9, c
    move $t0, $s0	# tmp$9
    move $s0, $t0 	# c

    # block (6)
    # livenow=11001000
    # sub n, 1, tmp$13
    lw $t0, 12($fp)	# n
    li $t1, 1
    sub $t2, $t0, $t1
    move $s1, $t2	# tmp$13

    # block (6)
    # livenow=10001001
    # move tmp$13, n
    move $t0, $s1	# tmp$13
    sw $t0, 12($fp)	# n

    # block (6)
    # livenow=11001000
    # goto label 3
    j Lbl3

# block 7 
# def = 00000000;
# use = 10000000;
# in  = 10000000;
# out = 00000000;
    # -LEADER- block (7)
    # livenow=10000000
    # label 5
Lbl5:

    # block (7)
    # livenow=10000000
    # leave count
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (7)
    # livenow=10000000
    # ret c
    move $v0, $s0	# c
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (7)
    # livenow=00000000
    # leave count
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (7)
    # livenow=00000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function count

#	LIVERANGE -- ERR VAL(6) WAS NULL a
#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE tmp$16(1) COST - 1.000000, DEGREES - 0
#	NODE tmp$19(2) COST - 2.000000, DEGREES - 0
#	NODE z(3) COST - 5.000000, DEGREES - 0
#	NODE tmp$18(4) IN REG $s3
#	NODE z(3) IN REG $s2
#	NODE tmp$19(2) IN REG $s1
#	NODE tmp$16(1) IN REG $s0
#	NODE tmp$18(4) IN REG $s3
#	NODE z(3) IN REG $s2
#	NODE tmp$19(2) IN REG $s1
#	NODE tmp$16(1) IN REG $s0
#	NODE z(3) IN REG $s2
#	NODE tmp$19(2) IN REG $s1
#	NODE tmp$16(1) IN REG $s0
.text
# function main
# formals: 
# locals: z (loc: -4); tmp$15 (loc: -8); tmp$16 (loc: -12); tmp$17 (loc: -16); tmp$18 (loc: -20); tmp$19 (loc: -24); 
# space for locals: 24 bytes
#
_main:
# block 8 
# def = 0001;
# use = 1110;
# in  = 1110;
# out = 0000;
    # -LEADER- block (8)
    # livenow=0110
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -24($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (8)
    # livenow=0110
    # param 10
    li $t0, 10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0110
    # param addr(x)
    la $t0, _x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0110
    # call init, 2
    jal _init
    la $sp, 8($sp)

    # block (8)
    # livenow=0110
    # retrieve tmp$16
    move $s0, $v0	# tmp$16

    # block (8)
    # livenow=0110
    # param 10
    li $t0, 10
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0110
    # param addr(x)
    la $t0, _x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0110
    # call count, 2
    jal _count
    la $sp, 8($sp)

    # block (8)
    # livenow=0110
    # retrieve tmp$19
    move $s1, $v0	# tmp$19

    # block (8)
    # livenow=0110
    # add tmp$16, tmp$19, tmp$17
    move $t0, $s0	# tmp$16
    move $t1, $s1	# tmp$19
    add $t2, $t0, $t1
    sw $t2, -16($fp)	# tmp$17, -1

    # block (8)
    # livenow=0001
    # param tmp$17
    lw $t0, -16($fp)	# tmp$17
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=0000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (8)
    # livenow=0000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (8)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (8)
    # livenow=0000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (8)
    # livenow=0000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
.align 2
_x:  .space 40

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

