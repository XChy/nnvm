.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global kernel_nussinov
.section .bss
table:
.space 7840000
seq:
.space 5600

.section .data


n:
.word 0x00000578
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s1, seq
  LA s0, table
  LA s2, n
  ADD a0, s1, zero
  CALL getarray
  ADD a0, s0, zero
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a0, 0(s2)
  ADD a2, s0, zero
  ADD a1, s1, zero
  CALL kernel_nussinov
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LW t0, 0(s2)
  ADD a1, s0, zero
  MULW a0, t0, t0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
kernel_nussinov:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LUI t0, 1
  ADDIW t0, t0, 1504
  ADDIW a6, a0, -1
  ADD a5, zero, t0
  BGE a6, zero, bb11
  # implict jump to bb2
bb2:   # loop depth 0
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, a0, bb8
  # implict jump to bb6
bb6:   # loop depth 1
  ADDW t1, t1, a5
  ADDIW t2, t2, 1
  BLT t2, a0, bb7
  JAL zero, bb3
bb7:   # loop depth 1
  JAL zero, bb5
bb8:   # loop depth 1
  ADD t0, zero, zero
  ADD a1, a2, t1
  # implict jump to bb9
bb9:   # loop depth 2
  ADDI a6, zero, 10
  SH2ADD a3, t0, a1
  ADDIW t0, t0, 1
  LW a4, 0(a3)
  REMW a4, a4, a6
  SW a4, 0(a3)
  BLT t0, a0, bb10
  JAL zero, bb6
bb10:   # loop depth 2
  JAL zero, bb9
bb11:   # loop depth 0
  ADD t2, zero, zero
  ADD a3, zero, zero
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW t1, a6, 1
  SLT a7, t1, a0
  BLT t1, a0, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a6, a6, -1
  BGE a6, zero, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  MULW t0, a6, a5
  LUI a3, 1
  ADDIW a3, a3, 1500
  ADD a4, t1, zero
  SH2ADD t5, a6, a1
  ADD t4, a2, t0
  ADD t3, zero, a3
  # implict jump to bb17
bb17:   # loop depth 2
  ADDIW t0, a4, -1
  SLT a3, t0, zero
  XORI a3, a3, 1
  BGE t0, zero, bb42
  # implict jump to bb18
bb18:   # loop depth 2
  BLT t1, a0, bb40
  # implict jump to bb19
bb19:   # loop depth 2
  AND a3, a3, a7
  BNE a3, zero, bb32
  # implict jump to bb20
bb20:   # loop depth 2
  # implict jump to bb21
bb21:   # loop depth 2
  BLT t1, a4, bb26
  # implict jump to bb22
bb22:   # loop depth 2
  ADD t0, t1, zero
  # implict jump to bb23
bb23:   # loop depth 2
  ADDIW a4, a4, 1
  BLT a4, a0, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb14
bb25:   # loop depth 2
  JAL zero, bb17
bb26:   # loop depth 2
  ADD t0, t1, zero
  SH2ADD s0, a4, t4
  # implict jump to bb27
bb27:   # loop depth 3
  LW s1, 0(s0)
  MULW s4, t0, a5
  SH2ADD s2, t0, t4
  ADDIW t0, t0, 1
  LW s3, 0(s2)
  ADD s4, a2, s4
  SH2ADD s4, a4, s4
  ADD s4, s4, a5
  LW s5, 0(s4)
  ADDW s3, s3, s5
  BLT s1, s3, bb31
  # implict jump to bb28
bb28:   # loop depth 3
  BLT t0, a4, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  JAL zero, bb23
bb30:   # loop depth 3
  JAL zero, bb27
bb31:   # loop depth 3
  LW s1, 0(s2)
  LW s2, 0(s4)
  ADDW s1, s1, s2
  SW s1, 0(s0)
  JAL zero, bb28
bb32:   # loop depth 2
  BLT a6, t0, bb37
  # implict jump to bb33
bb33:   # loop depth 2
  SH2ADD t0, a4, t4
  LW s0, 0(t0)
  ADD s1, t0, t3
  LW s1, 0(s1)
  BLT s0, s1, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 2
  JAL zero, bb21
bb36:   # loop depth 2
  SW s1, 0(t0)
  JAL zero, bb34
bb37:   # loop depth 2
  LW t0, 0(t5)
  SH2ADD t2, a4, a1
  SH2ADD s0, a4, t4
  ADD s2, s0, t3
  LW t2, 0(t2)
  LW s1, 0(s0)
  ADDW t0, t0, t2
  XORI t0, t0, 3
  SLTIU t2, t0, 1
  LW t0, 0(s2)
  ADDW t0, t0, t2
  BLT s1, t0, bb39
  # implict jump to bb38
bb38:   # loop depth 2
  JAL zero, bb35
bb39:   # loop depth 2
  SW t0, 0(s0)
  JAL zero, bb38
bb40:   # loop depth 2
  SH2ADD s0, a4, t4
  LW s1, 0(s0)
  ADD s2, s0, a5
  LW s2, 0(s2)
  BLT s1, s2, bb41
  JAL zero, bb19
bb41:   # loop depth 2
  SW s2, 0(s0)
  JAL zero, bb19
bb42:   # loop depth 2
  SH2ADD s0, a4, t4
  LW s1, 0(s0)
  LW s2, -4(s0)
  BLT s1, s2, bb43
  JAL zero, bb18
bb43:   # loop depth 2
  SW s2, 0(s0)
  JAL zero, bb18
