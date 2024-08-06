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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  FSD fs2, 32(sp)
  FSD fs3, 40(sp)
  FSD fs4, 48(sp)
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
  FSW fs3, 56(sp)
  FSUB.S fs4, fs0, fs0
  FSW fs4, 80(sp)
  FSUB.S fs0, fs0, fs0
  FSW fs0, 96(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 60(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 84(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 100(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 64(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 88(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 104(sp)
  FCVT.W.S a0, fs3, rtz
  CALL putint
  FLW fs0, 60(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 64(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 80(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 84(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 88(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 96(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 100(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 104(sp)
  FCVT.W.S a0, fs0, rtz
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
  ADDI sp, sp, 112
  JALR zero, 0(ra)
