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
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  LA s0, m1
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb34
  # implict jump to bb1
bb1:   # loop depth 0
  CALL getint
  ADD s0, a0, zero
  LA s1, m2
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n2
  SW s0, 0(s1)
  LA s0, m2
  LW s0, 0(s0)
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
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s1, 1
  LA a0, m1
  LW a0, 0(a0)
  BLT s1, a0, bb8
  JAL zero, bb4
bb8:   # loop depth 0
  JAL zero, bb6
bb9:   # loop depth 1
  ADDI a0, zero, 400
  MULW a0, s1, a0
  LA s0, res
  ADD s2, s0, a0
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 2
  SLLIW a0, s0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s0, 1
  LA a0, n2
  LW a0, 0(a0)
  BLT s0, a0, bb11
  JAL zero, bb7
bb11:   # loop depth 0
  JAL zero, bb10
bb12:   # loop depth 0
  LA a0, n2
  LW s11, 0(a0)
  ADD a0, zero, zero
  ADD s5, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BLT zero, s11, bb17
  # implict jump to bb14
bb14:   # loop depth 0
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s10, bb16
  JAL zero, bb3
bb16:   # loop depth 0
  JAL zero, bb13
bb17:   # loop depth 1
  LA s0, n1
  LW s0, 0(s0)
  ADD s1, zero, zero
  # implict jump to bb18
bb18:   # loop depth 2
  BLT zero, s0, bb23
  # implict jump to bb19
bb19:   # loop depth 0
  ADD s5, zero, zero
  # implict jump to bb20
bb20:   # loop depth 2
  ADDIW s1, s1, 1
  LA s2, n2
  LW s2, 0(s2)
  BLT s1, s2, bb22
  # implict jump to bb21
bb21:   # loop depth 1433536448
  JAL zero, bb15
bb22:   # loop depth 1433534528
  JAL zero, bb18
bb23:   # loop depth 2
  ADDI s2, zero, 400
  MULW s4, a0, s2
  LA s2, res
  ADD s3, s2, s4
  SLLIW s2, s1, 2
  ADD s3, s3, s2
  LA s5, a
  ADD s4, s5, s4
  ADD s5, zero, zero
  # implict jump to bb24
bb24:   # loop depth 3
  LW s6, 0(s3)
  SLLIW s7, s5, 2
  ADD s7, s4, s7
  LW s7, 0(s7)
  ADDI s8, zero, 400
  MULW s8, s5, s8
  LA s9, b
  ADD s8, s9, s8
  ADD s8, s8, s2
  LW s8, 0(s8)
  MULW s7, s7, s8
  ADDW s6, s6, s7
  SW s6, 0(s3)
  ADDIW s5, s5, 1
  BLT s5, s0, bb26
  # implict jump to bb25
bb25:   # loop depth 1433539472
  JAL zero, bb20
bb26:   # loop depth 1433537120
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
  ADDIW s1, s1, 1
  LA s0, m2
  LW s0, 0(s0)
  BLT s1, s0, bb30
  JAL zero, bb2
bb30:   # loop depth 0
  JAL zero, bb28
bb31:   # loop depth 1
  ADDI s0, zero, 400
  MULW s0, s1, s0
  LA s2, b
  ADD s3, s2, s0
  ADD s0, zero, zero
  # implict jump to bb32
bb32:   # loop depth 2
  SLLIW s2, s0, 2
  ADD s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s0, s0, 1
  LA s2, n2
  LW s2, 0(s2)
  BLT s0, s2, bb33
  JAL zero, bb29
bb33:   # loop depth 0
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
  ADDIW s1, s1, 1
  LA s0, m1
  LW s0, 0(s0)
  BLT s1, s0, bb37
  JAL zero, bb1
bb37:   # loop depth 1433543472
  JAL zero, bb35
bb38:   # loop depth 1
  ADDI s0, zero, 400
  MULW s0, s1, s0
  LA s2, a
  ADD s3, s2, s0
  ADD s0, zero, zero
  # implict jump to bb39
bb39:   # loop depth 2
  SLLIW s2, s0, 2
  ADD s4, s3, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s0, s0, 1
  LA s2, n1
  LW s2, 0(s2)
  BLT s0, s2, bb40
  JAL zero, bb36
bb40:   # loop depth 0
  JAL zero, bb39
