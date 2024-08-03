.global main
.section .bss





.section .data
e:
.word 0x00000000
c:
.word 0x00000000
b:
.word 0x00000000
d:
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
  ADD s1, a0, zero
  LA s0, a
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, b
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, c
  SW s1, 0(s0)
  CALL getint
  ADD s1, a0, zero
  LA s0, d
  SW s1, 0(s0)
  CALL getint
  ADD a1, a0, zero
  LA t0, e
  SW a1, 0(t0)
  LA t0, a
  LW a3, 0(t0)
  LA t0, b
  LW t2, 0(t0)
  LA t0, c
  LW a0, 0(t0)
  MULW t0, t2, a0
  SUBW t1, a3, t0
  LA t0, d
  LW a2, 0(t0)
  DIVW t0, a3, a0
  SUBW t0, a2, t0
  BNE t1, t0, bb9
  # implict jump to bb1
bb1:
  MULW t0, a3, t2
  DIVW t1, t0, a0
  ADDW t0, a1, a2
  XOR t0, t1, t0
  SLTIU t0, t0, 1
  # implict jump to bb2
bb2:
  BNE t0, zero, bb8
  # implict jump to bb3
bb3:
  ADDW t0, a3, t2
  ADDW t1, t0, a0
  ADDW t0, a2, a1
  XOR t0, t1, t0
  SLTIU t0, t0, 1
  # implict jump to bb4
bb4:
  BNE t0, zero, bb7
  # implict jump to bb5
bb5:
  ADD t0, zero, zero
  # implict jump to bb6
bb6:
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:
  ADDI t0, zero, 1
  JAL zero, bb6
bb8:
  ADDI t0, zero, 1
  JAL zero, bb4
bb9:
  ADDI t0, zero, 1
  JAL zero, bb2
