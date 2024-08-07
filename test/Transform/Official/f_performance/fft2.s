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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s5, 8(sp)
  SD s6, 16(sp)
  SD s7, 24(sp)
  SD s8, 32(sp)
  SD s9, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  ADD s3, a0, zero
  ADD s4, a1, zero
  ADD a1, a2, zero
  ADD s5, a3, zero
  XORI a0, a1, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb18
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI s6, zero, 0
  SRAIW a0, a1, 31
  SRLIW a0, a0, 31
  ADD a0, a1, a0
  SRAIW s2, a0, 1
  BLT s6, a1, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT s6, a1, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, s5, zero
  ADD a1, s5, zero
  CALL multiply
  ADD s0, a0, zero
  ADD a0, s3, zero
  ADD a1, s4, zero
  ADD a2, s2, zero
  ADD a3, s0, zero
  CALL fft
  ADDW a1, s4, s2
  ADD a0, s3, zero
  ADD a2, s2, zero
  ADD a3, s0, zero
  CALL fft
  BLT zero, s2, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD s1, zero, zero
  ADDI s0, zero, 1
  # implict jump to bb6
bb6:   # loop depth 1
  ADDW a0, s4, s1
  SLLIW a1, a0, 2
  ADD s6, s3, a1
  LW s7, 0(s6)
  ADDW a0, a0, s2
  SLLIW a0, a0, 2
  ADD s8, s3, a0
  LW a1, 0(s8)
  ADD a0, s0, zero
  CALL multiply
  ADDW a1, s7, a0
  LUI s9, 243712
  ADDIW s9, s9, 1
  REMW a1, a1, s9
  SW a1, 0(s6)
  SUBW a0, s7, a0
  LUI a1, 243712
  ADDIW a1, a1, 1
  ADDW a0, a0, a1
  LUI a1, 243712
  ADDIW a1, a1, 1
  REMW a0, a0, a1
  SW a0, 0(s8)
  ADD a0, s0, zero
  ADD a1, s5, zero
  CALL multiply
  ADDIW s1, s1, 1
  BLT s1, s2, bb7
  JAL zero, bb4
bb7:   # loop depth 1
  ADD s0, a0, zero
  JAL zero, bb6
bb8:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  ADDW s0, s4, a0
  SLLIW s0, s0, 2
  ADD s0, s3, s0
  SLLIW s1, a0, 2
  LA s6, temp
  ADD s1, s6, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  ADDIW a0, a0, 1
  BLT a0, a1, bb10
  JAL zero, bb3
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  ANDI s0, a0, 1
  SLTIU s0, s0, 1
  SRAIW s1, a0, 31
  SRLIW s1, s1, 31
  ADD s1, a0, s1
  SRAIW s1, s1, 1
  ADDW s7, a0, s4
  BNE s0, zero, bb17
  # implict jump to bb13
bb13:   # loop depth 1
  ADDW s0, s2, s1
  SLLIW s0, s0, 2
  LA s1, temp
  ADD s0, s1, s0
  SLLIW s1, s7, 2
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, a1, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  JAL zero, bb2
bb16:   # loop depth 1
  JAL zero, bb12
bb17:   # loop depth 1
  SLLIW s0, s1, 2
  LA s1, temp
  ADD s0, s1, s0
  SLLIW s1, s7, 2
  ADD s1, s3, s1
  LW s1, 0(s1)
  SW s1, 0(s0)
  JAL zero, bb14
bb18:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s5, 8(sp)
  LD s6, 16(sp)
  LD s7, 24(sp)
  LD s8, 32(sp)
  LD s9, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
power:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU a0, s1, 1
  BNE a0, zero, bb23
  # implict jump to bb20
bb20:   # loop depth 0
  SRAIW a0, s1, 31
  SRLIW a0, a0, 31
  ADD a0, s1, a0
  SRAIW a1, a0, 1
  ADD a0, s0, zero
  CALL power
  ADD a1, a0, zero
  ADD a0, a1, zero
  CALL multiply
  SLLI a1, s1, 1
  SRLI a1, a1, 63
  ADD a1, s1, a1
  ANDI a1, a1, -2
  SUBW a1, s1, a1
  XORI a1, a1, 1
  SLTIU a1, a1, 1
  BNE a1, zero, bb22
  # implict jump to bb21
bb21:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:   # loop depth 0
  ADD a1, s0, zero
  CALL multiply
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb23:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA a0, a
  CALL getarray
  ADD s1, a0, zero
  LA a0, b
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 60
  CALL _sysy_starttime
  LA a0, d
  ADDI a1, zero, 1
  SW a1, 0(a0)
  ADDW a0, s1, s0
  ADDIW s1, a0, -1
  ADDI a0, zero, 1
  BLT a0, s1, bb34
  # implict jump to bb25
bb25:   # loop depth 0
  LA a0, d
  LW s0, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a1, a0, s0
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, a
  ADD a1, zero, zero
  ADD a2, s0, zero
  CALL fft
  LA a0, d
  LW s0, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a1, a0, s0
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, b
  ADD a1, zero, zero
  ADD a2, s0, zero
  CALL fft
  LA a0, d
  LW a0, 0(a0)
  BLT zero, a0, bb31
  # implict jump to bb26
bb26:   # loop depth 0
  LA a0, d
  LW s0, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a0, a0, s0
  LUI a1, 243712
  ADDIW a1, a1, 0
  SUBW a1, a1, a0
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, a
  ADD a1, zero, zero
  ADD a2, s0, zero
  CALL fft
  LA a0, d
  LW a0, 0(a0)
  BLT zero, a0, bb28
  # implict jump to bb27
bb27:   # loop depth 0
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s1, zero
  LA a1, a
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb28:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb29
bb29:   # loop depth 1
  SLLIW a0, s0, 2
  LA a1, a
  ADD s3, a1, a0
  LW s2, 0(s3)
  LA a0, d
  LW a0, 0(a0)
  LUI a1, 243712
  ADDIW a1, a1, -1
  ADD a1, zero, a1
  CALL power
  ADD a1, a0, zero
  ADD a0, s2, zero
  CALL multiply
  SW a0, 0(s3)
  ADDIW s0, s0, 1
  LA a0, d
  LW a0, 0(a0)
  BLT s0, a0, bb30
  JAL zero, bb27
bb30:   # loop depth 1
  JAL zero, bb29
bb31:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb32
bb32:   # loop depth 1
  SLLIW a1, s0, 2
  LA a0, a
  ADD s2, a0, a1
  LW a0, 0(s2)
  LA s3, b
  ADD a1, s3, a1
  LW a1, 0(a1)
  CALL multiply
  SW a0, 0(s2)
  ADDIW s0, s0, 1
  LA a0, d
  LW a0, 0(a0)
  BLT s0, a0, bb33
  JAL zero, bb26
bb33:   # loop depth 1
  JAL zero, bb32
bb34:   # loop depth 0
  # implict jump to bb35
bb35:   # loop depth 1
  LA a0, d
  LW a0, 0(a0)
  SLLIW a0, a0, 1
  LA a1, d
  SW a0, 0(a1)
  BLT a0, s1, bb35
  # implict jump to bb36
bb36:   # loop depth 0
  JAL zero, bb25
multiply:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU a0, s1, 1
  BNE a0, zero, bb43
  # implict jump to bb38
bb38:   # loop depth 0
  XORI a0, s1, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb42
  # implict jump to bb39
bb39:   # loop depth 0
  SRAIW a0, s1, 31
  SRLIW a0, a0, 31
  ADD a0, s1, a0
  SRAIW a1, a0, 1
  ADD a0, s0, zero
  CALL multiply
  SLLIW t0, a0, 1
  LUI t1, 243712
  ADDIW t1, t1, 1
  REMW a0, t0, t1
  SLLI t0, s1, 1
  SRLI t0, t0, 63
  ADD t0, s1, t0
  ANDI t0, t0, -2
  SUBW t0, s1, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb41
  # implict jump to bb40
bb40:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb41:   # loop depth 0
  ADDW t0, a0, s0
  LUI t1, 243712
  ADDIW t1, t1, 1
  REMW a0, t0, t1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb42:   # loop depth 0
  LUI t0, 243712
  ADDIW t0, t0, 1
  REMW a0, s0, t0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb43:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
