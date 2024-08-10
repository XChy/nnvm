.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global fft
.global power
.global main
.global multiply
.section .bss
b:
.space 8388608
temp:
.space 8388608
a:
.space 8388608

.section .data



d:
.word 0x00000000
.section .text
fft:   # loop depth 0
  ADDI sp, sp, -112
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s11, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s5, 96(sp)
  SD s6, 104(sp)
  ADD s0, a2, zero
  ADD s1, a3, zero
  SW s1, 0(sp)
  XORI s2, s0, 1
  ADD s5, a1, zero
  SLTIU a1, s2, 1
  ADD s4, a0, zero
  BNE a1, zero, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  SRAIW a0, s0, 31
  ADDI s7, zero, 0
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW s2, a0, 1
  BLT s7, s0, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s7, s0, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  LW a1, 0(sp)
  LW a0, 0(sp)
  ADDW s3, s5, s2
  CALL multiply
  ADD s0, a0, zero
  ADD a2, s2, zero
  ADD a3, s0, zero
  ADD a1, s5, zero
  ADD a0, s4, zero
  CALL fft
  ADD a3, s0, zero
  ADD a2, s2, zero
  ADD a1, s3, zero
  ADD a0, s4, zero
  CALL fft
  BLT zero, s2, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 1
  ADD s0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s3, a0, zero
  ADDW a1, s5, s0
  ADD a0, s3, zero
  SH2ADD s6, a1, s4
  ADDW a1, a1, s2
  LW s7, 0(s6)
  SH2ADD s8, a1, s4
  LUI a1, 243712
  SW a1, 4(sp)
  LUI s11, 243712
  LUI s10, 243712
  LW a1, 4(sp)
  ADDIW a1, a1, 1
  SW a1, 4(sp)
  LW a1, 0(s8)
  ADDIW s11, s11, 1
  ADDIW s10, s10, 1
  ADDIW s0, s0, 1
  CALL multiply
  LW a1, 0(sp)
  SUBW s9, s7, a0
  ADDW a0, s7, a0
  LW s1, 4(sp)
  ADDW s7, s9, s1
  REMW s9, a0, s11
  REMW s7, s7, s10
  ADD a0, s3, zero
  SW s9, 0(s6)
  SW s7, 0(s8)
  CALL multiply
  BLT s0, s2, bb7
  JAL zero, bb4
bb7:   # loop depth 1
  JAL zero, bb6
bb8:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA s6, temp
  ADDW s3, s5, a0
  ADDIW a1, a0, 1
  SH2ADD s6, a0, s6
  SH2ADD a0, s3, s4
  LW s3, 0(s6)
  SW s3, 0(a0)
  BLT a1, s0, bb10
  JAL zero, bb3
bb10:   # loop depth 1
  ADD a0, a1, zero
  JAL zero, bb9
bb11:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SRAIW s3, a0, 31
  ANDI a1, a0, 1
  SRLIW s3, s3, 31
  ADDW s6, a0, s5
  ADD s3, a0, s3
  SLTIU a1, a1, 1
  SRAIW s3, s3, 1
  BNE a1, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD a1, s6, s4
  LA s8, temp
  LW s6, 0(a1)
  ADDW a1, s2, s3
  SH2ADD a1, a1, s8
  SW s6, 0(a1)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, s0, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  JAL zero, bb2
bb16:   # loop depth 1
  JAL zero, bb12
bb17:   # loop depth 1
  SH2ADD a1, s6, s4
  LA s8, temp
  LW s6, 0(a1)
  SH2ADD a1, s3, s8
  SW s6, 0(a1)
  JAL zero, bb14
bb18:   # loop depth 0
  ADDI a0, zero, 1
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s5, 96(sp)
  LD s6, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
power:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s1, a1, zero
  ADD s0, a0, zero
  SLTIU a0, s1, 1
  BNE a0, zero, bb23
  # implict jump to bb20
bb20:   # loop depth 0
  SRAIW a0, s1, 31
  SLLI a1, s1, 1
  SRLIW a0, a0, 31
  SRLI s2, a1, 63
  ADD a1, s1, a0
  ADD a0, s0, zero
  SRAIW a1, a1, 1
  ADD s2, s1, s2
  ANDI s2, s2, -2
  SUBW s1, s1, s2
  CALL power
  XORI s1, s1, 1
  ADD a1, a0, zero
  SLTIU s1, s1, 1
  CALL multiply
  BNE s1, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:   # loop depth 0
  ADD a1, s0, zero
  CALL multiply
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb23:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  LA a0, a
  LA s0, b
  LA s2, d
  ADDI s3, zero, 1
  ADDI s4, zero, 1
  CALL getarray
  ADD s1, a0, zero
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 60
  ADDW s0, s1, s0
  ADDIW s1, s0, -1
  CALL _sysy_starttime
  SW s3, 0(s2)
  BLT s4, s1, bb34
  # implict jump to bb25
bb25:   # loop depth 0
  LA a1, d
  LUI s4, 243712
  ADDIW s4, s4, 0
  ADDI a0, zero, 3
  LW s0, 0(a1)
  LA s3, a
  LA s6, d
  LUI s5, 243712
  ADDIW s5, s5, 0
  LA s2, b
  DIVW a1, s4, s0
  LA s4, d
  CALL power
  ADD a2, s0, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s3, zero
  CALL fft
  LW s0, 0(s6)
  ADDI a0, zero, 3
  DIVW a1, s5, s0
  CALL power
  ADD a2, s0, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s2, zero
  CALL fft
  LW a0, 0(s4)
  BLT zero, a0, bb31
  # implict jump to bb26
bb26:   # loop depth 0
  LA a0, d
  LUI a1, 243712
  ADDIW a1, a1, 0
  LUI s3, 243712
  LW s0, 0(a0)
  ADDIW s3, s3, 0
  ADDI a0, zero, 3
  LA s2, a
  LA s4, d
  DIVW a1, a1, s0
  SUBW a1, s3, a1
  CALL power
  ADD a2, s0, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s2, zero
  CALL fft
  LW a0, 0(s4)
  BLT zero, a0, bb28
  # implict jump to bb27
bb27:   # loop depth 0
  LA s0, a
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, s1, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb28:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  LA a0, a
  LA s4, d
  LUI a1, 243712
  SH2ADD s3, s0, a0
  ADDIW a1, a1, -1
  LW s2, 0(s3)
  ADD a1, zero, a1
  LA s5, d
  ADDIW s0, s0, 1
  LW a0, 0(s4)
  CALL power
  ADD a1, a0, zero
  ADD a0, s2, zero
  CALL multiply
  SW a0, 0(s3)
  LW a0, 0(s5)
  BLT s0, a0, bb30
  JAL zero, bb27
bb30:   # loop depth 1
  JAL zero, bb29
bb31:   # loop depth 0
  ADD a1, zero, zero
  # implict jump to bb32
bb32:   # loop depth 1
  LA a0, a
  LA s4, b
  LA s3, d
  SH2ADD s2, a1, a0
  ADDIW s0, a1, 1
  LW a0, 0(s2)
  SH2ADD a1, a1, s4
  LW a1, 0(a1)
  CALL multiply
  SW a0, 0(s2)
  LW a0, 0(s3)
  BLT s0, a0, bb33
  JAL zero, bb26
bb33:   # loop depth 1
  ADD a1, s0, zero
  JAL zero, bb32
bb34:   # loop depth 0
  # implict jump to bb35
bb35:   # loop depth 1
  LA a0, d
  LA a1, d
  LW a0, 0(a0)
  SLLIW a0, a0, 1
  SW a0, 0(a1)
  BLT a0, s1, bb35
  # implict jump to bb36
bb36:   # loop depth 0
  JAL zero, bb25
multiply:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a1, zero
  ADD s1, a0, zero
  SLTIU a0, s0, 1
  BNE a0, zero, bb43
  # implict jump to bb38
bb38:   # loop depth 0
  XORI a0, s0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb42
  # implict jump to bb39
bb39:   # loop depth 0
  SRAIW a1, s0, 31
  ADD a0, s1, zero
  SRLIW a1, a1, 31
  LUI s3, 243712
  ADD a1, s0, a1
  ADDIW s3, s3, 1
  SRAIW a1, a1, 1
  SLLI s2, s0, 1
  SRLI s2, s2, 63
  ADD s2, s0, s2
  CALL multiply
  ANDI t1, s2, -2
  SLLIW t0, a0, 1
  SUBW t1, s0, t1
  REMW a0, t0, s3
  XORI t0, t1, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb41
  # implict jump to bb40
bb40:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb41:   # loop depth 0
  LUI t1, 243712
  ADDW t0, a0, s1
  ADDIW t1, t1, 1
  REMW a0, t0, t1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb42:   # loop depth 0
  LUI t0, 243712
  ADDIW t0, t0, 1
  REMW a0, s1, t0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb43:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
