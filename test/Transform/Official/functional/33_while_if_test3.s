.global main
.global deepWhileBr
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
  # implict jump to bb4
bb4:
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  ADD s6, s3, zero
  SLTI s7, s6, 100
  BNE s7, zero, bb11
  # implict jump to bb6
bb6:
  ADD s7, s5, zero
  ADD s8, s6, zero
  # implict jump to bb7
bb7:
  ADD s1, s8, zero
  ADD s0, s7, zero
  # implict jump to bb8
bb8:
  SLTI s5, s1, 75
  BNE s5, zero, bb10
  # implict jump to bb9
bb9:
  ADD s2, s1, zero
  JAL zero, bb2
bb10:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb5
bb11:
  ADDIW s6, s6, 42
  ADDI s9, zero, 99
  BLT s9, s6, bb14
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb7
bb14:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb13
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
  # implict jump to bb19
bb19:
  ADD s4, zero, zero
  # implict jump to bb20
bb20:
  ADD s5, s4, zero
  ADD s6, s2, zero
  SLTI s7, s6, 100
  BNE s7, zero, bb26
  # implict jump to bb21
bb21:
  ADD s7, s5, zero
  ADD s8, s6, zero
  # implict jump to bb22
bb22:
  ADD s1, s8, zero
  ADD s0, s7, zero
  # implict jump to bb23
bb23:
  SLTI s5, s1, 75
  BNE s5, zero, bb25
  # implict jump to bb24
bb24:
  ADD s3, s1, zero
  JAL zero, bb17
bb25:
  ADD s2, s1, zero
  ADD s4, s0, zero
  JAL zero, bb20
bb26:
  ADDIW s6, s6, 42
  ADDI s9, zero, 99
  BLT s9, s6, bb29
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD s7, s5, zero
  ADD s8, s6, zero
  JAL zero, bb22
bb29:
  ADDI s5, zero, 84
  ADDI s6, zero, 168
  JAL zero, bb28
