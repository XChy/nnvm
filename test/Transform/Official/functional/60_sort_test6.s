.global counting_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
counting_sort:
  ADDI sp, sp, -128
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s7, 64(sp)
  SD s1, 72(sp)
  SD s6, 80(sp)
  SD s8, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  # implict jump to bb1
bb1:
  ADD s4, s3, zero
  SLTI s5, s4, 10
  BNE s5, zero, bb12
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  SLT s5, s4, s2
  BNE s5, zero, bb11
  # implict jump to bb4
bb4:
  ADDI s3, zero, 1
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  SLTI s5, s4, 10
  BNE s5, zero, bb10
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  # implict jump to bb7
bb7:
  ADD s2, s3, zero
  SLT s4, zero, s2
  BNE s4, zero, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s7, 64(sp)
  LD s1, 72(sp)
  LD s6, 80(sp)
  LD s8, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb9:
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  SLLIW s2, s5, 2
  ADD s4, s0, s2
  LW s2, 0(s4)
  SLLIW s6, s2, 2
  ADDI t5, sp, 0
  ADD s2, t5, s6
  LW s6, 0(s2)
  ADDI s7, zero, 1
  SUBW s8, s6, s7
  SW s8, 0(s2)
  LW s2, 0(s4)
  SLLIW s4, s2, 2
  ADDI t5, sp, 0
  ADD s6, t5, s4
  LW s4, 0(s6)
  SLLIW s6, s4, 2
  ADD s4, s1, s6
  SW s2, 0(s4)
  ADD s3, s5, zero
  JAL zero, bb7
bb10:
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  LW s5, 0(s6)
  ADDI s7, zero, 1
  SUBW s8, s4, s7
  SLLIW s7, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDW s8, s5, s7
  SW s8, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb5
bb11:
  SLLIW s5, s4, 2
  ADD s6, s0, s5
  LW s5, 0(s6)
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s5, t5, s6
  LW s6, 0(s5)
  ADDIW s7, s6, 1
  SW s7, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb3
bb12:
  SLLIW s5, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  SW zero, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb1
main:
  ADDI sp, sp, -192
  SD s4, 120(sp)
  SD ra, 128(sp)
  SD s3, 136(sp)
  SD s2, 144(sp)
  SD s6, 152(sp)
  SD s1, 160(sp)
  SD s5, 168(sp)
  SD s0, 176(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  SW s0, 80(sp)
  ADDI s0, sp, 84
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 88
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 92
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 96
  SW zero, 0(s0)
  ADDI s0, sp, 100
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 104
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 108
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 112
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 116
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  ADD s0, zero, zero
  # implict jump to bb14
bb14:
  ADD s2, s0, zero
  SLTI s3, s2, 10
  BNE s3, zero, bb28
  # implict jump to bb15
bb15:
  ADD s0, zero, zero
  # implict jump to bb16
bb16:
  ADD s2, s0, zero
  SLT s3, s2, s1
  BNE s3, zero, bb27
  # implict jump to bb17
bb17:
  ADDI s0, zero, 1
  # implict jump to bb18
bb18:
  ADD s2, s0, zero
  SLTI s3, s2, 10
  BNE s3, zero, bb26
  # implict jump to bb19
bb19:
  ADD s0, s1, zero
  # implict jump to bb20
bb20:
  ADD s1, s0, zero
  SLT s2, zero, s1
  BNE s2, zero, bb25
  # implict jump to bb21
bb21:
  ADD s0, zero, zero
  # implict jump to bb22
bb22:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD s4, 120(sp)
  LD ra, 128(sp)
  LD s3, 136(sp)
  LD s2, 144(sp)
  LD s6, 152(sp)
  LD s1, 160(sp)
  LD s5, 168(sp)
  LD s0, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb24:
  SLLIW s2, s1, 2
  ADDI t5, sp, 40
  ADD s3, t5, s2
  LW s2, 0(s3)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb22
bb25:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 80
  ADD s2, t5, s1
  LW s1, 0(s2)
  SLLIW s4, s1, 2
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW s4, 0(s1)
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  SW s6, 0(s1)
  LW s1, 0(s2)
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s4, t5, s2
  LW s2, 0(s4)
  SLLIW s4, s2, 2
  ADDI t5, sp, 40
  ADD s2, t5, s4
  SW s1, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb20
bb26:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  LW s3, 0(s4)
  ADDI s5, zero, 1
  SUBW s6, s2, s5
  SLLIW s5, s6, 2
  ADDI t5, sp, 0
  ADD s6, t5, s5
  LW s5, 0(s6)
  ADDW s6, s3, s5
  SW s6, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb18
bb27:
  SLLIW s3, s2, 2
  ADDI t5, sp, 80
  ADD s4, t5, s3
  LW s3, 0(s4)
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s4
  LW s4, 0(s3)
  ADDIW s5, s4, 1
  SW s5, 0(s3)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb16
bb28:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb14
