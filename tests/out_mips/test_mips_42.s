#	LIVERANGE: EDGE i(0) -> a(2)
#	LIVERANGE: EDGE i(0) -> b(6)
#	LIVERANGE: EDGE tmp$4(4) -> i(0)
#	LIVERANGE: EDGE tmp$4(4) -> a(2)
#	LIVERANGE: EDGE tmp$4(4) -> b(6)
#	LIVERANGE: EDGE tmp$3(1) -> i(0)
#	LIVERANGE: EDGE tmp$3(1) -> a(2)
#	LIVERANGE: EDGE tmp$3(1) -> b(6)
#	LIVERANGE: EDGE tmp$6(10) -> a(2)
#	LIVERANGE: EDGE tmp$6(10) -> b(6)
#	LIVERANGE: EDGE tmp$11(8) -> i(0)
#	LIVERANGE: EDGE tmp$11(8) -> a(2)
#	LIVERANGE: EDGE tmp$11(8) -> b(6)
#	LIVERANGE: EDGE tmp$9(5) -> i(0)
#	LIVERANGE: EDGE tmp$9(5) -> a(2)
#	LIVERANGE: EDGE tmp$9(5) -> b(6)
#	LIVERANGE: EDGE tmp$13(11) -> i(0)
#	NODE i(0) COST - 64.000000, DEGREES - 6
#	NODE tmp$3(1) COST - 10.000000, DEGREES - 3
#	NODE a(2) COST - 0.000000, DEGREES - 6
#	NODE tmp$2(3) COST - 10.000000, DEGREES - 0
#	NODE tmp$4(4) COST - 10.000000, DEGREES - 3
#	NODE tmp$9(5) COST - 10.000000, DEGREES - 3
#	NODE b(6) COST - 0.000000, DEGREES - 6
#	NODE tmp$5(7) COST - 20.000000, DEGREES - 0
#	NODE tmp$11(8) COST - 10.000000, DEGREES - 3
#	NODE tmp$10(9) COST - 10.000000, DEGREES - 0
#	NODE tmp$6(10) COST - 10.000000, DEGREES - 2
#	NODE tmp$13(11) COST - 1.000000, DEGREES - 0
#	NODE tmp$12(12) COST - 1.000000, DEGREES - 0
#	NODE tmp$13(11) IN REG $s1
#	NODE tmp$6(10) IN REG $s0
#	NODE tmp$11(8) IN REG $s1
#	NODE tmp$5(7) IN REG $s0
#	NODE tmp$9(5) IN REG $s1
#	NODE tmp$4(4) IN REG $s1
#	NODE tmp$3(1) IN REG $s1
#	NODE i(0) IN REG $s0
.text
# function copy
# formals: a (loc: 8); b (loc: 12); 
# locals: i (loc: -4); tmp$0 (loc: -8); tmp$1 (loc: -12); tmp$2 (loc: -16); tmp$3 (loc: -20); tmp$4 (loc: -21); tmp$5 (loc: -28); tmp$6 (loc: -32); tmp$7 (loc: -36); tmp$8 (loc: -40); tmp$9 (loc: -44); tmp$10 (loc: -48); tmp$11 (loc: -52); tmp$12 (loc: -56); tmp$13 (loc: -60); tmp$14 (loc: -64); 
# space for locals: 64 bytes
#
_copy:
# block 0 
# def = 1000000000000;
# use = 0000000000000;
# in  = 0010001000000;
# out = 1010001000000;
    # -LEADER- block (0)
    # livenow=0010001000000
    # enter copy
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -64($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (0)
    # livenow=0010001000000
    # move 0, i
    li $t0, 0
    move $s0, $t0 	# i

# block 1 
# def = 0101100000000;
# use = 1010000000000;
# in  = 1010001000000;
# out = 1010001000000;
    # -LEADER- block (1)
    # livenow=1010001000000
    # label 0
Lbl0:

    # block (1)
    # livenow=1010001000000
    # move i, tmp$3
    move $t0, $s0	# i
    move $s1, $t0 	# tmp$3

    # block (1)
    # livenow=1110001000000
    # add a, tmp$3, tmp$2
    lw $t0, 8($fp)	# a
    move $t1, $s1	# tmp$3
    add $t2, $t0, $t1
    sw $t2, -16($fp)	# tmp$2, -1

    # block (1)
    # livenow=1010001000000
    # move deref(tmp$2), tmp$4
    lw $t0, -16($fp)	# tmp$2
    lb $t0, 0($t0)	# deref(tmp$2)
    move $s1, $t0 	# tmp$4

    # block (1)
    # livenow=1010101000000
    # if_le tmp$4, 0, label 2
    move $t0, $s1	# tmp$4
    li $t1, 0
    ble $t0, $t1, Lbl2

# block 2 
# def = 0000010111100;
# use = 1010001000000;
# in  = 1010001000000;
# out = 1010001000000;
    # -LEADER- block (2)
    # livenow=1010001000000
    # label 1
Lbl1:

    # block (2)
    # livenow=1010001000000
    # move i, tmp$9
    move $t0, $s0	# i
    move $s1, $t0 	# tmp$9

    # block (2)
    # livenow=1010011000000
    # add b, tmp$9, tmp$8
    lw $t0, 12($fp)	# b
    move $t1, $s1	# tmp$9
    add $t2, $t0, $t1
    sw $t2, -40($fp)	# tmp$8, -1

    # block (2)
    # livenow=1010001000000
    # move i, tmp$11
    move $t0, $s0	# i
    move $s1, $t0 	# tmp$11

    # block (2)
    # livenow=1010001010000
    # add a, tmp$11, tmp$10
    lw $t0, 8($fp)	# a
    move $t1, $s1	# tmp$11
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$10, -1

    # block (2)
    # livenow=1010001000000
    # move deref(tmp$10), deref(tmp$8)
    lw $t0, -48($fp)	# tmp$10
    lb $t0, 0($t0)	# deref(tmp$10)
    lw $t1, -40($fp)	# tmp$8
    sb $t0, 0($t1)	# deref(tmp$8)

    # block (2)
    # livenow=1010001000000
    # add i, 1, tmp$6
    move $t0, $s0	# i
    li $t1, 1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$6

    # block (2)
    # livenow=0010001000100
    # move tmp$6, i
    move $t0, $s0	# tmp$6
    move $s0, $t0 	# i

    # block (2)
    # livenow=1010001000000
    # goto label 0
    j Lbl0

# block 3 
# def = 0000000000011;
# use = 1000001000000;
# in  = 1000001000000;
# out = 0000000000000;
    # -LEADER- block (3)
    # livenow=1000000000000
    # label 2
Lbl2:

    # block (3)
    # livenow=1000000000000
    # move i, tmp$13
    move $t0, $s0	# i
    move $s1, $t0 	# tmp$13

    # block (3)
    # livenow=1000000000010
    # add b, tmp$13, tmp$12
    lw $t0, 12($fp)	# b
    move $t1, $s1	# tmp$13
    add $t2, $t0, $t1
    sw $t2, -56($fp)	# tmp$12, -1

    # block (3)
    # livenow=1000000000000
    # move 0, deref(tmp$12)
    li $t0, 0
    lw $t1, -56($fp)	# tmp$12
    sb $t0, 0($t1)	# deref(tmp$12)

    # block (3)
    # livenow=1000000000000
    # leave copy
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=1000000000000
    # ret i
    move $v0, $s0	# i
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (3)
    # livenow=0000000000000
    # leave copy
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (3)
    # livenow=0000000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function copy

#	LIVERANGE: EDGE tmp$17(4) -> tmp$16(2)
#	LIVERANGE: EDGE tmp$25(10) -> tmp$23(6)
#	LIVERANGE: EDGE tmp$19(5) -> tmp$16(2)
#	LIVERANGE: EDGE sum(1) -> i(0)
#	LIVERANGE: EDGE sum(1) -> b(3)
#	LIVERANGE: EDGE i(0) -> b(3)
#	LIVERANGE: EDGE tmp$19(5) -> i(0)
#	LIVERANGE: EDGE tmp$19(5) -> sum(1)
#	LIVERANGE: EDGE tmp$19(5) -> b(3)
#	LIVERANGE: EDGE tmp$16(2) -> i(0)
#	LIVERANGE: EDGE tmp$16(2) -> sum(1)
#	LIVERANGE: EDGE tmp$16(2) -> b(3)
#	LIVERANGE: EDGE tmp$25(10) -> sum(1)
#	LIVERANGE: EDGE tmp$25(10) -> b(3)
#	LIVERANGE: EDGE tmp$21(9) -> i(0)
#	LIVERANGE: EDGE tmp$21(9) -> b(3)
#	LIVERANGE: EDGE tmp$20(8) -> i(0)
#	LIVERANGE: EDGE tmp$20(8) -> sum(1)
#	LIVERANGE: EDGE tmp$20(8) -> b(3)
#	LIVERANGE: EDGE tmp$23(6) -> i(0)
#	LIVERANGE: EDGE tmp$23(6) -> sum(1)
#	LIVERANGE: EDGE tmp$23(6) -> b(3)
#	NODE i(0) COST - 51.000000, DEGREES - 7
#	NODE sum(1) COST - 32.000000, DEGREES - 7
#	NODE tmp$16(2) COST - 1.000000, DEGREES - 5
#	NODE b(3) COST - 0.000000, DEGREES - 7
#	NODE tmp$17(4) COST - 10.000000, DEGREES - 1
#	NODE tmp$19(5) COST - 10.000000, DEGREES - 4
#	NODE tmp$23(6) COST - 10.000000, DEGREES - 3
#	NODE tmp$22(7) COST - 10.000000, DEGREES - 0
#	NODE tmp$20(8) COST - 20.000000, DEGREES - 3
#	NODE tmp$21(9) COST - 10.000000, DEGREES - 2
#	NODE tmp$25(10) COST - 10.000000, DEGREES - 3
#	NODE tmp$25(10) IN REG $s0
#	NODE tmp$21(9) IN REG $s1
#	NODE tmp$20(8) IN REG $s3
#	NODE tmp$23(6) IN REG $s2
#	NODE tmp$19(5) IN REG $s3
#	NODE tmp$16(2) IN REG $s2
#	NODE sum(1) IN REG $s1
#	NODE i(0) IN REG $s0
#	NODE tmp$25(10) IN REG $s0
#	NODE tmp$21(9) IN REG $s1
#	NODE tmp$20(8) IN REG $s3
#	NODE tmp$23(6) IN REG $s2
#	NODE tmp$19(5) IN REG $s3
#	NODE tmp$16(2) IN REG $s2
#	NODE sum(1) IN REG $s1
#	NODE i(0) IN REG $s0
.text
# function sum
# formals: b (loc: 8); 
# locals: sum (loc: -4); i (loc: -8); tmp$20 (loc: -12); tmp$21 (loc: -16); tmp$22 (loc: -20); tmp$23 (loc: -24); tmp$24 (loc: -25); tmp$15 (loc: -32); tmp$25 (loc: -36); tmp$16 (loc: -40); tmp$26 (loc: -44); tmp$17 (loc: -48); tmp$18 (loc: -52); tmp$19 (loc: -53); 
# space for locals: 56 bytes
#
_sum:
# block 4 
# def = 11000000000;
# use = 00000000000;
# in  = 00010000000;
# out = 11010000000;
    # -LEADER- block (4)
    # livenow=00010000000
    # enter sum
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -56($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (4)
    # livenow=00010000000
    # move 0, i
    li $t0, 0
    move $s0, $t0 	# i

    # block (4)
    # livenow=10010000000
    # move 0, sum
    li $t0, 0
    move $s1, $t0 	# sum

# block 5 
# def = 00101100000;
# use = 10010000000;
# in  = 11010000000;
# out = 11010000000;
    # -LEADER- block (5)
    # livenow=11010000000
    # label 3
Lbl3:

    # block (5)
    # livenow=11010000000
    # move i, tmp$18
    move $t0, $s0	# i
    sw $t0, -52($fp)	# tmp$18

    # block (5)
    # livenow=11110000000
    # add b, tmp$18, tmp$17
    lw $t0, 8($fp)	# b
    lw $t1, -52($fp)	# tmp$18
    add $t2, $t0, $t1
    sw $t2, -48($fp)	# tmp$17, -1

    # block (5)
    # livenow=11010000000
    # move deref(tmp$17), tmp$19
    lw $t0, -48($fp)	# tmp$17
    lb $t0, 0($t0)	# deref(tmp$17)
    move $s3, $t0 	# tmp$19

    # block (5)
    # livenow=11010100000
    # if_le tmp$19, 0, label 5
    move $t0, $s3	# tmp$19
    li $t1, 0
    ble $t0, $t1, Lbl5

# block 6 
# def = 00000011111;
# use = 11010000000;
# in  = 11010000000;
# out = 11010000000;
    # -LEADER- block (6)
    # livenow=11010000000
    # label 4
Lbl4:

    # block (6)
    # livenow=11010000000
    # move i, tmp$23
    move $t0, $s0	# i
    move $s2, $t0 	# tmp$23

    # block (6)
    # livenow=11010010000
    # add b, tmp$23, tmp$22
    lw $t0, 8($fp)	# b
    move $t1, $s2	# tmp$23
    add $t2, $t0, $t1
    sw $t2, -20($fp)	# tmp$22, -1

    # block (6)
    # livenow=11010000000
    # move deref(tmp$22), tmp$24
    lw $t0, -20($fp)	# tmp$22
    lb $t0, 0($t0)	# deref(tmp$22)
    sb $t0, -25($fp)	# tmp$24

    # block (6)
    # livenow=11010000100
    # add sum, tmp$24, tmp$21
    move $t0, $s1	# sum
    lb $t1, -25($fp)	# tmp$24
    add $t2, $t0, $t1
    move $s1, $t2	# tmp$21

    # block (6)
    # livenow=10010000010
    # move tmp$21, sum
    move $t0, $s1	# tmp$21
    move $s1, $t0 	# sum

    # block (6)
    # livenow=11010000000
    # add i, 1, tmp$25
    move $t0, $s0	# i
    li $t1, 1
    add $t2, $t0, $t1
    move $s0, $t2	# tmp$25

    # block (6)
    # livenow=01010000001
    # move tmp$25, i
    move $t0, $s0	# tmp$25
    move $s0, $t0 	# i

    # block (6)
    # livenow=11010000000
    # goto label 3
    j Lbl3

# block 7 
# def = 00000000000;
# use = 01000000000;
# in  = 01000000000;
# out = 00000000000;
    # -LEADER- block (7)
    # livenow=01000000000
    # label 5
Lbl5:

    # block (7)
    # livenow=01000000000
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (7)
    # livenow=01000000000
    # ret sum
    move $v0, $s1	# sum
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (7)
    # livenow=00000000000
    # leave sum
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (7)
    # livenow=00000000000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function sum

#	LIVERANGE: EDGE tmp$27(2) -> _Str0(1)
#	LIVERANGE -- ERR VAL(10) WAS NULL a
#	LIVERANGE -- ERR VAL(6) WAS NULL a
#	NODE x(0) COST - 2.000000, DEGREES - 0
#	NODE _Str0(1) COST - 1.000000, DEGREES - 1
#	NODE tmp$27(2) COST - 1.000000, DEGREES - 1
#	NODE y(3) COST - 5.000000, DEGREES - 1
#	NODE tmp$28(4) COST - 1.000000, DEGREES - 0
#	NODE tmp$28(4) IN REG $s1
#	NODE y(3) IN REG $s1
#	NODE tmp$27(2) IN REG $s0
#	NODE tmp$28(4) IN REG $s1
#	NODE y(3) IN REG $s1
#	NODE tmp$27(2) IN REG $s0
#	NODE tmp$28(4) IN REG $s1
#	NODE y(3) IN REG $s1
#	NODE tmp$27(2) IN REG $s0
.text
# function main
# formals: 
# locals: y (loc: -4); tmp$27 (loc: -8); tmp$28 (loc: -12); tmp$29 (loc: -16); 
# space for locals: 16 bytes
#
_main:
# block 8 
# def = 00001;
# use = 11110;
# in  = 11110;
# out = 00000;
    # -LEADER- block (8)
    # livenow=00110
    # enter main
    la $sp, -8($sp)    # allocate space for old $fp and $ra
    sw $fp, 4($sp)     # save old $fp
    sw $ra, 0($sp)     # save old $ra
    la $fp, 0($sp)     # $fp := $sp
    la $sp, -16($sp)   # allocate stack frame
    move $t4, $s0
    move $t5, $s1
    move $t6, $s2
    move $t7, $s3

    # block (8)
    # livenow=00110
    # param addr(x)
    la $t0, _x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=00110
    # param addr(_Str0)
    la $t0, __Str0
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=00110
    # call copy, 2
    jal _copy
    la $sp, 8($sp)

    # block (8)
    # livenow=00110
    # retrieve tmp$27
    move $s0, $v0	# tmp$27

    # block (8)
    # livenow=00110
    # param addr(x)
    la $t0, _x
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=00110
    # call sum, 1
    jal _sum
    la $sp, 4($sp)

    # block (8)
    # livenow=00110
    # retrieve tmp$29
    sw $v0, -16($fp)	# tmp$29, -1

    # block (8)
    # livenow=00110
    # add tmp$27, tmp$29, tmp$28
    move $t0, $s0	# tmp$27
    lw $t1, -16($fp)	# tmp$29
    add $t2, $t0, $t1
    move $s1, $t2	# tmp$28

    # block (8)
    # livenow=00001
    # param tmp$28
    move $t0, $s1	# tmp$28
    la $sp, -4($sp)
    sw $t0, 0($sp)

    # block (8)
    # livenow=00000
    # call println, 1
    jal _println
    la $sp, 4($sp)

    # block (8)
    # livenow=00000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (8)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

    # block (8)
    # livenow=00000
    # leave main
    move $s0, $t4 
    move $s1, $t5 
    move $s2, $t6 
    move $s3, $t7 

    # block (8)
    # livenow=00000
    # ret 
    la $sp, 0($fp)     # deallocate locals
    lw $ra, 0($sp)     # restore return address
    lw $fp, 4($sp)     # restore frame pointer
    la $sp, 8($sp)     # restore stack pointer
    jr $ra

# end function main


.data
.align 2
_x:  .space 15

__Str0: .asciiz "hello world"
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

