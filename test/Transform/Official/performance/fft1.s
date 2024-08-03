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
fft:
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
  ADD s2, a0, zero
  ADD s0, a1, zero
  ADD s3, a2, zero
  ADD s1, a3, zero
  XORI a0, s3, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb17
  # implict jump to bb1
bb1:
  ADDI a1, zero, 0
  BLT a1, s3, bb11
  # implict jump to bb2
bb2:
  BLT a1, s3, bb8
  # implict jump to bb3
bb3:
  SRAIW a0, s3, 31
  SRLIW a0, a0, 31
  ADD a0, s3, a0
  SRAIW s3, a0, 1
  ADD a0, s1, zero
  ADD a1, s1, zero
  CALL multiply
  ADD s4, a0, zero
  ADD a0, s2, zero
  ADD a1, s0, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL fft
  ADDW a1, s0, s3
  ADD a0, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL fft
  BLT zero, s3, bb5
  # implict jump to bb4
bb4:
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
bb5:
  ADD a1, zero, zero
  ADDI a0, zero, 1
  # implict jump to bb6
bb6:
  ADD s4, a0, zero
  ADD s5, a1, zero
  ADDW a1, s0, s5
  SLLIW a0, a1, 2
  ADD s8, s2, a0
  LW s7, 0(s8)
  ADDW a0, a1, s3
  SLLIW a0, a0, 2
  ADD s6, s2, a0
  LW a1, 0(s6)
  ADD a0, s4, zero
  CALL multiply
  ADD a1, a0, zero
  ADDW s9, s7, a1
  LUI a0, 243712
  ADDIW a0, a0, 1
  REMW a0, s9, a0
  SW a0, 0(s8)
  SUBW a1, s7, a1
  LUI a0, 243712
  ADDIW a0, a0, 1
  ADDW a1, a1, a0
  LUI a0, 243712
  ADDIW a0, a0, 1
  REMW a0, a1, a0
  SW a0, 0(s6)
  ADD a0, s4, zero
  ADD a1, s1, zero
  CALL multiply
  ADD s4, a0, zero
  ADDIW a0, s5, 1
  BLT a0, s3, bb7
  JAL zero, bb4
bb7:
  ADD a1, a0, zero
  ADD a0, s4, zero
  JAL zero, bb6
bb8:
  ADD a0, zero, zero
  # implict jump to bb9
bb9:
  ADD a1, a0, zero
  ADDW a0, s0, a1
  SLLIW a0, a0, 2
  ADD s4, s2, a0
  SLLIW s5, a1, 2
  LA a0, temp
  ADD a0, a0, s5
  LW a0, 0(a0)
  SW a0, 0(s4)
  ADDIW a0, a1, 1
  BLT a0, s3, bb10
  JAL zero, bb3
bb10:
  JAL zero, bb9
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s4, a0, zero
  ANDI a0, s4, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb16
  # implict jump to bb13
bb13:
  SRAIW a0, s3, 31
  SRLIW a0, a0, 31
  ADD a0, s3, a0
  SRAIW s5, a0, 1
  SRAIW a0, s4, 31
  SRLIW a0, a0, 31
  ADD a0, s4, a0
  SRAIW a0, a0, 1
  ADDW a0, s5, a0
  SLLIW s5, a0, 2
  LA a0, temp
  ADD s5, a0, s5
  ADDW a0, s4, s0
  SLLIW a0, a0, 2
  ADD a0, s2, a0
  LW a0, 0(a0)
  SW a0, 0(s5)
  # implict jump to bb14
bb14:
  ADDIW a0, s4, 1
  BLT a0, s3, bb15
  JAL zero, bb2
bb15:
  JAL zero, bb12
bb16:
  SRAIW a0, s4, 31
  SRLIW a0, a0, 31
  ADD a0, s4, a0
  SRAIW a0, a0, 1
  SLLIW s5, a0, 2
  LA a0, temp
  ADD a0, a0, s5
  ADDW s5, s4, s0
  SLLIW s5, s5, 2
  ADD s5, s2, s5
  LW s5, 0(s5)
  SW s5, 0(a0)
  JAL zero, bb14
bb17:
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
power:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLTIU a0, s1, 1
  BNE a0, zero, bb22
  # implict jump to bb19
bb19:
  SRAIW a0, s1, 31
  SRLIW a0, a0, 31
  ADD a0, s1, a0
  SRAIW a1, a0, 1
  ADD a0, s0, zero
  CALL power
  ADD a1, a0, zero
  ADD a0, a1, zero
  CALL multiply
  ADD a1, a0, zero
  SLLI a0, s1, 1
  SRLI a0, a0, 63
  ADD a0, s1, a0
  ANDI a0, a0, -2
  SUBW a0, s1, a0
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb20
bb20:
  ADD a0, a1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb21:
  ADD a0, a1, zero
  ADD a1, s0, zero
  CALL multiply
  ADD t0, a0, zero
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
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
  LA a1, d
  ADDI a0, zero, 1
  SW a0, 0(a1)
  LA a0, d
  LW a1, 0(a0)
  ADDW s0, s1, s0
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  BLT a1, s0, bb34
  # implict jump to bb24
bb24:
  ADD a0, s0, zero
  # implict jump to bb25
bb25:
  ADD s0, a0, zero
  LA a0, d
  LW s1, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a1, a0, s1
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, a
  ADD a1, zero, zero
  ADD a2, s1, zero
  CALL fft
  LA a0, d
  LW s1, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a1, a0, s1
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, b
  ADD a1, zero, zero
  ADD a2, s1, zero
  CALL fft
  LA a0, d
  LW a0, 0(a0)
  BLT zero, a0, bb31
  # implict jump to bb26
bb26:
  LA a0, d
  LW s1, 0(a0)
  LUI a0, 243712
  ADDIW a0, a0, 0
  DIVW a1, a0, s1
  LUI a0, 243712
  ADDIW a0, a0, 0
  SUBW a1, a0, a1
  ADDI a0, zero, 3
  CALL power
  ADD a3, a0, zero
  LA a0, a
  ADD a1, zero, zero
  ADD a2, s1, zero
  CALL fft
  LA a0, d
  LW a0, 0(a0)
  BLT zero, a0, bb28
  # implict jump to bb27
bb27:
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a0, s0, zero
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
bb28:
  ADD a0, zero, zero
  # implict jump to bb29
bb29:
  ADD s1, a0, zero
  SLLIW a1, s1, 2
  LA a0, a
  ADD s3, a0, a1
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
  ADDIW s1, s1, 1
  LA a0, d
  LW a0, 0(a0)
  BLT s1, a0, bb30
  JAL zero, bb27
bb30:
  ADD a0, s1, zero
  JAL zero, bb29
bb31:
  ADD a0, zero, zero
  # implict jump to bb32
bb32:
  ADD s3, a0, zero
  SLLIW s2, s3, 2
  LA a0, a
  ADD s1, a0, s2
  LW a1, 0(s1)
  LA a0, b
  ADD a0, a0, s2
  LW s2, 0(a0)
  ADD a0, a1, zero
  ADD a1, s2, zero
  CALL multiply
  SW a0, 0(s1)
  ADDIW a1, s3, 1
  LA a0, d
  LW a0, 0(a0)
  BLT a1, a0, bb33
  JAL zero, bb26
bb33:
  ADD a0, a1, zero
  JAL zero, bb32
bb34:
  LA a0, d
  LW a0, 0(a0)
  SLLIW a1, a0, 1
  LA a0, d
  SW a1, 0(a0)
  LA a0, d
  LW a0, 0(a0)
  BLT a0, s0, bb34
  # implict jump to bb35
bb35:
  ADD a0, s0, zero
  JAL zero, bb25
multiply:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s1, a0, zero
  ADD s0, a1, zero
  SLTIU a0, s0, 1
  BNE a0, zero, bb42
  # implict jump to bb37
bb37:
  XORI a0, s0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb41
  # implict jump to bb38
bb38:
  SRAIW a0, s0, 31
  SRLIW a0, a0, 31
  ADD a0, s0, a0
  SRAIW a1, a0, 1
  ADD a0, s1, zero
  CALL multiply
  ADD t0, a0, zero
  SLLIW t1, t0, 1
  LUI t0, 243712
  ADDIW t0, t0, 1
  REMW t1, t1, t0
  SLLI t0, s0, 1
  SRLI t0, t0, 63
  ADD t0, s0, t0
  ANDI t0, t0, -2
  SUBW t0, s0, t0
  XORI t0, t0, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb40
  # implict jump to bb39
bb39:
  ADD a0, t1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb40:
  ADDW t1, t1, s1
  LUI t0, 243712
  ADDIW t0, t0, 1
  REMW t0, t1, t0
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb41:
  LUI t0, 243712
  ADDIW t0, t0, 1
  REMW t0, s1, t0
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb42:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
