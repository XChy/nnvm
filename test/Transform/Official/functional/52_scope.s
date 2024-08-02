.global main
.section .bss

.section .data
a:
.word 0x00000007
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA a0, a
  LW a0, 0(a0)
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  BNE a0, zero, bb12
  # implict jump to bb2
bb2:
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  XORI s2, s2, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb11
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADDIW s1, s1, 1
  SLTI s2, s1, 100
  BNE s2, zero, bb10
  # implict jump to bb6
bb6:
  SLTI a0, s0, 100
  BNE a0, zero, bb9
  # implict jump to bb7
bb7:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb9:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb8
bb10:
  JAL zero, bb1
bb11:
  ADDIW s0, s0, 1
  JAL zero, bb5
bb12:
  ADDI s2, zero, 1
  JAL zero, bb3
