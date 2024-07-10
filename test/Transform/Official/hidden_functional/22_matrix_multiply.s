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
  ADDI sp, sp, -128
  SD s11, 16(sp)
  SD s10, 24(sp)
  SD s9, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s7, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD ra, 104(sp)
  SD s8, 112(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb24
  # implict jump to bb2
bb2:
  CALL getint
  ADD s0, a0, zero
  LA s1, m2
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n2
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  LA s2, m2
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb20
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb5
bb5:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  ADD s3, t4, zero
  LA s4, m1
  LW s5, 0(s4)
  LW t4, 12(sp)
  SLT s4, t4, s5
  BNE s4, zero, bb13
  # implict jump to bb6
bb6:
  ADD s0, zero, zero
  # implict jump to bb7
bb7:
  ADD s1, s0, zero
  LA s2, m1
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD s11, 16(sp)
  LD s10, 24(sp)
  LD s9, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s7, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD ra, 104(sp)
  LD s8, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb9:
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  LA s4, n2
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb7
bb12:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, res
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  LW s4, 0(s5)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb10
bb13:
  ADD s4, s3, zero
  ADD s3, zero, zero
  # implict jump to bb14
bb14:
  ADD s5, s3, zero
  ADD t4, s4, zero
  SW t4, 4(sp)
  LA s7, n2
  LW s8, 0(s7)
  SLT s7, s5, s8
  BNE s7, zero, bb16
  # implict jump to bb15
bb15:
  LW t4, 12(sp)
  ADDIW s0, t4, 1
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb5
bb16:
  ADD s7, zero, zero
  # implict jump to bb17
bb17:
  ADD s8, s7, zero
  LA s9, n1
  LW s10, 0(s9)
  SLT s9, s8, s10
  BNE s9, zero, bb19
  # implict jump to bb18
bb18:
  ADDIW s0, s5, 1
  ADD s4, s8, zero
  ADD s3, s0, zero
  JAL zero, bb14
bb19:
  ADDI s9, zero, 400
  LW t4, 12(sp)
  MULW s10, t4, s9
  LA s9, res
  ADD s11, s9, s10
  SLLIW s9, s5, 2
  ADD s1, s11, s9
  LW s11, 0(s1)
  LA s6, a
  ADD s0, s6, s10
  SLLIW s6, s8, 2
  ADD s10, s0, s6
  LW s0, 0(s10)
  ADDI s6, zero, 400
  MULW s10, s8, s6
  LA s6, b
  ADD s2, s6, s10
  ADD s6, s2, s9
  LW s2, 0(s6)
  MULW s6, s0, s2
  ADDW s0, s11, s6
  SW s0, 0(s1)
  ADDIW s0, s8, 1
  ADD s7, s0, zero
  JAL zero, bb17
bb20:
  ADD s2, zero, zero
  # implict jump to bb21
bb21:
  ADD s3, s2, zero
  LA s4, n2
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb3
bb23:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, b
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb21
bb24:
  ADD s2, zero, zero
  # implict jump to bb25
bb25:
  ADD s3, s2, zero
  LA s4, n1
  LW s5, 0(s4)
  SLT s4, s3, s5
  BNE s4, zero, bb27
  # implict jump to bb26
bb26:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb27:
  ADDI s4, zero, 400
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  SLLIW s4, s3, 2
  ADD s5, s6, s4
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s5)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb25
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
  # implict jump to bb29
bb29:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m1
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb31
  # implict jump to bb30
bb30:
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
bb31:
  ADD s4, s3, zero
  ADD s3, zero, zero
  # implict jump to bb32
bb32:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, n2
  LW s8, 0(s7)
  SLT s7, s5, s8
  BNE s7, zero, bb34
  # implict jump to bb33
bb33:
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb29
bb34:
  ADD s7, zero, zero
  # implict jump to bb35
bb35:
  ADD s8, s7, zero
  LA s9, n1
  LW s10, 0(s9)
  SLT s9, s8, s10
  BNE s9, zero, bb37
  # implict jump to bb36
bb36:
  ADDIW s7, s5, 1
  ADD s4, s8, zero
  ADD s3, s7, zero
  JAL zero, bb32
bb37:
  ADDI s9, zero, 400
  MULW s10, s2, s9
  LA s9, res
  ADD s11, s9, s10
  SLLIW s9, s5, 2
  ADD t0, s11, s9
  LW s11, 0(t0)
  LA t1, a
  ADD t2, t1, s10
  SLLIW s10, s8, 2
  ADD t1, t2, s10
  LW s10, 0(t1)
  ADDI t1, zero, 400
  MULW t2, s8, t1
  LA t1, b
  ADD a0, t1, t2
  ADD t1, a0, s9
  LW s9, 0(t1)
  MULW t1, s10, s9
  ADDW s9, s11, t1
  SW s9, 0(t0)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb35
