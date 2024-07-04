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
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  LA s1, m1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 0(sp)
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
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb7
bb4:
  LW s0, 0(sp)
  LA s1, n1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 8(sp)
  ADDI s1, zero, 400
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb7:
  LW s0, 8(sp)
  LA s1, m2
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb10
bb9:
  CALL matrix_multiply
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb13
bb10:
  LW s0, 0(sp)
  LA s1, n2
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  LW s0, 8(sp)
  ADDI s1, zero, 400
  MULW s2, s0, s1
  LA s0, b
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb10
bb12:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb7
bb13:
  LW s0, 8(sp)
  LA s1, m1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb16
bb15:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
  LW s0, 0(sp)
  LA s1, n2
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 8(sp)
  ADDI s1, zero, 400
  MULW s2, s0, s1
  LA s0, res
  ADD s1, s0, s2
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb16
bb18:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb13
matrix_multiply:
  ADDI sp, sp, -96
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s6, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  SW zero, 16(sp)
  JAL zero, bb20
bb20:
  LW s0, 16(sp)
  LA s1, m1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb21
  JAL zero, bb22
bb21:
  SW zero, 8(sp)
  JAL zero, bb23
bb22:
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s6, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb23:
  LW s0, 8(sp)
  LA s1, n2
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb24
  JAL zero, bb25
bb24:
  SW zero, 0(sp)
  JAL zero, bb26
bb25:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb20
bb26:
  LW s0, 0(sp)
  LA s1, n1
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb27
  JAL zero, bb28
bb27:
  LW s0, 16(sp)
  ADDI s1, zero, 400
  MULW s2, s0, s1
  LA s0, res
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 400
  MULW s3, s1, s2
  LA s1, res
  ADD s2, s1, s3
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  LW s1, 16(sp)
  ADDI s3, zero, 400
  MULW s4, s1, s3
  LA s1, a
  ADD s3, s1, s4
  LW s1, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s1, s4
  ADD s1, s3, s5
  LW s3, 0(s1)
  LW s1, 0(sp)
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s1, b
  ADD s4, s1, s5
  LW s1, 8(sp)
  ADDI s5, zero, 4
  MULW s6, s1, s5
  ADD s1, s4, s6
  LW s4, 0(s1)
  MULW s1, s3, s4
  ADDW s3, s2, s1
  SW s3, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb26
bb28:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb23
