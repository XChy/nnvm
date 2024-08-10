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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  LA s1, a
  CALL getint
  ADD s0, a0, zero
  LA s2, b
  SW s0, 0(s1)
  LA s8, c
  LA s7, d
  LA s3, e
  LA s6, a
  LA s5, b
  LA s4, c
  LA s1, d
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s2)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s8)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(s7)
  CALL getint
  SW a0, 0(s3)
  LW t1, 0(s6)
  LW t2, 0(s5)
  LW a1, 0(s4)
  DIVW a3, t1, a1
  LW a2, 0(s1)
  MULW t0, t2, a1
  SUBW t0, t1, t0
  SUBW a3, a2, a3
  BNE t0, a3, bb9
  # implict jump to bb1
bb1:   # loop depth 0
  MULW t0, t1, t2
  ADDW a3, a0, a2
  DIVW t0, t0, a1
  XOR t0, t0, a3
  SLTIU t0, t0, 1
  # implict jump to bb2
bb2:   # loop depth 0
  BNE t0, zero, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADDW t0, t1, t2
  ADDW t1, a2, a0
  ADDW t0, t0, a1
  XOR t0, t0, t1
  SLTIU t0, t0, 1
  # implict jump to bb4
bb4:   # loop depth 0
  BNE t0, zero, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb6
bb8:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb4
bb9:   # loop depth 0
  ADDI t0, zero, 1
  JAL zero, bb2
