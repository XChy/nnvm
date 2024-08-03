.global main
.section .bss

.section .data
value:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  LA t0, value
  LW t1, 0(t0)
  ADDI t0, zero, 0
  BLT t0, t1, bb3
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  ADD a0, t0, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADDIW t1, t0, 1
  LA t0, value
  LW t0, 0(t0)
  BLT t1, t0, bb6
  # implict jump to bb5
bb5:
  ADD t0, t1, zero
  JAL zero, bb2
bb6:
  ADD t0, t1, zero
  JAL zero, bb4
