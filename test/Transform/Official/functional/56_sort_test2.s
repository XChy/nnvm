.global main
.global insertsort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -128
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  LA s2, n
  ADDI s3, zero, 10
  SW s3, 0(s2)
  ADDI s2, zero, 4
  SW s2, 0(sp)
  ADDI s2, sp, 4
  ADDI s3, zero, 3
  SW s3, 0(s2)
  ADDI s2, sp, 8
  ADDI s3, zero, 9
  SW s3, 0(s2)
  ADDI s2, sp, 12
  ADDI s3, zero, 2
  SW s3, 0(s2)
  ADDI s2, sp, 16
  ADDI s3, zero, 0
  SW s3, 0(s2)
  ADDI s2, sp, 20
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s2, sp, 24
  ADDI s3, zero, 6
  SW s3, 0(s2)
  ADDI s2, sp, 28
  ADDI s3, zero, 5
  SW s3, 0(s2)
  ADDI s2, sp, 32
  ADDI s3, zero, 7
  SW s3, 0(s2)
  ADDI s2, sp, 36
  ADDI s3, zero, 8
  SW s3, 0(s2)
  ADDI s2, zero, 1
  SLTI s2, s2, 10
  BNE s2, zero, bb8
  # implict jump to bb1
bb1:
  LA s7, n
  LW s7, 0(s7)
  BLT zero, s7, bb3
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s7, zero, zero
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  SLLIW s9, s8, 2
  ADDI a0, sp, 0
  ADD s9, a0, s9
  LW s9, 0(s9)
  ADD a0, s9, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s8, 1
  # implict jump to bb6
bb6:
  LA s8, n
  LW s8, 0(s8)
  BLT s0, s8, bb7
  JAL zero, bb2
bb7:
  ADD s7, s0, zero
  JAL zero, bb5
bb8:
  ADDI s2, zero, 1
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  # implict jump to bb11
bb11:
  ADD s6, s5, zero
  ADDI s7, zero, -1
  BLT s7, s6, bb18
  # implict jump to bb12
bb12:
  ADD s7, zero, zero
  # implict jump to bb13
bb13:
  BNE s7, zero, bb17
  # implict jump to bb14
bb14:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  SW s4, 0(s7)
  ADDIW s1, s3, 1
  # implict jump to bb15
bb15:
  SLTI s7, s1, 10
  BNE s7, zero, bb16
  JAL zero, bb1
bb16:
  ADD s2, s1, zero
  JAL zero, bb10
bb17:
  ADDIW s0, s6, 1
  SLLIW s0, s0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SLLIW s1, s6, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  ADD s5, s0, zero
  JAL zero, bb11
bb18:
  SLLIW s8, s6, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  SLT s8, s4, s8
  ADD s7, s8, zero
  JAL zero, bb13
insertsort:
  ADDI sp, sp, -80
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
  ADD s1, a0, zero
  LA s2, n
  LW s2, 0(s2)
  ADDI s3, zero, 1
  BLT s3, s2, bb21
  # implict jump to bb20
bb20:
  ADD a0, zero, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb21:
  ADDI s2, zero, 1
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s5, s3, s5
  # implict jump to bb24
bb24:
  ADD s6, s5, zero
  ADDI s7, zero, -1
  BLT s7, s6, bb31
  # implict jump to bb25
bb25:
  ADD s7, zero, zero
  # implict jump to bb26
bb26:
  BNE s7, zero, bb30
  # implict jump to bb27
bb27:
  ADDIW s7, s6, 1
  SLLIW s7, s7, 2
  ADD s7, s1, s7
  SW s4, 0(s7)
  ADDIW s0, s3, 1
  # implict jump to bb28
bb28:
  LA s7, n
  LW s7, 0(s7)
  BLT s0, s7, bb29
  JAL zero, bb20
bb29:
  ADD s2, s0, zero
  JAL zero, bb23
bb30:
  ADDIW s0, s6, 1
  SLLIW s0, s0, 2
  ADD s0, s1, s0
  SLLIW s2, s6, 2
  ADD s2, s1, s2
  LW s2, 0(s2)
  SW s2, 0(s0)
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  ADD s5, s0, zero
  JAL zero, bb24
bb31:
  SLLIW s8, s6, 2
  ADD s8, s1, s8
  LW s8, 0(s8)
  SLT s8, s4, s8
  ADD s7, s8, zero
  JAL zero, bb26
