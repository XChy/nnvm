.global main
.section .bss


.section .data
b:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s1, a
  CALL getint
  ADD s0, a0, zero
  LA s2, b
  SW s0, 0(s1)
  LA s0, a
  CALL getint
  SW a0, 0(s2)
  LW t0, 0(s0)
  XOR t1, t0, a0
  SLTIU t1, t1, 1
  BNE t1, zero, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb4
bb6:   # loop depth 0
  XORI t0, t0, 3
  SLTU t0, zero, t0
  JAL zero, bb2
