.global main
.section .bss
array:
.space 8000
.section .data

.section .text
main:
  ADDI sp, sp, -384
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s1, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s9, 112(sp)
  SD s10, 120(sp)
  SD s11, 128(sp)
  SD s4, 144(sp)
  SD s5, 152(sp)
  SD s6, 160(sp)
  SD s7, 168(sp)
  SD s8, 176(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  ADDI s0, zero, 400
  MULW s0, a0, s0
  LA s1, array
  ADD s0, s1, s0
  ADD s1, zero, zero
  # implict jump to bb2
bb2:
  SLLIW s2, s1, 2
  ADD s2, s0, s2
  SW s1, 0(s2)
  ADDIW s1, s1, 1
  SLTI s2, s1, 100
  BNE s2, zero, bb6
  # implict jump to bb3
bb3:
  ADDIW a0, a0, 1
  SLTI s0, a0, 20
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  LA a0, array
  ADDI a0, a0, 400
  SD a0, 224(sp)
  LA s0, array
  ADDI a0, s0, 800
  SD a0, 232(sp)
  LA s1, array
  ADDI a0, s1, 1200
  SD a0, 240(sp)
  LA s2, array
  ADDI a0, s2, 1600
  SD a0, 248(sp)
  LA s3, array
  ADDI a0, s3, 2000
  SD a0, 256(sp)
  LUI s4, 1
  ADDIW s4, s4, -1696
  LA s5, array
  ADD a0, s5, s4
  SD a0, 264(sp)
  LUI s5, 1
  ADDIW s5, s5, -1296
  LA s6, array
  ADD a0, s6, s5
  SD a0, 272(sp)
  LUI s6, 1
  ADDIW s6, s6, -896
  LA s7, array
  ADD s6, s7, s6
  LUI s7, 1
  ADDIW s7, s7, -496
  LA s8, array
  ADD s7, s8, s7
  LUI s8, 1
  ADDIW s8, s8, -96
  LA s9, array
  ADD s8, s9, s8
  LUI s9, 1
  ADDIW s9, s9, 304
  LA s10, array
  ADD s9, s10, s9
  LUI s10, 1
  ADDIW s10, s10, 704
  LA s11, array
  ADD s10, s11, s10
  LUI s11, 1
  ADDIW s11, s11, 1104
  LA a0, array
  SD a0, 360(sp)
  LD a0, 360(sp)
  ADD s11, a0, s11
  LUI a0, 1
  SW a0, 12(sp)
  LW a0, 12(sp)
  ADDIW a0, a0, 1504
  SW a0, 12(sp)
  LA a0, array
  SD a0, 368(sp)
  LD a0, 368(sp)
  LW s0, 12(sp)
  ADD a0, a0, s0
  SD a0, 280(sp)
  LUI a0, 1
  SW a0, 4(sp)
  LW a0, 4(sp)
  ADDIW a0, a0, 1904
  SW a0, 4(sp)
  LA a0, array
  SD a0, 296(sp)
  LD a0, 296(sp)
  LW s0, 4(sp)
  ADD a0, a0, s0
  SD a0, 288(sp)
  LUI a0, 2
  SW a0, 8(sp)
  LW a0, 8(sp)
  ADDIW a0, a0, -1792
  SW a0, 8(sp)
  LA a0, array
  SD a0, 136(sp)
  LD a0, 136(sp)
  LW s0, 8(sp)
  ADD a0, a0, s0
  SD a0, 216(sp)
  LUI a0, 2
  SW a0, 24(sp)
  LW a0, 24(sp)
  ADDIW a0, a0, -1392
  SW a0, 24(sp)
  LA a0, array
  SD a0, 184(sp)
  LD a0, 184(sp)
  LW s0, 24(sp)
  ADD a0, a0, s0
  SD a0, 304(sp)
  LUI a0, 2
  SW a0, 44(sp)
  LW a0, 44(sp)
  ADDIW a0, a0, -992
  SW a0, 44(sp)
  LA a0, array
  SD a0, 192(sp)
  LD a0, 192(sp)
  LW s0, 44(sp)
  ADD a0, a0, s0
  SD a0, 312(sp)
  LUI a0, 2
  SW a0, 60(sp)
  LW a0, 60(sp)
  ADDIW a0, a0, -500
  SW a0, 60(sp)
  LA a0, array
  SD a0, 200(sp)
  LD a0, 200(sp)
  LW s0, 60(sp)
  ADD a0, a0, s0
  SD a0, 320(sp)
  LD a0, 320(sp)
  LW a0, 0(a0)
  SW a0, 64(sp)
  LW a0, 64(sp)
  SLLIW a0, a0, 2
  SW a0, 68(sp)
  LD a0, 312(sp)
  LW s0, 68(sp)
  ADD a0, a0, s0
  SD a0, 328(sp)
  LD a0, 328(sp)
  LW a0, 0(a0)
  SW a0, 0(sp)
  LW a0, 0(sp)
  SLLIW a0, a0, 2
  SW a0, 56(sp)
  LD a0, 304(sp)
  LW s0, 56(sp)
  ADD a0, a0, s0
  SD a0, 336(sp)
  LD a0, 336(sp)
  LW a0, 0(a0)
  SW a0, 52(sp)
  LW a0, 52(sp)
  SLLIW a0, a0, 2
  SW a0, 48(sp)
  LD a0, 216(sp)
  LW s0, 48(sp)
  ADD a0, a0, s0
  SD a0, 344(sp)
  LD a0, 344(sp)
  LW a0, 0(a0)
  SW a0, 40(sp)
  LW a0, 40(sp)
  SLLIW a0, a0, 2
  SW a0, 36(sp)
  LD a0, 288(sp)
  LW s0, 36(sp)
  ADD a0, a0, s0
  SD a0, 352(sp)
  LD a0, 352(sp)
  LW a0, 0(a0)
  SW a0, 32(sp)
  LW a0, 32(sp)
  SLLIW a0, a0, 2
  SW a0, 28(sp)
  LD a0, 280(sp)
  LW s0, 28(sp)
  ADD a0, a0, s0
  SD a0, 208(sp)
  LD a0, 208(sp)
  LW a0, 0(a0)
  SW a0, 20(sp)
  LW a0, 20(sp)
  SLLIW a0, a0, 2
  SW a0, 16(sp)
  LW a0, 16(sp)
  ADD s11, s11, a0
  LW s11, 0(s11)
  SLLIW s11, s11, 2
  ADD s10, s10, s11
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  ADD s9, s9, s10
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  ADD s8, s8, s9
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  ADD s7, s7, s8
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  ADD s6, s6, s7
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LD a0, 272(sp)
  ADD s5, a0, s6
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LD a0, 264(sp)
  ADD s4, a0, s5
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LD a0, 256(sp)
  ADD s3, a0, s4
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LD a0, 248(sp)
  ADD s2, a0, s3
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LD a0, 240(sp)
  ADD s1, a0, s2
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LD a0, 232(sp)
  ADD s0, a0, s1
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LD a0, 224(sp)
  ADD a0, a0, s0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s0, array
  ADD a0, s0, a0
  LW a0, 0(a0)
  LUI s0, 2
  ADDIW s0, s0, -520
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 68(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 64(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 60(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 56(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 52(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 48(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 44(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 40(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 36(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 32(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 28(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 24(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 20(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 16(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 12(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 8(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 4(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDI s1, zero, 400
  MULW s0, s0, s1
  LA s1, array
  ADD s0, s1, s0
  LW s0, 224(s0)
  ADDW a0, a0, s0
  CALL putint
  ADD a0, zero, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s1, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s9, 112(sp)
  LD s10, 120(sp)
  LD s11, 128(sp)
  LD s4, 144(sp)
  LD s5, 152(sp)
  LD s6, 160(sp)
  LD s7, 168(sp)
  LD s8, 176(sp)
  ADDI sp, sp, 384
  JALR zero, 0(ra)
bb5:
  JAL zero, bb1
bb6:
  JAL zero, bb2
