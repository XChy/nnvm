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
  SD s8, 72(sp)
  LUI t0, 1
  ADDIW t0, t0, 1504
  ADDIW t3, a0, -1
  ADD a6, zero, t0
  BGE t3, zero, bb11
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
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD t0, zero, zero
  ADD t2, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, a0, bb8
  # implict jump to bb6
bb6:   # loop depth 1
  ADDW t2, t2, a6
  ADDIW t0, t0, 1
  BLT t0, a0, bb7
  JAL zero, bb3
bb7:   # loop depth 1
  JAL zero, bb5
bb8:   # loop depth 1
  ADD t1, zero, zero
  ADD a1, a2, t2
  # implict jump to bb9
bb9:   # loop depth 2
  ADDI a5, zero, 10
  SH2ADD a3, t1, a1
  ADDIW t1, t1, 1
  LW a4, 0(a3)
  REMW a4, a4, a5
  SW a4, 0(a3)
  BLT t1, a0, bb10
  JAL zero, bb6
bb10:   # loop depth 2
  JAL zero, bb9
bb11:   # loop depth 0
  MULW a7, t3, a6
  ADD a3, zero, zero
  ADD a4, zero, zero
  ADD t0, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  ADDIW t1, t3, 1
  SLT t4, t1, a0
  BLT t1, a0, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  LUI t1, 1048575
  ADDIW t3, t3, -1
  ADDIW t1, t1, -1504
  ADDW a7, a7, t1
  BGE t3, zero, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, 1500
  ADD a5, t1, zero
  SH2ADD s1, t3, a1
  ADD s0, a2, a7
  ADD t5, zero, t0
  # implict jump to bb17
bb17:   # loop depth 2
  ADDIW t0, a5, -1
  SLT t2, t0, zero
  XORI t2, t2, 1
  BGE t0, zero, bb42
  # implict jump to bb18
bb18:   # loop depth 2
  BLT t1, a0, bb40
  # implict jump to bb19
bb19:   # loop depth 2
  AND a4, t2, t4
  BNE a4, zero, bb32
  # implict jump to bb20
bb20:   # loop depth 2
  # implict jump to bb21
bb21:   # loop depth 2
  BLT t1, a5, bb26
  # implict jump to bb22
bb22:   # loop depth 2
  ADD t0, t1, zero
  # implict jump to bb23
bb23:   # loop depth 2
  ADDIW a5, a5, 1
  BLT a5, a0, bb25
  # implict jump to bb24
bb24:   # loop depth 1
  JAL zero, bb14
bb25:   # loop depth 2
  JAL zero, bb17
bb26:   # loop depth 2
  MULW t2, t1, a6
  ADD t0, t1, zero
  SH2ADD s3, a5, a2
  SH2ADD s2, a5, s0
  # implict jump to bb27
bb27:   # loop depth 3
  LW s4, 0(s2)
  SH2ADD s5, t0, s0
  ADD s7, s3, t2
  ADDIW t0, t0, 1
  LW s6, 0(s5)
  ADD s7, s7, a6
  LW s8, 0(s7)
  ADDW s6, s6, s8
  BLT s4, s6, bb31
  # implict jump to bb28
bb28:   # loop depth 3
  ADDW t2, t2, a6
  BLT t0, a5, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  JAL zero, bb23
bb30:   # loop depth 3
  JAL zero, bb27
bb31:   # loop depth 3
  LW s4, 0(s5)
  LW s5, 0(s7)
  ADDW s4, s4, s5
  SW s4, 0(s2)
  JAL zero, bb28
bb32:   # loop depth 2
  BLT t3, t0, bb37
  # implict jump to bb33
bb33:   # loop depth 2
  SH2ADD t0, a5, s0
  LW t2, 0(t0)
  ADD s2, t0, t5
  LW s2, 0(s2)
  BLT t2, s2, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 2
  JAL zero, bb21
bb36:   # loop depth 2
  SW s2, 0(t0)
  JAL zero, bb34
bb37:   # loop depth 2
  LW t0, 0(s1)
  SH2ADD t2, a5, a1
  SH2ADD s2, a5, s0
  ADD s4, s2, t5
  LW t2, 0(t2)
  LW s3, 0(s2)
  ADDW t0, t0, t2
  XORI t0, t0, 3
  SLTIU a3, t0, 1
  LW t0, 0(s4)
  ADDW t0, t0, a3
  BLT s3, t0, bb39
  # implict jump to bb38
bb38:   # loop depth 2
  JAL zero, bb35
bb39:   # loop depth 2
  SW t0, 0(s2)
  JAL zero, bb38
bb40:   # loop depth 2
  SH2ADD a4, a5, s0
  LW s2, 0(a4)
  ADD s3, a4, a6
  LW s3, 0(s3)
  BLT s2, s3, bb41
  JAL zero, bb19
bb41:   # loop depth 2
  SW s3, 0(a4)
  JAL zero, bb19
bb42:   # loop depth 2
  SH2ADD a4, a5, s0
  LW s2, 0(a4)
  LW s3, -4(a4)
  BLT s2, s3, bb43
  JAL zero, bb18
bb43:   # loop depth 2
  SW s3, 0(a4)
  JAL zero, bb18
