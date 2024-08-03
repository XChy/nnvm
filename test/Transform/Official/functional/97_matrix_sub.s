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
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s0, 8(sp)
  FSD fs0, 16(sp)
  FSD fs1, 24(sp)
  LA s0, N
  ADDI a0, zero, 3
  SW a0, 0(s0)
  LA a0, M
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, L
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 0
  FCVT.S.W fs0, a0
  FSW fs0, 32(sp)
  FSW fs0, 48(sp)
  FSW fs0, 64(sp)
  FSW fs0, 80(sp)
  FSW fs0, 96(sp)
  FSW fs0, 112(sp)
  ADDI a0, zero, 1
  FCVT.S.W fs0, a0
  FSW fs0, 36(sp)
  FSW fs0, 52(sp)
  FSW fs0, 68(sp)
  FSW fs0, 84(sp)
  FSW fs0, 100(sp)
  FSW fs0, 116(sp)
  ADDI a0, zero, 2
  FCVT.S.W fs0, a0
  FSW fs0, 40(sp)
  FSW fs0, 56(sp)
  FSW fs0, 72(sp)
  FSW fs0, 88(sp)
  FSW fs0, 104(sp)
  FSW fs0, 120(sp)
  FLW fs1, 32(sp)
  FLW fs0, 80(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 128(sp)
  FLW fs1, 48(sp)
  FLW fs0, 96(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 152(sp)
  FLW fs0, 64(sp)
  FLW fs1, 112(sp)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 168(sp)
  FLW fs0, 36(sp)
  FLW fs1, 84(sp)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 132(sp)
  FLW fs1, 52(sp)
  FLW fs0, 100(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 156(sp)
  FLW fs0, 68(sp)
  FLW fs1, 116(sp)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 172(sp)
  FLW fs0, 40(sp)
  FLW fs1, 88(sp)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 136(sp)
  FLW fs0, 56(sp)
  FLW fs1, 104(sp)
  FSUB.S fs0, fs0, fs1
  FSW fs0, 160(sp)
  FLW fs1, 72(sp)
  FLW fs0, 120(sp)
  FSUB.S fs0, fs1, fs0
  FSW fs0, 176(sp)
  FLW fs0, 128(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 132(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 136(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 152(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 156(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 160(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  FLW fs0, 168(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 172(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  FLW fs0, 176(sp)
  FCVT.W.S a0, fs0, rtz
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  FLD fs0, 16(sp)
  FLD fs1, 24(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
