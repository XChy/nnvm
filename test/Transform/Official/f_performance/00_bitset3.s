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
  ADDI sp, sp, -160
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  CALL getint
  LA s1, staticvalue
  ADD s0, a0, zero
  ADDI s2, zero, 0
  CALL getint
  ADD t0, a0, zero
  ADDI a0, zero, 56
  SW t0, 0(s1)
  CALL _sysy_starttime
  BLT s2, s0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s1, a
  LUI s0, 2
  ADDIW s0, s0, 1808
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a1, s1, zero
  ADD a0, zero, s0
  CALL putarray
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  LA t0, staticvalue
  LUI t1, 4876
  ADDIW t1, t1, -865
  LUI t2, 4878
  LW t0, 0(t0)
  LUI a1, 244141
  ADDIW t2, t2, 725
  ADDIW a1, a1, -1529
  LA a0, staticvalue
  LA a2, staticvalue
  MULW t0, t0, t1
  ADDIW s0, s0, -1
  ADDW t0, t0, t2
  REMW t1, t0, a1
  SW t0, 0(a0)
  SW t1, 0(a2)
  BLT t1, zero, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  LA t0, staticvalue
  LUI t1, 4876
  ADDIW t1, t1, -865
  LUI a0, 4878
  LW t0, 0(t0)
  LUI a2, 244141
  ADDIW a0, a0, 725
  ADDIW a2, a2, -1529
  LUI t2, 73
  LA a1, staticvalue
  MULW t1, t0, t1
  ADDIW t2, t2, 992
  REMW t0, t0, t2
  LA a3, staticvalue
  ADDW t1, t1, a0
  REMW t2, t1, a2
  SW t1, 0(a1)
  SW t2, 0(a3)
  BLT t2, zero, bb24
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI t1, zero, 30
  LA t2, staticvalue
  DIVW t1, t0, t1
  ADDI a0, zero, 1
  LW t2, 0(t2)
  ADDI a1, zero, 2
  ADDI a2, zero, 4
  ADDI a3, zero, 8
  ADDI a4, zero, 16
  ADDI a5, zero, 32
  SW a0, 0(sp)
  ADDI a0, zero, 64
  SW a1, 4(sp)
  ADDI a1, zero, 128
  SW a2, 8(sp)
  ADDI a2, zero, 256
  SW a3, 12(sp)
  ADDI a3, zero, 512
  SW a4, 16(sp)
  LUI a6, 1
  SW a5, 20(sp)
  ADDI a4, zero, 1024
  SW a0, 24(sp)
  LUI a0, 1
  SW a1, 28(sp)
  ADDIW a6, a6, -2048
  SW a2, 32(sp)
  LUI a1, 2
  SW a3, 36(sp)
  ADDIW a0, a0, 0
  SW a4, 40(sp)
  LUI a2, 4
  SW a6, 44(sp)
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
  LA a1, a
  REMW a2, t0, a2
  SH2ADD a1, t1, a1
  LW t0, 0(a1)
  SLLIW t1, a2, 2
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
  BLT zero, s0, bb10
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
  LA t1, staticvalue
  LUI t2, 244141
  LA a0, staticvalue
  ADDIW t2, t2, -1529
  LW t1, 0(t1)
  ADDW t1, t1, t2
  SW t1, 0(a0)
  JAL zero, bb5
bb25:   # loop depth 1
  LA t0, staticvalue
  LUI t1, 244141
  LA t2, staticvalue
  ADDIW t1, t1, -1529
  LW t0, 0(t0)
  ADDW t0, t0, t1
  SW t0, 0(t2)
  JAL zero, bb4
