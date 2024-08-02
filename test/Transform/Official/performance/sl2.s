.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -224
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 152(sp)
  SD s10, 160(sp)
  SD s11, 168(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 52(sp)
  CALL getint
  SW a0, 56(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s6, zero, 0
  LW a0, 52(sp)
  BLT s6, a0, bb18
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  LW s0, 52(sp)
  SUBW a0, s0, a0
  SW a0, 60(sp)
  ADDI s2, zero, 1
  LW a0, 60(sp)
  BLT s2, a0, bb4
  # implict jump to bb2
bb2:
  ADDI a0, zero, 1
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  ADD s1, a0, zero
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW a0, 52(sp)
  LA a1, x
  CALL putarray
  LW a0, 52(sp)
  SRAIW a0, a0, 31
  SRLIW a0, a0, 31
  LW a1, 52(sp)
  ADD a0, a1, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s3, x
  ADD a1, s3, a1
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW a0, a0, s3
  ADD a1, a1, a0
  LW a0, 52(sp)
  CALL putarray
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a0, a0, a1
  LA a1, x
  ADD a0, a1, a0
  ADDI a1, zero, 1
  SUBW a1, s2, a1
  LUI s1, 1
  ADDIW s1, s1, -1696
  MULW a1, a1, s1
  ADD a1, a0, a1
  LW a0, 52(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 152(sp)
  LD s10, 160(sp)
  LD s11, 168(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb4:
  LW a0, 60(sp)
  ADD s2, a0, zero
  ADDI s3, zero, 1
  # implict jump to bb5
bb5:
  ADD a0, s3, zero
  SW a0, 48(sp)
  ADDI a0, zero, 1
  SW a0, 8(sp)
  LW a0, 8(sp)
  BLT a0, s2, bb10
  # implict jump to bb6
bb6:
  ADDI s2, zero, 1
  # implict jump to bb7
bb7:
  LW a0, 48(sp)
  ADDIW s3, a0, 1
  LW a0, 60(sp)
  BLT s3, a0, bb9
  # implict jump to bb8
bb8:
  ADD a0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb3
bb9:
  LW a0, 60(sp)
  ADD s2, a0, zero
  JAL zero, bb5
bb10:
  ADDI s4, zero, 1
  # implict jump to bb11
bb11:
  LW a0, 8(sp)
  BLT a0, s2, bb15
  # implict jump to bb12
bb12:
  ADDIW s4, s4, 1
  BLT s4, s2, bb14
  # implict jump to bb13
bb13:
  ADD s2, s4, zero
  JAL zero, bb7
bb14:
  JAL zero, bb11
bb15:
  LUI s5, 352
  ADDIW s5, s5, -1792
  LW a0, 48(sp)
  MULW s5, a0, s5
  LA s6, x
  ADD s5, s6, s5
  LUI s6, 1
  ADDIW s6, s6, -1696
  MULW s6, s4, s6
  ADD s7, s5, s6
  ADDI s8, zero, 1
  LW a0, 48(sp)
  SUBW s8, a0, s8
  LUI s9, 352
  ADDIW s9, s9, -1792
  MULW s8, s8, s9
  LA s9, x
  ADD s8, s9, s8
  ADD s8, s8, s6
  LW a0, 48(sp)
  ADDIW s9, a0, 1
  LUI s10, 352
  ADDIW s10, s10, -1792
  MULW s9, s9, s10
  LA s10, x
  ADD s9, s10, s9
  ADD s6, s9, s6
  ADDI s9, zero, 1
  SUBW s9, s4, s9
  LUI s10, 1
  ADDIW s10, s10, -1696
  MULW s9, s9, s10
  ADD s9, s5, s9
  ADDIW s10, s4, 1
  LUI s11, 1
  ADDIW s11, s11, -1696
  MULW s10, s10, s11
  ADD s5, s5, s10
  ADDI s10, zero, 1
  # implict jump to bb16
bb16:
  SLLIW s11, s10, 2
  ADD a0, s7, s11
  SD a0, 208(sp)
  ADD a0, s8, s11
  SD a0, 200(sp)
  LD a0, 200(sp)
  LW a0, 0(a0)
  SW a0, 24(sp)
  ADD a0, s6, s11
  SD a0, 184(sp)
  LD a0, 184(sp)
  LW a0, 0(a0)
  SW a0, 20(sp)
  LW a0, 24(sp)
  LW s0, 20(sp)
  ADDW a0, a0, s0
  SW a0, 16(sp)
  ADD a0, s9, s11
  SD a0, 176(sp)
  LD a0, 176(sp)
  LW a0, 0(a0)
  SW a0, 12(sp)
  LW a0, 16(sp)
  LW s0, 12(sp)
  ADDW a0, a0, s0
  SW a0, 44(sp)
  ADD s11, s5, s11
  LW s11, 0(s11)
  LW a0, 44(sp)
  ADDW s11, a0, s11
  ADDI a0, zero, 1
  SW a0, 4(sp)
  LW a0, 4(sp)
  SUBW a0, s10, a0
  SW a0, 0(sp)
  LW a0, 0(sp)
  SLLIW a0, a0, 2
  SW a0, 40(sp)
  LW a0, 40(sp)
  ADD a0, s7, a0
  SD a0, 192(sp)
  LD a0, 192(sp)
  LW a0, 0(a0)
  SW a0, 36(sp)
  LW a0, 36(sp)
  ADDW s11, s11, a0
  ADDIW s10, s10, 1
  SLLIW a0, s10, 2
  SW a0, 28(sp)
  LW a0, 28(sp)
  ADD a0, s7, a0
  SD a0, 144(sp)
  LD a0, 144(sp)
  LW a0, 0(a0)
  SW a0, 32(sp)
  LW a0, 32(sp)
  ADDW s11, s11, a0
  LW a0, 56(sp)
  DIVW s11, s11, a0
  LD a0, 208(sp)
  SW s11, 0(a0)
  BLT s10, s2, bb17
  JAL zero, bb12
bb17:
  JAL zero, bb16
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  LW s0, 52(sp)
  BLT s6, s0, bb22
  # implict jump to bb20
bb20:
  ADDIW a0, a0, 1
  LW s0, 52(sp)
  BLT a0, s0, bb21
  JAL zero, bb1
bb21:
  JAL zero, bb19
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  LW s0, 52(sp)
  BLT s6, s0, bb26
  # implict jump to bb24
bb24:
  ADDIW s2, s2, 1
  LW s0, 52(sp)
  BLT s2, s0, bb25
  JAL zero, bb20
bb25:
  JAL zero, bb23
bb26:
  LUI s3, 352
  ADDIW s3, s3, -1792
  MULW s3, a0, s3
  LA s4, x
  ADD s3, s4, s3
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s4, s2, s4
  ADD s3, s3, s4
  ADD s4, zero, zero
  # implict jump to bb27
bb27:
  SLLIW s5, s4, 2
  ADD s5, s3, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  ADDIW s4, s4, 1
  LW s0, 52(sp)
  BLT s4, s0, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
