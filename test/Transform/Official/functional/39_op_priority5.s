.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss





.section .data
e:
.word 0x00000004
c:
.word 0x00000001
b:
.word 0x00000000
d:
.word 0x00000002
a:
.word 0x00000001
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA t0, a
  LA t2, b
  LA a0, c
  LA a1, e
  LW t1, 0(t0)
  LA a2, d
  LW t2, 0(t2)
  LW a0, 0(a0)
  MULW t0, t1, t2
  DIVW t0, t0, a0
  LW a1, 0(a1)
  LW a2, 0(a2)
  ADDW a3, a1, a2
  BEQ t0, a3, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  DIVW a1, t1, a0
  MULW t0, t2, a0
  SUBW t0, t1, t0
  SUBW t1, a2, a1
  XOR t0, t0, t1
  SLTIU s0, t0, 1
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, s0, zero
  CALL putint
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI s0, zero, 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADDW t0, t1, t2
  ADDW a1, a2, a1
  MULW t0, t1, t0
  ADDW t0, t0, a0
  SLT t0, a1, t0
  XORI t0, t0, 1
  JAL zero, bb2
