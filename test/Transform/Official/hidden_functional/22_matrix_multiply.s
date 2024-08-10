.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



b:
.space 40000

a:
.space 40000
res:
.space 40000
.section .data
m2:
.word 0x00000000
n1:
.word 0x00000000
m1:
.word 0x00000000

n2:
.word 0x00000000


.section .text
main:   # loop depth 0
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s6, 32(sp)
  SD s7, 40(sp)
  SD s8, 48(sp)
  SD s9, 56(sp)
  SD s10, 64(sp)
  SD s11, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  LA s1, m1
  CALL getint
  ADD s0, a0, zero
  LA s2, n1
  SW s0, 0(s1)
  LA s1, m1
  ADDI s3, zero, 0
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 0(s1)
  BLT s3, s0, bb34
  # implict jump to bb1
bb1:   # loop depth 0
  LA s1, m2
  CALL getint
  ADD s0, a0, zero
  LA s2, n2
  SW s0, 0(s1)
  LA s1, m2
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  LW s0, 0(s1)
  BLT zero, s0, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, m1
  LW s10, 0(a0)
  BLT zero, s10, bb12
  # implict jump to bb3
bb3:   # loop depth 0
  BLT zero, s10, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s6, 32(sp)
  LD s7, 40(sp)
  LD s8, 48(sp)
  LD s9, 56(sp)
  LD s10, 64(sp)
  LD s11, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA a0, n2
  LW a0, 0(a0)
  BLT zero, a0, bb9
  # implict jump to bb7
bb7:   # loop depth 1
  LA s0, m1
  ADDI a0, zero, 10
  ADDIW s1, s1, 1
  CALL putch
  LW a0, 0(s0)
  BLT s1, a0, bb8
  JAL zero, bb4
bb8:   # loop depth 1
  JAL zero, bb6
bb9:   # loop depth 1
  ADDI a0, zero, 400
  LA s2, res
  MULW a0, s1, a0
  ADD s0, zero, zero
  ADD s2, s2, a0
  # implict jump to bb10
bb10:   # loop depth 2
  LA s3, n2
  SH2ADD a0, s0, s2
  ADDIW s0, s0, 1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s3)
  BLT s0, a0, bb11
  JAL zero, bb7
bb11:   # loop depth 2
  JAL zero, bb10
bb12:   # loop depth 0
  LA s0, n2
  ADD s4, zero, zero
  ADD a0, zero, zero
  LW s11, 0(s0)
  # implict jump to bb13
bb13:   # loop depth 1
  BLT zero, s11, bb17
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s10, bb16
  JAL zero, bb3
bb16:   # loop depth 1
  JAL zero, bb13
bb17:   # loop depth 1
  LA s0, n1
  LA s1, n2
  ADD s2, zero, zero
  LW s0, 0(s0)
  LW s1, 0(s1)
  # implict jump to bb18
bb18:   # loop depth 2
  BLT zero, s0, bb23
  # implict jump to bb19
bb19:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW s2, s2, 1
  BLT s2, s1, bb22
  # implict jump to bb21
bb21:   # loop depth 1
  JAL zero, bb15
bb22:   # loop depth 2
  JAL zero, bb18
bb23:   # loop depth 2
  ADDI s3, zero, 400
  LA s4, res
  MULW s3, a0, s3
  LA s7, a
  ADD s6, zero, zero
  ADD s5, s4, s3
  ADD s4, s7, s3
  SH2ADD s3, s2, s5
  LW s5, 0(s3)
  # implict jump to bb24
bb24:   # loop depth 3
  ADDI s7, zero, 400
  MULW s8, s6, s7
  LA s9, b
  SH2ADD s7, s6, s4
  LW s7, 0(s7)
  ADDIW s6, s6, 1
  ADD s8, s9, s8
  SH2ADD s8, s2, s8
  LW s8, 0(s8)
  MULW s7, s7, s8
  ADDW s5, s5, s7
  BLT s6, s0, bb26
  # implict jump to bb25
bb25:   # loop depth 2
  ADD s4, s6, zero
  SW s5, 0(s3)
  JAL zero, bb20
bb26:   # loop depth 3
  JAL zero, bb24
bb27:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA s0, n2
  LW s0, 0(s0)
  BLT zero, s0, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  LA s0, m2
  ADDIW s1, s1, 1
  LW s0, 0(s0)
  BLT s1, s0, bb30
  JAL zero, bb2
bb30:   # loop depth 1
  JAL zero, bb28
bb31:   # loop depth 1
  ADDI s0, zero, 400
  LA s3, b
  MULW s2, s1, s0
  ADD s0, zero, zero
  ADD s3, s3, s2
  # implict jump to bb32
bb32:   # loop depth 2
  CALL getint
  LA s5, n2
  ADD s2, a0, zero
  SH2ADD s4, s0, s3
  ADDIW s0, s0, 1
  SW s2, 0(s4)
  LW s2, 0(s5)
  BLT s0, s2, bb33
  JAL zero, bb29
bb33:   # loop depth 2
  JAL zero, bb32
bb34:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  LA s0, n1
  LW s0, 0(s0)
  BLT zero, s0, bb38
  # implict jump to bb36
bb36:   # loop depth 1
  LA s0, m1
  ADDIW s1, s1, 1
  LW s0, 0(s0)
  BLT s1, s0, bb37
  JAL zero, bb1
bb37:   # loop depth 1
  JAL zero, bb35
bb38:   # loop depth 1
  ADDI s0, zero, 400
  LA s3, a
  MULW s2, s1, s0
  ADD s0, zero, zero
  ADD s3, s3, s2
  # implict jump to bb39
bb39:   # loop depth 2
  CALL getint
  LA s5, n1
  ADD s2, a0, zero
  SH2ADD s4, s0, s3
  ADDIW s0, s0, 1
  SW s2, 0(s4)
  LW s2, 0(s5)
  BLT s0, s2, bb40
  JAL zero, bb36
bb40:   # loop depth 2
  JAL zero, bb39
