.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -176
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  CALL getint
  SW a0, 36(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s0, zero, 0
  LW a0, 40(sp)
  BLT s0, a0, bb18
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  LW a0, 40(sp)
  SUBW a0, a0, s0
  SW a0, 32(sp)
  ADDI s0, zero, 1
  LW a0, 32(sp)
  BLT s0, a0, bb4
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  ADDI a0, zero, 1
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  ADD s2, s0, zero
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  LW a0, 40(sp)
  LA a1, x
  CALL putarray
  LW a0, 40(sp)
  SRAIW a0, a0, 31
  SRLIW a1, a0, 31
  LW a0, 40(sp)
  ADD a0, a0, a1
  SRAIW s0, a0, 1
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a1, s0, a0
  LA a0, x
  ADD a1, a0, a1
  LUI a0, 1
  ADDIW a0, a0, -1696
  MULW a0, s0, a0
  ADD a1, a1, a0
  LW a0, 40(sp)
  CALL putarray
  ADDI a0, zero, 1
  SUBW a1, s2, a0
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a1, a1, a0
  LA a0, x
  ADD s0, a0, a1
  ADDI a0, zero, 1
  SUBW a1, s1, a0
  LUI a0, 1
  ADDIW a0, a0, -1696
  MULW a0, a1, a0
  ADD a1, s0, a0
  LW a0, 40(sp)
  CALL putarray
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb4:
  LW a0, 32(sp)
  ADD s0, a0, zero
  ADDI a0, zero, 1
  # implict jump to bb5
bb5:
  ADD s3, a0, zero
  ADD s2, s0, zero
  ADDI s1, zero, 1
  BLT s1, s2, bb10
  # implict jump to bb6
bb6:
  ADDI a0, zero, 1
  # implict jump to bb7
bb7:
  ADD s1, a0, zero
  ADDIW s2, s3, 1
  LW a0, 32(sp)
  BLT s2, a0, bb9
  # implict jump to bb8
bb8:
  ADD s0, s2, zero
  ADD a0, s1, zero
  JAL zero, bb3
bb9:
  LW a0, 32(sp)
  ADD s0, a0, zero
  ADD a0, s2, zero
  JAL zero, bb5
bb10:
  ADDI a0, zero, 1
  # implict jump to bb11
bb11:
  SW a0, 16(sp)
  BLT s1, s2, bb15
  # implict jump to bb12
bb12:
  LW a0, 16(sp)
  ADDIW a0, a0, 1
  BLT a0, s2, bb14
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  JAL zero, bb11
bb15:
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW s0, s3, a0
  LA a0, x
  ADD s4, a0, s0
  LUI s0, 1
  ADDIW s0, s0, -1696
  LW a0, 16(sp)
  MULW s6, a0, s0
  ADD s5, s4, s6
  ADDI a0, zero, 1
  SUBW s0, s3, a0
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW s0, s0, a0
  LA a0, x
  ADD a0, a0, s0
  ADD s7, a0, s6
  ADDIW s0, s3, 1
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW s0, s0, a0
  LA a0, x
  ADD a0, a0, s0
  ADD s6, a0, s6
  ADDI s0, zero, 1
  LW a0, 16(sp)
  SUBW s0, a0, s0
  LUI a0, 1
  ADDIW a0, a0, -1696
  MULW a0, s0, a0
  ADD a0, s4, a0
  SD a0, 144(sp)
  LW a0, 16(sp)
  ADDIW s0, a0, 1
  LUI a0, 1
  ADDIW a0, a0, -1696
  MULW a0, s0, a0
  ADD a0, s4, a0
  SD a0, 136(sp)
  ADDI a0, zero, 1
  # implict jump to bb16
bb16:
  ADD s9, a0, zero
  SLLIW s8, s9, 2
  ADD s4, s5, s8
  ADD a0, s7, s8
  LW a0, 0(a0)
  SW a0, 28(sp)
  ADD a0, s6, s8
  SD a0, 160(sp)
  LD a0, 160(sp)
  LW a0, 0(a0)
  SW a0, 24(sp)
  LW s0, 28(sp)
  LW a0, 24(sp)
  ADDW a0, s0, a0
  SW a0, 0(sp)
  LD a0, 144(sp)
  ADD a0, a0, s8
  SD a0, 152(sp)
  LD a0, 152(sp)
  LW a0, 0(a0)
  SW a0, 20(sp)
  LW s0, 0(sp)
  LW a0, 20(sp)
  ADDW a0, s0, a0
  SW a0, 12(sp)
  LD a0, 136(sp)
  ADD a0, a0, s8
  LW s0, 0(a0)
  LW a0, 12(sp)
  ADDW s0, a0, s0
  ADDI a0, zero, 1
  SUBW a0, s9, a0
  SLLIW a0, a0, 2
  ADD a0, s5, a0
  LW a0, 0(a0)
  ADDW a0, s0, a0
  SW a0, 8(sp)
  ADDIW s0, s9, 1
  SLLIW a0, s0, 2
  ADD a0, s5, a0
  LW s8, 0(a0)
  LW a0, 8(sp)
  ADDW s8, a0, s8
  LW a0, 36(sp)
  DIVW a0, s8, a0
  SW a0, 0(s4)
  BLT s0, s2, bb17
  JAL zero, bb12
bb17:
  ADD a0, s0, zero
  JAL zero, bb16
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  ADD s4, a0, zero
  LW a0, 40(sp)
  BLT s0, a0, bb22
  # implict jump to bb20
bb20:
  ADDIW s1, s4, 1
  LW a0, 40(sp)
  BLT s1, a0, bb21
  JAL zero, bb1
bb21:
  ADD a0, s1, zero
  JAL zero, bb19
bb22:
  ADD a0, zero, zero
  # implict jump to bb23
bb23:
  ADD s5, a0, zero
  LW a0, 40(sp)
  BLT s0, a0, bb26
  # implict jump to bb24
bb24:
  ADDIW s1, s5, 1
  LW a0, 40(sp)
  BLT s1, a0, bb25
  JAL zero, bb20
bb25:
  ADD a0, s1, zero
  JAL zero, bb23
bb26:
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW s1, s4, a0
  LA a0, x
  ADD s1, a0, s1
  LUI a0, 1
  ADDIW a0, a0, -1696
  MULW a0, s5, a0
  ADD s2, s1, a0
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  ADD s3, a0, zero
  SLLIW a0, s3, 2
  ADD s1, s2, a0
  ADDI a0, zero, 1
  SW a0, 0(s1)
  ADDIW s1, s3, 1
  LW a0, 40(sp)
  BLT s1, a0, bb28
  JAL zero, bb24
bb28:
  ADD a0, s1, zero
  JAL zero, bb27
