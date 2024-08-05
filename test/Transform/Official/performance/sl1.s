.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -272
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s5, 136(sp)
  SD s6, 144(sp)
  SD s7, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  CALL getint
  ADD s6, a0, zero
  CALL getint
  SW a0, 36(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s5, zero, 0
  BLT s5, s6, bb18
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  SUBW s7, s6, a0
  ADDI a0, zero, 1
  BLT a0, s7, bb4
  # implict jump to bb2
bb2:
  ADD s3, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s6, zero
  LA a1, x
  CALL putarray
  SRAIW a0, s6, 31
  SRLIW a0, a0, 31
  ADD a0, s6, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s0, x
  ADD a1, s0, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a0, a0, s0
  ADD a1, a1, a0
  ADD a0, s6, zero
  CALL putarray
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s3, a0
  LA a1, x
  ADD a0, a1, a0
  ADDI a1, zero, 1
  SUBW a1, s1, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a1, a1, s0
  ADD a1, a0, a1
  ADD a0, s6, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s5, 136(sp)
  LD s6, 144(sp)
  LD s7, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 272
  JALR zero, 0(ra)
bb4:
  ADD s5, zero, zero
  ADDI s3, zero, 1
  # implict jump to bb5
bb5:
  ADDI s0, zero, 1
  SW s0, 56(sp)
  ADDIW s4, s3, 1
  LW s0, 56(sp)
  BLT s0, s7, bb10
  # implict jump to bb6
bb6:
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:
  BLT s4, s7, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb5
bb10:
  ADDI s2, zero, 1
  # implict jump to bb11
bb11:
  ADDIW s1, s2, 1
  LW s0, 56(sp)
  BLT s0, s7, bb15
  # implict jump to bb12
bb12:
  BLT s1, s7, bb14
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  ADD s2, s1, zero
  JAL zero, bb11
bb15:
  LUI s8, 352
  ADDIW s8, s8, -1792
  MULW s8, s3, s8
  LA s9, x
  ADD s8, s9, s8
  LUI s9, 1
  ADDIW s9, s9, -1696
  MULW s9, s2, s9
  ADD a0, s8, s9
  SD a0, 80(sp)
  LUI s10, 352
  ADDIW s10, s10, -1792
  MULW s10, s5, s10
  LA s11, x
  ADD s10, s11, s10
  ADD a0, s10, s9
  SD a0, 192(sp)
  LUI s10, 352
  ADDIW s10, s10, -1792
  MULW s10, s4, s10
  LA s11, x
  ADD s10, s11, s10
  ADD s9, s10, s9
  ADDI s10, zero, 1
  SUBW s2, s2, s10
  LUI s10, 1
  ADDIW s10, s10, -1696
  MULW s2, s2, s10
  ADD a0, s8, s2
  SD a0, 200(sp)
  ADDI s2, zero, 1
  # implict jump to bb16
bb16:
  SW s2, 40(sp)
  LW s0, 40(sp)
  SLLIW a0, s0, 2
  SW a0, 76(sp)
  LW a0, 76(sp)
  LD s0, 80(sp)
  ADD s0, s0, a0
  SD s0, 256(sp)
  LW a0, 76(sp)
  LD s0, 192(sp)
  ADD s10, s0, a0
  LW s0, 0(s10)
  SW s0, 0(sp)
  LW a0, 76(sp)
  ADD a0, s9, a0
  SD a0, 208(sp)
  LD a0, 208(sp)
  LW a0, 0(a0)
  SW a0, 68(sp)
  LW s0, 0(sp)
  LW a0, 68(sp)
  ADDW s0, s0, a0
  SW s0, 44(sp)
  LW a0, 76(sp)
  LD s0, 200(sp)
  ADD a0, s0, a0
  SD a0, 216(sp)
  LD a0, 216(sp)
  LW a0, 0(a0)
  SW a0, 64(sp)
  LW s0, 44(sp)
  LW a0, 64(sp)
  ADDW s0, s0, a0
  SW s0, 48(sp)
  LUI a0, 1
  SW a0, 28(sp)
  LW a0, 28(sp)
  ADDIW a0, a0, -1696
  SW a0, 28(sp)
  LW a0, 28(sp)
  MULW a0, s1, a0
  SW a0, 60(sp)
  LW a0, 60(sp)
  ADD a0, s8, a0
  SD a0, 224(sp)
  LD a0, 224(sp)
  LW s0, 76(sp)
  ADD a0, a0, s0
  SD a0, 232(sp)
  LD a0, 232(sp)
  LW a0, 0(a0)
  SW a0, 12(sp)
  LW s0, 48(sp)
  LW a0, 12(sp)
  ADDW s10, s0, a0
  ADDI a0, zero, 1
  SW a0, 32(sp)
  LW s0, 40(sp)
  LW a0, 32(sp)
  SUBW a0, s0, a0
  SW a0, 4(sp)
  LW a0, 4(sp)
  SLLIW a0, a0, 2
  SW a0, 8(sp)
  LW a0, 8(sp)
  LD s0, 80(sp)
  ADD a0, s0, a0
  SD a0, 240(sp)
  LD a0, 240(sp)
  LW a0, 0(a0)
  SW a0, 16(sp)
  LW a0, 16(sp)
  ADDW s0, s10, a0
  SW s0, 52(sp)
  LW s0, 40(sp)
  ADDIW s2, s0, 1
  SLLIW a0, s2, 2
  SW a0, 20(sp)
  LW a0, 20(sp)
  LD s0, 80(sp)
  ADD a0, s0, a0
  SD a0, 248(sp)
  LD a0, 248(sp)
  LW a0, 0(a0)
  SW a0, 24(sp)
  LW s0, 52(sp)
  LW a0, 24(sp)
  ADDW s10, s0, a0
  LW s0, 36(sp)
  DIVW s10, s10, s0
  LD s0, 256(sp)
  SW s10, 0(s0)
  BLT s2, s7, bb17
  JAL zero, bb12
bb17:
  JAL zero, bb16
bb18:
  ADD s2, zero, zero
  # implict jump to bb19
bb19:
  BLT s5, s6, bb22
  # implict jump to bb20
bb20:
  ADDIW s2, s2, 1
  BLT s2, s6, bb21
  JAL zero, bb1
bb21:
  JAL zero, bb19
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  BLT s5, s6, bb26
  # implict jump to bb24
bb24:
  ADDIW s1, s1, 1
  BLT s1, s6, bb25
  JAL zero, bb20
bb25:
  JAL zero, bb23
bb26:
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s2, a0
  LA s3, x
  ADD a0, s3, a0
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s3, s1, s3
  ADD s3, a0, s3
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  SLLIW s4, a0, 2
  ADD s4, s3, s4
  ADDI s7, zero, 1
  SW s7, 0(s4)
  ADDIW a0, a0, 1
  BLT a0, s6, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
