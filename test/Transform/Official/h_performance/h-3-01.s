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
  LW s11, 0(s0)
  ADDI s6, zero, 0
  BLT s6, a0, bb38
  # implict jump to bb1
bb1:
  BLT s6, a0, bb29
  # implict jump to bb2
bb2:
  BLT zero, s11, bb22
  # implict jump to bb3
bb3:
  ADDI s0, zero, 1
  SUBW s0, a0, s0
  BLT zero, s0, bb6
  # implict jump to bb4
bb4:
  ADD a0, s0, zero
  # implict jump to bb5
bb5:
  LUI s0, 1
  ADDIW s0, s0, -896
  MULW s0, a0, s0
  LA s1, corr
  ADD s0, s1, s0
  SLLIW a0, a0, 2
  ADD a0, s0, a0
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
bb6:
  ADD s2, zero, zero
  ADD s1, zero, zero
  # implict jump to bb7
bb7:
  ADD s4, s1, zero
  ADD s3, s2, zero
  LUI s1, 1
  ADDIW s1, s1, -896
  MULW s1, s3, s1
  LA s2, corr
  ADD s1, s2, s1
  SLLIW s2, s3, 2
  ADD s5, s1, s2
  ADDI s6, zero, 1
  SW s6, 0(s5)
  ADDIW s3, s3, 1
  BLT s3, a0, bb12
  # implict jump to bb8
bb8:
  ADD s1, s4, zero
  # implict jump to bb9
bb9:
  BLT s3, s0, bb11
  # implict jump to bb10
bb10:
  ADD a0, s0, zero
  JAL zero, bb5
bb11:
  ADD s2, s3, zero
  JAL zero, bb7
bb12:
  ADD s4, s3, zero
  # implict jump to bb13
bb13:
  SLLIW s5, s4, 2
  ADD s6, s1, s5
  SW zero, 0(s6)
  BLT zero, s11, bb18
  # implict jump to bb14
bb14:
  ADD s5, zero, zero
  # implict jump to bb15
bb15:
  LUI s7, 1
  ADDIW s7, s7, -896
  MULW s7, s4, s7
  LA s8, corr
  ADD s7, s8, s7
  ADD s7, s7, s2
  LW s6, 0(s6)
  SW s6, 0(s7)
  ADDIW s4, s4, 1
  BLT s4, a0, bb17
  # implict jump to bb16
bb16:
  ADD s1, s5, zero
  JAL zero, bb9
bb17:
  JAL zero, bb13
bb18:
  ADD s7, zero, zero
  # implict jump to bb19
bb19:
  LW s8, 0(s6)
  LUI s9, 1
  ADDIW s9, s9, -896
  MULW s9, s7, s9
  LA s10, data
  ADD s9, s10, s9
  ADD s10, s9, s2
  LW s10, 0(s10)
  ADD s9, s9, s5
  LW s9, 0(s9)
  MULW s9, s10, s9
  ADDW s8, s8, s9
  SW s8, 0(s6)
  ADDIW s7, s7, 1
  BLT s7, s11, bb21
  # implict jump to bb20
bb20:
  ADD s5, s7, zero
  JAL zero, bb15
bb21:
  JAL zero, bb19
bb22:
  ADD s0, zero, zero
  # implict jump to bb23
bb23:
  BLT s6, a0, bb26
  # implict jump to bb24
bb24:
  ADDIW s0, s0, 1
  BLT s0, s11, bb25
  JAL zero, bb3
bb25:
  JAL zero, bb23
bb26:
  LUI s1, 1
  ADDIW s1, s1, -896
  MULW s1, s0, s1
  LA s2, data
  ADD s1, s2, s1
  MULW s2, s11, s11
  ADD s3, zero, zero
  # implict jump to bb27
bb27:
  SLLIW s4, s3, 2
  ADD s5, s1, s4
  LW s7, 0(s5)
  LA s8, mean
  ADD s8, s8, s4
  LW s8, 0(s8)
  SUBW s7, s7, s8
  SW s7, 0(s5)
  LA s8, stddev
  ADD s4, s8, s4
  LW s4, 0(s4)
  MULW s4, s2, s4
  DIVW s4, s7, s4
  SW s4, 0(s5)
  ADDIW s3, s3, 1
  BLT s3, a0, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
bb29:
  ADD s0, zero, zero
  # implict jump to bb30
bb30:
  SLLIW s1, s0, 2
  LA s2, stddev
  ADD s2, s2, s1
  SW zero, 0(s2)
  BLT zero, s11, bb35
  # implict jump to bb31
bb31:
  LW s1, 0(s2)
  DIVW s1, s1, s11
  SW s1, 0(s2)
  MULW s1, s1, s1
  SW s1, 0(s2)
  ADDI s3, zero, 1
  SLT s1, s3, s1
  XORI s1, s1, 1
  BNE s1, zero, bb34
  # implict jump to bb32
bb32:
  ADDIW s0, s0, 1
  BLT s0, a0, bb33
  JAL zero, bb2
bb33:
  JAL zero, bb30
bb34:
  ADDI s1, zero, 1
  SW s1, 0(s2)
  JAL zero, bb32
bb35:
  LA s3, mean
  ADD s3, s3, s1
  LW s3, 0(s3)
  ADD s4, zero, zero
  # implict jump to bb36
bb36:
  LW s5, 0(s2)
  LUI s7, 1
  ADDIW s7, s7, -896
  MULW s7, s4, s7
  LA s8, data
  ADD s7, s8, s7
  ADD s7, s7, s1
  LW s7, 0(s7)
  SUBW s7, s7, s3
  MULW s7, s7, s7
  ADDW s5, s5, s7
  SW s5, 0(s2)
  ADDIW s4, s4, 1
  BLT s4, s11, bb37
  JAL zero, bb31
bb37:
  JAL zero, bb36
bb38:
  ADDI s7, zero, 0
  ADD s0, zero, zero
  # implict jump to bb39
bb39:
  SLLIW s1, s0, 2
  LA s2, mean
  ADD s2, s2, s1
  SW zero, 0(s2)
  BLT s7, s11, bb42
  # implict jump to bb40
bb40:
  LW s1, 0(s2)
  DIVW s1, s1, s11
  SW s1, 0(s2)
  ADDIW s0, s0, 1
  BLT s0, a0, bb41
  JAL zero, bb1
bb41:
  JAL zero, bb39
bb42:
  ADD s3, zero, zero
  # implict jump to bb43
bb43:
  LW s4, 0(s2)
  LUI s5, 1
  ADDIW s5, s5, -896
  MULW s5, s3, s5
  LA s8, data
  ADD s5, s8, s5
  ADD s5, s5, s1
  LW s5, 0(s5)
  ADDW s4, s4, s5
  SW s4, 0(s2)
  ADDIW s3, s3, 1
  BLT s3, s11, bb44
  JAL zero, bb40
bb44:
  JAL zero, bb43
