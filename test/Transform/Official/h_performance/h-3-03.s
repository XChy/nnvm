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
  LW s8, 0(a0)
  LA a0, n
  LW s11, 0(a0)
  ADDI s0, zero, 0
  BLT s0, s8, bb38
  # implict jump to bb1
bb1:
  BLT s0, s8, bb29
  # implict jump to bb2
bb2:
  BLT zero, s11, bb22
  # implict jump to bb3
bb3:
  ADDI a0, zero, 1
  SUBW s3, s8, a0
  BLT zero, s3, bb6
  # implict jump to bb4
bb4:
  ADD a0, s3, zero
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s1, s0, a0
  LA a0, corr
  ADD s1, a0, s1
  SLLIW a0, s0, 2
  ADD s0, s1, a0
  ADDI a0, zero, 1
  SW a0, 0(s0)
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
  ADD s0, zero, zero
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  ADD s4, a0, zero
  ADD s5, s0, zero
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s0, s5, a0
  LA a0, corr
  ADD s2, a0, s0
  SLLIW s1, s5, 2
  ADD s0, s2, s1
  ADDI a0, zero, 1
  SW a0, 0(s0)
  ADDIW s0, s5, 1
  BLT s0, s8, bb12
  # implict jump to bb8
bb8:
  ADD a0, s4, zero
  # implict jump to bb9
bb9:
  BLT s0, s3, bb11
  # implict jump to bb10
bb10:
  ADD a0, s3, zero
  JAL zero, bb5
bb11:
  JAL zero, bb7
bb12:
  ADD a0, s0, zero
  # implict jump to bb13
bb13:
  ADD s5, a0, zero
  SLLIW s4, s5, 2
  ADD s6, s2, s4
  SW zero, 0(s6)
  BLT zero, s11, bb18
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  ADD s4, a0, zero
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s7, s5, a0
  LA a0, corr
  ADD a0, a0, s7
  ADD s7, a0, s1
  LW a0, 0(s6)
  SW a0, 0(s7)
  ADDIW a0, s5, 1
  BLT a0, s8, bb17
  # implict jump to bb16
bb16:
  ADD a0, s4, zero
  JAL zero, bb9
bb17:
  JAL zero, bb13
bb18:
  ADD a0, zero, zero
  # implict jump to bb19
bb19:
  ADD s7, a0, zero
  LW s9, 0(s6)
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s10, s7, a0
  LA a0, data
  ADD a0, a0, s10
  ADD s10, a0, s1
  LW s10, 0(s10)
  ADD a0, a0, s4
  LW a0, 0(a0)
  MULW a0, s10, a0
  ADDW a0, s9, a0
  SW a0, 0(s6)
  ADDIW a0, s7, 1
  BLT a0, s11, bb21
  # implict jump to bb20
bb20:
  JAL zero, bb15
bb21:
  JAL zero, bb19
bb22:
  ADD a0, zero, zero
  # implict jump to bb23
bb23:
  ADD s3, a0, zero
  BLT s0, s8, bb26
  # implict jump to bb24
bb24:
  ADDIW a0, s3, 1
  BLT a0, s11, bb25
  JAL zero, bb3
bb25:
  JAL zero, bb23
bb26:
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s1, s3, a0
  LA a0, data
  ADD s5, a0, s1
  MULW s4, s11, s11
  ADD a0, zero, zero
  # implict jump to bb27
bb27:
  ADD s6, a0, zero
  SLLIW s2, s6, 2
  ADD s1, s5, s2
  LW s7, 0(s1)
  LA a0, mean
  ADD a0, a0, s2
  LW a0, 0(a0)
  SUBW s7, s7, a0
  SW s7, 0(s1)
  LA a0, stddev
  ADD a0, a0, s2
  LW a0, 0(a0)
  MULW a0, s4, a0
  DIVW a0, s7, a0
  SW a0, 0(s1)
  ADDIW a0, s6, 1
  BLT a0, s8, bb28
  JAL zero, bb24
bb28:
  JAL zero, bb27
bb29:
  ADD a0, zero, zero
  # implict jump to bb30
bb30:
  ADD s1, a0, zero
  SLLIW s3, s1, 2
  LA a0, stddev
  ADD s2, a0, s3
  SW zero, 0(s2)
  BLT zero, s11, bb35
  # implict jump to bb31
bb31:
  LW a0, 0(s2)
  DIVW a0, a0, s11
  SW a0, 0(s2)
  MULW s3, a0, a0
  SW s3, 0(s2)
  ADDI a0, zero, 1
  SLT a0, a0, s3
  XORI a0, a0, 1
  BNE a0, zero, bb34
  # implict jump to bb32
bb32:
  ADDIW a0, s1, 1
  BLT a0, s8, bb33
  JAL zero, bb2
bb33:
  JAL zero, bb30
bb34:
  ADDI a0, zero, 1
  SW a0, 0(s2)
  JAL zero, bb32
bb35:
  LA a0, mean
  ADD a0, a0, s3
  LW s4, 0(a0)
  ADD a0, zero, zero
  # implict jump to bb36
bb36:
  ADD s5, a0, zero
  LW s6, 0(s2)
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s7, s5, a0
  LA a0, data
  ADD a0, a0, s7
  ADD a0, a0, s3
  LW a0, 0(a0)
  SUBW a0, a0, s4
  MULW a0, a0, a0
  ADDW a0, s6, a0
  SW a0, 0(s2)
  ADDIW a0, s5, 1
  BLT a0, s11, bb37
  JAL zero, bb31
bb37:
  JAL zero, bb36
bb38:
  ADDI s1, zero, 0
  ADD a0, zero, zero
  # implict jump to bb39
bb39:
  ADD s4, a0, zero
  SLLIW s5, s4, 2
  LA a0, mean
  ADD s2, a0, s5
  SW zero, 0(s2)
  BLT s1, s11, bb42
  # implict jump to bb40
bb40:
  LW a0, 0(s2)
  DIVW a0, a0, s11
  SW a0, 0(s2)
  ADDIW a0, s4, 1
  BLT a0, s8, bb41
  JAL zero, bb1
bb41:
  JAL zero, bb39
bb42:
  ADD a0, zero, zero
  # implict jump to bb43
bb43:
  ADD s3, a0, zero
  LW s6, 0(s2)
  LUI a0, 1
  ADDIW a0, a0, -896
  MULW s7, s3, a0
  LA a0, data
  ADD a0, a0, s7
  ADD a0, a0, s5
  LW a0, 0(a0)
  ADDW a0, s6, a0
  SW a0, 0(s2)
  ADDIW a0, s3, 1
  BLT a0, s11, bb44
  JAL zero, bb40
bb44:
  JAL zero, bb43
