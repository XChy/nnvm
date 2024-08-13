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
  LA s1, n
  LA s3, n
  LA s8, a
  ADD s7, zero, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 59
  SW s0, 0(s1)
  CALL _sysy_starttime
  LW s0, 0(s3)
  SRAIW s3, s0, 31
  ADDIW s2, s0, -1
  SRLIW s3, s3, 31
  ADD a0, s0, s3
  SRAIW s6, a0, 1
  # implict jump to bb1
bb1:   # loop depth 1
  SH2ADD s11, s7, s8
  SW s2, 4(sp)
  LW a0, 0(s11)
  SW a0, 12(sp)
  LW a0, 4(sp)
  ADDIW s10, a0, 1
  ADD s2, s7, zero
  ADD s9, zero, zero
  # implict jump to bb2
bb2:   # loop depth 2
  # implict jump to bb3
bb3:   # loop depth 3
  BLT s2, s10, bb27
  # implict jump to bb4
bb4:   # loop depth 3
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 3
  BLT s2, s10, bb24
  # implict jump to bb7
bb7:   # loop depth 3
  # implict jump to bb8
bb8:   # loop depth 2
  BEQ s2, s10, bb14
  # implict jump to bb9
bb9:   # loop depth 2
  SH2ADD s3, s2, s8
  SH2ADD a0, s10, s8
  SD a0, 120(sp)
  LW s4, 0(s3)
  SLT a0, zero, s10
  SB a0, 1(sp)
  SLT s5, zero, s2
  LB a0, 1(sp)
  AND a0, s5, a0
  SB a0, 0(sp)
  LD a0, 120(sp)
  LW s5, 0(a0)
  SW s5, 0(s3)
  LD a0, 120(sp)
  SW s4, 0(a0)
  LB a0, 0(sp)
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  JAL zero, bb2
bb11:   # loop depth 2
  ADD s4, zero, zero
  ADD s3, zero, zero
  # implict jump to bb12
bb12:   # loop depth 3
  ADDIW s3, s3, 1
  ADDW a0, s4, s2
  SW a0, 8(sp)
  SLT s5, s3, s10
  SLT s4, s3, s2
  AND s5, s4, s5
  LW a0, 8(sp)
  ADDW s4, a0, s3
  BNE s5, zero, bb13
  JAL zero, bb10
bb13:   # loop depth 3
  JAL zero, bb12
bb14:   # loop depth 1
  SH2ADD s1, s2, s8
  LW a0, 12(sp)
  SW a0, 0(s11)
  LW s3, 0(s1)
  SLT s5, zero, s2
  SLT s4, zero, s7
  AND s4, s4, s5
  SW s3, 0(s11)
  LW a0, 12(sp)
  SW a0, 0(s1)
  BNE s4, zero, bb21
  # implict jump to bb15
bb15:   # loop depth 1
  BLT s6, s2, bb20
  # implict jump to bb16
bb16:   # loop depth 1
  BLT s2, s6, bb18
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
  ADDIW s7, s2, 1
  LW s2, 4(sp)
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb1
bb20:   # loop depth 1
  JAL zero, bb19
bb21:   # loop depth 1
  ADD s3, zero, zero
  ADD s1, zero, zero
  # implict jump to bb22
bb22:   # loop depth 2
  ADDIW s1, s1, 1
  ADDW s3, s3, s7
  SLT s5, s1, s2
  SLT s4, s1, s7
  AND s4, s4, s5
  ADDW s3, s3, s1
  BNE s4, zero, bb23
  JAL zero, bb15
bb23:   # loop depth 2
  JAL zero, bb22
bb24:   # loop depth 3
  SH2ADD s3, s2, s8
  ADDIW s2, s2, 1
  LW s3, 4(s3)
  LW a0, 12(sp)
  BGE s3, a0, bb26
  # implict jump to bb25
bb25:   # loop depth 3
  ADDIW s9, s9, -1
  JAL zero, bb6
bb26:   # loop depth 2
  JAL zero, bb8
bb27:   # loop depth 3
  SH2ADD s4, s10, s8
  ADDIW s10, s10, -1
  LW s4, -4(s4)
  LW a0, 12(sp)
  BLT s4, a0, bb29
  # implict jump to bb28
bb28:   # loop depth 3
  ADDIW s9, s9, 1
  JAL zero, bb3
bb29:   # loop depth 2
  JAL zero, bb5
