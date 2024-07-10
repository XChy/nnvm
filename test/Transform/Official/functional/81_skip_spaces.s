.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -464
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  SD s4, 440(sp)
  SD s5, 448(sp)
  SD s6, 456(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  CALL getint
  ADD s2, a0, zero
  XOR s2, s2, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb6
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  ADD s3, s1, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  XOR s6, s4, zero
  SLTU s6, zero, s6
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADDI s6, zero, 79
  REMW s6, s5, s6
  ADD a0, s6, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  LD s3, 432(sp)
  LD s4, 440(sp)
  LD s5, 448(sp)
  LD s6, 456(sp)
  ADDI sp, sp, 464
  JALR zero, 0(ra)
bb5:
  ADDI s6, zero, 1
  SUBW s4, s4, s6
  SLLIW s6, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  LW s6, 0(s6)
  ADDW s5, s5, s6
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb3
bb6:
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s2, t5, s2
  CALL getint
  ADD a0, a0, zero
  SW a0, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
