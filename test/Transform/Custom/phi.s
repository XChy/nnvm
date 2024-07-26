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
  LA s1, value
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb3
  # implict jump to bb1
bb1:
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADD s2, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s2, zero
  ADDIW s0, s3, 1
  # implict jump to bb5
bb5:
  LA s3, value
  LW s3, 0(s3)
  BLT s0, s3, bb7
  # implict jump to bb6
bb6:
  ADD s1, s0, zero
  JAL zero, bb2
bb7:
  ADD s2, s0, zero
  JAL zero, bb4
