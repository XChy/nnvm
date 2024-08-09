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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  FSD fs0, 32(sp)
  FSD fs1, 40(sp)
  FSD fs2, 48(sp)
  LA a0, N
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  ADDI a0, zero, 2
  FCVT.S.W fs2, a0
  FSUB.S fs0, fs0, fs0
  FSUB.S fs1, fs1, fs1
  FSUB.S fs2, fs2, fs2
  FCVT.W.S s0, fs0, rtz
  ADD a0, s0, zero
  CALL putint
  FCVT.W.S s2, fs1, rtz
  ADD a0, s2, zero
  CALL putint
  FCVT.W.S s1, fs2, rtz
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  FLD fs0, 32(sp)
  FLD fs1, 40(sp)
  FLD fs2, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
