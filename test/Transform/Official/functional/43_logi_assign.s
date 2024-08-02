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
  ADD t0, a0, zero
  LA t1, b
  SW t0, 0(t1)
  LA t1, a
  LW t1, 0(t1)
  XOR t0, t1, t0
  SLTIU t0, t0, 1
  BNE t0, zero, bb6
  # implict jump to bb1
bb1:
  ADD t0, zero, zero
  # implict jump to bb2
bb2:
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:
  ADD t0, zero, zero
  # implict jump to bb4
bb4:
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:
  ADDI t0, zero, 1
  JAL zero, bb4
bb6:
  XORI t0, t1, 3
  SLTU t0, zero, t0
  JAL zero, bb2
