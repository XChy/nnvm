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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb1
bb1:
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADD s2, zero, zero
  JAL zero, bb4
bb3:
  CALL getint
  ADD s0, a0, zero
  LA s1, m2
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n2
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb7
bb4:
  LA s3, n1
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s3, zero, 400
  MULW s4, s1, s3
  LA s3, a
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s5, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s3, s2, 1
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb1
bb7:
  LA s1, m2
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADD s1, zero, zero
  JAL zero, bb10
bb9:
  CALL matrix_multiply
  ADD s0, zero, zero
  JAL zero, bb13
bb10:
  LA s2, n2
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 400
  MULW s3, s0, s2
  LA s2, b
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb10
bb12:
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb7
bb13:
  LA s1, m1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADD s1, zero, zero
  JAL zero, bb16
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
  LA s2, n2
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s2, zero, 400
  MULW s3, s0, s2
  LA s2, res
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb16
bb18:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb13
matrix_multiply:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s8, 8(sp)
  SD s7, 16(sp)
  SD s4, 24(sp)
  SD ra, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s6, 56(sp)
  SD s1, 64(sp)
  SD s10, 72(sp)
  SD s5, 80(sp)
  SD s0, 88(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb20
bb20:
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb21
  JAL zero, bb22
bb21:
  ADD s2, s0, zero
  ADD s3, zero, zero
  JAL zero, bb23
bb22:
  LD s9, 0(sp)
  LD s8, 8(sp)
  LD s7, 16(sp)
  LD s4, 24(sp)
  LD ra, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s6, 56(sp)
  LD s1, 64(sp)
  LD s10, 72(sp)
  LD s5, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb23:
  LA s4, n2
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb24
  JAL zero, bb25
bb24:
  ADD s4, zero, zero
  JAL zero, bb26
bb25:
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb20
bb26:
  LA s5, n1
  LW s6, 0(s5)
  SLT s5, s4, s6
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s5, zero, 400
  MULW s6, s1, s5
  LA s5, res
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s7, s6
  ADDI s6, zero, 400
  MULW s7, s1, s6
  LA s6, res
  ADD s8, s6, s7
  ADDI s6, zero, 4
  MULW s7, s3, s6
  ADD s6, s8, s7
  LW s7, 0(s6)
  ADDI s6, zero, 400
  MULW s8, s1, s6
  LA s6, a
  ADD s9, s6, s8
  ADDI s6, zero, 4
  MULW s8, s4, s6
  ADD s6, s9, s8
  LW s8, 0(s6)
  ADDI s6, zero, 400
  MULW s9, s4, s6
  LA s6, b
  ADD s10, s6, s9
  ADDI s6, zero, 4
  MULW s9, s3, s6
  ADD s6, s10, s9
  LW s9, 0(s6)
  MULW s6, s8, s9
  ADDW s8, s7, s6
  SW s8, 0(s5)
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb26
bb28:
  ADDIW s5, s3, 1
  ADD s2, s4, zero
  ADD s3, s5, zero
  JAL zero, bb23
