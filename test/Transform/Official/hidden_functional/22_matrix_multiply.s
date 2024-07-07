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
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
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
  ADD s3, s2, zero
  LA s4, n1
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb6:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb7:
  ADD s1, s0, zero
  LA s2, m2
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb8
  JAL zero, bb9
bb8:
  ADD s2, zero, zero
  JAL zero, bb10
bb9:
  CALL matrix_multiply
  ADD s0, zero, zero
  JAL zero, bb13
bb10:
  ADD s3, s2, zero
  LA s4, n2
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, b
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb10
bb12:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb13:
  ADD s1, s0, zero
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb14
  JAL zero, bb15
bb14:
  ADD s2, zero, zero
  JAL zero, bb16
bb15:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb16:
  ADD s3, s2, zero
  LA s4, n2
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, res
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb16
bb18:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb13
matrix_multiply:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s10, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb20
bb20:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m1
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  ADD s4, s3, zero
  ADD s3, zero, zero
  JAL zero, bb23
bb22:
  LD s11, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s10, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb23:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n2
  LW s8, 0(s7)
  SLT s7, s5, s8
  BNE s7, zero, bb24
  JAL zero, bb25
bb24:
  ADD s7, zero, zero
  JAL zero, bb26
bb25:
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb20
bb26:
  ADD s8, s7, zero
  LA s9, n1
  LW s10, 0(s9)
  SLT s9, s8, s10
  BNE s9, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s9, zero, 400
  MULW s10, s2, s9
  LA s9, res
  ADD s11, s9, s10
  ADDI s9, zero, 4
  MULW t0, s5, s9
  ADD s9, s11, t0
  LW s11, 0(s9)
  LA t1, a
  ADD t2, t1, s10
  ADDI s10, zero, 4
  MULW t1, s8, s10
  ADD s10, t2, t1
  LW t1, 0(s10)
  ADDI s10, zero, 400
  MULW t2, s8, s10
  LA s10, b
  ADD a0, s10, t2
  ADD s10, a0, t0
  LW t0, 0(s10)
  MULW s10, t1, t0
  ADDW t0, s11, s10
  SW t0, 0(s9)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb26
bb28:
  ADDIW s7, s5, 1
  ADD s4, s8, zero
  ADD s3, s7, zero
  JAL zero, bb23
