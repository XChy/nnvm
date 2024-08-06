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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
  FSD fs5, 56(sp)
  FSD fs6, 64(sp)
  FSD fs7, 72(sp)
  FSD fs8, 80(sp)
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
  FSUB.S fs3, fs0, fs0
  FSUB.S fs4, fs0, fs0
  FSUB.S fs0, fs0, fs0
  FSUB.S fs5, fs1, fs1
  FSUB.S fs6, fs1, fs1
  FSUB.S fs1, fs1, fs1
  FSUB.S fs7, fs2, fs2
  FSUB.S fs8, fs2, fs2
  FSUB.S fs2, fs2, fs2
  FCVT.W.S a0, fs3, rtz
  CALL putint
  FCVT.W.S a0, fs5, rtz
  CALL putint
  FCVT.W.S a0, fs7, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FCVT.W.S a0, fs4, rtz
  CALL putint
  FCVT.W.S a0, fs6, rtz
  CALL putint
  FCVT.W.S a0, fs8, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FCVT.W.S a0, fs1, rtz
  CALL putint
  FCVT.W.S a0, fs2, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  FLD fs2, 32(sp)
  FLD fs3, 40(sp)
  FLD fs4, 48(sp)
  FLD fs5, 56(sp)
  FLD fs6, 64(sp)
  FLD fs7, 72(sp)
  FLD fs8, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
