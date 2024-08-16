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
  SD s4, 168(sp)
  LA s0, staticvalue
  LUI s2, 2
  ADDIW s2, s2, 1808
  LA s3, a
  CALL getint
  ADDI s4, zero, 0
  ADD s1, a0, zero
  ADD s2, zero, s2
  CALL getint
  ADD t0, a0, zero
  ADDI a0, zero, 56
  SW t0, 0(s0)
  CALL _sysy_starttime
  BLT s4, s1, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a1, s3, zero
  ADD a0, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb2:   # loop depth 0
  LUI t2, 4876
  LUI t1, 4878
  LUI t0, 244141
  ADDIW t2, t2, -865
  ADDIW t1, t1, 725
  ADDIW t0, t0, -1529
  ADD a1, zero, t2
  ADD a0, zero, t1
  ADD t2, zero, t0
  # implict jump to bb3
bb3:   # loop depth 1
  LW t0, 0(s0)
  ADDIW s1, s1, -1
  MULW t0, t0, a1
  ADDW t0, t0, a0
  REMW t1, t0, t2
  SW t0, 0(s0)
  SW t1, 0(s0)
  BLT t1, zero, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  LW t0, 0(s0)
  LUI a2, 73
  ADDIW a2, a2, 992
  MULW t1, t0, a1
  REMW t0, t0, a2
  ADDW t1, t1, a0
  REMW a2, t1, t2
  SW t1, 0(s0)
  SW a2, 0(s0)
  BLT a2, zero, bb24
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI t1, zero, 30
  LW a2, 0(s0)
  DIVW t1, t0, t1
  ADDI a3, zero, 1
  ADDI a4, zero, 2
  ADDI a5, zero, 4
  SW a3, 0(sp)
  ADDI a3, zero, 8
  SW a4, 4(sp)
  ADDI a4, zero, 16
  SW a5, 8(sp)
  ADDI a5, zero, 32
  SW a3, 12(sp)
  ADDI a3, zero, 64
  SW a4, 16(sp)
  ADDI a4, zero, 128
  SW a5, 20(sp)
  ADDI a5, zero, 256
  SW a3, 24(sp)
  ADDI a3, zero, 512
  SW a4, 28(sp)
  LUI a6, 1
  SW a5, 32(sp)
  ADDI a4, zero, 1024
  SW a3, 36(sp)
  LUI a3, 1
  ADDIW a6, a6, -2048
  SW a4, 40(sp)
  LUI a4, 2
  ADDIW a3, a3, 0
  SW a6, 44(sp)
  LUI a5, 4
  ADDIW a4, a4, 0
  SW a3, 48(sp)
  LUI a3, 8
  ADDIW a5, a5, 0
  SW a4, 52(sp)
  LUI a4, 16
  ADDIW a3, a3, 0
  SW a5, 56(sp)
  LUI a5, 32
  ADDIW a4, a4, 0
  SW a3, 60(sp)
  LUI a3, 64
  ADDIW a5, a5, 0
  SW a4, 64(sp)
  LUI a4, 128
  ADDIW a3, a3, 0
  SW a5, 68(sp)
  LUI a5, 256
  ADDIW a4, a4, 0
  SW a3, 72(sp)
  LUI a3, 512
  ADDIW a5, a5, 0
  SW a4, 76(sp)
  LUI a4, 1024
  ADDIW a3, a3, 0
  SW a5, 80(sp)
  LUI a5, 2048
  ADDIW a4, a4, 0
  SW a3, 84(sp)
  LUI a3, 4096
  ADDIW a5, a5, 0
  SW a4, 88(sp)
  LUI a4, 8192
  ADDIW a3, a3, 0
  SW a5, 92(sp)
  LUI a5, 16384
  ADDIW a4, a4, 0
  SW a3, 96(sp)
  LUI a6, 32768
  ADDIW a5, a5, 0
  SW a4, 100(sp)
  LUI a4, 65536
  ADDIW a6, a6, 0
  SW a5, 104(sp)
  SLLI a3, a2, 1
  LUI a5, 131072
  ADDIW a4, a4, 0
  SW a6, 108(sp)
  SRLI a3, a3, 63
  LUI a6, 262144
  ADDIW a5, a5, 0
  SW a4, 112(sp)
  ADD a3, a2, a3
  ADDIW a6, a6, 0
  SW a5, 116(sp)
  ANDI a3, a3, -2
  SW a6, 120(sp)
  SUBW a3, a2, a3
  BGE t1, s2, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI a5, zero, 30
  SH2ADD a4, t1, s3
  REMW t1, t0, a5
  LW t0, 0(a4)
  SLLIW t1, t1, 2
  ADDI a5, sp, 0
  ADD t1, a5, t1
  LW t1, 0(t1)
  DIVW t0, t0, t1
  SLLI a5, t0, 1
  SRLI a5, a5, 63
  ADD a5, t0, a5
  ANDI a5, a5, -2
  SUBW a5, t0, a5
  BNE a5, a3, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW t1, 0(a4)
  ADDW t0, t1, t0
  SW t0, 0(a4)
  # implict jump to bb9
bb9:   # loop depth 1
  BLT zero, s1, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  XORI a6, a3, 1
  ANDI a3, t0, 1
  BEQ a6, zero, bb23
  # implict jump to bb12
bb12:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  BEQ a3, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 1
  ADD t0, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  XORI a3, a5, 1
  BEQ a3, zero, bb18
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  JAL zero, bb8
bb18:   # loop depth 1
  SUBW t1, t0, t1
  ANDI a2, a2, 1
  BEQ a2, zero, bb21
  # implict jump to bb19
bb19:   # loop depth 1
  ADD t1, t0, zero
  # implict jump to bb20
bb20:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb8
bb21:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb8
bb22:   # loop depth 1
  JAL zero, bb15
bb23:   # loop depth 1
  ADD t0, t1, zero
  JAL zero, bb13
bb24:   # loop depth 1
  LW t1, 0(s0)
  ADDW t1, t1, t2
  SW t1, 0(s0)
  JAL zero, bb5
bb25:   # loop depth 1
  LW t0, 0(s0)
  ADDW t0, t0, t2
  SW t0, 0(s0)
  JAL zero, bb4
