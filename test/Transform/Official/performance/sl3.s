.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -288
  SD ra, 104(sp)
  SD s0, 112(sp)
  SD s2, 120(sp)
  SD s1, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD s5, 160(sp)
  SD s6, 168(sp)
  SD s7, 176(sp)
  SD s8, 184(sp)
  SD s9, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  CALL getint
  ADD s5, a0, zero
  CALL getint
  SW a0, 56(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s6, zero, 0
  BLT s6, s5, bb18
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  SUBW s6, s5, a0
  ADDI a0, zero, 1
  BLT a0, s6, bb4
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  ADDI s3, zero, 1
  # implict jump to bb3
bb3:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s5, zero
  LA a1, x
  CALL putarray
  SRAIW a0, s5, 31
  SRLIW a0, a0, 31
  ADD a0, s5, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s1, x
  ADD a1, s1, a1
  LUI s1, 1
  ADDIW s1, s1, -1696
  MULW a0, a0, s1
  ADD a1, a1, a0
  ADD a0, s5, zero
  CALL putarray
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s0, a0
  LA a1, x
  ADD a0, a1, a0
  ADDI a1, zero, 1
  SUBW a1, s3, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a1, a1, s0
  ADD a1, a0, a1
  ADD a0, s5, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 104(sp)
  LD s0, 112(sp)
  LD s2, 120(sp)
  LD s1, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD s5, 160(sp)
  LD s6, 168(sp)
  LD s7, 176(sp)
  LD s8, 184(sp)
  LD s9, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb5
bb5:
  SW s1, 64(sp)
  SW a0, 60(sp)
  ADDI a0, zero, 1
  SW a0, 72(sp)
  LW a0, 64(sp)
  ADDIW a0, a0, 1
  SW a0, 68(sp)
  LW a0, 72(sp)
  BLT a0, s6, bb10
  # implict jump to bb6
bb6:
  ADDI s3, zero, 1
  # implict jump to bb7
bb7:
  LW a0, 68(sp)
  BLT a0, s6, bb9
  # implict jump to bb8
bb8:
  LW s0, 64(sp)
  JAL zero, bb3
bb9:
  LW a0, 64(sp)
  LW s1, 68(sp)
  JAL zero, bb5
bb10:
  ADDI s4, zero, 1
  # implict jump to bb11
bb11:
  ADDIW s3, s4, 1
  LW a0, 72(sp)
  BLT a0, s6, bb15
  # implict jump to bb12
bb12:
  BLT s3, s6, bb14
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  ADD s4, s3, zero
  JAL zero, bb11
bb15:
  LUI s7, 352
  ADDIW s7, s7, -1792
  LW a0, 64(sp)
  MULW s8, a0, s7
  LA s7, x
  ADD s8, s7, s8
  LUI s7, 1
  ADDIW s7, s7, -1696
  MULW s7, s4, s7
  ADD s9, s8, s7
  LUI s10, 352
  ADDIW s10, s10, -1792
  LW a0, 60(sp)
  MULW s11, a0, s10
  LA s10, x
  ADD s10, s10, s11
  ADD s11, s10, s7
  LUI s10, 352
  ADDIW s10, s10, -1792
  LW a0, 68(sp)
  MULW s10, a0, s10
  LA a0, x
  SD a0, 272(sp)
  LD a0, 272(sp)
  ADD s10, a0, s10
  ADD s10, s10, s7
  ADDI s7, zero, 1
  SUBW s7, s4, s7
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s4, s7, s4
  ADD s7, s8, s4
  ADDI s4, zero, 1
  # implict jump to bb16
bb16:
  SLLIW a0, s4, 2
  SW a0, 88(sp)
  LW a0, 88(sp)
  ADD a0, s9, a0
  SD a0, 128(sp)
  LW a0, 88(sp)
  ADD a0, s11, a0
  SD a0, 216(sp)
  LD a0, 216(sp)
  LW a0, 0(a0)
  SW a0, 92(sp)
  LW a0, 88(sp)
  ADD a0, s10, a0
  SD a0, 224(sp)
  LD a0, 224(sp)
  LW a0, 0(a0)
  SW a0, 84(sp)
  LW a0, 84(sp)
  LW s0, 92(sp)
  ADDW a0, s0, a0
  SW a0, 80(sp)
  LW a0, 88(sp)
  ADD a0, s7, a0
  SD a0, 232(sp)
  LD a0, 232(sp)
  LW a0, 0(a0)
  SW a0, 76(sp)
  LW a0, 76(sp)
  LW s0, 80(sp)
  ADDW a0, s0, a0
  SW a0, 48(sp)
  LUI a0, 1
  SW a0, 52(sp)
  LW a0, 52(sp)
  ADDIW a0, a0, -1696
  SW a0, 52(sp)
  LW a0, 52(sp)
  MULW a0, s3, a0
  SW a0, 28(sp)
  LW a0, 28(sp)
  ADD a0, s8, a0
  SD a0, 240(sp)
  LD a0, 240(sp)
  LW s0, 88(sp)
  ADD a0, a0, s0
  SD a0, 248(sp)
  LD a0, 248(sp)
  LW a0, 0(a0)
  SW a0, 96(sp)
  LW a0, 96(sp)
  LW s0, 48(sp)
  ADDW a0, s0, a0
  SW a0, 12(sp)
  ADDI a0, zero, 1
  SW a0, 0(sp)
  LW a0, 0(sp)
  SUBW a0, s4, a0
  SW a0, 4(sp)
  LW a0, 4(sp)
  SLLIW a0, a0, 2
  SW a0, 8(sp)
  LW a0, 8(sp)
  ADD a0, s9, a0
  SD a0, 256(sp)
  LD a0, 256(sp)
  LW a0, 0(a0)
  SW a0, 16(sp)
  LW a0, 16(sp)
  LW s0, 12(sp)
  ADDW a0, s0, a0
  SW a0, 20(sp)
  ADDIW s4, s4, 1
  SLLIW a0, s4, 2
  SW a0, 24(sp)
  LW a0, 24(sp)
  ADD a0, s9, a0
  SD a0, 264(sp)
  LD a0, 264(sp)
  LW a0, 0(a0)
  SW a0, 32(sp)
  LW a0, 32(sp)
  LW s0, 20(sp)
  ADDW a0, s0, a0
  SW a0, 36(sp)
  LW a0, 56(sp)
  LW s0, 36(sp)
  DIVW a0, s0, a0
  SW a0, 40(sp)
  LW a0, 40(sp)
  LD s0, 128(sp)
  SW a0, 0(s0)
  BLT s4, s6, bb17
  JAL zero, bb12
bb17:
  JAL zero, bb16
bb18:
  ADD s2, zero, zero
  # implict jump to bb19
bb19:
  BLT s6, s5, bb22
  # implict jump to bb20
bb20:
  ADDIW s2, s2, 1
  BLT s2, s5, bb21
  JAL zero, bb1
bb21:
  JAL zero, bb19
bb22:
  ADD s1, zero, zero
  # implict jump to bb23
bb23:
  BLT s6, s5, bb26
  # implict jump to bb24
bb24:
  ADDIW s1, s1, 1
  BLT s1, s5, bb25
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
  BLT a0, s5, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
