.global main
.section .bss
stddev:
.space 3200
corr:
.space 2560000
data:
.space 2560000
mean:
.space 3200


.section .data




n:
.word 0x00000320
m:
.word 0x00000320
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s1, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s5, 80(sp)
  SD s6, 88(sp)
  SD s7, 96(sp)
  LA a0, data
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LA a0, m
  LW a0, 0(a0)
  LA s0, n
  LW s0, 0(s0)
  ADDI s3, zero, 0
  BLT s3, a0, bb36
  # implict jump to bb1
bb1:
  BLT s3, a0, bb27
  # implict jump to bb2
bb2:
  BLT zero, s0, bb20
  # implict jump to bb3
bb3:
  ADDI s1, zero, 1
  SUBW s1, a0, s1
  BLT zero, s1, bb5
  # implict jump to bb4
bb4:
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW a0, s1, a0
  LA s0, corr
  ADD a0, s0, a0
  SLLIW s0, s1, 2
  ADD a0, a0, s0
  ADDI s0, zero, 1
  SW s0, 0(a0)
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LA a0, m
  LW a0, 0(a0)
  MULW a0, a0, a0
  LA a1, corr
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s1, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s5, 80(sp)
  LD s6, 88(sp)
  LD s7, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  ADD s4, zero, zero
  ADD s8, zero, zero
  # implict jump to bb6
bb6:
  LUI s2, 1
  ADDIW s2, s2, -896
  MULW s2, s4, s2
  LA s3, corr
  ADD s2, s3, s2
  SLLIW s3, s4, 2
  ADD s5, s2, s3
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDIW s4, s4, 1
  BLT s4, a0, bb10
  # implict jump to bb7
bb7:
  # implict jump to bb8
bb8:
  BLT s4, s1, bb9
  JAL zero, bb4
bb9:
  JAL zero, bb6
bb10:
  ADD s5, s4, zero
  # implict jump to bb11
bb11:
  SLLIW s6, s5, 2
  ADD s7, s2, s6
  SW zero, 0(s7)
  BLT zero, s0, bb16
  # implict jump to bb12
bb12:
  ADD s8, zero, zero
  # implict jump to bb13
bb13:
  LUI s6, 1
  ADDIW s6, s6, -896
  MULW s6, s5, s6
  LA s9, corr
  ADD s6, s9, s6
  ADD s6, s6, s3
  LW s7, 0(s7)
  SW s7, 0(s6)
  ADDIW s5, s5, 1
  BLT s5, a0, bb15
  # implict jump to bb14
bb14:
  JAL zero, bb8
bb15:
  JAL zero, bb11
bb16:
  ADD s8, zero, zero
  # implict jump to bb17
bb17:
  LW s11, 0(s7)
  LUI s9, 1
  ADDIW s9, s9, -896
  MULW s10, s8, s9
  LA s9, data
  ADD s9, s9, s10
  ADD s10, s9, s3
  LW s10, 0(s10)
  ADD s9, s9, s6
  LW s9, 0(s9)
  MULW s9, s10, s9
  ADDW s9, s11, s9
  SW s9, 0(s7)
  ADDIW s8, s8, 1
  BLT s8, s0, bb19
  # implict jump to bb18
bb18:
  JAL zero, bb13
bb19:
  JAL zero, bb17
bb20:
  ADD s2, zero, zero
  # implict jump to bb21
bb21:
  BLT s3, a0, bb24
  # implict jump to bb22
bb22:
  ADDIW s2, s2, 1
  BLT s2, s0, bb23
  JAL zero, bb3
bb23:
  JAL zero, bb21
bb24:
  LUI s1, 1
  ADDIW s1, s1, -896
  MULW s1, s2, s1
  LA s4, data
  ADD s4, s4, s1
  MULW s5, s0, s0
  ADD s1, zero, zero
  # implict jump to bb25
bb25:
  SLLIW s6, s1, 2
  ADD s7, s4, s6
  LW s8, 0(s7)
  LA s9, mean
  ADD s9, s9, s6
  LW s9, 0(s9)
  SUBW s8, s8, s9
  SW s8, 0(s7)
  LA s9, stddev
  ADD s6, s9, s6
  LW s6, 0(s6)
  MULW s6, s5, s6
  DIVW s6, s8, s6
  SW s6, 0(s7)
  ADDIW s1, s1, 1
  BLT s1, a0, bb26
  JAL zero, bb22
bb26:
  JAL zero, bb25
bb27:
  ADD s2, zero, zero
  # implict jump to bb28
bb28:
  SLLIW s4, s2, 2
  LA s1, stddev
  ADD s5, s1, s4
  SW zero, 0(s5)
  BLT zero, s0, bb33
  # implict jump to bb29
bb29:
  LW s1, 0(s5)
  DIVW s1, s1, s0
  SW s1, 0(s5)
  MULW s1, s1, s1
  SW s1, 0(s5)
  ADDI s4, zero, 1
  SLT s1, s4, s1
  XORI s1, s1, 1
  BNE s1, zero, bb32
  # implict jump to bb30
bb30:
  ADDIW s2, s2, 1
  BLT s2, a0, bb31
  JAL zero, bb2
bb31:
  JAL zero, bb28
bb32:
  ADDI s1, zero, 1
  SW s1, 0(s5)
  JAL zero, bb30
bb33:
  LA s1, mean
  ADD s1, s1, s4
  LW s6, 0(s1)
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  LW s7, 0(s5)
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s1, s8
  LA s9, data
  ADD s8, s9, s8
  ADD s8, s8, s4
  LW s8, 0(s8)
  SUBW s8, s8, s6
  MULW s8, s8, s8
  ADDW s7, s7, s8
  SW s7, 0(s5)
  ADDIW s1, s1, 1
  BLT s1, s0, bb35
  JAL zero, bb29
bb35:
  JAL zero, bb34
bb36:
  ADDI s5, zero, 0
  ADD s2, zero, zero
  # implict jump to bb37
bb37:
  SLLIW s4, s2, 2
  LA s1, mean
  ADD s6, s1, s4
  SW zero, 0(s6)
  BLT s5, s0, bb40
  # implict jump to bb38
bb38:
  LW s1, 0(s6)
  DIVW s1, s1, s0
  SW s1, 0(s6)
  ADDIW s2, s2, 1
  BLT s2, a0, bb39
  JAL zero, bb1
bb39:
  JAL zero, bb37
bb40:
  ADD s1, zero, zero
  # implict jump to bb41
bb41:
  LW s7, 0(s6)
  LUI s8, 1
  ADDIW s8, s8, -896
  MULW s8, s1, s8
  LA s9, data
  ADD s8, s9, s8
  ADD s8, s8, s4
  LW s8, 0(s8)
  ADDW s7, s7, s8
  SW s7, 0(s6)
  ADDIW s1, s1, 1
  BLT s1, s0, bb42
  JAL zero, bb38
bb42:
  JAL zero, bb41
