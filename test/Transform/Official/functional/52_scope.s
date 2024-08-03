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
  SLTIU s2, a0, 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, a0, zero
  BNE s2, zero, bb12
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  ADDIW s1, s1, 1
  SLTI a0, s1, 100
  BNE a0, zero, bb10
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
  ADD a0, s1, zero
  JAL zero, bb1
bb11:
  ADDIW a0, s0, 1
  JAL zero, bb5
bb12:
  ADDI a0, zero, 1
  JAL zero, bb3
