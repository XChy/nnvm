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
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA a0, data
  LA s1, m
  LA s2, n
  ADDI s0, zero, 0
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a2, 0(s1)
  LW a3, 0(s2)
  BLT s0, a2, bb37
  # implict jump to bb1
bb1:   # loop depth 0
  BLT s0, a2, bb27
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a3, bb20
  # implict jump to bb3
bb3:   # loop depth 0
  ADDIW a6, a2, -1
  BLT zero, a6, bb5
  # implict jump to bb4
bb4:   # loop depth 0
  LUI t0, 1
  LA t1, corr
  ADDIW t0, t0, -896
  LUI t2, 1048575
  MULW t0, a2, t0
  ADDIW t2, t2, 892
  ADDI a1, zero, 1
  LA s0, m
  ADDI a0, zero, 81
  LA s1, corr
  ADD t0, t1, t0
  SH2ADD t0, a2, t0
  ADD t0, t0, t2
  SW a1, 0(t0)
  CALL _sysy_stoptime
  LW t0, 0(s0)
  ADD a1, s1, zero
  MULW a0, t0, t0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb5:   # loop depth 0
  ADD t1, zero, zero
  ADD a5, zero, zero
  ADD a1, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  LA t0, corr
  ADDI a0, zero, 1
  ADD a7, t0, a1
  ADDIW t2, a5, 1
  SH2ADD t0, a5, a7
  SW a0, 0(t0)
  BLT t2, a2, bb10
  # implict jump to bb7
bb7:   # loop depth 1
  # implict jump to bb8
bb8:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, -896
  ADDW a1, a1, t0
  BLT t2, a6, bb9
  JAL zero, bb4
bb9:   # loop depth 1
  ADD a5, t2, zero
  JAL zero, bb6
bb10:   # loop depth 1
  ADD a0, t2, zero
  # implict jump to bb11
bb11:   # loop depth 2
  SH2ADD t3, a0, a7
  SW zero, 0(t3)
  BLT zero, a3, bb16
  # implict jump to bb12
bb12:   # loop depth 2
  ADD t1, zero, zero
  # implict jump to bb13
bb13:   # loop depth 2
  LUI t0, 1
  LA t4, corr
  ADDIW t0, t0, -896
  LW a4, 0(t3)
  MULW t0, a0, t0
  ADDIW a0, a0, 1
  ADD t0, t4, t0
  SH2ADD t0, a5, t0
  SW a4, 0(t0)
  BLT a0, a2, bb15
  # implict jump to bb14
bb14:   # loop depth 1
  JAL zero, bb8
bb15:   # loop depth 2
  JAL zero, bb11
bb16:   # loop depth 2
  ADD t1, zero, zero
  ADD a4, zero, zero
  ADD t0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 3
  LA t4, data
  LUI s1, 1
  ADD t4, t4, a4
  ADDIW s1, s1, -896
  SH2ADD t5, a5, t4
  SH2ADD s0, a0, t4
  LW t4, 0(t5)
  ADDW a4, a4, s1
  ADDIW t1, t1, 1
  LW t5, 0(s0)
  MULW t4, t4, t5
  ADDW t0, t0, t4
  BLT t1, a3, bb19
  # implict jump to bb18
bb18:   # loop depth 2
  SW t0, 0(t3)
  JAL zero, bb13
bb19:   # loop depth 3
  JAL zero, bb17
bb20:   # loop depth 0
  MULW a0, a3, a3
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 1
  BLT s0, a2, bb24
  # implict jump to bb22
bb22:   # loop depth 1
  LUI t0, 1
  ADDIW t2, t2, 1
  ADDIW t0, t0, -896
  ADDW t1, t1, t0
  BLT t2, a3, bb23
  JAL zero, bb3
bb23:   # loop depth 1
  JAL zero, bb21
bb24:   # loop depth 1
  LA a1, data
  ADD t0, zero, zero
  ADD a1, a1, t1
  # implict jump to bb25
bb25:   # loop depth 2
  LA a6, mean
  SH2ADD a4, t0, a1
  LA a7, stddev
  LW a5, 0(a4)
  SH2ADD a6, t0, a6
  SH2ADD a7, t0, a7
  ADDIW t0, t0, 1
  LW a6, 0(a6)
  SUBW a5, a5, a6
  SW a5, 0(a4)
  LW a6, 0(a7)
  MULW a6, a0, a6
  DIVW a5, a5, a6
  SW a5, 0(a4)
  BLT t0, a2, bb26
  JAL zero, bb22
bb26:   # loop depth 2
  JAL zero, bb25
bb27:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  LA t0, stddev
  SH2ADD a1, a0, t0
  SW zero, 0(a1)
  BLT zero, a3, bb33
  # implict jump to bb29
bb29:   # loop depth 1
  LW t0, 0(a1)
  ADDI t2, zero, 1
  DIVW t0, t0, a3
  MULW t1, t0, t0
  SW t0, 0(a1)
  SW t1, 0(a1)
  BGE t2, t1, bb32
  # implict jump to bb30
bb30:   # loop depth 1
  ADDIW a0, a0, 1
  BLT a0, a2, bb31
  JAL zero, bb2
bb31:   # loop depth 1
  JAL zero, bb28
bb32:   # loop depth 1
  ADDI t0, zero, 1
  SW t0, 0(a1)
  JAL zero, bb30
bb33:   # loop depth 1
  LA a4, mean
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  SH2ADD a4, a0, a4
  LW a4, 0(a4)
  # implict jump to bb34
bb34:   # loop depth 2
  LA a5, data
  LUI a6, 1
  ADD a5, a5, t1
  ADDIW a6, a6, -896
  SH2ADD a5, a0, a5
  LW a5, 0(a5)
  ADDW t1, t1, a6
  ADDIW t0, t0, 1
  SUBW a5, a5, a4
  MULW a5, a5, a5
  ADDW t2, t2, a5
  BLT t0, a3, bb36
  # implict jump to bb35
bb35:   # loop depth 1
  SW t2, 0(a1)
  JAL zero, bb29
bb36:   # loop depth 2
  JAL zero, bb34
bb37:   # loop depth 0
  ADD a0, zero, zero
  ADDI a5, zero, 0
  # implict jump to bb38
bb38:   # loop depth 1
  LA t0, mean
  SH2ADD a1, a0, t0
  SW zero, 0(a1)
  BLT a5, a3, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  LW t0, 0(a1)
  ADDIW a0, a0, 1
  DIVW t0, t0, a3
  SW t0, 0(a1)
  BLT a0, a2, bb40
  JAL zero, bb1
bb40:   # loop depth 1
  JAL zero, bb38
bb41:   # loop depth 1
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  # implict jump to bb42
bb42:   # loop depth 2
  LA a4, data
  LUI a6, 1
  ADD a4, a4, t1
  ADDIW a6, a6, -896
  SH2ADD a4, a0, a4
  LW a4, 0(a4)
  ADDW t1, t1, a6
  ADDIW t0, t0, 1
  ADDW t2, t2, a4
  BLT t0, a3, bb44
  # implict jump to bb43
bb43:   # loop depth 1
  SW t2, 0(a1)
  JAL zero, bb39
bb44:   # loop depth 2
  JAL zero, bb42
