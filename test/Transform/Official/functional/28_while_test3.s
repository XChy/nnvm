.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  LA a4, g
  ADDI t0, zero, 1
  LA a3, h
  ADDI t1, zero, 2
  SW t0, 0(a4)
  LA a1, e
  ADDI t0, zero, 4
  SW t1, 0(a3)
  LA a2, f
  ADDI a5, zero, 6
  SW t0, 0(a1)
  ADDI t0, zero, 10
  ADDI t1, zero, 7
  ADDI t2, zero, 6
  ADDI a0, zero, 5
  SW a5, 0(a2)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI a5, t2, 10
  ADDIW a0, a0, 3
  BNE a5, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI a5, a0, 20
  ADDIW t2, t2, -2
  BNE a5, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LW a1, 0(a1)
  ADDW t2, t2, t0
  ADDW t2, a0, t2
  ADDW t1, t2, t1
  LW t2, 0(a4)
  ADDW t0, a1, t0
  LW a0, 0(a3)
  SUBW t0, t0, t2
  ADDW t0, t0, a0
  SUBW a0, t1, t0
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 1
  JAL zero, bb1
bb6:   # loop depth 1
  # implict jump to bb7
bb7:   # loop depth 2
  XORI a5, t1, 7
  ADDIW t2, t2, 1
  BEQ a5, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 2
  SLTI a5, t2, 10
  ADDIW t1, t1, 1
  BNE a5, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 2
  JAL zero, bb7
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 3
  SLTI a5, t0, 20
  ADDIW t1, t1, -1
  BNE a5, zero, bb18
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  XORI a5, t1, 7
  ADDIW t0, t0, -1
  BEQ a5, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 2
  JAL zero, bb9
bb17:   # loop depth 3
  JAL zero, bb13
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 4
  LW a5, 0(a1)
  ADDI a6, zero, 1
  ADDIW t0, t0, 3
  BLT a6, a5, bb23
  # implict jump to bb20
bb20:   # loop depth 4
  LW a5, 0(a1)
  SLTI a6, t0, 20
  ADDIW a5, a5, 1
  SW a5, 0(a1)
  BNE a6, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 3
  JAL zero, bb15
bb22:   # loop depth 4
  JAL zero, bb19
bb23:   # loop depth 5
  LW a5, 0(a1)
  ADDI a7, zero, 2
  ADDIW a5, a5, -1
  SW a5, 0(a1)
  LW a6, 0(a2)
  BLT a7, a6, bb25
  # implict jump to bb24
bb24:   # loop depth 5
  LW a6, 0(a2)
  ADDI a7, zero, 1
  ADDIW a6, a6, 1
  SW a6, 0(a2)
  BLT a7, a5, bb23
  JAL zero, bb20
bb25:   # loop depth 6
  LW a6, 0(a2)
  ADDIW a6, a6, -2
  SW a6, 0(a2)
  LW a7, 0(a4)
  SLTI a7, a7, 3
  BNE a7, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 6
  LW a7, 0(a4)
  ADDI t3, zero, 2
  ADDIW a7, a7, -8
  SW a7, 0(a4)
  BLT t3, a6, bb25
  JAL zero, bb24
bb27:   # loop depth 7
  LW a7, 0(a4)
  ADDIW a7, a7, 10
  SW a7, 0(a4)
  LW t3, 0(a3)
  SLTI t3, t3, 10
  BNE t3, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 7
  LW t3, 0(a3)
  SLTI t4, a7, 3
  ADDIW a7, t3, -1
  SW a7, 0(a3)
  BNE t4, zero, bb27
  JAL zero, bb26
bb29:   # loop depth 8
  LW t3, 0(a3)
  ADDIW t3, t3, 8
  SLTI t4, t3, 10
  SW t3, 0(a3)
  BNE t4, zero, bb29
  JAL zero, bb28
