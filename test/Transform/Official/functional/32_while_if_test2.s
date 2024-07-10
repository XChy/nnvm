.global main
.global ifWhile
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -64
  SD s1, 0(sp)
  SD s6, 8(sp)
  SD s2, 16(sp)
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 3
  ADD s4, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s4, zero
  ADD s2, s0, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb4
  # implict jump to bb2
bb2:
  ADD s5, s2, zero
  # implict jump to bb3
bb3:
  ADD s0, s5, zero
  ADD a0, s0, zero
  LD s1, 0(sp)
  LD s6, 8(sp)
  LD s2, 16(sp)
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s3, s2, 1
  ADDIW s6, s1, 1
  ADD s0, s3, zero
  ADD s4, s6, zero
  JAL zero, bb1
ifWhile:
  ADDI sp, sp, -64
  SD s3, 0(sp)
  SD s2, 8(sp)
  SD s6, 16(sp)
  SD s1, 24(sp)
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 3
  ADD s5, zero, zero
  # implict jump to bb6
bb6:
  ADD s1, s5, zero
  ADD s2, s0, zero
  SLTI s3, s1, 5
  BNE s3, zero, bb9
  # implict jump to bb7
bb7:
  ADD s4, s2, zero
  # implict jump to bb8
bb8:
  ADD s0, s4, zero
  ADD a0, s0, zero
  LD s3, 0(sp)
  LD s2, 8(sp)
  LD s6, 16(sp)
  LD s1, 24(sp)
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  SLLIW s3, s2, 1
  ADDIW s6, s1, 1
  ADD s0, s3, zero
  ADD s5, s6, zero
  JAL zero, bb6
