.global go
.section .bss

.section .data
value:
.word 0x00000000
.section .text
go:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, value
  LW s0, 0(s0)
  ADDI s1, zero, 0
  BLT s1, s0, bb3
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  ADDIW s2, s2, 1
  LA s3, value
  LW s3, 0(s3)
  BLT s2, s3, bb6
  # implict jump to bb5
bb5:
  ADD s0, s2, zero
  JAL zero, bb2
bb6:
  ADD s1, s2, zero
  JAL zero, bb4
