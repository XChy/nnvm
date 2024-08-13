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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LA a0, seq
  LA s3, table
  LA s4, n
  LA s2, table
  LA s1, seq
  LA s5, n
  LA s0, table
  CALL getarray
  ADD a0, s3, zero
  CALL getarray
  ADDI a0, zero, 79
  CALL _sysy_starttime
  LW a0, 0(s4)
  ADD a2, s2, zero
  ADD a1, s1, zero
  CALL kernel_nussinov
  ADDI a0, zero, 81
  CALL _sysy_stoptime
  LW a0, 0(s5)
  ADD a1, s0, zero
  MULW a0, a0, a0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
kernel_nussinov:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADDIW a5, a0, -1
  BGE a5, zero, bb11
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
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD t1, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BLT zero, a0, bb8
  # implict jump to bb6
bb6:   # loop depth 1
  ADDIW t1, t1, 1
  BLT t1, a0, bb7
  JAL zero, bb3
bb7:   # loop depth 1
  JAL zero, bb5
bb8:   # loop depth 1
  LUI t2, 1
  ADD t0, zero, zero
  ADDIW t2, t2, 1504
  MULW t2, t1, t2
  ADD t2, a2, t2
  # implict jump to bb9
bb9:   # loop depth 2
  ADDI a4, zero, 10
  SH2ADD a1, t0, t2
  ADDIW t0, t0, 1
  LW a3, 0(a1)
  REMW a3, a3, a4
  SW a3, 0(a1)
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
  ADDIW t1, a5, 1
  SLT a6, t1, a0
  BLT t1, a0, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW a5, a5, -1
  BGE a5, zero, bb15
  JAL zero, bb2
bb15:   # loop depth 1
  JAL zero, bb12
bb16:   # loop depth 1
  LUI t0, 1
  ADDIW t0, t0, 1504
  ADD a4, t1, zero
  MULW t0, a5, t0
  SH2ADD t3, a5, a1
  ADD a7, a2, t0
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
  AND a3, a3, a6
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
  SH2ADD t4, a4, a7
  # implict jump to bb27
bb27:   # loop depth 3
  LUI s0, 1
  ADDIW s0, s0, 1504
  LW t5, 0(t4)
  MULW s2, t0, s0
  SH2ADD s0, t0, a7
  LUI s3, 1
  ADDIW t0, t0, 1
  LW s1, 0(s0)
  ADDIW s3, s3, 1504
  ADD s2, a2, s2
  SH2ADD s2, a4, s2
  ADD s2, s2, s3
  LW s3, 0(s2)
  ADDW s1, s1, s3
  BLT t5, s1, bb31
  # implict jump to bb28
bb28:   # loop depth 3
  BLT t0, a4, bb30
  # implict jump to bb29
bb29:   # loop depth 2
  JAL zero, bb23
bb30:   # loop depth 3
  JAL zero, bb27
bb31:   # loop depth 3
  LW t5, 0(s0)
  LW s0, 0(s2)
  ADDW t5, t5, s0
  SW t5, 0(t4)
  JAL zero, bb28
bb32:   # loop depth 2
  BLT a5, t0, bb37
  # implict jump to bb33
bb33:   # loop depth 2
  SH2ADD t0, a4, a7
  LUI t5, 1
  LW t4, 0(t0)
  ADDIW t5, t5, 1500
  ADD t5, t0, t5
  LW t5, 0(t5)
  BLT t4, t5, bb36
  # implict jump to bb34
bb34:   # loop depth 2
  # implict jump to bb35
bb35:   # loop depth 2
  JAL zero, bb21
bb36:   # loop depth 2
  SW t5, 0(t0)
  JAL zero, bb34
bb37:   # loop depth 2
  LW t0, 0(t3)
  SH2ADD t2, a4, a1
  SH2ADD t4, a4, a7
  LUI t5, 1
  ADDIW t5, t5, 1500
  LW t2, 0(t2)
  ADD s0, t4, t5
  LW t5, 0(t4)
  ADDW t0, t0, t2
  XORI t0, t0, 3
  SLTIU t2, t0, 1
  LW t0, 0(s0)
  ADDW t0, t0, t2
  BLT t5, t0, bb39
  # implict jump to bb38
bb38:   # loop depth 2
  JAL zero, bb35
bb39:   # loop depth 2
  SW t0, 0(t4)
  JAL zero, bb38
bb40:   # loop depth 2
  SH2ADD t4, a4, a7
  LUI s0, 1
  LW t5, 0(t4)
  ADDIW s0, s0, 1504
  ADD s0, t4, s0
  LW s0, 0(s0)
  BLT t5, s0, bb41
  JAL zero, bb19
bb41:   # loop depth 2
  SW s0, 0(t4)
  JAL zero, bb19
bb42:   # loop depth 2
  SH2ADD t4, a4, a7
  LW t5, 0(t4)
  LW s0, -4(t4)
  BLT t5, s0, bb43
  JAL zero, bb18
bb43:   # loop depth 2
  SW s0, 0(t4)
  JAL zero, bb18
