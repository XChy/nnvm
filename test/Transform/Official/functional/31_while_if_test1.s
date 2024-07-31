.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XORI s2, s1, 5
  SLTIU s2, s2, 1
  BNE s2, zero, bb10
  # implict jump to bb2
bb2:
  XORI s2, s1, 10
  SLTIU s2, s2, 1
  BNE s2, zero, bb9
  # implict jump to bb3
bb3:
  SLLIW s2, s1, 1
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADDIW s1, s1, 1
  SLTI s3, s1, 100
  BNE s3, zero, bb8
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:
  ADD s0, s1, zero
  JAL zero, bb1
bb9:
  ADDI s2, zero, 42
  JAL zero, bb4
bb10:
  ADDI s2, zero, 25
  JAL zero, bb5
