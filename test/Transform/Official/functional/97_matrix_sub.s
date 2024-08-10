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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  FSD fs0, 48(sp)
  FSD fs1, 56(sp)
  FSD fs2, 64(sp)
  ADDI a0, zero, 0
  ADDI s0, zero, 1
  FCVT.S.W fs0, a0
  ADDI s1, zero, 2
  FCVT.S.W fs1, s0
  LA a0, N
  FSUB.S fs2, fs0, fs0
  LA s2, M
  FCVT.S.W fs0, s1
  ADDI s0, zero, 3
  FSUB.S fs1, fs1, fs1
  LA s4, L
  FSUB.S fs0, fs0, fs0
  ADDI s3, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 3
  FCVT.W.S s1, fs2, rtz
  SW s3, 0(s2)
  SW a0, 0(s4)
  FCVT.W.S s0, fs1, rtz
  FCVT.W.S s2, fs0, rtz
  ADD a0, s1, zero
  CALL putint
  ADD a0, s0, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s1, zero
  CALL putint
  ADD a0, s0, zero
  CALL putint
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s1, zero
  CALL putint
  ADD a0, s0, zero
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
  LD s3, 32(sp)
  LD s4, 40(sp)
  FLD fs0, 48(sp)
  FLD fs1, 56(sp)
  FLD fs2, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
