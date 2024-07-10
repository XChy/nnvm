.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 400(sp)
  SD s4, 408(sp)
  SD s3, 416(sp)
  SD s2, 424(sp)
  SD s1, 432(sp)
  SD s5, 440(sp)
  SD s0, 448(sp)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  CALL getint
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  CALL getint
  ADD s3, a0, zero
  SW s3, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  ADD s2, s1, zero
  JAL zero, bb4
bb4:
  ADD s1, s2, zero
  ADD s3, s0, zero
  XOR s4, s1, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  ADDI s1, zero, 4
  MULW s4, s5, s1
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW s4, 0(s1)
  ADDW s1, s3, s4
  ADD s0, s1, zero
  ADD s2, s5, zero
  JAL zero, bb4
bb6:
  ADDI s0, zero, 79
  REMW s1, s3, s0
  ADD a0, s1, zero
  LD ra, 400(sp)
  LD s4, 408(sp)
  LD s3, 416(sp)
  LD s2, 424(sp)
  LD s1, 432(sp)
  LD s5, 440(sp)
  LD s0, 448(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
