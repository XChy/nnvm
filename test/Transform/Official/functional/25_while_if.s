.global main
.global deepWhileBr
.global get_one
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  ADDI s2, zero, 4
  SLTI s2, s2, 75
  BNE s2, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s2, zero, 4
  # implict jump to bb2
bb2:
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb3:
  ADDI s3, zero, 4
  ADD s4, zero, zero
  # implict jump to bb4
bb4:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLTI s7, s6, 100
  BNE s7, zero, bb10
  # implict jump to bb5
bb5:
  ADD s7, s5, zero
  ADD s8, s6, zero
  # implict jump to bb6
bb6:
  ADD s0, s8, zero
  ADD s1, s7, zero
  # implict jump to bb7
bb7:
  SLTI s5, s0, 75
  BNE s5, zero, bb9
  # implict jump to bb8
bb8:
  ADD s2, s0, zero
  JAL zero, bb2
bb9:
  ADD s3, s0, zero
  ADD s4, s1, zero
  JAL zero, bb4
bb10:
  ADDIW s6, s6, 42
  ADDI s9, zero, 99
  BLT s9, s6, bb13
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb6
bb13:
  # implict jump to bb14
bb14:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb12
deepWhileBr:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  ADD s2, a0, zero
  ADDW s2, s2, a1
  SLTI s3, s2, 75
  BNE s3, zero, bb18
  # implict jump to bb16
bb16:
  ADD s3, s2, zero
  # implict jump to bb17
bb17:
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb18:
  ADD s4, zero, zero
  # implict jump to bb19
bb19:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLTI s7, s6, 100
  BNE s7, zero, bb25
  # implict jump to bb20
bb20:
  ADD s7, s5, zero
  ADD s8, s6, zero
  # implict jump to bb21
bb21:
  ADD s1, s8, zero
  ADD s0, s7, zero
  # implict jump to bb22
bb22:
  SLTI s5, s1, 75
  BNE s5, zero, bb24
  # implict jump to bb23
bb23:
  ADD s3, s1, zero
  JAL zero, bb17
bb24:
  ADD s2, s1, zero
  ADD s4, s0, zero
  JAL zero, bb19
bb25:
  ADDIW s6, s6, 42
  ADDI s9, zero, 99
  BLT s9, s6, bb28
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb21
bb28:
  # implict jump to bb29
bb29:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb27
get_one:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 1
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
