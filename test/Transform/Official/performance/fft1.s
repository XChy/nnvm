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
  ADD s9, a3, zero
  XORI t0, a2, 1
  ADD s2, a1, zero
  ADD s0, a0, zero
  BEQ t0, zero, bb17
  # implict jump to bb1
bb1:   # loop depth 0
  SRAIW t0, a2, 31
  LA a1, temp
  SRLIW t0, t0, 31
  ADDI a3, zero, 0
  ADD t0, a2, t0
  SRAIW s1, t0, 1
  BLT a3, a2, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT a3, a2, bb8
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a1, s9, zero
  ADD a0, s9, zero
  ADDW s4, s2, s1
  CALL multiply
  ADD s3, a0, zero
  ADD a2, s1, zero
  ADD a3, s3, zero
  ADD a1, s2, zero
  ADD a0, s0, zero
  CALL fft
  ADD a3, s3, zero
  ADD a2, s1, zero
  ADD a1, s4, zero
  ADD a0, s0, zero
  CALL fft
  BLT zero, s1, bb5
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
  LUI t0, 243712
  ADDI s5, zero, 1
  ADDIW t0, t0, 1
  ADD s4, zero, zero
  ADD s3, zero, t0
  # implict jump to bb6
bb6:   # loop depth 1
  ADDW t0, s2, s4
  ADD a0, s5, zero
  SH2ADD s6, t0, s0
  ADDW t0, t0, s1
  LW s7, 0(s6)
  SH2ADD s8, t0, s0
  ADDIW s4, s4, 1
  LW a1, 0(s8)
  CALL multiply
  ADD a1, s9, zero
  SUBW t1, s7, a0
  ADDW t0, s7, a0
  ADDW t1, t1, s3
  REMW t0, t0, s3
  REMW t1, t1, s3
  ADD a0, s5, zero
  SW t0, 0(s6)
  SW t1, 0(s8)
  CALL multiply
  BLT s4, s1, bb7
  JAL zero, bb4
bb7:   # loop depth 1
  ADD s5, a0, zero
  JAL zero, bb6
bb8:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  SH2ADD t2, t0, a1
  ADDW t1, s2, t0
  LW t2, 0(t2)
  SH2ADD t1, t1, s0
  ADDIW t0, t0, 1
  SW t2, 0(t1)
  BLT t0, a2, bb10
  JAL zero, bb3
bb10:   # loop depth 1
  JAL zero, bb9
bb11:   # loop depth 0
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SRAIW t1, t0, 31
  ADDW a0, t0, s2
  SRLIW t2, t1, 31
  ANDI t1, t0, 1
  ADD t2, t0, t2
  SRAIW t2, t2, 1
  BEQ t1, zero, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD a0, a0, s0
  ADDW t1, s1, t2
  LW t2, 0(a0)
  SH2ADD t1, t1, a1
  SW t2, 0(t1)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW t0, t0, 1
  BLT t0, a2, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  SH2ADD a0, a0, s0
  SH2ADD t1, t2, a1
  LW t2, 0(a0)
  SW t2, 0(t1)
  ADDIW t0, t0, 1
  BLT t0, a2, bb15
  JAL zero, bb2
bb17:   # loop depth 0
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
  LA s4, a
  LA s3, b
  LA s0, d
  ADDI s2, zero, 1
  ADD a0, s4, zero
  ADDI s6, zero, 1
  CALL getarray
  ADD s1, a0, zero
  ADD a0, s3, zero
  CALL getarray
  ADD t0, a0, zero
  ADDI a0, zero, 60
  ADDW t0, s1, t0
  ADDIW s5, t0, -1
  CALL _sysy_starttime
  SW s2, 0(s0)
  BLT s6, s5, bb33
  # implict jump to bb24
bb24:   # loop depth 0
  LW s1, 0(s0)
  LUI t0, 243712
  ADDIW t0, t0, 0
  ADDI a0, zero, 3
  ADD s6, zero, t0
  DIVW a1, s6, s1
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s4, zero
  CALL fft
  LW s1, 0(s0)
  ADDI a0, zero, 3
  DIVW a1, s6, s1
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s3, zero
  CALL fft
  LW t0, 0(s0)
  BLT zero, t0, bb30
  # implict jump to bb25
bb25:   # loop depth 0
  LW s1, 0(s0)
  ADDI a0, zero, 3
  DIVW t0, s6, s1
  SUBW a1, s6, t0
  CALL power
  ADD a2, s1, zero
  ADD a3, a0, zero
  ADD a1, zero, zero
  ADD a0, s4, zero
  CALL fft
  LW t0, 0(s0)
  BLT zero, t0, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  ADDI a0, zero, 79
  CALL _sysy_stoptime
  ADD a1, s4, zero
  ADD a0, s5, zero
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
  ADD s1, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LUI t0, 243712
  SH2ADD s2, s1, s4
  ADDIW t0, t0, -1
  LW s3, 0(s2)
  ADD a1, zero, t0
  ADDIW s1, s1, 1
  LW a0, 0(s0)
  CALL power
  ADD a1, a0, zero
  ADD a0, s3, zero
  CALL multiply
  SW a0, 0(s2)
  LW t0, 0(s0)
  BLT s1, t0, bb29
  JAL zero, bb26
bb29:   # loop depth 1
  JAL zero, bb28
bb30:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb31
bb31:   # loop depth 1
  SH2ADD s2, s1, s4
  SH2ADD t0, s1, s3
  LW a0, 0(s2)
  ADDIW s1, s1, 1
  LW a1, 0(t0)
  CALL multiply
  SW a0, 0(s2)
  LW t0, 0(s0)
  BLT s1, t0, bb32
  JAL zero, bb25
bb32:   # loop depth 1
  JAL zero, bb31
bb33:   # loop depth 1
  LW t0, 0(s0)
  SLLIW t0, t0, 1
  SW t0, 0(s0)
  BLT t0, s5, bb33
  JAL zero, bb24
multiply:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD t0, a1, zero
  ADD s1, a0, zero
  BEQ t0, zero, bb40
  # implict jump to bb35
bb35:   # loop depth 0
  LUI t2, 243712
  XORI t1, t0, 1
  ADDIW t2, t2, 1
  ADD s0, zero, t2
  BEQ t1, zero, bb39
  # implict jump to bb36
bb36:   # loop depth 0
  SRAIW t1, t0, 31
  ADD a0, s1, zero
  SRLIW t1, t1, 31
  SLLI t2, t0, 1
  ADD t1, t0, t1
  SRLI t2, t2, 63
  SRAIW a1, t1, 1
  ADD t1, t0, t2
  ANDI t1, t1, -2
  SUBW s2, t0, t1
  CALL multiply
  XORI t1, s2, 1
  SLLIW t0, a0, 1
  REMW a0, t0, s0
  BEQ t1, zero, bb38
  # implict jump to bb37
bb37:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb38:   # loop depth 0
  ADDW t0, a0, s1
  REMW a0, t0, s0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb39:   # loop depth 0
  REMW a0, s1, s0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb40:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
