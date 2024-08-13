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
  LA t0, g
  LA t2, h
  ADDI t1, zero, 1
  LA a1, e
  ADDI a0, zero, 2
  SW t1, 0(t0)
  LA a2, f
  ADDI t0, zero, 4
  SW a0, 0(t2)
  ADDI a3, zero, 6
  SW t0, 0(a1)
  ADDI t0, zero, 10
  ADDI t1, zero, 7
  ADDI t2, zero, 6
  ADDI a0, zero, 5
  SW a3, 0(a2)
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI a1, t2, 10
  ADDIW a0, a0, 3
  BNE a1, zero, bb6
  # implict jump to bb2
bb2:   # loop depth 1
  # implict jump to bb3
bb3:   # loop depth 1
  SLTI a1, a0, 20
  ADDIW t2, t2, -2
  BNE a1, zero, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LA a1, e
  LA a2, g
  LA a3, h
  ADDW t2, t2, t0
  LW a1, 0(a1)
  ADDW t2, a0, t2
  ADDW t1, t2, t1
  LW t2, 0(a2)
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
  XORI a1, t1, 7
  ADDIW t2, t2, 1
  SLTIU a1, a1, 1
  BNE a1, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 2
  # implict jump to bb9
bb9:   # loop depth 2
  SLTI a1, t2, 10
  ADDIW t1, t1, 1
  BNE a1, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 2
  JAL zero, bb7
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 3
  SLTI a1, t0, 20
  ADDIW t1, t1, -1
  BNE a1, zero, bb18
  # implict jump to bb14
bb14:   # loop depth 3
  # implict jump to bb15
bb15:   # loop depth 3
  XORI a1, t1, 7
  SLTIU a1, a1, 1
  ADDIW t0, t0, -1
  BNE a1, zero, bb17
  # implict jump to bb16
bb16:   # loop depth 2
  JAL zero, bb9
bb17:   # loop depth 3
  JAL zero, bb13
bb18:   # loop depth 3
  # implict jump to bb19
bb19:   # loop depth 4
  LA a1, e
  ADDI a2, zero, 1
  ADDIW t0, t0, 3
  LW a1, 0(a1)
  BLT a2, a1, bb23
  # implict jump to bb20
bb20:   # loop depth 4
  LA a1, e
  LA a3, e
  SLTI a2, t0, 20
  LW a1, 0(a1)
  ADDIW a1, a1, 1
  SW a1, 0(a3)
  BNE a2, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 3
  JAL zero, bb15
bb22:   # loop depth 4
  JAL zero, bb19
bb23:   # loop depth 5
  LA a1, e
  LA a2, e
  LA a3, f
  ADDI a4, zero, 2
  LW a1, 0(a1)
  ADDIW a1, a1, -1
  SW a1, 0(a2)
  LW a2, 0(a3)
  BLT a4, a2, bb25
  # implict jump to bb24
bb24:   # loop depth 5
  LA a2, f
  LA a3, f
  ADDI a4, zero, 1
  LW a2, 0(a2)
  ADDIW a2, a2, 1
  SW a2, 0(a3)
  BLT a4, a1, bb23
  JAL zero, bb20
bb25:   # loop depth 6
  LA a2, f
  LA a3, f
  LA a4, g
  LW a2, 0(a2)
  ADDIW a2, a2, -2
  SW a2, 0(a3)
  LW a3, 0(a4)
  SLTI a3, a3, 3
  BNE a3, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 6
  LA a3, g
  LA a4, g
  ADDI a5, zero, 2
  LW a3, 0(a3)
  ADDIW a3, a3, -8
  SW a3, 0(a4)
  BLT a5, a2, bb25
  JAL zero, bb24
bb27:   # loop depth 7
  LA a3, g
  LA a4, g
  LA a5, h
  LW a3, 0(a3)
  ADDIW a3, a3, 10
  SW a3, 0(a4)
  LW a4, 0(a5)
  SLTI a4, a4, 10
  BNE a4, zero, bb29
  # implict jump to bb28
bb28:   # loop depth 7
  LA a5, h
  LA a6, h
  SLTI a4, a3, 3
  LW a3, 0(a5)
  ADDIW a3, a3, -1
  SW a3, 0(a6)
  BNE a4, zero, bb27
  JAL zero, bb26
bb29:   # loop depth 8
  LA a4, h
  LA a6, h
  LW a4, 0(a4)
  ADDIW a4, a4, 8
  SLTI a5, a4, 10
  SW a4, 0(a6)
  BNE a5, zero, bb29
  JAL zero, bb28
