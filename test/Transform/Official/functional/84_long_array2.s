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
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  ADDI s2, zero, 5
  MULW s3, s1, s2
  LA s1, a
  ADD s2, s1, s3
  LUI s1, 1
  ADDI s1, s1, -96
  SW s1, 0(s2)
  ADDI s1, zero, 4
  LUI s2, 1
  ADDI s2, s2, -96
  MULW s3, s1, s2
  LA s1, a
  ADD s2, s1, s3
  ADDI s1, zero, 3
  SW s1, 0(s2)
  ADDI s1, zero, 4
  LUI s2, 1
  ADDI s2, s2, -1
  MULW s3, s1, s2
  LA s1, a
  ADD s2, s1, s3
  ADDI s1, zero, 7
  SW s1, 0(s2)
  ADDI s1, zero, 4
  LUI s2, 1
  ADDI s2, s2, -1
  MULW s3, s1, s2
  LA s1, a
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  ADDI s0, zero, 4
  LUI s2, 1
  ADDI s2, s2, -1880
  MULW s3, s0, s2
  LA s0, a
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 9
  SW s2, 0(s1)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  LUI t0, 1048568
  ADDI t0, t0, -80
  ADD sp, sp, t0
  LUI t5, 8
  ADDI t5, t5, 40
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 8
  ADDI t6, t6, 48
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 8
  ADDI t5, t5, 56
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 8
  ADDI t6, t6, 64
  ADD t6, t6, sp
  SD s0, 0(t6)
  ADDI s0, zero, 1024
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  SW s0, 0(t5)
  JAL zero, bb2
bb2:
  LUI t6, 4
  ADDI t6, t6, 32
  ADD t6, t6, sp
  LW s0, 0(t6)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb3
  JAL zero, bb4
bb3:
  LUI t5, 4
  ADDI t5, t5, 32
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t6, 4
  ADDI t6, t6, 32
  ADD t6, t6, sp
  SW s2, 0(t6)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb2
bb4:
  LUI s0, 1
  ADDI s0, s0, 0
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 1
  SW s0, 0(s1)
  ADDI s0, zero, 1023
  LUI t5, 4
  ADDI t5, t5, 24
  ADD t5, t5, sp
  SW s0, 0(t5)
  JAL zero, bb5
bb5:
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  LW s0, 0(t6)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb6:
  LUI t5, 4
  ADDI t5, t5, 24
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t6, 4
  ADDI t6, t6, 24
  ADD t6, t6, sp
  SW s2, 0(t6)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LUI s0, 1
  ADDI s0, s0, 4
  ADDW s2, s1, s0
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  ADD s0, t5, s2
  SW zero, 0(s0)
  JAL zero, bb5
bb7:
  LUI s0, 2
  ADDI s0, s0, 0
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 2
  SW s0, 0(s1)
  LUI s0, 2
  ADDI s0, s0, 4
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 3
  SW s0, 0(s1)
  ADDI s0, zero, 1022
  LUI t6, 4
  ADDI t6, t6, 16
  ADD t6, t6, sp
  SW s0, 0(t6)
  JAL zero, bb8
bb8:
  LUI t5, 4
  ADDI t5, t5, 16
  ADD t5, t5, sp
  LW s0, 0(t5)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  LUI t6, 4
  ADDI t6, t6, 16
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t5, 4
  ADDI t5, t5, 16
  ADD t5, t5, sp
  SW s2, 0(t5)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LUI s0, 2
  ADDI s0, s0, 8
  ADDW s2, s1, s0
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  ADD s0, t6, s2
  SW zero, 0(s0)
  JAL zero, bb8
bb10:
  LUI s0, 3
  ADDI s0, s0, 0
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 4
  SW s0, 0(s1)
  LUI s0, 3
  ADDI s0, s0, 4
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  ADD s1, t6, s0
  ADDI s0, zero, 5
  SW s0, 0(s1)
  LUI s0, 3
  ADDI s0, s0, 8
  LUI t5, 4
  ADDI t5, t5, 40
  ADD t5, t5, sp
  ADD s1, t5, s0
  ADDI s0, zero, 6
  SW s0, 0(s1)
  ADDI s0, zero, 1021
  LUI t6, 4
  ADDI t6, t6, 8
  ADD t6, t6, sp
  SW s0, 0(t6)
  JAL zero, bb11
bb11:
  LUI t5, 4
  ADDI t5, t5, 8
  ADD t5, t5, sp
  LW s0, 0(t5)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb12:
  LUI t6, 4
  ADDI t6, t6, 8
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t5, 4
  ADDI t5, t5, 8
  ADD t5, t5, sp
  SW s2, 0(t5)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LUI s0, 3
  ADDI s0, s0, 12
  ADDW s2, s1, s0
  LUI t6, 4
  ADDI t6, t6, 40
  ADD t6, t6, sp
  ADD s0, t6, s2
  SW zero, 0(s0)
  JAL zero, bb11
bb13:
  ADDI t5, sp, 8
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 12
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 16
  SW zero, 0(s0)
  ADDI s0, sp, 20
  SW zero, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 4
  SW s1, 0(s0)
  LUI s0, 1
  ADDI s0, s0, -6
  SW s0, 0(sp)
  JAL zero, bb14
bb14:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDIW s0, s1, 24
  ADDI t6, sp, 8
  ADD s1, t6, s0
  SW zero, 0(s1)
  JAL zero, bb14
bb16:
  ADDI s0, zero, 16
  MULW s1, zero, s0
  ADDI t5, sp, 8
  ADD s0, t5, s1
  ADD a0, s0, zero
  CALL f1
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 16
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  ADDI s1, zero, 4
  MULW s2, zero, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LUI ra, 8
  ADDI ra, ra, 40
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 8
  ADDI t5, t5, 48
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 8
  ADDI t6, t6, 56
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 8
  ADDI t5, t5, 64
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 8
  ADDI t0, t0, 80
  ADD sp, sp, t0
  JALR zero, 0(ra)
