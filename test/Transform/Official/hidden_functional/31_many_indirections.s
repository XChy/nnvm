.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:
  ADDI sp, sp, -160
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, a0, zero
  ADDI a0, zero, 400
  MULW s0, s2, a0
  LA a0, array
  ADD s1, a0, s0
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADD a0, s1, a0
  SW s0, 0(a0)
  ADDIW s0, s0, 1
  SLTI a0, s0, 100
  BNE a0, zero, bb6
  # implict jump to bb3
bb3:
  ADDIW s0, s2, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb5
  # implict jump to bb4
bb4:
  LA a0, array
  ADDI a0, a0, 400
  SD a0, 152(sp)
  LA a0, array
  ADDI a0, a0, 800
  SD a0, 144(sp)
  LA a0, array
  ADDI a0, a0, 1200
  SD a0, 136(sp)
  LA a0, array
  ADDI a0, a0, 1600
  SD a0, 128(sp)
  LA a0, array
  ADDI a0, a0, 2000
  SD a0, 120(sp)
  LUI a0, 1
  ADDIW a0, a0, -1696
  LA s0, array
  ADD a0, s0, a0
  SD a0, 112(sp)
  LUI a0, 1
  ADDIW a0, a0, -1296
  LA s0, array
  ADD a0, s0, a0
  SD a0, 104(sp)
  LUI s0, 1
  ADDIW s0, s0, -896
  LA a0, array
  ADD a0, a0, s0
  SD a0, 96(sp)
  LUI s0, 1
  ADDIW s0, s0, -496
  LA a0, array
  ADD a0, a0, s0
  SD a0, 88(sp)
  LUI s0, 1
  ADDIW s0, s0, -96
  LA a0, array
  ADD a0, a0, s0
  SD a0, 0(sp)
  LUI s0, 1
  ADDIW s0, s0, 304
  LA a0, array
  ADD a0, a0, s0
  SD a0, 80(sp)
  LUI s0, 1
  ADDIW s0, s0, 704
  LA a0, array
  ADD a0, a0, s0
  SD a0, 72(sp)
  LUI s0, 1
  ADDIW s0, s0, 1104
  LA a0, array
  ADD a0, a0, s0
  SD a0, 64(sp)
  LUI s0, 1
  ADDIW s0, s0, 1504
  LA a0, array
  ADD a0, a0, s0
  SD a0, 56(sp)
  LUI s0, 1
  ADDIW s0, s0, 1904
  LA a0, array
  ADD s4, a0, s0
  LUI s0, 2
  ADDIW s0, s0, -1792
  LA a0, array
  ADD s3, a0, s0
  LUI s0, 2
  ADDIW s0, s0, -1392
  LA a0, array
  ADD s2, a0, s0
  LUI s0, 2
  ADDIW s0, s0, -992
  LA a0, array
  ADD s1, a0, s0
  LUI s0, 2
  ADDIW s0, s0, -500
  LA a0, array
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s1, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s3, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADD a0, s4, a0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 56(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 64(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 72(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 80(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 0(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 88(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 96(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 104(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 112(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 120(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 128(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 136(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 144(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LD a0, 152(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, array
  ADD a0, a0, s0
  LW s1, 0(a0)
  LUI s0, 2
  ADDIW s0, s0, -520
  LA a0, array
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 68(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 64(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 60(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 56(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 52(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 48(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 44(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 40(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 36(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 32(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 28(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 24(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 20(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 16(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 12(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 8(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 4(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW s0, 0(a0)
  ADDI a0, zero, 400
  MULW s0, s0, a0
  LA a0, array
  ADD a0, a0, s0
  LW a0, 224(a0)
  ADDW a0, s1, a0
  CALL putint
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  ADD a0, s0, zero
  JAL zero, bb1
bb6:
  ADD a0, s0, zero
  JAL zero, bb2
