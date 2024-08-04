.global main
.section .bss
y:
.space 864000000
x:
.space 864000000
.section .data


.section .text
main:
  ADDI sp, sp, -160
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  CALL getint
  ADD s3, a0, zero
  CALL getint
  SW a0, 16(sp)
  ADDI a0, zero, 13
  CALL _sysy_starttime
  ADDI s6, zero, 0
  BLT s6, s3, bb18
  # implict jump to bb1
bb1:
  ADDI a0, zero, 1
  SUBW s4, s3, a0
  ADDI a0, zero, 1
  BLT a0, s4, bb4
  # implict jump to bb2
bb2:
  ADDI s0, zero, 1
  ADDI s1, zero, 1
  # implict jump to bb3
bb3:
  ADDI a0, zero, 53
  CALL _sysy_stoptime
  ADD a0, s3, zero
  LA a1, x
  CALL putarray
  SRAIW a0, s3, 31
  SRLIW a0, a0, 31
  ADD a0, s3, a0
  SRAIW a0, a0, 1
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a1, a0, a1
  LA s2, x
  ADD a1, s2, a1
  LUI s2, 1
  ADDIW s2, s2, -1696
  MULW a0, a0, s2
  ADD a1, a1, a0
  ADD a0, s3, zero
  CALL putarray
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  LUI a1, 352
  ADDIW a1, a1, -1792
  MULW a0, a0, a1
  LA a1, x
  ADD a0, a1, a0
  ADDI a1, zero, 1
  SUBW a1, s1, a1
  LUI s0, 1
  ADDIW s0, s0, -1696
  MULW a1, a1, s0
  ADD a1, a0, a1
  ADD a0, s3, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  ADDI s0, zero, 1
  # implict jump to bb5
bb5:
  ADDI a0, zero, 1
  SW a0, 12(sp)
  LW a0, 12(sp)
  BLT a0, s4, bb10
  # implict jump to bb6
bb6:
  ADDI s1, zero, 1
  # implict jump to bb7
bb7:
  ADDIW s0, s0, 1
  BLT s0, s4, bb9
  # implict jump to bb8
bb8:
  JAL zero, bb3
bb9:
  JAL zero, bb5
bb10:
  ADDI s1, zero, 1
  # implict jump to bb11
bb11:
  LW a0, 12(sp)
  BLT a0, s4, bb15
  # implict jump to bb12
bb12:
  ADDIW s1, s1, 1
  BLT s1, s4, bb14
  # implict jump to bb13
bb13:
  JAL zero, bb7
bb14:
  JAL zero, bb11
bb15:
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s0, a0
  LA s5, x
  ADD a0, s5, a0
  LUI s5, 1
  ADDIW s5, s5, -1696
  MULW s5, s1, s5
  ADD s6, a0, s5
  ADDI s7, zero, 1
  SUBW s7, s0, s7
  LUI s8, 352
  ADDIW s8, s8, -1792
  MULW s7, s7, s8
  LA s8, x
  ADD s7, s8, s7
  ADD s7, s7, s5
  ADDIW s8, s0, 1
  LUI s9, 352
  ADDIW s9, s9, -1792
  MULW s8, s8, s9
  LA s9, x
  ADD s8, s9, s8
  ADD s5, s8, s5
  ADDI s8, zero, 1
  SUBW s8, s1, s8
  LUI s9, 1
  ADDIW s9, s9, -1696
  MULW s8, s8, s9
  ADD s8, a0, s8
  ADDIW s9, s1, 1
  LUI s10, 1
  ADDIW s10, s10, -1696
  MULW s9, s9, s10
  ADD a0, a0, s9
  SD a0, 120(sp)
  ADDI a0, zero, 1
  # implict jump to bb16
bb16:
  SLLIW s10, a0, 2
  ADD s2, s6, s10
  SD s2, 144(sp)
  ADD s9, s7, s10
  LW s9, 0(s9)
  ADD s2, s5, s10
  SD s2, 128(sp)
  LD s2, 128(sp)
  LW s2, 0(s2)
  SW s2, 0(sp)
  LW s2, 0(sp)
  ADDW s9, s9, s2
  ADD s2, s8, s10
  SD s2, 136(sp)
  LD s2, 136(sp)
  LW s2, 0(s2)
  SW s2, 4(sp)
  LW s2, 4(sp)
  ADDW s9, s9, s2
  LD s2, 120(sp)
  ADD s10, s2, s10
  LW s10, 0(s10)
  ADDW s9, s9, s10
  ADDI s10, zero, 1
  SUBW s10, a0, s10
  SLLIW s10, s10, 2
  ADD s10, s6, s10
  LW s10, 0(s10)
  ADDW s10, s9, s10
  ADDIW a0, a0, 1
  SLLIW s9, a0, 2
  ADD s9, s6, s9
  LW s9, 0(s9)
  ADDW s9, s10, s9
  LW s2, 16(sp)
  DIVW s9, s9, s2
  LD s2, 144(sp)
  SW s9, 0(s2)
  BLT a0, s4, bb17
  JAL zero, bb12
bb17:
  JAL zero, bb16
bb18:
  ADD s1, zero, zero
  # implict jump to bb19
bb19:
  BLT s6, s3, bb22
  # implict jump to bb20
bb20:
  ADDIW s1, s1, 1
  BLT s1, s3, bb21
  JAL zero, bb1
bb21:
  JAL zero, bb19
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  BLT s6, s3, bb26
  # implict jump to bb24
bb24:
  ADDIW s0, s0, 1
  BLT s0, s3, bb25
  JAL zero, bb20
bb25:
  JAL zero, bb23
bb26:
  LUI a0, 352
  ADDIW a0, a0, -1792
  MULW a0, s1, a0
  LA s4, x
  ADD a0, s4, a0
  LUI s4, 1
  ADDIW s4, s4, -1696
  MULW s4, s0, s4
  ADD s4, a0, s4
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  SLLIW s5, a0, 2
  ADD s5, s4, s5
  ADDI s7, zero, 1
  SW s7, 0(s5)
  ADDIW a0, a0, 1
  BLT a0, s3, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
