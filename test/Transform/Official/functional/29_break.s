.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  ADDI s2, zero, 0
  SLTI s2, s2, 100
  BNE s2, zero, bb3
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  ADD s3, zero, zero
  ADD s4, zero, zero
  # implict jump to bb5
bb5:
  ADD s5, s4, zero
  ADD s6, s3, zero
  XORI s7, s6, 50
  SLTIU s7, s7, 1
  BNE s7, zero, bb10
  # implict jump to bb6
bb6:
  ADDW s0, s5, s6
  ADDIW s1, s6, 1
  # implict jump to bb7
bb7:
  SLTI s5, s1, 100
  BNE s5, zero, bb9
  # implict jump to bb8
bb8:
  ADD s2, s0, zero
  JAL zero, bb2
bb9:
  ADD s3, s1, zero
  ADD s4, s0, zero
  JAL zero, bb5
bb10:
  ADD s2, s0, zero
  JAL zero, bb2
