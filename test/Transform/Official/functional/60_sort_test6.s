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
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s5, 64(sp)
  SD s7, 72(sp)
  SD s1, 80(sp)
  SD s6, 88(sp)
  SD s8, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, zero, zero
  JAL zero, bb1
bb1:
  ADD s4, s3, zero
  SLTI s5, s4, 10
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  SW zero, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb1
bb3:
  ADD s3, zero, zero
  JAL zero, bb4
bb4:
  ADD s4, s3, zero
  SLT s5, s4, s2
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t6, sp, 0
  ADD s6, t6, s8
  LW s7, 0(s5)
  ADDI s5, zero, 4
  MULW s8, s7, s5
  ADDI t5, sp, 0
  ADD s5, t5, s8
  LW s7, 0(s5)
  ADDIW s5, s7, 1
  SW s5, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb4
bb6:
  ADDI s3, zero, 1
  JAL zero, bb7
bb7:
  ADD s4, s3, zero
  SLTI s5, s4, 10
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADDI t6, sp, 0
  ADD s5, t6, s6
  LW s6, 0(s5)
  ADDI s7, zero, 1
  SUBW s8, s4, s7
  ADDI s7, zero, 4
  MULW s9, s8, s7
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s8, 0(s7)
  ADDW s7, s6, s8
  SW s7, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb7
bb9:
  ADD s3, s2, zero
  JAL zero, bb10
bb10:
  ADD s2, s3, zero
  SLT s4, zero, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s4, zero, 1
  SUBW s5, s2, s4
  ADDI s2, zero, 4
  MULW s4, s5, s2
  ADD s2, s0, s4
  LW s4, 0(s2)
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADDI t6, sp, 0
  ADD s4, t6, s7
  LW s6, 0(s2)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s8, s7, s6
  SW s8, 0(s4)
  LW s4, 0(s2)
  ADDI s6, zero, 4
  MULW s7, s4, s6
  ADDI t6, sp, 0
  ADD s4, t6, s7
  LW s6, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s6, s4
  ADD s4, s1, s7
  LW s6, 0(s2)
  SW s6, 0(s4)
  ADD s3, s5, zero
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s5, 64(sp)
  LD s7, 72(sp)
  LD s1, 80(sp)
  LD s6, 88(sp)
  LD s8, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD ra, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI t5, sp, 40
  ADD s0, t5, zero
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, sp, 52
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, sp, 56
  SW zero, 0(s0)
  ADDI s0, sp, 60
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 64
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, sp, 68
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, sp, 72
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, sp, 76
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  ADDI a0, sp, 40
  ADD a0, a0, zero
  ADDI a1, sp, 0
  ADD a1, a1, zero
  ADD a2, s1, zero
  CALL counting_sort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb14
bb14:
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
