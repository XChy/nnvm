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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s2, a
  LA s3, n
  ADD s1, zero, zero
  ADD a0, s2, zero
  ADD s0, s2, zero
  CALL getarray
  ADD t0, a0, zero
  ADDI a0, zero, 59
  SW t0, 0(s3)
  CALL _sysy_starttime
  LW t0, 0(s3)
  SRAIW t1, t0, 31
  ADDIW a2, t0, -1
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW a1, t0, 1
  # implict jump to bb1
bb1:   # loop depth 1
  SH2ADD a3, s1, s0
  LW a4, 0(a3)
  ADDIW t2, a2, 1
  ADD a0, zero, zero
  ADD t1, s1, zero
  # implict jump to bb2
bb2:   # loop depth 2
  # implict jump to bb3
bb3:   # loop depth 3
  BLT t1, t2, bb27
  # implict jump to bb4
bb4:   # loop depth 3
  # implict jump to bb5
bb5:   # loop depth 2
  # implict jump to bb6
bb6:   # loop depth 3
  BLT t1, t2, bb23
  # implict jump to bb7
bb7:   # loop depth 3
  # implict jump to bb8
bb8:   # loop depth 2
  BEQ t1, t2, bb14
  # implict jump to bb9
bb9:   # loop depth 2
  SH2ADD t0, t1, s0
  SH2ADD a6, t2, s0
  LW a5, 0(t0)
  SLT t3, zero, t2
  SLT a7, zero, t1
  AND t3, a7, t3
  LW a7, 0(a6)
  SW a7, 0(t0)
  SW a5, 0(a6)
  BNE t3, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 2
  JAL zero, bb2
bb11:   # loop depth 2
  ADD a5, zero, zero
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 3
  ADDIW t0, t0, 1
  ADDW a5, a5, t1
  SLT a7, t0, t2
  SLT a6, t0, t1
  AND a6, a6, a7
  ADDW a5, a5, t0
  BNE a6, zero, bb13
  JAL zero, bb2
bb13:   # loop depth 3
  JAL zero, bb12
bb14:   # loop depth 1
  SH2ADD t0, t1, s0
  SW a4, 0(a3)
  LW t2, 0(t0)
  SLT a5, zero, t1
  SLT a0, zero, s1
  AND a0, a0, a5
  SW t2, 0(a3)
  SW a4, 0(t0)
  BNE a0, zero, bb20
  # implict jump to bb15
bb15:   # loop depth 1
  BLT a1, t1, bb19
  # implict jump to bb16
bb16:   # loop depth 1
  BLT t1, a1, bb18
  # implict jump to bb17
bb17:   # loop depth 0
  ADDI a0, zero, 61
  CALL _sysy_stoptime
  LW a0, 0(s3)
  ADD a1, s2, zero
  CALL putarray
  LW t0, 0(s3)
  SRAIW t1, t0, 31
  SRLIW t1, t1, 31
  ADD t0, t0, t1
  SRAIW t0, t0, 1
  SH2ADD t0, t0, s2
  LW t0, 0(t0)
  SLLI t1, t0, 1
  SRLI t1, t1, 56
  ADD t1, t0, t1
  ANDI t1, t1, -256
  SUBW a0, t0, t1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb18:   # loop depth 1
  ADDIW s1, t1, 1
  JAL zero, bb1
bb19:   # loop depth 1
  ADD a2, t1, zero
  JAL zero, bb1
bb20:   # loop depth 1
  ADD t2, zero, zero
  ADD t0, zero, zero
  # implict jump to bb21
bb21:   # loop depth 2
  ADDIW t0, t0, 1
  ADDW t2, t2, s1
  SLT a3, t0, t1
  SLT a0, t0, s1
  AND a0, a0, a3
  ADDW t2, t2, t0
  BNE a0, zero, bb22
  JAL zero, bb15
bb22:   # loop depth 2
  JAL zero, bb21
bb23:   # loop depth 3
  SH2ADD t0, t1, s0
  ADDIW t1, t1, 1
  LW t0, 4(t0)
  BGE t0, a4, bb26
  # implict jump to bb24
bb24:   # loop depth 3
  # implict jump to bb25
bb25:   # loop depth 3
  ADDIW a0, a0, -1
  JAL zero, bb6
bb26:   # loop depth 3
  JAL zero, bb8
bb27:   # loop depth 3
  SH2ADD t0, t2, s0
  ADDIW t2, t2, -1
  LW t0, -4(t0)
  BLT t0, a4, bb30
  # implict jump to bb28
bb28:   # loop depth 3
  # implict jump to bb29
bb29:   # loop depth 3
  ADDIW a0, a0, 1
  JAL zero, bb3
bb30:   # loop depth 3
  JAL zero, bb5
