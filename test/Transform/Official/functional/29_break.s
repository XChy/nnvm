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
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  XORI s5, s4, 50
  SLTIU s5, s5, 1
  BNE s5, zero, bb6
  # implict jump to bb2
bb2:
  ADDW s0, s3, s4
  ADDIW s3, s4, 1
  SLTI s4, s3, 100
  BNE s4, zero, bb5
  # implict jump to bb3
bb3:
  ADD s4, s0, zero
  # implict jump to bb4
bb4:
  ADD a0, s4, zero
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
  ADD s2, s0, zero
  JAL zero, bb1
bb6:
  ADD s4, s0, zero
  JAL zero, bb4
