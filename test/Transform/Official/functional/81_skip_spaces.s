.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -480
  SD ra, 400(sp)
  SD s4, 408(sp)
  SD s3, 416(sp)
  SD s7, 424(sp)
  SD s2, 432(sp)
  SD s6, 440(sp)
  SD s1, 448(sp)
  SD s5, 456(sp)
  SD s0, 464(sp)
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
  ADD s2, zero, zero
  ADD s3, s1, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  XOR s6, s4, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
  ADDI s6, zero, 79
  REMW s7, s5, s6
  ADD a0, s7, zero
  LD ra, 400(sp)
  LD s4, 408(sp)
  LD s3, 416(sp)
  LD s7, 424(sp)
  LD s2, 432(sp)
  LD s6, 440(sp)
  LD s1, 448(sp)
  LD s5, 456(sp)
  LD s0, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb5:
  ADDI s6, zero, 1
  SUBW s7, s4, s6
  SLLIW s4, s7, 2
  ADDI t5, sp, 0
  ADD s6, t5, s4
  LW s4, 0(s6)
  ADDW s6, s5, s4
  ADD s2, s6, zero
  ADD s3, s7, zero
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
