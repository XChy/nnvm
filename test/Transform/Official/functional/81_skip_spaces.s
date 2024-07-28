.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -496
  SD ra, 400(sp)
  SD s0, 408(sp)
  SD s1, 416(sp)
  SD s2, 424(sp)
  SD s3, 432(sp)
  SD s4, 440(sp)
  SD s5, 448(sp)
  SD s6, 456(sp)
  SD s7, 464(sp)
  SD s8, 472(sp)
  SD s9, 480(sp)
  CALL getint
  ADD s3, a0, zero
  BNE s3, zero, bb11
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  # implict jump to bb2
bb2:
  BNE s3, zero, bb5
  # implict jump to bb3
bb3:
  ADD s5, zero, zero
  # implict jump to bb4
bb4:
  ADDI s7, zero, 79
  REMW s5, s5, s7
  ADD a0, s5, zero
  LD ra, 400(sp)
  LD s0, 408(sp)
  LD s1, 416(sp)
  LD s2, 424(sp)
  LD s3, 432(sp)
  LD s4, 440(sp)
  LD s5, 448(sp)
  LD s6, 456(sp)
  LD s7, 464(sp)
  LD s8, 472(sp)
  LD s9, 480(sp)
  ADDI sp, sp, 496
  JALR zero, 0(ra)
bb5:
  # implict jump to bb6
bb6:
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD s7, s6, zero
  ADD s8, s3, zero
  ADDI s9, zero, 1
  SUBW s1, s8, s9
  SLLIW s8, s1, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s2, s7, s8
  # implict jump to bb8
bb8:
  BNE s1, zero, bb10
  # implict jump to bb9
bb9:
  ADD s5, s2, zero
  JAL zero, bb4
bb10:
  ADD s3, s1, zero
  ADD s6, s2, zero
  JAL zero, bb7
bb11:
  # implict jump to bb12
bb12:
  ADD s4, zero, zero
  # implict jump to bb13
bb13:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s0, s5, 1
  # implict jump to bb14
bb14:
  CALL getint
  ADD s5, a0, zero
  BNE s5, zero, bb16
  # implict jump to bb15
bb15:
  ADD s3, s0, zero
  JAL zero, bb2
bb16:
  ADD s4, s0, zero
  JAL zero, bb13
