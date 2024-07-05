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
  JAL zero, bb1
bb1:
  SLTI s4, s3, 10
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t5, sp, 0
  ADD s4, t5, s5
  SW zero, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb1
bb3:
  ADD s3, zero, zero
  JAL zero, bb4
bb4:
  SLT s4, s3, s2
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADDI t5, sp, 0
  ADD s5, t5, s7
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb4
bb6:
  ADDI s3, zero, 1
  JAL zero, bb7
bb7:
  SLTI s4, s3, 10
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 0
  ADD s4, t6, s5
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s6
  LW s6, 0(s5)
  ADDI s5, zero, 1
  SUBW s7, s3, s5
  ADDI s5, zero, 4
  MULW s8, s7, s5
  ADDI t6, sp, 0
  ADD s5, t6, s8
  LW s7, 0(s5)
  ADDW s5, s6, s7
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb7
bb9:
  ADD s3, s2, zero
  JAL zero, bb10
bb10:
  SLT s2, zero, s3
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADDI t5, sp, 0
  ADD s2, t5, s5
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s0, s6
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  LW s5, 0(s4)
  ADDI s4, zero, 1
  SUBW s6, s5, s4
  SW s6, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADDI t5, sp, 0
  ADD s2, t5, s5
  LW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s5, s4, s2
  ADD s2, s1, s5
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s0, s6
  LW s5, 0(s4)
  SW s5, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADD s3, s4, zero
  JAL zero, bb10
bb12:
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
main:
  ADDI sp, sp, -112
  SD ra, 80(sp)
  SD s2, 88(sp)
  SD s1, 96(sp)
  SD s0, 104(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 40
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 40
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 40
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 40
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 40
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 40
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 40
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 40
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 40
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 40
  ADD s0, t6, s2
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
  LA s0, n
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s2
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s1, 1
  ADD s1, s0, zero
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s2, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
