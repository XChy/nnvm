.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -448
  SD ra, 400(sp)
  SD s4, 408(sp)
  SD s3, 416(sp)
  SD s2, 424(sp)
  SD s1, 432(sp)
  SD s0, 440(sp)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  CALL getint
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb3:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb4
bb4:
  XOR s0, s2, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 1
  SUBW s3, s2, s0
  ADDI s0, zero, 4
  MULW s4, s3, s0
  ADDI t6, sp, 0
  ADD s0, t6, s4
  LW s4, 0(s0)
  ADDW s0, s1, s4
  ADD s1, s0, zero
  ADD s2, s3, zero
  JAL zero, bb4
bb6:
  ADDI s0, zero, 79
  REMW s2, s1, s0
  ADD a0, s2, zero
  LD ra, 400(sp)
  LD s4, 408(sp)
  LD s3, 416(sp)
  LD s2, 424(sp)
  LD s1, 432(sp)
  LD s0, 440(sp)
  ADDI sp, sp, 448
  JALR zero, 0(ra)
