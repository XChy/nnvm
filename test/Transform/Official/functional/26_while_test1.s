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
  SD s6, 56(sp)
  ADDI s0, zero, 5
  ADDI s1, zero, 7
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  ADDIW s3, s3, 30
  SLTI s4, s2, 100
  BNE s4, zero, bb7
  # implict jump to bb2
bb2:
  ADD s4, s2, zero
  # implict jump to bb3
bb3:
  ADDI s6, zero, 100
  SUBW s4, s4, s6
  SLTI s6, s3, 100
  BNE s6, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD a0, s4, zero
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
bb6:
  ADD s0, s3, zero
  ADD s1, s4, zero
  JAL zero, bb1
bb7:
  # implict jump to bb8
bb8:
  ADD s5, s2, zero
  ADDIW s5, s5, 6
  SLTI s6, s5, 100
  BNE s6, zero, bb10
  # implict jump to bb9
bb9:
  ADD s4, s5, zero
  JAL zero, bb3
bb10:
  ADD s2, s5, zero
  JAL zero, bb8
