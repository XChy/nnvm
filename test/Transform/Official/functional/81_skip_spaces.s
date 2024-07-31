.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -480
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  SD s4, 440(sp)
  SD s5, 448(sp)
  SD s6, 456(sp)
  SD s7, 464(sp)
  CALL getint
  ADD s0, a0, zero
  BNE s0, zero, bb9
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  BNE s0, zero, bb5
  # implict jump to bb3
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADDI s7, zero, 79
  REMW s3, s3, s7
  ADD a0, s3, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  LD s3, 432(sp)
  LD s4, 440(sp)
  LD s5, 448(sp)
  LD s6, 456(sp)
  LD s7, 464(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  ADD s6, s0, zero
  ADDI s7, zero, 1
  SUBW s6, s6, s7
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  ADDW s5, s5, s7
  BNE s6, zero, bb8
  # implict jump to bb7
bb7:
  ADD s3, s5, zero
  JAL zero, bb4
bb8:
  ADD s0, s6, zero
  ADD s4, s5, zero
  JAL zero, bb6
bb9:
  ADD s1, zero, zero
  # implict jump to bb10
bb10:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  CALL getint
  ADD s4, a0, zero
  SW s4, 0(s3)
  ADDIW s2, s2, 1
  CALL getint
  ADD s3, a0, zero
  BNE s3, zero, bb12
  # implict jump to bb11
bb11:
  ADD s0, s2, zero
  JAL zero, bb2
bb12:
  ADD s1, s2, zero
  JAL zero, bb10
