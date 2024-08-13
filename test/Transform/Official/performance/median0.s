.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
a:
.space 40000000

.section .data

n:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 112(sp)
  LA a0, a
  LA s2, n
  LA s4, n
  LA s7, a
  ADD s6, zero, zero
  CALL getarray
  ADD s1, a0, zero
  ADDI a0, zero, 59
  SW s1, 0(s2)
  CALL _sysy_starttime
  LW s2, 0(s4)
  SRAIW s4, s2, 31
  ADDIW s1, s2, -1
  SRLIW s4, s4, 31
  ADD a0, s2, s4
  SRAIW s5, a0, 1
  # implict jump to bb1
bb1:   # loop depth 1
  SH2ADD s10, s6, s7
  SW s1, 4(sp)
  LW s11, 0(s10)
  LW a0, 4(sp)
  ADDIW s9, a0, 1
  ADD s1, s6, zero
  ADD s8, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  # implict jump to bb3
bb3:   # loop depth 3
  BLT s1, s9, bb27
  # implict jump to bb4
bb4:   # loop depth 3
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 3
  BLT s1, s9, bb24
  # implict jump to bb7
bb7:   # loop depth 3
  # implict jump to bb8
bb8:   # loop depth 2
  XOR s2, s1, s9
  SLTIU s2, s2, 1
  BNE s2, zero, bb14
  # implict jump to bb9
bb9:   # loop depth 2
  SH2ADD s2, s1, s7
  SH2ADD a0, s9, s7
  SD a0, 120(sp)
  LW s3, 0(s2)
  SLT a0, zero, s9
  SB a0, 1(sp)
  SLT s4, zero, s1
  LB a0, 1(sp)
  AND a0, s4, a0
  SB a0, 0(sp)
  LD a0, 120(sp)
  LW s4, 0(a0)
  SW s4, 0(s2)
  LD a0, 120(sp)
  SW s3, 0(a0)
  LB a0, 0(sp)
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  JAL zero, bb2
bb11:   # loop depth 2
  ADD s3, zero, zero
  ADD s2, zero, zero
  # implict jump to bb12
bb12:   # loop depth 3
  ADDIW s2, s2, 1
  ADDW a0, s3, s1
  SW a0, 8(sp)
  SLT s4, s2, s9
  SLT s3, s2, s1
  AND s4, s3, s4
  LW a0, 8(sp)
  ADDW s3, a0, s2
  BNE s4, zero, bb13
  JAL zero, bb10
bb13:   # loop depth 3
  JAL zero, bb12
bb14:   # loop depth 1
  SH2ADD s0, s1, s7
  SW s11, 0(s10)
  LW s2, 0(s0)
  SLT s4, zero, s1
  SLT s3, zero, s6
  AND s3, s3, s4
  SW s2, 0(s10)
  SW s11, 0(s0)
  BNE s3, zero, bb21
  # implict jump to bb15
bb15:   # loop depth 1
  BLT s5, s1, bb20
  # implict jump to bb16
bb16:   # loop depth 1
  BLT s1, s5, bb18
  # implict jump to bb17
bb17:   # loop depth 0
  LA s1, n
  ADDI a0, zero, 61
  LA s0, a
  LA s2, n
  LA s3, a
  CALL _sysy_stoptime
  LW a0, 0(s1)
  ADD a1, s0, zero
  CALL putarray
  LW t0, 0(s2)
  SRAIW t1, t0, 31
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW t0, t0, 1
  SH2ADD t0, t0, s3
  LW t0, 0(t0)
  SLLI t1, t0, 1
  SRLI t1, t1, 56
  ADD t1, t0, t1
  ANDI t1, t1, -256
  SUBW a0, t0, t1
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb18:   # loop depth 1
  ADDIW s6, s1, 1
  LW s1, 4(sp)
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb1
bb20:   # loop depth 1
  JAL zero, bb19
bb21:   # loop depth 1
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  ADDIW s0, s0, 1
  ADDW s2, s2, s6
  SLT s4, s0, s1
  SLT s3, s0, s6
  AND s3, s3, s4
  ADDW s2, s2, s0
  BNE s3, zero, bb23
  JAL zero, bb15
bb23:   # loop depth 2
  JAL zero, bb22
bb24:   # loop depth 3
  SH2ADD s2, s1, s7
  ADDIW s1, s1, 1
  LW s2, 4(s2)
  SLT s2, s2, s11
  XORI s2, s2, 1
  BNE s2, zero, bb26
  # implict jump to bb25
bb25:   # loop depth 3
  ADDIW s8, s8, -1
  JAL zero, bb6
bb26:   # loop depth 2
  JAL zero, bb8
bb27:   # loop depth 3
  SH2ADD s3, s9, s7
  ADDIW s9, s9, -1
  LW s3, -4(s3)
  BLT s3, s11, bb29
  # implict jump to bb28
bb28:   # loop depth 3
  ADDIW s8, s8, 1
  JAL zero, bb3
bb29:   # loop depth 2
  JAL zero, bb5
