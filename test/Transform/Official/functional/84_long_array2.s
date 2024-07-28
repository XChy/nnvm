.global f1
.global main
.section .bss
a:
.space 16384
.section .data

.section .text
f1:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a0, zero
  LA s1, a
  LUI s2, 1
  ADDIW s2, s2, -96
  SW s2, 20(s1)
  LUI s2, 4
  ADDIW s2, s2, -384
  LA s3, a
  ADD s2, s3, s2
  ADDI s3, zero, 3
  SW s3, 0(s2)
  LUI s2, 4
  ADDIW s2, s2, -4
  LA s3, a
  ADD s2, s3, s2
  ADDI s3, zero, 7
  SW s3, 0(s2)
  LUI s2, 2
  ADDIW s2, s2, 672
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDIW s2, s2, 9
  SW s2, 28(s0)
  LW s0, 20(s1)
  SLLIW s0, s0, 2
  LA s1, a
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  LUI t0, 1048568
  ADDIW t0, t0, -112
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s11, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  ADDI s5, zero, 0
  XORI s5, s5, 1024
  BNE s5, zero, bb27
  # implict jump to bb2
bb2:
  LUI s6, 1
  ADDIW s6, s6, 0
  ADDI t5, sp, 104
  ADD s6, t5, s6
  ADDI s7, zero, 1
  SW s7, 0(s6)
  XORI s6, zero, 1023
  BNE s6, zero, bb22
  # implict jump to bb3
bb3:
  LUI s7, 2
  ADDIW s7, s7, 0
  ADDI t5, sp, 104
  ADD s7, t5, s7
  ADDI s8, zero, 2
  SW s8, 0(s7)
  LUI s7, 2
  ADDIW s7, s7, 4
  ADDI t5, sp, 104
  ADD s7, t5, s7
  ADDI s8, zero, 3
  SW s8, 0(s7)
  XORI s7, zero, 1022
  BNE s7, zero, bb17
  # implict jump to bb4
bb4:
  LUI s8, 3
  ADDIW s8, s8, 0
  ADDI t5, sp, 104
  ADD s8, t5, s8
  ADDI s9, zero, 4
  SW s9, 0(s8)
  LUI s8, 3
  ADDIW s8, s8, 4
  ADDI t5, sp, 104
  ADD s8, t5, s8
  ADDI s9, zero, 5
  SW s9, 0(s8)
  LUI s8, 3
  ADDIW s8, s8, 8
  ADDI t5, sp, 104
  ADD s8, t5, s8
  ADDI s9, zero, 6
  SW s9, 0(s8)
  XORI s8, zero, 1021
  BNE s8, zero, bb12
  # implict jump to bb5
bb5:
  ADDI s9, zero, 1
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SW s9, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s9, t5, 4
  ADDI s10, zero, 2
  SW s10, 0(s9)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s9, t5, 8
  SW zero, 0(s9)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s9, t5, 12
  SW zero, 0(s9)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s9, t5, 16
  ADDI s10, zero, 3
  SW s10, 0(s9)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s9, t5, 20
  ADDI s10, zero, 4
  SW s10, 0(s9)
  LUI s9, 1
  ADDIW s9, s9, -6
  XOR s9, zero, s9
  BNE s9, zero, bb7
  # implict jump to bb6
bb6:
  LA s10, a
  LUI s11, 1
  ADDIW s11, s11, -96
  SW s11, 20(s10)
  LUI s11, 4
  ADDIW s11, s11, -384
  LA ra, a
  ADD s11, ra, s11
  ADDI ra, zero, 3
  SW ra, 0(s11)
  LUI s11, 4
  ADDIW s11, s11, -4
  LA ra, a
  ADD s11, ra, s11
  ADDI ra, zero, 7
  SW ra, 0(s11)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s11, t5, 28
  LUI ra, 2
  ADDIW ra, ra, 672
  LA t0, a
  ADD ra, t0, ra
  LW ra, 0(ra)
  ADDIW ra, ra, 9
  SW ra, 0(s11)
  LW s10, 20(s10)
  SLLIW s10, s10, 2
  LA s11, a
  ADD s10, s11, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s10, t5, 32
  LW s10, 0(s10)
  ADD a0, s10, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s11, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LUI t0, 8
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb7:
  LUI s9, 1
  ADDIW s9, s9, -6
  ADD s9, zero, s9
  # implict jump to bb8
bb8:
  # implict jump to bb9
bb9:
  ADD s10, s9, zero
  ADDI s11, zero, 1
  SUBW s4, s10, s11
  SLLIW s10, s4, 2
  ADDIW s10, s10, 24
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADD s10, t5, s10
  SW zero, 0(s10)
  # implict jump to bb10
bb10:
  BNE s4, zero, bb11
  JAL zero, bb6
bb11:
  ADD s9, s4, zero
  JAL zero, bb9
bb12:
  ADDI s8, zero, 1021
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADD s9, s8, zero
  ADDI s10, zero, 1
  SUBW s0, s9, s10
  SLLIW s9, s0, 2
  LUI s10, 3
  ADDIW s10, s10, 12
  ADDW s9, s9, s10
  ADDI t5, sp, 104
  ADD s9, t5, s9
  SW zero, 0(s9)
  # implict jump to bb15
bb15:
  BNE s0, zero, bb16
  JAL zero, bb5
bb16:
  ADD s8, s0, zero
  JAL zero, bb14
bb17:
  ADDI s7, zero, 1022
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s1, s8, s9
  SLLIW s8, s1, 2
  LUI s9, 2
  ADDIW s9, s9, 8
  ADDW s8, s8, s9
  ADDI t5, sp, 104
  ADD s8, t5, s8
  SW zero, 0(s8)
  # implict jump to bb20
bb20:
  BNE s1, zero, bb21
  JAL zero, bb4
bb21:
  ADD s7, s1, zero
  JAL zero, bb19
bb22:
  ADDI s6, zero, 1023
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD s7, s6, zero
  ADDI s8, zero, 1
  SUBW s2, s7, s8
  SLLIW s7, s2, 2
  LUI s8, 1
  ADDIW s8, s8, 4
  ADDW s7, s7, s8
  ADDI t5, sp, 104
  ADD s7, t5, s7
  SW zero, 0(s7)
  # implict jump to bb25
bb25:
  BNE s2, zero, bb26
  JAL zero, bb3
bb26:
  ADD s6, s2, zero
  JAL zero, bb24
bb27:
  ADDI s5, zero, 1024
  # implict jump to bb28
bb28:
  # implict jump to bb29
bb29:
  ADD s6, s5, zero
  ADDI s7, zero, 1
  SUBW s3, s6, s7
  SLLIW s6, s3, 2
  ADDI t5, sp, 104
  ADD s6, t5, s6
  SW zero, 0(s6)
  # implict jump to bb30
bb30:
  BNE s3, zero, bb31
  JAL zero, bb2
bb31:
  ADD s5, s3, zero
  JAL zero, bb29
