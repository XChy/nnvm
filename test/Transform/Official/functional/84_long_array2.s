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
  SD s4, 40(sp)
  ADD s0, a0, zero
  LA s1, a
  ADDI s2, s1, 20
  LUI s1, 1
  ADDIW s1, s1, -96
  SW s1, 0(s2)
  LUI s1, 4
  ADDIW s1, s1, -384
  LA s3, a
  ADD s4, s3, s1
  ADDI s1, zero, 3
  SW s1, 0(s4)
  LUI s1, 4
  ADDIW s1, s1, -4
  LA s3, a
  ADD s4, s3, s1
  ADDI s1, zero, 7
  SW s1, 0(s4)
  ADDI s1, s0, 28
  LUI s0, 2
  ADDIW s0, s0, 672
  LA s3, a
  ADD s4, s3, s0
  LW s0, 0(s4)
  ADDIW s3, s0, 9
  SW s3, 0(s1)
  LW s0, 0(s2)
  SLLIW s1, s0, 2
  LA s0, a
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
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
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb16
  # implict jump to bb3
bb3:
  LUI s2, 1
  ADDIW s2, s2, 0
  ADDI t5, sp, 104
  ADD s3, t5, s2
  ADDI s2, zero, 1
  SW s2, 0(s3)
  ADDI s2, zero, 1023
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb15
  # implict jump to bb5
bb5:
  LUI s4, 2
  ADDIW s4, s4, 0
  ADDI t5, sp, 104
  ADD s5, t5, s4
  ADDI s4, zero, 2
  SW s4, 0(s5)
  LUI s4, 2
  ADDIW s4, s4, 4
  ADDI t5, sp, 104
  ADD s5, t5, s4
  ADDI s4, zero, 3
  SW s4, 0(s5)
  ADDI s4, zero, 1022
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb14
  # implict jump to bb7
bb7:
  LUI s6, 3
  ADDIW s6, s6, 0
  ADDI t5, sp, 104
  ADD s7, t5, s6
  ADDI s6, zero, 4
  SW s6, 0(s7)
  LUI s6, 3
  ADDIW s6, s6, 4
  ADDI t5, sp, 104
  ADD s7, t5, s6
  ADDI s6, zero, 5
  SW s6, 0(s7)
  LUI s6, 3
  ADDIW s6, s6, 8
  ADDI t5, sp, 104
  ADD s7, t5, s6
  ADDI s6, zero, 6
  SW s6, 0(s7)
  ADDI s6, zero, 1021
  # implict jump to bb8
bb8:
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb13
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
  ADD s9, zero, s8
  # implict jump to bb10
bb10:
  ADD s8, s9, zero
  XOR s10, s8, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb12
  # implict jump to bb11
bb11:
  LA s10, a
  ADDI s11, s10, 20
  LUI s10, 1
  ADDIW s10, s10, -96
  SW s10, 0(s11)
  LUI s10, 4
  ADDIW s10, s10, -384
  LA ra, a
  ADD t0, ra, s10
  ADDI s10, zero, 3
  SW s10, 0(t0)
  LUI s10, 4
  ADDIW s10, s10, -4
  LA ra, a
  ADD t0, ra, s10
  ADDI s10, zero, 7
  SW s10, 0(t0)
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s10, t5, 28
  LUI ra, 2
  ADDIW ra, ra, 672
  LA t0, a
  ADD t1, t0, ra
  LW ra, 0(t1)
  ADDIW t0, ra, 9
  SW t0, 0(s10)
  LW s10, 0(s11)
  SLLIW s11, s10, 2
  LA s10, a
  ADD ra, s10, s11
  LW s10, 0(ra)
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADDI s10, t5, 32
  LW s11, 0(s10)
  ADD a0, s11, zero
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
  SUBW s11, s8, s10
  SLLIW s8, s11, 2
  ADDIW s10, s8, 24
  LUI t5, 4
  ADDIW t5, t5, 104
  ADD t5, t5, sp
  ADD s8, t5, s10
  SW zero, 0(s8)
  ADD s9, s11, zero
  JAL zero, bb10
bb13:
  ADDI s8, zero, 1
  SUBW s9, s7, s8
  SLLIW s7, s9, 2
  LUI s8, 3
  ADDIW s8, s8, 12
  ADDW s10, s7, s8
  ADDI t5, sp, 104
  ADD s7, t5, s10
  SW zero, 0(s7)
  ADD s6, s9, zero
  JAL zero, bb8
bb14:
  ADDI s6, zero, 1
  SUBW s7, s5, s6
  SLLIW s5, s7, 2
  LUI s6, 2
  ADDIW s6, s6, 8
  ADDW s8, s5, s6
  ADDI t5, sp, 104
  ADD s5, t5, s8
  SW zero, 0(s5)
  ADD s4, s7, zero
  JAL zero, bb6
bb15:
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLLIW s3, s5, 2
  LUI s4, 1
  ADDIW s4, s4, 4
  ADDW s6, s3, s4
  ADDI t5, sp, 104
  ADD s3, t5, s6
  SW zero, 0(s3)
  ADD s2, s5, zero
  JAL zero, bb4
bb16:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 104
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb2
