.global main
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
  ADD s1, zero, zero
  ADDI s4, zero, 3
  # implict jump to bb1
bb1:
  ADD s0, s4, zero
  ADD s3, s1, zero
  SLLIW s0, s0, 1
  ADDIW s3, s3, 1
  SLTI s5, s3, 5
  BNE s5, zero, bb5
  # implict jump to bb2
bb2:
  # implict jump to bb3
bb3:
  ADD s2, s0, zero
  # implict jump to bb4
bb4:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  ADD s1, s3, zero
  ADD s4, s0, zero
  JAL zero, bb1
