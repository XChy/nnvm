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
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  CALL getint
  ADD s2, a0, zero
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  ADD s2, s1, zero
  # implict jump to bb3
bb3:
  ADD s1, s2, zero
  ADD s3, s0, zero
  XOR s4, s1, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb5
  # implict jump to bb4
bb4:
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
bb5:
  ADDI s4, zero, 1
  SUBW s5, s1, s4
  SLLIW s1, s5, 2
  ADDI t5, sp, 0
  ADD s4, t5, s1
  LW s1, 0(s4)
  ADDW s4, s3, s1
  ADD s0, s4, zero
  ADD s2, s5, zero
  JAL zero, bb3
bb6:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s3, t5, s2
  CALL getint
  ADD s2, a0, zero
  SW s2, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
