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
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, b
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, c
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, d
  SW s0, 0(s1)
  CALL getint
  ADD t0, a0, zero
  LA t1, e
  SW t0, 0(t1)
  LA t1, a
  LW t1, 0(t1)
  LA t2, b
  LW t2, 0(t2)
  LA a0, c
  LW a0, 0(a0)
  MULW a1, t2, a0
  SUBW a1, t1, a1
  LA a2, d
  LW a2, 0(a2)
  DIVW a3, t1, a0
  SUBW a3, a2, a3
  BNE a1, a3, bb9
  # implict jump to bb1
bb1:
  MULW a1, t1, t2
  DIVW a1, a1, a0
  ADDW a3, t0, a2
  XOR a1, a1, a3
  SLTIU a1, a1, 1
  # implict jump to bb2
bb2:
  BNE a1, zero, bb8
  # implict jump to bb3
bb3:
  ADDW t1, t1, t2
  ADDW t1, t1, a0
  ADDW t0, a2, t0
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
  ADDI a1, zero, 1
  JAL zero, bb2
