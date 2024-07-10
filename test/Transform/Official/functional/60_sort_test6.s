.global counting_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
counting_sort:
  ADDI sp, sp, -144
  SD ra, 40(sp)
  SD s11, 48(sp)
  SD s10, 56(sp)
  SD s9, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s8, 112(sp)
  SD s2, 120(sp)
  SD s3, 128(sp)
  SD s4, 136(sp)
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
  ADD s5, zero, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  SLT s7, s6, s2
  BNE s7, zero, bb11
  # implict jump to bb4
bb4:
  ADDI s7, zero, 1
  # implict jump to bb5
bb5:
  ADD s8, s7, zero
  SLTI s9, s8, 10
  BNE s9, zero, bb10
  # implict jump to bb6
bb6:
  ADD s9, s2, zero
  # implict jump to bb7
bb7:
  ADD s10, s9, zero
  SLT s11, zero, s10
  BNE s11, zero, bb9
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s11, 48(sp)
  LD s10, 56(sp)
  LD s9, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s8, 112(sp)
  LD s2, 120(sp)
  LD s3, 128(sp)
  LD s4, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb9:
  ADDI s11, zero, 1
  SUBW t0, s10, s11
  SLLIW s10, t0, 2
  ADD s11, s0, s10
  LW s10, 0(s11)
  SLLIW t1, s10, 2
  ADDI t5, sp, 0
  ADD s10, t5, t1
  LW t1, 0(s10)
  ADDI t2, zero, 1
  SUBW a0, t1, t2
  SW a0, 0(s10)
  LW s10, 0(s11)
  SLLIW s11, s10, 2
  ADDI t1, sp, 0
  ADD t1, t1, s11
  LW s11, 0(t1)
  SLLIW t1, s11, 2
  ADD s11, s1, t1
  SW s10, 0(s11)
  ADD s9, t0, zero
  JAL zero, bb7
bb10:
  SLLIW s9, s8, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  LW s9, 0(s10)
  ADDI s11, zero, 1
  SUBW t0, s8, s11
  SLLIW s11, t0, 2
  ADDI t0, sp, 0
  ADD t0, t0, s11
  LW s11, 0(t0)
  ADDW t0, s9, s11
  SW t0, 0(s10)
  ADDIW s9, s8, 1
  ADD s7, s9, zero
  JAL zero, bb5
bb11:
  SLLIW s7, s6, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  SLLIW s8, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDIW s9, s8, 1
  SW s9, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
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
  ADDI sp, sp, -224
  SD s8, 120(sp)
  SD s7, 128(sp)
  SD s6, 136(sp)
  SD s0, 144(sp)
  SD s5, 152(sp)
  SD s1, 160(sp)
  SD s10, 168(sp)
  SD s9, 176(sp)
  SD s11, 184(sp)
  SD ra, 192(sp)
  SD s2, 200(sp)
  SD s3, 208(sp)
  SD s4, 216(sp)
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
  ADD s3, zero, zero
  # implict jump to bb16
bb16:
  ADD s4, s3, zero
  SLT s5, s4, s1
  BNE s5, zero, bb27
  # implict jump to bb17
bb17:
  ADDI s5, zero, 1
  # implict jump to bb18
bb18:
  ADD s6, s5, zero
  SLTI s7, s6, 10
  BNE s7, zero, bb26
  # implict jump to bb19
bb19:
  ADD s7, s1, zero
  # implict jump to bb20
bb20:
  ADD s8, s7, zero
  SLT s9, zero, s8
  BNE s9, zero, bb25
  # implict jump to bb21
bb21:
  ADD s9, zero, zero
  # implict jump to bb22
bb22:
  ADD s10, s9, zero
  LA s11, n
  LW t0, 0(s11)
  SLT s11, s10, t0
  BNE s11, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD s8, 120(sp)
  LD s7, 128(sp)
  LD s6, 136(sp)
  LD s0, 144(sp)
  LD s5, 152(sp)
  LD s1, 160(sp)
  LD s10, 168(sp)
  LD s9, 176(sp)
  LD s11, 184(sp)
  LD ra, 192(sp)
  LD s2, 200(sp)
  LD s3, 208(sp)
  LD s4, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb24:
  SLLIW s11, s10, 2
  ADDI t0, sp, 40
  ADD t0, t0, s11
  LW s11, 0(t0)
  ADD a0, s11, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s11, s10, 1
  ADD s9, s11, zero
  JAL zero, bb22
bb25:
  ADDI s9, zero, 1
  SUBW s10, s8, s9
  SLLIW s8, s10, 2
  ADDI t5, sp, 80
  ADD s9, t5, s8
  LW s8, 0(s9)
  SLLIW s11, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s11
  LW s11, 0(s8)
  ADDI t0, zero, 1
  SUBW t1, s11, t0
  SW t1, 0(s8)
  LW s8, 0(s9)
  SLLIW s9, s8, 2
  ADDI t5, sp, 0
  ADD s11, t5, s9
  LW s9, 0(s11)
  SLLIW s11, s9, 2
  ADDI t5, sp, 40
  ADD s9, t5, s11
  SW s8, 0(s9)
  ADD s7, s10, zero
  JAL zero, bb20
bb26:
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s8, t5, s7
  LW s7, 0(s8)
  ADDI s9, zero, 1
  SUBW s10, s6, s9
  SLLIW s9, s10, 2
  ADDI t5, sp, 0
  ADD s10, t5, s9
  LW s9, 0(s10)
  ADDW s10, s7, s9
  SW s10, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb18
bb27:
  SLLIW s5, s4, 2
  ADDI t5, sp, 80
  ADD s6, t5, s5
  LW s5, 0(s6)
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s5, t5, s6
  LW s6, 0(s5)
  ADDIW s7, s6, 1
  SW s7, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb16
bb28:
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s4, t5, s3
  SW zero, 0(s4)
  ADDIW s3, s2, 1
  ADD s0, s3, zero
  JAL zero, bb14
