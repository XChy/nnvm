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
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, m1
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, n1
  SW s0, 0(s1)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb1
bb1:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LA s2, m1
  LW s2, 0(s2)
  LW t4, 12(sp)
  BLT t4, s2, bb24
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
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb3
bb3:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LA s4, m2
  LW s4, 0(s4)
  LW t4, 4(sp)
  BLT t4, s4, bb20
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
  BLT s6, s8, bb13
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  ADD s9, s8, zero
  LA s10, m1
  LW s10, 0(s10)
  BLT s9, s10, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb9:
  ADDI s10, zero, 400
  MULW s10, s9, s10
  LA s11, res
  ADD s10, s11, s10
  ADD s11, zero, zero
  # implict jump to bb10
bb10:
  ADD s1, s11, zero
  LA s0, n2
  LW s0, 0(s0)
  BLT s1, s0, bb12
  # implict jump to bb11
bb11:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s9, 1
  ADD s8, s0, zero
  JAL zero, bb7
bb12:
  SLLIW s0, s1, 2
  ADD s0, s10, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s1, 1
  ADD s11, s0, zero
  JAL zero, bb10
bb13:
  ADDI s0, zero, 400
  MULW s0, s6, s0
  LA s1, res
  ADD s1, s1, s0
  LA s8, a
  ADD s0, s8, s0
  ADD s8, zero, zero
  # implict jump to bb14
bb14:
  ADD s9, s8, zero
  ADD s10, s7, zero
  LA s11, n2
  LW s11, 0(s11)
  BLT s9, s11, bb16
  # implict jump to bb15
bb15:
  ADDIW s11, s6, 1
  ADD s4, s10, zero
  ADD s5, s11, zero
  JAL zero, bb5
bb16:
  SLLIW s4, s9, 2
  ADD s5, s1, s4
  ADD s10, zero, zero
  # implict jump to bb17
bb17:
  ADD s11, s10, zero
  LA s3, n1
  LW s3, 0(s3)
  BLT s11, s3, bb19
  # implict jump to bb18
bb18:
  ADDIW s3, s9, 1
  ADD s7, s11, zero
  ADD s8, s3, zero
  JAL zero, bb14
bb19:
  LW s3, 0(s5)
  SLLIW s7, s11, 2
  ADD s7, s0, s7
  LW s7, 0(s7)
  ADDI s8, zero, 400
  MULW s8, s11, s8
  LA s2, b
  ADD s2, s2, s8
  ADD s2, s2, s4
  LW s2, 0(s2)
  MULW s2, s7, s2
  ADDW s2, s3, s2
  SW s2, 0(s5)
  ADDIW s2, s11, 1
  ADD s10, s2, zero
  JAL zero, bb17
bb20:
  ADDI s0, zero, 400
  LW t4, 4(sp)
  MULW s0, t4, s0
  LA s1, b
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb21
bb21:
  ADD s2, s1, zero
  LA s3, n2
  LW s3, 0(s3)
  BLT s2, s3, bb23
  # implict jump to bb22
bb22:
  LW t4, 4(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 0(sp)
  JAL zero, bb3
bb23:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb21
bb24:
  ADDI s0, zero, 400
  LW t4, 12(sp)
  MULW s0, t4, s0
  LA s1, a
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb25
bb25:
  ADD s2, s1, zero
  LA s3, n1
  LW s3, 0(s3)
  BLT s2, s3, bb27
  # implict jump to bb26
bb26:
  LW t4, 12(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb1
bb27:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  CALL getint
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb25
matrix_multiply:
  ADDI sp, sp, -112
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
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb29
bb29:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, m1
  LW s4, 0(s4)
  BLT s2, s4, bb31
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb31:
  ADDI s4, zero, 400
  MULW s4, s2, s4
  LA s5, res
  ADD s5, s5, s4
  LA s6, a
  ADD s4, s6, s4
  ADD s6, zero, zero
  # implict jump to bb32
bb32:
  ADD s7, s6, zero
  ADD s8, s3, zero
  LA s9, n2
  LW s9, 0(s9)
  BLT s7, s9, bb34
  # implict jump to bb33
bb33:
  ADDIW s9, s2, 1
  ADD s0, s8, zero
  ADD s1, s9, zero
  JAL zero, bb29
bb34:
  SLLIW s0, s7, 2
  ADD s1, s5, s0
  ADD s8, zero, zero
  # implict jump to bb35
bb35:
  ADD s9, s8, zero
  LA s10, n1
  LW s10, 0(s10)
  BLT s9, s10, bb37
  # implict jump to bb36
bb36:
  ADDIW s10, s7, 1
  ADD s3, s9, zero
  ADD s6, s10, zero
  JAL zero, bb32
bb37:
  LW s3, 0(s1)
  SLLIW s6, s9, 2
  ADD s6, s4, s6
  LW s6, 0(s6)
  ADDI s10, zero, 400
  MULW s10, s9, s10
  LA s11, b
  ADD s10, s11, s10
  ADD s10, s10, s0
  LW s10, 0(s10)
  MULW s6, s6, s10
  ADDW s3, s3, s6
  SW s3, 0(s1)
  ADDIW s3, s9, 1
  ADD s8, s3, zero
  JAL zero, bb35
