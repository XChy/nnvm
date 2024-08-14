.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

a:
.space 40000

.section .data
staticvalue:
.word 0x00000000

seed:
.byte 159, 188, 48, 1, 213, 226, 48, 1, 7, 202, 154, 59
.section .text
main:   # loop depth 0
  ADDI sp, sp, -176
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  LA s0, staticvalue
  LA s2, a
  CALL getint
  ADDI s3, zero, 0
  ADD s1, a0, zero
  CALL getint
  ADD t0, a0, zero
  ADDI a0, zero, 56
  SW t0, 0(s0)
  CALL _sysy_starttime
  BLT s3, s1, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LUI s0, 2
  ADDI a0, zero, 64
  ADDIW s0, s0, 1808
  CALL _sysy_stoptime
  ADD a1, s2, zero
  ADD a0, zero, s0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  LW t0, 0(s0)
  LUI t1, 4876
  ADDIW t1, t1, -865
  LUI t2, 4878
  LUI a0, 244141
  ADDIW t2, t2, 725
  MULW t0, t0, t1
  ADDIW a0, a0, -1529
  ADDIW s1, s1, -1
  ADDW t0, t0, t2
  REMW t1, t0, a0
  SW t0, 0(s0)
  SW t1, 0(s0)
  BLT t1, zero, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  LW t0, 0(s0)
  LUI t1, 4876
  ADDIW t1, t1, -865
  LUI a0, 4878
  LUI a1, 244141
  ADDIW a0, a0, 725
  MULW t1, t0, t1
  ADDIW a1, a1, -1529
  LUI t2, 73
  ADDIW t2, t2, 992
  ADDW t1, t1, a0
  REMW t0, t0, t2
  REMW t2, t1, a1
  SW t1, 0(s0)
  SW t2, 0(s0)
  BLT t2, zero, bb24
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI t1, zero, 30
  LW t2, 0(s0)
  DIVW t1, t0, t1
  ADDI a0, zero, 1
  ADDI a1, zero, 2
  ADDI a2, zero, 4
  SW a0, 0(sp)
  ADDI a0, zero, 8
  SW a1, 4(sp)
  ADDI a1, zero, 16
  SW a2, 8(sp)
  ADDI a2, zero, 32
  SW a0, 12(sp)
  ADDI a0, zero, 64
  SW a1, 16(sp)
  ADDI a1, zero, 128
  SW a2, 20(sp)
  ADDI a2, zero, 256
  SW a0, 24(sp)
  ADDI a0, zero, 512
  SW a1, 28(sp)
  LUI a3, 1
  SW a2, 32(sp)
  ADDI a1, zero, 1024
  SW a0, 36(sp)
  LUI a0, 1
  ADDIW a3, a3, -2048
  SW a1, 40(sp)
  LUI a1, 2
  ADDIW a0, a0, 0
  SW a3, 44(sp)
  LUI a2, 4
  ADDIW a1, a1, 0
  SW a0, 48(sp)
  LUI a0, 8
  ADDIW a2, a2, 0
  SW a1, 52(sp)
  LUI a1, 16
  ADDIW a0, a0, 0
  SW a2, 56(sp)
  LUI a2, 32
  ADDIW a1, a1, 0
  SW a0, 60(sp)
  LUI a0, 64
  ADDIW a2, a2, 0
  SW a1, 64(sp)
  LUI a1, 128
  ADDIW a0, a0, 0
  SW a2, 68(sp)
  LUI a2, 256
  ADDIW a1, a1, 0
  SW a0, 72(sp)
  LUI a0, 512
  ADDIW a2, a2, 0
  SW a1, 76(sp)
  LUI a1, 1024
  ADDIW a0, a0, 0
  SW a2, 80(sp)
  LUI a2, 2048
  ADDIW a1, a1, 0
  SW a0, 84(sp)
  LUI a0, 4096
  ADDIW a2, a2, 0
  SW a1, 88(sp)
  LUI a1, 8192
  ADDIW a0, a0, 0
  SW a2, 92(sp)
  LUI a2, 16384
  ADDIW a1, a1, 0
  SW a0, 96(sp)
  LUI a3, 32768
  ADDIW a2, a2, 0
  SW a1, 100(sp)
  LUI a1, 65536
  ADDIW a3, a3, 0
  SW a2, 104(sp)
  SLLI a0, t2, 1
  LUI a2, 131072
  ADDIW a1, a1, 0
  SW a3, 108(sp)
  SRLI a0, a0, 63
  LUI a4, 2
  LUI a3, 262144
  ADDIW a2, a2, 0
  SW a1, 112(sp)
  ADD a0, t2, a0
  ADDIW a4, a4, 1808
  ADDIW a3, a3, 0
  SW a2, 116(sp)
  ANDI a0, a0, -2
  SLT a1, t1, a4
  SW a3, 120(sp)
  SUBW a0, t2, a0
  BEQ a1, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI a2, zero, 30
  SH2ADD a1, t1, s2
  REMW t1, t0, a2
  LW t0, 0(a1)
  SLLIW t1, t1, 2
  ADDI a2, sp, 0
  ADD t1, a2, t1
  LW t1, 0(t1)
  DIVW t0, t0, t1
  SLLI a2, t0, 1
  SRLI a2, a2, 63
  ADD a2, t0, a2
  ANDI a2, a2, -2
  SUBW a2, t0, a2
  BNE a2, a0, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW t1, 0(a1)
  ADDW t0, t1, t0
  SW t0, 0(a1)
  # implict jump to bb9
bb9:   # loop depth 1
  BLT zero, s1, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  XORI a3, a0, 1
  ANDI a0, t0, 1
  BEQ a3, zero, bb23
  # implict jump to bb12
bb12:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BEQ a0, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  XORI a0, a2, 1
  BEQ a0, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb8
bb18:   # loop depth 1
  SUBW t1, t0, t1
  ANDI t2, t2, 1
  BEQ t2, zero, bb21
  # implict jump to bb19
bb19:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb20
bb20:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb17
bb21:   # loop depth 1
  JAL zero, bb20
bb22:   # loop depth 1
  JAL zero, bb15
bb23:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb13
bb24:   # loop depth 1
  LW t1, 0(s0)
  LUI t2, 244141
  ADDIW t2, t2, -1529
  ADDW t1, t1, t2
  SW t1, 0(s0)
  JAL zero, bb5
bb25:   # loop depth 1
  LW t0, 0(s0)
  LUI t1, 244141
  ADDIW t1, t1, -1529
  ADDW t0, t0, t1
  SW t0, 0(s0)
  JAL zero, bb4
