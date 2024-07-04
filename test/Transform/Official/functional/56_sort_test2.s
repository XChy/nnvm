.global main
.global insertsort
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  LA s0, n
  ADDI s1, zero, 10
  SW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s1, s0, zero
  ADDI t5, sp, 16
  ADD s0, t5, s1
  ADDI s1, zero, 4
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 1
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 2
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  ADDI s1, zero, 9
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 3
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  SW zero, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 5
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 6
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  ADDI s1, zero, 6
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 7
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  ADDI s1, zero, 5
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 8
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  ADDI s1, zero, 7
  SW s1, 0(s0)
  ADDI s0, zero, 4
  ADDI s1, zero, 9
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  ADDI s1, zero, 8
  SW s1, 0(s0)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  CALL insertsort
  ADD s0, a0, zero
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 0(s0)
  SW s1, 0(sp)
  ADD a0, s1, zero
  CALL putint
  ADDI s0, zero, 10
  SW s0, 0(sp)
  ADDI a0, zero, 10
  CALL putch
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb3:
  ADD a0, zero, zero
  LD ra, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
insertsort:
  ADDI sp, sp, -80
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 1
  SW s1, 24(sp)
  JAL zero, bb5
bb5:
  LW s1, 24(sp)
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb6
  JAL zero, bb7
bb6:
  LW s1, 24(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 16(sp)
  LW s1, 24(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  JAL zero, bb8
bb7:
  ADD a0, zero, zero
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb8:
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUB s3, zero, s2
  SLT s2, s3, s1
  BNE s2, zero, bb11
  JAL zero, bb12
bb9:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SW s3, 0(s1)
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  JAL zero, bb8
bb10:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 16(sp)
  SW s2, 0(s1)
  LW s1, 24(sp)
  ADDIW s2, s1, 1
  SW s2, 24(sp)
  JAL zero, bb5
bb11:
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 0(s2)
  SLT s2, s1, s3
  SB s2, 0(sp)
  JAL zero, bb13
bb12:
  SB zero, 0(sp)
  JAL zero, bb13
bb13:
  LB s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb9
  JAL zero, bb10
