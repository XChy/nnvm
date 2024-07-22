.global go
.section .bss

.section .data
value:
.word 0x00000000
.section .text
go:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, value
  LW s2, 0(s2)
  BLT s1, s2, bb3
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb1
