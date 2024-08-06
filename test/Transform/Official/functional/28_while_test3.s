.global main
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, g
  ADDI t1, zero, 1
  SW t1, 0(t0)
  LA t0, h
  ADDI t1, zero, 2
  SW t1, 0(t0)
  LA t0, e
  ADDI t1, zero, 4
  SW t1, 0(t0)
  LA t0, f
  ADDI t1, zero, 6
  SW t1, 0(t0)
  ADDI a0, zero, 5
  ADDI t2, zero, 6
  ADDI t1, zero, 7
  ADDI t0, zero, 10
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, a0, 3
  SLTI a1, t2, 10
  BNE a1, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI a1, zero, 2
  SUBW t2, t2, a1
  SLTI a1, a0, 20
  BNE a1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADDW t2, t2, t0
  ADDW t2, a0, t2
  ADDW t1, t2, t1
  LA t2, e
  LW t2, 0(t2)
  ADDW t0, t2, t0
  LA t2, g
  LW t2, 0(t2)
  SUBW t0, t0, t2
  LA t2, h
  LW t2, 0(t2)
  ADDW t0, t0, t2
  SUBW a0, t1, t0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  ADDIW t2, t2, 1
  XORI a1, t1, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 2
  ADDIW t1, t1, 1
  SLTI a1, t2, 10
  BNE a1, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  JAL zero, bb3
bb11:   # loop depth 2
  JAL zero, bb7
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 3
  ADDI a1, zero, 1
  SUBW t1, t1, a1
  SLTI a1, t0, 20
  BNE a1, zero, bb18
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  ADDI a1, zero, 1
  SUBW t0, t0, a1
  XORI a1, t1, 7
  SLTIU a1, a1, 1
  BNE a1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 3
  JAL zero, bb9
bb17:   # loop depth 3
  JAL zero, bb13
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 4
  ADDIW t0, t0, 3
  LA a1, e
  LW a1, 0(a1)
  ADDI a2, zero, 1
  BLT a2, a1, bb23
  # implict jump to bb20
bb20:   # loop depth 4
  LA a1, e
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  LA a2, e
  SW a1, 0(a2)
  SLTI a1, t0, 20
  BNE a1, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 4
  JAL zero, bb15
bb22:   # loop depth 4
  JAL zero, bb19
bb23:   # loop depth 5
  LA a1, e
  LW a1, 0(a1)
  ADDI a2, zero, 1
  SUBW a1, a1, a2
  LA a2, e
  SW a1, 0(a2)
  LA a2, f
  LW a2, 0(a2)
  ADDI a3, zero, 2
  BLT a3, a2, bb25
  # implict jump to bb24
bb24:   # loop depth 5
  LA a2, f
  LW a2, 0(a2)
  ADDIW a2, a2, 1
  LA a3, f
  SW a2, 0(a3)
  ADDI a2, zero, 1
  BLT a2, a1, bb23
  JAL zero, bb20
bb25:   # loop depth 6
  LA a2, f
  LW a2, 0(a2)
  ADDI a3, zero, 2
  SUBW a2, a2, a3
  LA a3, f
  SW a2, 0(a3)
  LA a3, g
  LW a3, 0(a3)
  SLTI a3, a3, 3
  BNE a3, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 6
  LA a3, g
  LW a3, 0(a3)
  ADDI a4, zero, 8
  SUBW a3, a3, a4
  LA a4, g
  SW a3, 0(a4)
  ADDI a3, zero, 2
  BLT a3, a2, bb25
  JAL zero, bb24
bb27:   # loop depth 7
  LA a3, g
  LW a3, 0(a3)
  ADDIW a3, a3, 10
  LA a4, g
  SW a3, 0(a4)
  LA a4, h
  LW a4, 0(a4)
  SLTI a4, a4, 10
  BNE a4, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 7
  LA a4, h
  LW a4, 0(a4)
  ADDI a5, zero, 1
  SUBW a4, a4, a5
  LA a5, h
  SW a4, 0(a5)
  SLTI a3, a3, 3
  BNE a3, zero, bb27
  JAL zero, bb26
bb29:   # loop depth 8
  LA a4, h
  LW a4, 0(a4)
  ADDIW a4, a4, 8
  LA a5, h
  SW a4, 0(a5)
  SLTI a4, a4, 10
  BNE a4, zero, bb29
  JAL zero, bb28
