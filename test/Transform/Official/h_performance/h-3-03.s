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
main:   # loop depth 0
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
  LA s0, m
  LA s1, n
  ADDI s10, zero, 0
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a0, 0(s0)
  LW s0, 0(s1)
  BLT s10, a0, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s10, a0, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, s0, bb20
  # implict jump to bb3
bb3:   # loop depth 0
  ADDIW s11, a0, -1
  BLT zero, s11, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LUI s0, 1
  LA s1, corr
  ADDIW s0, s0, -896
  LUI s3, 1048575
  MULW s0, a0, s0
  SLLIW s2, a0, 2
  ADDIW s3, s3, 892
  ADDI s4, zero, 1
  LA s5, m
  ADDI a0, zero, 81
  ADD s1, s1, s0
  LA s0, corr
  ADD s1, s1, s2
  ADD s1, s1, s3
  SW s4, 0(s1)
  CALL _sysy_stoptime
  LW a0, 0(s5)
  ADD a1, s0, zero
  MULW a0, a0, a0
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
bb5:   # loop depth 0
  ADD s4, zero, zero
  ADD s2, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LUI s1, 1
  ADDIW s1, s1, -896
  LA s6, corr
  MULW s3, s2, s1
  SLLIW s1, s2, 2
  ADDI s5, zero, 1
  ADDIW s2, s2, 1
  ADD s10, s6, s3
  ADD s3, s10, s1
  SW s5, 0(s3)
  BLT s2, a0, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  BLT s2, s11, bb9
  JAL zero, bb4
bb9:   # loop depth 1
  JAL zero, bb6
bb10:   # loop depth 1
  ADD s3, s2, zero
  # implict jump to bb11
bb11:   # loop depth 2
  SLLIW s4, s3, 2
  ADD s5, s10, s4
  SW zero, 0(s5)
  BLT zero, s0, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  LUI s6, 1
  LA s7, corr
  ADDIW s6, s6, -896
  LW s5, 0(s5)
  MULW s6, s3, s6
  ADDIW s3, s3, 1
  ADD s6, s7, s6
  ADD s6, s6, s1
  SW s5, 0(s6)
  BLT s3, a0, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  JAL zero, bb8
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  ADD s7, zero, zero
  ADD s6, zero, zero
  # implict jump to bb17
bb17:   # loop depth 3
  LUI s8, 1
  ADDIW s8, s8, -896
  LA s9, data
  MULW s8, s7, s8
  ADDIW s7, s7, 1
  ADD s8, s9, s8
  ADD s9, s8, s1
  ADD s8, s8, s4
  LW s9, 0(s9)
  LW s8, 0(s8)
  MULW s8, s9, s8
  ADDW s6, s6, s8
  BLT s7, s0, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  ADD s4, s7, zero
  SW s6, 0(s5)
  JAL zero, bb13
bb19:   # loop depth 3
  JAL zero, bb17
bb20:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BLT s10, a0, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, s0, bb23
  JAL zero, bb3
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 1
  LUI s2, 1
  MULW s3, s0, s0
  ADDIW s2, s2, -896
  LA s5, data
  MULW s2, s1, s2
  ADD s4, zero, zero
  ADD s2, s5, s2
  # implict jump to bb25
bb25:   # loop depth 2
  LA s7, mean
  SLLIW s5, s4, 2
  LA s9, stddev
  ADD s6, s2, s5
  ADD s8, s7, s5
  LW s7, 0(s6)
  ADD s5, s9, s5
  ADDIW s4, s4, 1
  LW s8, 0(s8)
  SUBW s7, s7, s8
  SW s7, 0(s6)
  LW s5, 0(s5)
  MULW s5, s3, s5
  DIVW s5, s7, s5
  SW s5, 0(s6)
  BLT s4, a0, bb26
  JAL zero, bb22
bb26:   # loop depth 2
  JAL zero, bb25
bb27:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA s3, stddev
  SLLIW s2, s1, 2
  ADD s3, s3, s2
  SW zero, 0(s3)
  BLT zero, s0, bb33
  # implict jump to bb29
bb29:   # loop depth 1
  LW s2, 0(s3)
  ADDI s5, zero, 1
  DIVW s2, s2, s0
  MULW s4, s2, s2
  SW s2, 0(s3)
  SLT s2, s5, s4
  SW s4, 0(s3)
  XORI s2, s2, 1
  BNE s2, zero, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW s1, s1, 1
  BLT s1, a0, bb31
  JAL zero, bb2
bb31:   # loop depth 1
  JAL zero, bb28
bb32:   # loop depth 1
  ADDI s2, zero, 1
  SW s2, 0(s3)
  JAL zero, bb30
bb33:   # loop depth 1
  LA s4, mean
  ADD s6, zero, zero
  ADD s5, zero, zero
  ADD s4, s4, s2
  LW s4, 0(s4)
  # implict jump to bb34
bb34:   # loop depth 2
  LUI s7, 1
  ADDIW s7, s7, -896
  LA s8, data
  MULW s7, s6, s7
  ADDIW s6, s6, 1
  ADD s7, s8, s7
  ADD s7, s7, s2
  LW s7, 0(s7)
  SUBW s7, s7, s4
  MULW s7, s7, s7
  ADDW s5, s5, s7
  BLT s6, s0, bb36
  # implict jump to bb35
bb35:   # loop depth 1
  SW s5, 0(s3)
  JAL zero, bb29
bb36:   # loop depth 2
  JAL zero, bb34
bb37:   # loop depth 0
  ADD s1, zero, zero
  ADDI s7, zero, 0
  # implict jump to bb38
bb38:   # loop depth 1
  LA s3, mean
  SLLIW s2, s1, 2
  ADD s3, s3, s2
  SW zero, 0(s3)
  BLT s7, s0, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  LW s2, 0(s3)
  ADDIW s1, s1, 1
  DIVW s2, s2, s0
  SW s2, 0(s3)
  BLT s1, a0, bb40
  JAL zero, bb1
bb40:   # loop depth 1
  JAL zero, bb38
bb41:   # loop depth 1
  ADD s5, zero, zero
  ADD s4, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LUI s6, 1
  ADDIW s6, s6, -896
  LA s8, data
  MULW s6, s5, s6
  ADDIW s5, s5, 1
  ADD s6, s8, s6
  ADD s6, s6, s2
  LW s6, 0(s6)
  ADDW s4, s4, s6
  BLT s5, s0, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  SW s4, 0(s3)
  JAL zero, bb39
bb44:   # loop depth 2
  JAL zero, bb42
