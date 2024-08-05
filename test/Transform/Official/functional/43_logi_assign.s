.global main
.section .bss


.section .data
b:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  CALL getint
  LA t0, b
  SW a0, 0(t0)
  LA t0, a
  LW t0, 0(t0)
  XOR t1, t0, a0
  SLTIU t1, t1, 1
  BNE t1, zero, bb6
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDI a0, zero, 1
  JAL zero, bb4
bb6:
  XORI t0, t0, 3
  SLTU t0, zero, t0
  JAL zero, bb2
