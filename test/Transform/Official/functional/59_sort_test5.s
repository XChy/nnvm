.global heap_sort
.global heap_ajust
.global main
.global swap
.section .bss

.section .data
n:
.word 0x00000000
.section .text
heap_sort:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 2
  DIVW s3, s1, s2
  ADDI s2, zero, 1
  SUBW s4, s3, s2
  ADD s2, s4, zero
  JAL zero, bb1
bb1:
  ADDI s3, zero, 0
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  SLT s3, s5, s2
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s4, zero
  CALL heap_ajust
  ADD s3, a0, zero
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s2, s4, zero
  JAL zero, bb1
bb3:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb4
bb4:
  ADDI s2, zero, 0
  SLT s3, s2, s1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s1, zero
  CALL swap
  ADD s2, a0, zero
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s3, zero
  CALL heap_ajust
  ADD s2, a0, zero
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb4
bb6:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
heap_ajust:
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 2
  MULW s4, s1, s3
  ADDIW s3, s4, 1
  ADD s4, s3, zero
  ADD s3, s1, zero
  JAL zero, bb8
bb8:
  ADDIW s1, s2, 1
  SLT s5, s4, s1
  XOR s1, s5, zero
  SLTU s5, zero, s1
  BNE s5, zero, bb9
  JAL zero, bb10
bb9:
  SLT s1, s4, s2
  BNE s1, zero, bb11
  JAL zero, bb12
bb10:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb11:
  ADDI s1, zero, 4
  MULW s5, s4, s1
  ADD s1, s0, s5
  LW s5, 0(s1)
  ADDIW s1, s4, 1
  ADDI s6, zero, 4
  MULW s7, s1, s6
  ADD s1, s0, s7
  LW s6, 0(s1)
  SLT s1, s5, s6
  ADD s5, s1, zero
  JAL zero, bb13
bb12:
  ADD s5, zero, zero
  JAL zero, bb13
bb13:
  BNE s5, zero, bb14
  JAL zero, bb19
bb14:
  ADDIW s1, s4, 1
  ADD s6, s1, zero
  JAL zero, bb15
bb15:
  ADDI s1, zero, 4
  MULW s7, s3, s1
  ADD s1, s0, s7
  LW s7, 0(s1)
  ADDI s1, zero, 4
  MULW s8, s6, s1
  ADD s1, s0, s8
  LW s8, 0(s1)
  SLT s1, s8, s7
  BNE s1, zero, bb16
  JAL zero, bb18
bb16:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb17:
  ADD s4, s1, zero
  ADD s3, s6, zero
  JAL zero, bb8
bb18:
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, s6, zero
  CALL swap
  ADD s1, a0, zero
  ADDI s1, zero, 2
  MULW s7, s6, s1
  ADDIW s1, s7, 1
  JAL zero, bb17
bb19:
  ADD s6, s4, zero
  JAL zero, bb15
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MUL s1, zero, s0
  ADDI t5, sp, 0
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s0, t6, s2
  ADDI s1, zero, 8
  SW s1, 0(s0)
  LA s0, n
  LW s1, 0(s0)
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, s1, zero
  CALL heap_sort
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb21
bb21:
  LA s0, n
  LW s2, 0(s0)
  SLT s0, s1, s2
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
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
  JAL zero, bb21
bb23:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
swap:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s1, s3
  ADD s1, s0, s5
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADD s3, s0, s5
  LW s5, 0(s3)
  SW s5, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  SW s4, 0(s1)
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
