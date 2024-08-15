.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s3, a
  LA s2, b
  LA s1, c
  LA s0, d
  CALL getint
  LA s4, e
  SW a0, 0(s3)
  CALL getint
  SW a0, 0(s2)
  CALL getint
  SW a0, 0(s1)
  CALL getint
  SW a0, 0(s0)
  CALL getint
  SW a0, 0(s4)
  LW t1, 0(s3)
  LW t2, 0(s2)
  LW a1, 0(s1)
  DIVW a3, t1, a1
  LW a2, 0(s0)
  MULW t0, t2, a1
  SUBW t0, t1, t0
  SUBW a3, a2, a3
  BNE t0, a3, bb6
  # implict jump to bb1
bb1:   # loop depth 0
  MULW t0, t1, t2
  ADDW a3, a0, a2
  DIVW t0, t0, a1
  XOR t0, t0, a3
  SLTIU t0, t0, 1
  # implict jump to bb2
bb2:   # loop depth 0
  BNE t0, zero, bb5
  # implict jump to bb3
bb3:   # loop depth 0
  ADDW t0, t1, t2
  ADDW t1, a2, a0
  ADDW t0, t0, a1
  XOR t0, t0, t1
  SLTIU a0, t0, 1
  # implict jump to bb4
bb4:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb4
bb6:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb2
