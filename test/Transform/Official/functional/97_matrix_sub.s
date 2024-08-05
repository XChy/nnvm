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
main:
  ADDI sp, sp, -208
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
  FSW fs0, 56(sp)
  FSW fs0, 72(sp)
  FSW fs0, 88(sp)
  FSW fs0, 104(sp)
  FSW fs0, 120(sp)
  FSW fs0, 136(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs1, a0
  FSW fs1, 60(sp)
  FSW fs1, 76(sp)
  FSW fs1, 92(sp)
  FSW fs1, 108(sp)
  FSW fs1, 124(sp)
  FSW fs1, 140(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs2, a0
  FSW fs2, 64(sp)
  FSW fs2, 80(sp)
  FSW fs2, 96(sp)
  FSW fs2, 112(sp)
  FSW fs2, 128(sp)
  FSW fs2, 144(sp)
  FSUB.S fs3, fs0, fs0
  FSW fs3, 152(sp)
  FSUB.S fs4, fs0, fs0
  FSW fs4, 176(sp)
  FSUB.S fs0, fs0, fs0
  FSW fs0, 192(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 156(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 180(sp)
  FSUB.S fs0, fs1, fs1
  FSW fs0, 196(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 160(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 184(sp)
  FSUB.S fs0, fs2, fs2
  FSW fs0, 200(sp)
  FCVT.W.S a0, fs3, rtz
  CALL putint
  FLW fs0, 156(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 160(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 176(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 180(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 184(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 192(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 196(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 200(sp)
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
  ADDI sp, sp, 208
  JALR zero, 0(ra)
