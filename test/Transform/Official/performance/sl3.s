.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:   # loop depth 0
  ADDI sp, sp, -288
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s11, 208(sp)
  CALL getint
  ADD s5, a0, zero
  CALL getint
  SW a0, 80(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s6, zero, 0
  BLT s6, s5, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 1
  SUBW s7, s5, a0
  ADDI a0, zero, 1
  BLT a0, s7, bb4
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s1, zero, zero
  ADDI s2, zero, 1
  # implict jump to bb3
bb3:   # loop depth 0
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
  LA s0, x
  ADD a1, s0, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a0, a0, s0
  ADD a1, a1, a0
  ADD a0, s5, zero
  CALL putarray
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s1, a0
  LA a1, x
  ADD a0, a1, a0
  ADDI a1, zero, 1
  SUBW a1, s2, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a1, a1, s0
  ADD a1, a0, a1
  ADD a0, s5, zero
  CALL putarray
  ADD a0, zero, zero
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s11, 208(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a0, zero, zero
  ADDI s1, zero, 1
  # implict jump to bb5
bb5:   # loop depth 1
  SW a0, 84(sp)
  ADDI a0, zero, 1
  SW a0, 88(sp)
  ADDIW s4, s1, 1
  LW a0, 88(sp)
  BLT a0, s7, bb10
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s2, zero, 1
  # implict jump to bb7
bb7:   # loop depth 1
  BLT s4, s7, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb3
bb9:   # loop depth 1
  ADD a0, s1, zero
  ADD s1, s4, zero
  JAL zero, bb5
bb10:   # loop depth 1
  ADDI s3, zero, 1
  # implict jump to bb11
bb11:   # loop depth 2
  ADDIW s2, s3, 1
  LW a0, 88(sp)
  BLT a0, s7, bb15
  # implict jump to bb12
bb12:   # loop depth 2
  BLT s2, s7, bb14
  # implict jump to bb13
bb13:   # loop depth 2
  JAL zero, bb7
bb14:   # loop depth 2
  ADD s3, s2, zero
  JAL zero, bb11
bb15:   # loop depth 2
  LUI s6, 352
  ADDIW s6, s6, -1792
  MULW s8, s1, s6
  LA s6, x
  ADD s8, s6, s8
  LUI s6, 1
  ADDIW s6, s6, -1696
  MULW s9, s3, s6
  ADD s10, s8, s9
  LUI s6, 352
  ADDIW s6, s6, -1792
  LW a0, 84(sp)
  MULW s11, a0, s6
  LA s6, x
  ADD s6, s6, s11
  ADD a0, s6, s9
  SD a0, 272(sp)
  LUI s6, 352
  ADDIW s6, s6, -1792
  MULW s6, s4, s6
  LA a0, x
  SD a0, 264(sp)
  LD a0, 264(sp)
  ADD s6, a0, s6
  ADD s9, s6, s9
  ADDI s6, zero, 1
  SUBW s6, s3, s6
  LUI s3, 1
  ADDIW s3, s3, -1696
  MULW s3, s6, s3
  ADD a0, s8, s3
  SD a0, 280(sp)
  ADDI s3, zero, 1
  # implict jump to bb16
bb16:   # loop depth 3
  SLLIW a0, s3, 2
  SW a0, 40(sp)
  LW a0, 40(sp)
  ADD a0, s10, a0
  SD a0, 120(sp)
  LD a0, 272(sp)
  LW s0, 40(sp)
  ADD a0, a0, s0
  SD a0, 96(sp)
  LD a0, 96(sp)
  LW a0, 0(a0)
  SW a0, 64(sp)
  LW a0, 40(sp)
  ADD a0, s9, a0
  SD a0, 216(sp)
  LD a0, 216(sp)
  LW a0, 0(a0)
  SW a0, 60(sp)
  LW a0, 60(sp)
  LW s0, 64(sp)
  ADDW a0, s0, a0
  SW a0, 56(sp)
  LD a0, 280(sp)
  LW s0, 40(sp)
  ADD a0, a0, s0
  SD a0, 224(sp)
  LD a0, 224(sp)
  LW a0, 0(a0)
  SW a0, 52(sp)
  LW a0, 52(sp)
  LW s0, 56(sp)
  ADDW a0, s0, a0
  SW a0, 48(sp)
  LUI a0, 1
  SW a0, 72(sp)
  LW a0, 72(sp)
  ADDIW a0, a0, -1696
  SW a0, 72(sp)
  LW a0, 72(sp)
  MULW a0, s2, a0
  SW a0, 44(sp)
  LW a0, 44(sp)
  ADD a0, s8, a0
  SD a0, 232(sp)
  LD a0, 232(sp)
  LW s0, 40(sp)
  ADD a0, a0, s0
  SD a0, 240(sp)
  LD a0, 240(sp)
  LW a0, 0(a0)
  SW a0, 0(sp)
  LW a0, 0(sp)
  LW s0, 48(sp)
  ADDW a0, s0, a0
  SW a0, 32(sp)
  ADDI a0, zero, 1
  SW a0, 76(sp)
  LW a0, 76(sp)
  SUBW a0, s3, a0
  SW a0, 28(sp)
  LW a0, 28(sp)
  SLLIW a0, a0, 2
  SW a0, 24(sp)
  LW a0, 24(sp)
  ADD a0, s10, a0
  SD a0, 248(sp)
  LD a0, 248(sp)
  LW a0, 0(a0)
  SW a0, 20(sp)
  LW a0, 20(sp)
  LW s0, 32(sp)
  ADDW a0, s0, a0
  SW a0, 16(sp)
  ADDIW s3, s3, 1
  SLLIW a0, s3, 2
  SW a0, 12(sp)
  LW a0, 12(sp)
  ADD a0, s10, a0
  SD a0, 256(sp)
  LD a0, 256(sp)
  LW a0, 0(a0)
  SW a0, 36(sp)
  LW a0, 36(sp)
  LW s0, 16(sp)
  ADDW a0, s0, a0
  SW a0, 8(sp)
  LW a0, 80(sp)
  LW s0, 8(sp)
  DIVW a0, s0, a0
  SW a0, 4(sp)
  LW a0, 4(sp)
  LD s0, 120(sp)
  SW a0, 0(s0)
  BLT s3, s7, bb17
  JAL zero, bb12
bb17:   # loop depth 3
  JAL zero, bb16
bb18:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb19
bb19:   # loop depth 1
  BLT s6, s5, bb22
  # implict jump to bb20
bb20:   # loop depth 1
  ADDIW s2, s2, 1
  BLT s2, s5, bb21
  JAL zero, bb1
bb21:   # loop depth 1
  JAL zero, bb19
bb22:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb23
bb23:   # loop depth 2
  BLT s6, s5, bb26
  # implict jump to bb24
bb24:   # loop depth 2
  ADDIW s1, s1, 1
  BLT s1, s5, bb25
  JAL zero, bb20
bb25:   # loop depth 2
  JAL zero, bb23
bb26:   # loop depth 2
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
bb27:   # loop depth 3
  SLLIW s4, a0, 2
  ADD s4, s3, s4
  ADDI s7, zero, 1
  SW s7, 0(s4)
  ADDIW a0, a0, 1
  BLT a0, s5, bb28
  JAL zero, bb24
bb28:   # loop depth 3
  JAL zero, bb27
