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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
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
  LW s1, 0(s4)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LUI s0, 2
  ADDIW s0, s0, 672
  LA s3, a
  ADD s4, s3, s0
  LW s0, 0(s4)
  ADDIW s3, s0, 9
  SW s3, 0(s1)
  LW s0, 0(s2)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  LUI t0, 1048568
  ADDIW t0, t0, -48
  ADD sp, sp, t0
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  SD s0, 0(t6)
  ADDI s0, zero, 1024
  JAL zero, bb2
bb2:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb2
bb4:
  LUI s0, 1
  ADDIW s0, s0, 0
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 1023
  JAL zero, bb5
bb5:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LUI s1, 1
  ADDIW s1, s1, 4
  ADDW s4, s2, s1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s4
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb5
bb7:
  LUI s0, 2
  ADDIW s0, s0, 0
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 2
  ADDIW s0, s0, 4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  ADDI s0, zero, 1022
  JAL zero, bb8
bb8:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LUI s1, 2
  ADDIW s1, s1, 8
  ADDW s4, s2, s1
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s4
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb8
bb10:
  LUI s0, 3
  ADDIW s0, s0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 3
  ADDIW s0, s0, 4
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 3
  ADDIW s0, s0, 8
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  ADDI s0, zero, 1021
  JAL zero, bb11
bb11:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  LUI s1, 3
  ADDIW s1, s1, 12
  ADDW s4, s2, s1
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  ADD s1, t6, s4
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb11
bb13:
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 8
  SW zero, 0(s0)
  ADDI s0, sp, 12
  SW zero, 0(s0)
  ADDI s0, sp, 16
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LUI s0, 1
  ADDIW s0, s0, -6
  ADD s1, zero, s0
  JAL zero, bb14
bb14:
  ADD s0, s1, zero
  XOR s2, s0, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  ADDI s0, zero, 4
  MULW s2, s3, s0
  ADDIW s0, s2, 24
  ADDI t5, sp, 0
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD s1, s3, zero
  JAL zero, bb14
bb16:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL f1
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, sp, 32
  LW s1, 0(s0)
  ADD a0, s1, zero
  LUI ra, 8
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 8
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 8
  ADDIW t5, t5, 32
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 8
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 8
  ADDIW t0, t0, 48
  ADD sp, sp, t0
  JALR zero, 0(ra)
