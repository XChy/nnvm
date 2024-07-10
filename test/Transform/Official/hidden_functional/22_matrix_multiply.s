.global main
.global matrix_multiply
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


MAX_SIZE:
.word 0x00000064
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s11, 80(sp)
  SD s10, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADD t4, zero, zero
  SW t4, 4(sp)
  # implict jump to bb1
bb1:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LA s2, m1
  LW s2, 0(s2)
  LW t4, 0(sp)
  SLT s2, t4, s2
  BNE s2, zero, bb24
  # implict jump to bb2
bb2:
  CALL getint
  ADD s2, a0, zero
  LA s3, m2
  SW s2, 0(s3)
  CALL getint
  ADD s2, a0, zero
  LA s3, n2
  SW s2, 0(s3)
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  LA s4, m2
  LW s4, 0(s4)
  SLT s4, s3, s4
  BNE s4, zero, bb20
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, m1
  LW s8, 0(s8)
  SLT s8, s6, s8
  BNE s8, zero, bb13
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  LA s10, m1
  LW s10, 0(s10)
  SLT s10, s9, s10
  BNE s10, zero, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s11, 80(sp)
  LD s10, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:
  ADD s10, zero, zero
  # implict jump to bb10
bb10:
  ADD s11, s10, zero
  LA s1, n2
  LW s1, 0(s1)
  SLT s1, s11, s1
  BNE s1, zero, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s9, 1
  ADD s8, s1, zero
  JAL zero, bb7
bb12:
  ADDI s1, zero, 400
  MULW s1, s9, s1
  LA s8, res
  ADD s1, s8, s1
  SLLIW s8, s11, 2
  ADD s1, s1, s8
  LW s1, 0(s1)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s11, 1
  ADD s10, s1, zero
  JAL zero, bb10
bb13:
  ADD s1, s7, zero
  ADD s7, zero, zero
  # implict jump to bb14
bb14:
  ADD s8, s7, zero
  ADD s9, s1, zero
  LA s10, n2
  LW s10, 0(s10)
  SLT s10, s8, s10
  BNE s10, zero, bb16
  # implict jump to bb15
bb15:
  ADDIW s10, s6, 1
  ADD s4, s9, zero
  ADD s5, s10, zero
  JAL zero, bb5
bb16:
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  LA s9, n1
  LW s9, 0(s9)
  SLT s9, s5, s9
  BNE s9, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s9, s8, 1
  ADD s1, s5, zero
  ADD s7, s9, zero
  JAL zero, bb14
bb19:
  ADDI s1, zero, 400
  MULW s1, s6, s1
  LA s7, res
  ADD s7, s7, s1
  SLLIW s9, s8, 2
  ADD s7, s7, s9
  LW s10, 0(s7)
  LA s11, a
  ADD s1, s11, s1
  SLLIW s11, s5, 2
  ADD s1, s1, s11
  LW s1, 0(s1)
  ADDI s11, zero, 400
  MULW s11, s5, s11
  LA s0, b
  ADD s0, s0, s11
  ADD s0, s0, s9
  LW s0, 0(s0)
  MULW s0, s1, s0
  ADDW s0, s10, s0
  SW s0, 0(s7)
  ADDIW s0, s5, 1
  ADD s4, s0, zero
  JAL zero, bb17
bb20:
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  ADD s1, s0, zero
  LA s4, n2
  LW s4, 0(s4)
  SLT s4, s1, s4
  BNE s4, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb3
bb23:
  ADDI s2, zero, 400
  MULW s2, s3, s2
  LA s4, b
  ADD s2, s4, s2
  SLLIW s4, s1, 2
  ADD s2, s2, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb21
bb24:
  ADD s0, zero, zero
  # implict jump to bb25
bb25:
  ADD s1, s0, zero
  LA s2, n1
  LW s2, 0(s2)
  SLT s2, s1, s2
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:
  LW t4, 0(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 4(sp)
  JAL zero, bb1
bb27:
  ADDI s2, zero, 400
  LW t4, 0(sp)
  MULW s2, t4, s2
  LA s3, a
  ADD s2, s3, s2
  SLLIW s3, s1, 2
  ADD s2, s2, s3
  CALL getint
  SW a0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb25
matrix_multiply:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb29
bb29:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m1
  LW s4, 0(s4)
  SLT s4, s2, s4
  BNE s4, zero, bb31
  # implict jump to bb30
bb30:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb31:
  ADD s4, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, n2
  LW s7, 0(s7)
  SLT s7, s5, s7
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s7, s2, 1
  ADD s0, s6, zero
  ADD s1, s7, zero
  JAL zero, bb29
bb34:
  ADD s0, zero, zero
  # implict jump to bb35
bb35:
  ADD s1, s0, zero
  LA s6, n1
  LW s6, 0(s6)
  SLT s6, s1, s6
  BNE s6, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s6, s5, 1
  ADD s3, s1, zero
  ADD s4, s6, zero
  JAL zero, bb32
bb37:
  ADDI s3, zero, 400
  MULW s3, s2, s3
  LA s4, res
  ADD s4, s4, s3
  SLLIW s6, s5, 2
  ADD s4, s4, s6
  LW s7, 0(s4)
  LA s8, a
  ADD s3, s8, s3
  SLLIW s8, s1, 2
  ADD s3, s3, s8
  LW s3, 0(s3)
  ADDI s8, zero, 400
  MULW s8, s1, s8
  LA s9, b
  ADD s8, s9, s8
  ADD s6, s8, s6
  LW s6, 0(s6)
  MULW s3, s3, s6
  ADDW s3, s7, s3
  SW s3, 0(s4)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb35
