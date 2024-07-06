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
  ADD s3, s2, zero
  ADDI s4, zero, -1
  SLT s5, s4, s3
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADD a0, s0, zero
  ADD a1, s3, zero
  ADD a2, s5, zero
  CALL heap_ajust
  ADD s4, a0, zero
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADD s2, s5, zero
  JAL zero, bb1
bb3:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADD s1, s3, zero
  JAL zero, bb4
bb4:
  ADD s2, s1, zero
  ADDI s3, zero, 0
  SLT s4, s3, s2
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s2, zero
  CALL swap
  ADD s3, a0, zero
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD a0, s0, zero
  ADD a1, zero, zero
  ADD a2, s4, zero
  CALL heap_ajust
  ADD s3, a0, zero
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADD s1, s4, zero
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
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
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
  ADD s1, s3, zero
  ADD s5, s4, zero
  ADDIW s6, s2, 1
  SLT s7, s5, s6
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
  SLT s6, s5, s2
  BNE s6, zero, bb11
  JAL zero, bb12
bb10:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb11:
  ADDI s6, zero, 4
  MULW s7, s5, s6
  ADD s6, s0, s7
  LW s7, 0(s6)
  ADDIW s6, s5, 1
  ADDI s8, zero, 4
  MULW s9, s6, s8
  ADD s6, s0, s9
  LW s8, 0(s6)
  SLT s6, s7, s8
  ADD s7, s6, zero
  JAL zero, bb13
bb12:
  ADD s7, zero, zero
  JAL zero, bb13
bb13:
  ADD s6, s7, zero
  BNE s6, zero, bb14
  JAL zero, bb19
bb14:
  ADDIW s6, s5, 1
  ADD s8, s6, zero
  JAL zero, bb15
bb15:
  ADD s6, s8, zero
  ADDI s9, zero, 4
  MULW s10, s1, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADD s9, s0, s11
  LW s11, 0(s9)
  SLT s9, s11, s10
  BNE s9, zero, bb16
  JAL zero, bb18
bb16:
  ADD a0, zero, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb17:
  ADD s4, s9, zero
  ADD s3, s6, zero
  JAL zero, bb8
bb18:
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s6, zero
  CALL swap
  ADD s9, a0, zero
  ADDI s9, zero, 2
  MULW s10, s6, s9
  ADDIW s9, s10, 1
  JAL zero, bb17
bb19:
  ADD s8, s5, zero
  JAL zero, bb15
main:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
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
  ADD s0, s1, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s0, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb22
  JAL zero, bb23
bb22:
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s0, 1
  ADD s1, s2, zero
  JAL zero, bb21
bb23:
  ADD a0, zero, zero
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
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
