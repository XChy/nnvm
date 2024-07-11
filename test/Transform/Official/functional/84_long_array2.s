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
  ADDI s1, s1, 20
  LUI s2, 1
  ADDIW s2, s2, -96
  SW s2, 0(s1)
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
  ADDI s0, s0, 28
  LUI s2, 2
  ADDIW s2, s2, 672
  LA s3, a
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADDIW s2, s2, 9
  SW s2, 0(s0)
  LW s0, 0(s1)
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
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s10, 96(sp)
  ADDI s0, zero, 1024
  # implict jump to bb2
bb2:
  ADD s1, s0, zero
  BNE s1, zero, bb16
  # implict jump to bb3
bb3:
  LUI s2, 1
  ADDIW s2, s2, 0
  ADDI t5, sp, 104
  ADD s2, t5, s2
  ADDI s3, zero, 1
  SW s3, 0(s2)
  ADDI s2, zero, 1023
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  BNE s3, zero, bb15
  # implict jump to bb5
bb5:
  LUI s4, 2
  ADDIW s4, s4, 0
  ADDI t5, sp, 104
  ADD s4, t5, s4
  ADDI s5, zero, 2
  SW s5, 0(s4)
  LUI s4, 2
  ADDIW s4, s4, 4
  ADDI t5, sp, 104
  ADD s4, t5, s4
  ADDI s5, zero, 3
  SW s5, 0(s4)
  ADDI s4, zero, 1022
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  BNE s5, zero, bb14
  # implict jump to bb7
bb7:
  LUI s6, 3
  ADDIW s6, s6, 0
  ADDI t5, sp, 104
  ADD s6, t5, s6
  ADDI s7, zero, 4
  SW s7, 0(s6)
  LUI s6, 3
  ADDIW s6, s6, 4
  ADDI t5, sp, 104
  ADD s6, t5, s6
  ADDI s7, zero, 5
  SW s7, 0(s6)
  LUI s6, 3
  ADDIW s6, s6, 8
  ADDI t5, sp, 104
  ADD s6, t5, s6
  ADDI s7, zero, 6
  SW s7, 0(s6)
  ADDI s6, zero, 1021
  # implict jump to bb8
bb8:
  ADD s7, s6, zero
  BNE s7, zero, bb13
  # implict jump to bb9
bb9:
  ADDI s8, zero, 1
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  SW s8, 0(t5)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s8, t5, 4
  ADDI s9, zero, 2
  SW s9, 0(s8)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s8, t5, 8
  SW zero, 0(s8)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s8, t5, 12
  SW zero, 0(s8)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s8, t5, 16
  ADDI s9, zero, 3
  SW s9, 0(s8)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s8, t5, 20
  ADDI s9, zero, 4
  SW s9, 0(s8)
  LUI s8, 1
  ADDIW s8, s8, -6
  ADD s8, zero, s8
  # implict jump to bb10
bb10:
  ADD s9, s8, zero
  BNE s9, zero, bb12
  # implict jump to bb11
bb11:
  LA s10, a
  ADDI s10, s10, 20
  LUI s11, 1
  ADDIW s11, s11, -96
  SW s11, 0(s10)
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
  LW s10, 0(s10)
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
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s10, 96(sp)
  LUI t0, 8
  ADDIW t0, t0, 112
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb12:
  ADDI s10, zero, 1
  SUBW s9, s9, s10
  SLLIW s10, s9, 2
  ADDIW s10, s10, 24
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADD s10, t5, s10
  SW zero, 0(s10)
  ADD s8, s9, zero
  JAL zero, bb10
bb13:
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SLLIW s8, s7, 2
  LUI s9, 3
  ADDIW s9, s9, 12
  ADDW s8, s8, s9
  ADDI t5, sp, 104
  ADD s8, t5, s8
  SW zero, 0(s8)
  ADD s6, s7, zero
  JAL zero, bb8
bb14:
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SLLIW s6, s5, 2
  LUI s7, 2
  ADDIW s7, s7, 8
  ADDW s6, s6, s7
  ADDI t5, sp, 104
  ADD s6, t5, s6
  SW zero, 0(s6)
  ADD s4, s5, zero
  JAL zero, bb6
bb15:
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  SLLIW s4, s3, 2
  LUI s5, 1
  ADDIW s5, s5, 4
  ADDW s4, s4, s5
  ADDI t5, sp, 104
  ADD s4, t5, s4
  SW zero, 0(s4)
  ADD s2, s3, zero
  JAL zero, bb4
bb16:
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  SLLIW s2, s1, 2
  ADDI t5, sp, 104
  ADD s2, t5, s2
  SW zero, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb2
