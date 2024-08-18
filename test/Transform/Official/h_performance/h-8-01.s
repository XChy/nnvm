.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
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
  LA s2, seq
  LA s1, table
  LA s3, n
  LUI t0, 1
  ADD a0, s2, zero
  ADDIW t0, t0, 1504
  ADD s0, zero, t0
  CALL getarray
  ADD a0, s1, zero
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a3, 0(s3)
  ADDIW a5, a3, -1
  BGE a5, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  BLT zero, a3, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LW t0, 0(s3)
  ADD a1, s1, zero
  MULW a0, t0, t0
  CALL putarray
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
bb3:   # loop depth 0
  ADD t2, zero, zero
  ADD t1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  BLT zero, a3, bb7
  # implict jump to bb5
bb5:   # loop depth 1
  ADDW t1, t1, s0
  ADDIW t2, t2, 1
  BLT t2, a3, bb6
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
bb7:   # loop depth 1
  ADD t0, zero, zero
  ADD a0, s1, t1
  # implict jump to bb8
bb8:   # loop depth 2
  ADDI a4, zero, 10
  SH2ADD a1, t0, a0
  ADDIW t0, t0, 1
  LW a2, 0(a1)
  REMW a2, a2, a4
  SW a2, 0(a1)
  BLT t0, a3, bb9
  ADDW t1, t1, s0
  ADDIW t2, t2, 1
  BLT t2, a3, bb6
  JAL zero, bb2
bb9:   # loop depth 2
  JAL zero, bb8
bb10:   # loop depth 0
  MULW a4, a5, s0
  ADD a0, zero, zero
  ADD a1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  ADDIW t1, a5, 1
  SLT a6, t1, a3
  BLT t1, a3, bb15
  # implict jump to bb12
bb12:   # loop depth 1
  # implict jump to bb13
bb13:   # loop depth 1
  LUI t1, 1048575
  ADDIW a5, a5, -1
  ADDIW t1, t1, -1504
  ADDW a4, a4, t1
  BGE a5, zero, bb14
  JAL zero, bb1
bb14:   # loop depth 1
  JAL zero, bb11
bb15:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, 1500
  ADD a2, t1, zero
  ADD t4, s1, a4
  SH2ADD t3, a5, s2
  ADD a7, zero, t0
  # implict jump to bb16
bb16:   # loop depth 2
  ADDIW t0, a2, -1
  SLT t2, t0, zero
  XORI t2, t2, 1
  BGE t0, zero, bb41
  # implict jump to bb17
bb17:   # loop depth 2
  BLT t1, a3, bb39
  # implict jump to bb18
bb18:   # loop depth 2
  AND a1, t2, a6
  BNE a1, zero, bb31
  # implict jump to bb19
bb19:   # loop depth 2
  # implict jump to bb20
bb20:   # loop depth 2
  BLT t1, a2, bb25
  # implict jump to bb21
bb21:   # loop depth 2
  ADD t0, t1, zero
  # implict jump to bb22
bb22:   # loop depth 2
  ADDIW a2, a2, 1
  BLT a2, a3, bb24
  # implict jump to bb23
bb23:   # loop depth 2
  JAL zero, bb13
bb24:   # loop depth 2
  JAL zero, bb16
bb25:   # loop depth 2
  MULW t2, t1, s0
  ADD t0, t1, zero
  SH2ADD s4, a2, s1
  SH2ADD t5, a2, t4
  # implict jump to bb26
bb26:   # loop depth 3
  LW s5, 0(t5)
  SH2ADD s6, t0, t4
  ADD s8, s4, t2
  ADDIW t0, t0, 1
  LW s7, 0(s6)
  ADD s8, s8, s0
  LW s9, 0(s8)
  ADDW s7, s7, s9
  BLT s5, s7, bb30
  # implict jump to bb27
bb27:   # loop depth 3
  ADDW t2, t2, s0
  BLT t0, a2, bb29
  # implict jump to bb28
bb28:   # loop depth 3
  JAL zero, bb22
bb29:   # loop depth 3
  JAL zero, bb26
bb30:   # loop depth 3
  LW s5, 0(s6)
  LW s6, 0(s8)
  ADDW s5, s5, s6
  SW s5, 0(t5)
  JAL zero, bb27
bb31:   # loop depth 2
  BLT a5, t0, bb36
  # implict jump to bb32
bb32:   # loop depth 2
  SH2ADD t0, a2, t4
  LW t2, 0(t0)
  ADD t5, t0, a7
  LW t5, 0(t5)
  BLT t2, t5, bb35
  # implict jump to bb33
bb33:   # loop depth 2
  # implict jump to bb34
bb34:   # loop depth 2
  JAL zero, bb20
bb35:   # loop depth 2
  SW t5, 0(t0)
  JAL zero, bb33
bb36:   # loop depth 2
  LW t0, 0(t3)
  SH2ADD t2, a2, s2
  SH2ADD t5, a2, t4
  ADD s5, t5, a7
  LW t2, 0(t2)
  LW s4, 0(t5)
  ADDW t0, t0, t2
  XORI t0, t0, 3
  SLTIU a0, t0, 1
  LW t0, 0(s5)
  ADDW t0, t0, a0
  BLT s4, t0, bb38
  # implict jump to bb37
bb37:   # loop depth 2
  JAL zero, bb20
bb38:   # loop depth 2
  SW t0, 0(t5)
  JAL zero, bb20
bb39:   # loop depth 2
  SH2ADD a1, a2, t4
  LW t5, 0(a1)
  ADD s4, a1, s0
  LW s4, 0(s4)
  BLT t5, s4, bb40
  JAL zero, bb18
bb40:   # loop depth 2
  SW s4, 0(a1)
  JAL zero, bb18
bb41:   # loop depth 2
  SH2ADD a1, a2, t4
  LW t5, 0(a1)
  LW s4, -4(a1)
  BLT t5, s4, bb42
  JAL zero, bb17
bb42:   # loop depth 2
  SW s4, 0(a1)
  JAL zero, bb17
