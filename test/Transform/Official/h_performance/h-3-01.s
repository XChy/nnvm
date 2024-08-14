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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s0, data
  LA s3, m
  LA s4, n
  LA s1, mean
  ADD a0, s0, zero
  ADDI s2, zero, 0
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a1, 0(s3)
  LW a2, 0(s4)
  BLT s2, a1, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  LA a3, stddev
  BLT s2, a1, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a2, bb20
  # implict jump to bb3
bb3:   # loop depth 0
  LA s1, corr
  ADDIW a5, a1, -1
  BLT zero, a5, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LUI t0, 1
  LUI t1, 1048575
  ADDIW t0, t0, -896
  ADDIW t1, t1, 892
  MULW t0, a1, t0
  ADDI t2, zero, 1
  ADDI a0, zero, 81
  ADD t0, s1, t0
  SH2ADD t0, a1, t0
  ADD t0, t0, t1
  SW t2, 0(t0)
  CALL _sysy_stoptime
  LW t0, 0(s3)
  ADD a1, s1, zero
  MULW a0, t0, t0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t1, zero, zero
  ADD a3, zero, zero
  ADD t0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  ADD a0, a3, zero
  ADD a7, s1, t0
  ADDI a4, zero, 1
  SH2ADD t2, a0, a7
  ADDIW a3, a0, 1
  SW a4, 0(t2)
  BLT a3, a1, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  LUI t2, 1
  ADDIW t2, t2, -896
  ADDW t0, t0, t2
  BLT a3, a5, bb9
  JAL zero, bb4
bb9:   # loop depth 1
  JAL zero, bb6
bb10:   # loop depth 1
  ADD t2, a3, zero
  # implict jump to bb11
bb11:   # loop depth 2
  ADD a4, t2, zero
  SH2ADD t3, a4, a7
  SW zero, 0(t3)
  BLT zero, a2, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  LUI t4, 1
  LW a6, 0(t3)
  ADDIW t4, t4, -896
  ADDIW t2, a4, 1
  MULW a4, a4, t4
  ADD a4, s1, a4
  SH2ADD a4, a0, a4
  SW a6, 0(a4)
  BLT t2, a1, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  JAL zero, bb8
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a6, zero, zero
  # implict jump to bb17
bb17:   # loop depth 3
  LUI s4, 1
  ADD t4, s0, t2
  ADDIW s4, s4, -896
  SH2ADD t5, a0, t4
  SH2ADD s2, a4, t4
  LW t4, 0(t5)
  ADDW t2, t2, s4
  ADDIW t1, t1, 1
  LW t5, 0(s2)
  MULW t4, t4, t5
  ADDW a6, a6, t4
  BLT t1, a2, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  SW a6, 0(t3)
  JAL zero, bb13
bb19:   # loop depth 3
  JAL zero, bb17
bb20:   # loop depth 0
  MULW a0, a2, a2
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BLT s2, a1, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  LUI t0, 1
  ADDIW t2, t2, 1
  ADDIW t0, t0, -896
  ADDW t1, t1, t0
  BLT t2, a2, bb23
  JAL zero, bb3
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 1
  ADD t0, zero, zero
  ADD a4, s0, t1
  # implict jump to bb25
bb25:   # loop depth 2
  SH2ADD a5, t0, a4
  SH2ADD a7, t0, s1
  LW a6, 0(a5)
  SH2ADD t3, t0, a3
  ADDIW t0, t0, 1
  LW a7, 0(a7)
  SUBW a6, a6, a7
  SW a6, 0(a5)
  LW a7, 0(t3)
  MULW a7, a0, a7
  DIVW a6, a6, a7
  SW a6, 0(a5)
  BLT t0, a1, bb26
  JAL zero, bb22
bb26:   # loop depth 2
  JAL zero, bb25
bb27:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  SH2ADD a4, a0, a3
  SW zero, 0(a4)
  BLT zero, a2, bb33
  # implict jump to bb29
bb29:   # loop depth 1
  LW t0, 0(a4)
  ADDI t2, zero, 1
  DIVW t0, t0, a2
  MULW t1, t0, t0
  SW t0, 0(a4)
  SW t1, 0(a4)
  BGE t2, t1, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, a1, bb31
  JAL zero, bb2
bb31:   # loop depth 1
  JAL zero, bb28
bb32:   # loop depth 1
  ADDI t0, zero, 1
  SW t0, 0(a4)
  JAL zero, bb30
bb33:   # loop depth 1
  SH2ADD t1, a0, s1
  ADD t0, zero, zero
  LW a5, 0(t1)
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb34
bb34:   # loop depth 2
  LUI a7, 1
  ADD a6, s0, t1
  ADDIW a7, a7, -896
  SH2ADD a6, a0, a6
  LW a6, 0(a6)
  ADDW t1, t1, a7
  ADDIW t0, t0, 1
  SUBW a6, a6, a5
  MULW a6, a6, a6
  ADDW t2, t2, a6
  BLT t0, a2, bb36
  # implict jump to bb35
bb35:   # loop depth 1
  SW t2, 0(a4)
  JAL zero, bb29
bb36:   # loop depth 2
  JAL zero, bb34
bb37:   # loop depth 0
  ADD a0, zero, zero
  ADDI a5, zero, 0
  # implict jump to bb38
bb38:   # loop depth 1
  SH2ADD a3, a0, s1
  SW zero, 0(a3)
  BLT a5, a2, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  LW t0, 0(a3)
  ADDIW a0, a0, 1
  DIVW t0, t0, a2
  SW t0, 0(a3)
  BLT a0, a1, bb40
  JAL zero, bb1
bb40:   # loop depth 1
  JAL zero, bb38
bb41:   # loop depth 1
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LUI a6, 1
  ADD a4, s0, t1
  ADDIW a6, a6, -896
  SH2ADD a4, a0, a4
  LW a4, 0(a4)
  ADDW t1, t1, a6
  ADDIW t0, t0, 1
  ADDW t2, t2, a4
  BLT t0, a2, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  SW t2, 0(a3)
  JAL zero, bb39
bb44:   # loop depth 2
  JAL zero, bb42
