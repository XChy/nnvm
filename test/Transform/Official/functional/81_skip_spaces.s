.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 416(sp)
  SD s3, 424(sp)
  SD s2, 432(sp)
  SD s1, 440(sp)
  SD s0, 448(sp)
  ADDI s0, zero, 0
  SW s0, 8(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  CALL getint
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb1
bb3:
  JAL zero, bb4
bb4:
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDI t6, sp, 16
  ADD s1, t6, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  LW s0, 0(sp)
  ADDI s1, zero, 79
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 416(sp)
  LD s3, 424(sp)
  LD s2, 432(sp)
  LD s1, 440(sp)
  LD s0, 448(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
