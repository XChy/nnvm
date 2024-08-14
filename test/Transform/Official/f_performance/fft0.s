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
  SD ra, 0(sp)
  SD s7, 8(sp)
  SD s8, 16(sp)
  SD s9, 24(sp)
  SD s10, 32(sp)
  SD s11, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  ADD s11, a3, zero
  XORI t0, a2, 1
  ADD s5, a1, zero
  ADD s0, a0, zero
  BEQ t0, zero, bb17
  # implict jump to bb1
bb1:   # loop depth 0
  SRAIW t0, a2, 31
  ADDI a1, zero, 0
  SRLIW t0, t0, 31
  ADD t0, a2, t0
  SRAIW s4, t0, 1
  BLT a1, a2, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT a1, a2, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a1, s11, zero
  ADD a0, s11, zero
  ADDW s2, s5, s4
  CALL multiply
  ADD s1, a0, zero
  ADD a2, s4, zero
  ADD a3, s1, zero
  ADD a1, s5, zero
  ADD a0, s0, zero
  CALL fft
  ADD a3, s1, zero
  ADD a2, s4, zero
  ADD a1, s2, zero
  ADD a0, s0, zero
  CALL fft
  BLT zero, s4, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADDI a0, zero, 1
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s6, a0, zero
  ADDW t1, s5, t0
  ADD a0, s6, zero
  SH2ADD s7, t1, s0
  ADDW t1, t1, s4
  LW s8, 0(s7)
  SH2ADD s9, t1, s0
  LUI s2, 243712
  LUI s1, 243712
  LUI s3, 243712
  ADDIW s2, s2, 1
  LW a1, 0(s9)
  ADDIW s1, s1, 1
  ADDIW s3, s3, 1
  ADDIW s10, t0, 1
  CALL multiply
  ADD a1, s11, zero
  SUBW t1, s8, a0
  ADDW t0, s8, a0
  ADDW t1, t1, s2
  REMW t0, t0, s1
  REMW t1, t1, s3
  ADD a0, s6, zero
  SW t0, 0(s7)
  SW t1, 0(s9)
  CALL multiply
  BLT s10, s4, bb7
  JAL zero, bb4
bb7:   # loop depth 1
  ADD t0, s10, zero
  JAL zero, bb6
bb8:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LA a0, temp
  ADDW t2, s5, t0
  ADDIW t1, t0, 1
  SH2ADD a0, t0, a0
  SH2ADD t0, t2, s0
  LW t2, 0(a0)
  SW t2, 0(t0)
  BLT t1, a2, bb10
  JAL zero, bb3
bb10:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb9
bb11:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SRAIW t1, t0, 31
  ADDW a0, t0, s5
  SRLIW t2, t1, 31
  ANDI t1, t0, 1
  ADD t2, t0, t2
  SRAIW t2, t2, 1
  BEQ t1, zero, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD t1, a0, s0
  LA a3, temp
  LW a0, 0(t1)
  ADDW t1, s4, t2
  SH2ADD t1, t1, a3
  SW a0, 0(t1)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW t0, t0, 1
  BLT t0, a2, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  SH2ADD t1, a0, s0
  LA a3, temp
  LW a0, 0(t1)
  SH2ADD t1, t2, a3
  SW a0, 0(t1)
  JAL zero, bb14
bb17:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s7, 8(sp)
  LD s8, 16(sp)
  LD s9, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
power:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD t0, a1, zero
  ADD s0, a0, zero
  BEQ t0, zero, bb22
  # implict jump to bb19
bb19:   # loop depth 0
  SRAIW t1, t0, 31
  SLLI t2, t0, 1
  SRLIW t1, t1, 31
  ADD a0, s0, zero
  ADD t1, t0, t1
  SRLI t2, t2, 63
  SRAIW a1, t1, 1
  ADD t1, t0, t2
  ANDI t1, t1, -2
  SUBW s1, t0, t1
  CALL power
  XORI s1, s1, 1
  ADD a1, a0, zero
  CALL multiply
  BEQ s1, zero, bb21
  # implict jump to bb20
bb20:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb21:   # loop depth 0
  ADD a1, s0, zero
  CALL multiply
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb22:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
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
  LA s4, b
  LA s1, d
  ADDI s2, zero, 1
  ADDI s3, zero, 1
  CALL getarray
  ADD s0, a0, zero
  ADD a0, s4, zero
  CALL getarray
  ADD t0, a0, zero
  ADDI a0, zero, 60
  ADDW t0, s0, t0
  ADDIW s0, t0, -1
  CALL _sysy_starttime
  SW s2, 0(s1)
  BLT s3, s0, bb33
  # implict jump to bb24
bb24:   # loop depth 0
  LA t0, d
  LUI t1, 243712
  ADDIW t1, t1, 0
  ADDI a0, zero, 3
  LW s1, 0(t0)
  LA s2, a
  LA s3, d
  LUI s4, 243712
  ADDIW s4, s4, 0
  LA s5, b
  DIVW a1, t1, s1
  LA s6, d
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s2, zero
  CALL fft
  LW s1, 0(s3)
  ADDI a0, zero, 3
  DIVW a1, s4, s1
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s5, zero
  CALL fft
  LW t0, 0(s6)
  BLT zero, t0, bb30
  # implict jump to bb25
bb25:   # loop depth 0
  LA t0, d
  LUI t1, 243712
  ADDIW t1, t1, 0
  LUI t2, 243712
  LW s1, 0(t0)
  ADDIW t2, t2, 0
  ADDI a0, zero, 3
  LA s2, a
  LA s3, d
  DIVW t0, t1, s1
  SUBW a1, t2, t0
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s2, zero
  CALL fft
  LW t0, 0(s3)
  BLT zero, t0, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  LA s1, a
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, s0, zero
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
bb27:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA t1, a
  LA t2, d
  LUI a0, 243712
  SH2ADD s1, t0, t1
  ADDIW a0, a0, -1
  LW s2, 0(s1)
  ADD a1, zero, a0
  LA s4, d
  ADDIW s3, t0, 1
  LW a0, 0(t2)
  CALL power
  ADD a1, a0, zero
  ADD a0, s2, zero
  CALL multiply
  SW a0, 0(s1)
  LW t0, 0(s4)
  BLT s3, t0, bb29
  JAL zero, bb26
bb29:   # loop depth 1
  ADD t0, s3, zero
  JAL zero, bb28
bb30:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb31
bb31:   # loop depth 1
  LA t1, a
  LA t2, b
  LA s3, d
  SH2ADD s1, t0, t1
  ADDIW s2, t0, 1
  LW a0, 0(s1)
  SH2ADD t0, t0, t2
  LW a1, 0(t0)
  CALL multiply
  SW a0, 0(s1)
  LW t0, 0(s3)
  BLT s2, t0, bb32
  JAL zero, bb25
bb32:   # loop depth 1
  ADD t0, s2, zero
  JAL zero, bb31
bb33:   # loop depth 1
  LA t0, d
  LA t1, d
  LW t0, 0(t0)
  SLLIW t0, t0, 1
  SW t0, 0(t1)
  BLT t0, s0, bb33
  JAL zero, bb24
multiply:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s0, a1, zero
  ADD s1, a0, zero
  BEQ s0, zero, bb40
  # implict jump to bb35
bb35:   # loop depth 0
  XORI t0, s0, 1
  BEQ t0, zero, bb39
  # implict jump to bb36
bb36:   # loop depth 0
  SRAIW t0, s0, 31
  ADD a0, s1, zero
  SRLIW t0, t0, 31
  LUI s2, 243712
  ADD t0, s0, t0
  ADDIW s2, s2, 1
  SRAIW a1, t0, 1
  SLLI t0, s0, 1
  SRLI t0, t0, 63
  ADD s3, s0, t0
  CALL multiply
  ANDI t1, s3, -2
  SLLIW t0, a0, 1
  SUBW t1, s0, t1
  REMW a0, t0, s2
  XORI t0, t1, 1
  BEQ t0, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb38:   # loop depth 0
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
bb39:   # loop depth 0
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
bb40:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
