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
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s9, 64(sp)
  SD s10, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  CALL getint
  ADD s1, a0, zero
  LA s0, m1
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, n1
  SW s1, 0(s0)
  LA s0, m1
  LW s1, 0(s0)
  ADDI s0, zero, 0
  BLT s0, s1, bb34
  # implict jump to bb1
bb1:
  CALL getint
  ADD s1, a0, zero
  LA s0, m2
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, n2
  SW s1, 0(s0)
  LA s0, m2
  LW s0, 0(s0)
  BLT zero, s0, bb27
  # implict jump to bb2
bb2:
  LA a0, m1
  LW a0, 0(a0)
  BLT zero, a0, bb12
  # implict jump to bb3
bb3:
  LA a0, m1
  LW a0, 0(a0)
  BLT zero, a0, bb5
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s9, 64(sp)
  LD s10, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:
  ADD a0, zero, zero
  # implict jump to bb6
bb6:
  ADD s1, a0, zero
  LA a0, n2
  LW a0, 0(a0)
  BLT zero, a0, bb9
  # implict jump to bb7
bb7:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s1, 1
  LA a0, m1
  LW a0, 0(a0)
  BLT s0, a0, bb8
  JAL zero, bb4
bb8:
  ADD a0, s0, zero
  JAL zero, bb6
bb9:
  ADDI a0, zero, 400
  MULW s0, s1, a0
  LA a0, res
  ADD s2, a0, s0
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
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
bb11:
  ADD a0, s0, zero
  JAL zero, bb10
bb12:
  LA a0, n2
  LW s0, 0(a0)
  ADD s1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  BLT zero, s0, bb17
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD s2, a0, zero
  ADDIW s1, s1, 1
  LA a0, m1
  LW a0, 0(a0)
  BLT s1, a0, bb16
  JAL zero, bb3
bb16:
  ADD a0, s2, zero
  JAL zero, bb13
bb17:
  LA a0, n1
  LW s2, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb18
bb18:
  ADD s3, a0, zero
  BLT zero, s2, bb23
  # implict jump to bb19
bb19:
  ADD a0, zero, zero
  # implict jump to bb20
bb20:
  ADD s4, a0, zero
  ADDIW s3, s3, 1
  LA a0, n2
  LW a0, 0(a0)
  BLT s3, a0, bb22
  # implict jump to bb21
bb21:
  ADD a0, s4, zero
  JAL zero, bb15
bb22:
  ADD a0, s3, zero
  JAL zero, bb18
bb23:
  ADDI a0, zero, 400
  MULW s6, s1, a0
  LA a0, res
  ADD a0, a0, s6
  SLLIW s5, s3, 2
  ADD s4, a0, s5
  LA a0, a
  ADD s6, a0, s6
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  ADD s7, a0, zero
  LW s8, 0(s4)
  SLLIW a0, s7, 2
  ADD a0, s6, a0
  LW s9, 0(a0)
  ADDI a0, zero, 400
  MULW s10, s7, a0
  LA a0, b
  ADD a0, a0, s10
  ADD a0, a0, s5
  LW a0, 0(a0)
  MULW a0, s9, a0
  ADDW a0, s8, a0
  SW a0, 0(s4)
  ADDIW s7, s7, 1
  LA a0, n1
  LW a0, 0(a0)
  BLT s7, a0, bb26
  # implict jump to bb25
bb25:
  ADD a0, s7, zero
  JAL zero, bb20
bb26:
  ADD a0, s7, zero
  JAL zero, bb24
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  ADD s2, s0, zero
  LA s0, n2
  LW s0, 0(s0)
  BLT zero, s0, bb31
  # implict jump to bb29
bb29:
  ADDIW s1, s2, 1
  LA s0, m2
  LW s0, 0(s0)
  BLT s1, s0, bb30
  JAL zero, bb2
bb30:
  ADD s0, s1, zero
  JAL zero, bb28
bb31:
  ADDI s0, zero, 400
  MULW s1, s2, s0
  LA s0, b
  ADD s3, s0, s1
  ADD s0, zero, zero
  # implict jump to bb32
bb32:
  ADD s4, s0, zero
  SLLIW s0, s4, 2
  ADD s0, s3, s0
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  ADDIW s1, s4, 1
  LA s0, n2
  LW s0, 0(s0)
  BLT s1, s0, bb33
  JAL zero, bb29
bb33:
  ADD s0, s1, zero
  JAL zero, bb32
bb34:
  ADD s0, zero, zero
  # implict jump to bb35
bb35:
  ADD s2, s0, zero
  LA s0, n1
  LW s0, 0(s0)
  BLT zero, s0, bb38
  # implict jump to bb36
bb36:
  ADDIW s1, s2, 1
  LA s0, m1
  LW s0, 0(s0)
  BLT s1, s0, bb37
  JAL zero, bb1
bb37:
  ADD s0, s1, zero
  JAL zero, bb35
bb38:
  ADDI s0, zero, 400
  MULW s1, s2, s0
  LA s0, a
  ADD s1, s0, s1
  ADD s0, zero, zero
  # implict jump to bb39
bb39:
  ADD s4, s0, zero
  SLLIW s0, s4, 2
  ADD s0, s1, s0
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s0)
  ADDIW s3, s4, 1
  LA s0, n1
  LW s0, 0(s0)
  BLT s3, s0, bb40
  JAL zero, bb36
bb40:
  ADD s0, s3, zero
  JAL zero, bb39
