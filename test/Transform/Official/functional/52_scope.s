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
  SLTIU s1, a0, 1
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, a0, zero
  BNE s1, zero, bb13
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb12
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  ADDIW s2, s2, 1
  SLTI a0, s2, 100
  BNE a0, zero, bb11
  # implict jump to bb6
bb6:
  # implict jump to bb7
bb7:
  SLTI a0, s0, 100
  BNE a0, zero, bb10
  # implict jump to bb8
bb8:
  ADD a0, zero, zero
  CALL putint
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb10:
  ADDI a0, zero, 1
  CALL putint
  JAL zero, bb9
bb11:
  ADD a0, s2, zero
  JAL zero, bb1
bb12:
  ADDIW a0, s0, 1
  JAL zero, bb5
bb13:
  ADDI a0, zero, 1
  JAL zero, bb3
