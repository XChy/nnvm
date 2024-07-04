.global counting_sort
.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
counting_sort:
  ADDI sp, sp, -144
  SD ra, 72(sp)
  SD s4, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s6, 104(sp)
  SD s1, 112(sp)
  SD s5, 120(sp)
  SD s0, 128(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s2, 64(sp)
  ADDI s2, zero, 0
  SW s2, 0(sp)
  ADDI s2, zero, 0
  SW s2, 16(sp)
  ADDI s2, zero, 0
  SW s2, 8(sp)
  JAL zero, bb1
bb1:
  LW s2, 0(sp)
  SLTI s3, s2, 10
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t5, sp, 24
  ADD s2, t5, s4
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb1
bb3:
  JAL zero, bb4
bb4:
  LW s2, 16(sp)
  LW s3, 64(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  LW s2, 16(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDI t5, sp, 24
  ADD s3, t5, s5
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  SW s3, 0(s2)
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  JAL zero, bb4
bb6:
  ADDI s2, zero, 1
  SW s2, 0(sp)
  JAL zero, bb7
bb7:
  LW s2, 0(sp)
  SLTI s3, s2, 10
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb8
  JAL zero, bb9
bb8:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADDI t6, sp, 24
  ADD s2, t6, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t5, sp, 24
  ADD s3, t5, s5
  LW s4, 0(s3)
  LW s3, 0(sp)
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  ADDI s3, zero, 4
  MULW s5, s6, s3
  ADDI t6, sp, 24
  ADD s3, t6, s5
  LW s5, 0(s3)
  ADDW s3, s4, s5
  SW s3, 0(s2)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb7
bb9:
  LW s2, 64(sp)
  SW s2, 8(sp)
  JAL zero, bb10
bb10:
  LW s2, 8(sp)
  ADDI s3, zero, 0
  SLT s4, s3, s2
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb11
  JAL zero, bb12
bb11:
  LW s2, 8(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADDI t5, sp, 24
  ADD s2, t5, s4
  LW s3, 8(sp)
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s4, s3
  ADDI t6, sp, 24
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s4, s3
  SW s5, 0(s2)
  LW s2, 8(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADDI t5, sp, 24
  ADD s2, t5, s4
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s1, s4
  LW s3, 8(sp)
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  SW s4, 0(s2)
  LW s2, 8(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  SW s4, 8(sp)
  JAL zero, bb10
bb12:
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s4, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s6, 104(sp)
  LD s1, 112(sp)
  LD s5, 120(sp)
  LD s0, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -128
  SD ra, 96(sp)
  SD s2, 104(sp)
  SD s1, 112(sp)
  SD s0, 120(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 56
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 56
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 56
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 56
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 56
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 56
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 56
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 56
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 56
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 56
  ADD s0, t6, s2
  ADDI s1, zero, 8
  SW s1, 0(s0)
  SW zero, 48(sp)
  ADDI a0, sp, 56
  ADD a0, a0, zero
  ADDI a1, sp, 8
  ADD a1, a1, zero
  ADDI a2, zero, 10
  CALL counting_sort
  ADD s0, a0, zero
  SW s0, 48(sp)
  JAL zero, bb14
bb14:
  LW s0, 48(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  LW s0, 48(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 8
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI a0, zero, 10
  CALL putch
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb14
bb16:
  ADD a0, zero, zero
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
