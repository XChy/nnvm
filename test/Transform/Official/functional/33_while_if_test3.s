.global main
.global deepWhileBr
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, zero, zero
  ADDI s1, zero, 4
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb3
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
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  SLTI s4, s2, 100
  BNE s4, zero, bb6
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb5
bb5:
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb1
bb6:
  ADDIW s2, s2, 42
  ADDI s6, zero, 99
  SLT s6, s6, s2
  BNE s6, zero, bb9
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb5
bb9:
  ADDI s3, zero, 84
  ADDI s2, zero, 168
  JAL zero, bb8
deepWhileBr:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s0, a0, zero
  ADDW s0, s0, a1
  ADD s1, zero, zero
  # implict jump to bb11
bb11:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 75
  BNE s4, zero, bb13
  # implict jump to bb12
bb12:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:
  SLTI s4, s2, 100
  BNE s4, zero, bb16
  # implict jump to bb14
bb14:
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb15
bb15:
  ADD s1, s4, zero
  ADD s0, s5, zero
  JAL zero, bb11
bb16:
  ADDIW s2, s2, 42
  ADDI s6, zero, 99
  SLT s6, s6, s2
  BNE s6, zero, bb19
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb15
bb19:
  ADDI s3, zero, 84
  ADDI s2, zero, 168
  JAL zero, bb18
