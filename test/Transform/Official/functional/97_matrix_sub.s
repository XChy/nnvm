.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



.section .data
L:
.word 0x00000000
M:
.word 0x00000000
N:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI t0, zero, 0
  ADDI t1, zero, 1
  FCVT.S.W ft0, t0
  ADDI a0, zero, 2
  FCVT.S.W ft1, t1
  LA t0, N
  FSUB.S ft2, ft0, ft0
  LA t2, M
  FCVT.S.W ft0, a0
  ADDI t1, zero, 3
  FSUB.S ft1, ft1, ft1
  LA a1, L
  FSUB.S ft0, ft0, ft0
  ADDI a0, zero, 3
  SW t1, 0(t0)
  ADDI t0, zero, 3
  FCVT.W.S s0, ft2, rtz
  SW a0, 0(t2)
  SW t0, 0(a1)
  FCVT.W.S s1, ft1, rtz
  FCVT.W.S s2, ft0, rtz
  ADD a0, s0, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
