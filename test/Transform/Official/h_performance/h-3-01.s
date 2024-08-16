.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  LA s1, data
  LA s4, m
  LA s5, n
  LUI s0, 1
  ADD a0, s1, zero
  LA s2, mean
  ADDIW s0, s0, -896
  ADDI s3, zero, 0
  CALL getarray
  ADD s0, zero, s0
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a4, 0(s4)
  LW a5, 0(s5)
  BLT s3, a4, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  LA a1, stddev
  BLT s3, a4, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a5, bb20
  # implict jump to bb3
bb3:   # loop depth 0
  LA s2, corr
  ADDIW a6, a4, -1
  BLT zero, a6, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  MULW t0, a4, s0
  LUI t1, 1048575
  ADDIW t1, t1, 892
  ADDI t2, zero, 1
  ADDI a0, zero, 81
  ADD t0, s2, t0
  SH2ADD t0, a4, t0
  ADD t0, t0, t1
  SW t2, 0(t0)
  CALL _sysy_stoptime
  LW t0, 0(s4)
  ADD a1, s2, zero
  MULW a0, t0, t0
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
  LD s7, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD a7, zero, zero
  ADD a3, s0, zero
  # implict jump to bb6
bb6:   # loop depth 1
  ADD t3, s2, a7
  ADDI a1, zero, 1
  SH2ADD t2, t1, t3
  ADDIW a0, t1, 1
  SW a1, 0(t2)
  BLT a0, a4, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  ADDW a3, a3, s0
  ADDW a7, a7, s0
  BLT a0, a6, bb9
  JAL zero, bb4
bb9:   # loop depth 1
  ADD t1, a0, zero
  JAL zero, bb6
bb10:   # loop depth 1
  ADD a1, a0, zero
  ADD a2, a3, zero
  SH2ADD t5, t1, s2
  SH2ADD t4, t1, s1
  # implict jump to bb11
bb11:   # loop depth 2
  SH2ADD s3, a1, t3
  SW zero, 0(s3)
  BLT zero, a5, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  LW t2, 0(s3)
  ADD t1, t5, a2
  ADDW a2, a2, s0
  ADDIW a1, a1, 1
  SW t2, 0(t1)
  BLT a1, a4, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  ADDW a3, a3, s0
  ADDW a7, a7, s0
  BLT a0, a6, bb9
  JAL zero, bb4
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  SH2ADD s5, a1, s1
  # implict jump to bb17
bb17:   # loop depth 3
  ADD s6, t4, t1
  ADD s7, s5, t1
  LW s6, 0(s6)
  ADDW t1, t1, s0
  ADDIW t0, t0, 1
  LW s7, 0(s7)
  MULW s6, s6, s7
  ADDW t2, t2, s6
  BLT t0, a5, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  SW t2, 0(s3)
  JAL zero, bb13
bb19:   # loop depth 3
  JAL zero, bb17
bb20:   # loop depth 0
  MULW a0, a5, a5
  ADD t0, zero, zero
  ADD t1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BLT s3, a4, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  ADDW t1, t1, s0
  ADDIW t0, t0, 1
  BLT t0, a5, bb23
  JAL zero, bb3
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 1
  ADD t2, zero, zero
  ADD a2, s1, t1
  # implict jump to bb25
bb25:   # loop depth 2
  SH2ADD a3, t2, a2
  SH2ADD a7, t2, s2
  LW a6, 0(a3)
  SH2ADD t3, t2, a1
  ADDIW t2, t2, 1
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SW a6, 0(a3)
  LW a7, 0(t3)
  MULW a7, a0, a7
  DIVW a6, a6, a7
  SW a6, 0(a3)
  BLT t2, a4, bb26
  ADDW t1, t1, s0
  ADDIW t0, t0, 1
  BLT t0, a5, bb23
  JAL zero, bb3
bb26:   # loop depth 2
  JAL zero, bb25
bb27:   # loop depth 0
  ADD t2, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  SH2ADD a2, t2, a1
  SW zero, 0(a2)
  BLT zero, a5, bb33
  # implict jump to bb29
bb29:   # loop depth 1
  LW t0, 0(a2)
  ADDI a0, zero, 1
  DIVW t0, t0, a5
  MULW t1, t0, t0
  SW t0, 0(a2)
  SW t1, 0(a2)
  BGE a0, t1, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW t2, t2, 1
  BLT t2, a4, bb31
  JAL zero, bb2
bb31:   # loop depth 1
  JAL zero, bb28
bb32:   # loop depth 1
  ADDI t0, zero, 1
  SW t0, 0(a2)
  ADDIW t2, t2, 1
  BLT t2, a4, bb31
  JAL zero, bb2
bb33:   # loop depth 1
  SH2ADD t0, t2, s2
  ADD a0, zero, zero
  LW a6, 0(t0)
  ADD t0, zero, zero
  ADD t1, zero, zero
  SH2ADD a3, t2, s1
  # implict jump to bb34
bb34:   # loop depth 2
  ADD a7, a3, t0
  LW a7, 0(a7)
  ADDW t0, t0, s0
  ADDIW a0, a0, 1
  SUBW a7, a7, a6
  MULW a7, a7, a7
  ADDW t1, t1, a7
  BLT a0, a5, bb36
  # implict jump to bb35
bb35:   # loop depth 1
  SW t1, 0(a2)
  JAL zero, bb29
bb36:   # loop depth 2
  JAL zero, bb34
bb37:   # loop depth 0
  ADD a0, zero, zero
  ADDI a6, zero, 0
  # implict jump to bb38
bb38:   # loop depth 1
  SH2ADD a1, a0, s2
  SW zero, 0(a1)
  BLT a6, a5, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  LW t0, 0(a1)
  ADDIW a0, a0, 1
  DIVW t0, t0, a5
  SW t0, 0(a1)
  BLT a0, a4, bb40
  JAL zero, bb1
bb40:   # loop depth 1
  JAL zero, bb38
bb41:   # loop depth 1
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  SH2ADD a2, a0, s1
  # implict jump to bb42
bb42:   # loop depth 2
  ADD a3, a2, t1
  LW a3, 0(a3)
  ADDW t1, t1, s0
  ADDIW t0, t0, 1
  ADDW t2, t2, a3
  BLT t0, a5, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  SW t2, 0(a1)
  JAL zero, bb39
bb44:   # loop depth 2
  JAL zero, bb42
