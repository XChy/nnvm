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
  ADDI sp, sp, -192
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  CALL getint
  ADD s1, a0, zero
  CALL getint
  LA s0, staticvalue
  SW a0, 0(s0)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s1, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI a0, 2
  ADDIW a0, a0, 1808
  ADD a0, zero, a0
  LA a1, a
  CALL putarray
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s0, 4876
  ADDIW s0, s0, -865
  MULW a0, a0, s0
  LUI s0, 4878
  ADDIW s0, s0, 725
  ADDW a0, a0, s0
  LA s0, staticvalue
  SW a0, 0(s0)
  LUI s0, 244141
  ADDIW s0, s0, -1529
  REMW a0, a0, s0
  LA s0, staticvalue
  SW a0, 0(s0)
  BLT a0, zero, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s0, 73
  ADDIW s0, s0, 992
  REMW s0, a0, s0
  LUI s2, 4876
  ADDIW s2, s2, -865
  MULW a0, a0, s2
  LUI s2, 4878
  ADDIW s2, s2, 725
  ADDW a0, a0, s2
  LA s2, staticvalue
  SW a0, 0(s2)
  LUI s2, 244141
  ADDIW s2, s2, -1529
  REMW a0, a0, s2
  LA s2, staticvalue
  SW a0, 0(s2)
  BLT a0, zero, bb24
  # implict jump to bb5
bb5:   # loop depth 1
  LA a0, staticvalue
  LW s3, 0(a0)
  SLLI a0, s3, 1
  SRLI a0, a0, 63
  ADD a0, s3, a0
  ANDI a0, a0, -2
  SUBW a0, s3, a0
  ADDI s2, zero, 1
  SW s2, 0(sp)
  ADDI s2, zero, 2
  SW s2, 4(sp)
  ADDI s2, zero, 4
  SW s2, 8(sp)
  ADDI s2, zero, 8
  SW s2, 12(sp)
  ADDI s2, zero, 16
  SW s2, 16(sp)
  ADDI s2, zero, 32
  SW s2, 20(sp)
  ADDI s2, zero, 64
  SW s2, 24(sp)
  ADDI s2, zero, 128
  SW s2, 28(sp)
  ADDI s2, zero, 256
  SW s2, 32(sp)
  ADDI s2, zero, 512
  SW s2, 36(sp)
  ADDI s2, zero, 1024
  SW s2, 40(sp)
  LUI s2, 1
  ADDIW s2, s2, -2048
  SW s2, 44(sp)
  LUI s2, 1
  ADDIW s2, s2, 0
  SW s2, 48(sp)
  LUI s2, 2
  ADDIW s2, s2, 0
  SW s2, 52(sp)
  LUI s2, 4
  ADDIW s2, s2, 0
  SW s2, 56(sp)
  LUI s2, 8
  ADDIW s2, s2, 0
  SW s2, 60(sp)
  LUI s2, 16
  ADDIW s2, s2, 0
  SW s2, 64(sp)
  LUI s2, 32
  ADDIW s2, s2, 0
  SW s2, 68(sp)
  LUI s2, 64
  ADDIW s2, s2, 0
  SW s2, 72(sp)
  LUI s2, 128
  ADDIW s2, s2, 0
  SW s2, 76(sp)
  LUI s2, 256
  ADDIW s2, s2, 0
  SW s2, 80(sp)
  LUI s2, 512
  ADDIW s2, s2, 0
  SW s2, 84(sp)
  LUI s2, 1024
  ADDIW s2, s2, 0
  SW s2, 88(sp)
  LUI s2, 2048
  ADDIW s2, s2, 0
  SW s2, 92(sp)
  LUI s2, 4096
  ADDIW s2, s2, 0
  SW s2, 96(sp)
  LUI s2, 8192
  ADDIW s2, s2, 0
  SW s2, 100(sp)
  LUI s2, 16384
  ADDIW s2, s2, 0
  SW s2, 104(sp)
  LUI s2, 32768
  ADDIW s2, s2, 0
  SW s2, 108(sp)
  LUI s2, 65536
  ADDIW s2, s2, 0
  SW s2, 112(sp)
  LUI s2, 131072
  ADDIW s2, s2, 0
  SW s2, 116(sp)
  LUI s2, 262144
  ADDIW s2, s2, 0
  SW s2, 120(sp)
  ADDI s2, zero, 30
  DIVW s2, s0, s2
  LUI s4, 2
  ADDIW s4, s4, 1808
  SLT s4, s2, s4
  XORI s4, s4, 1
  BNE s4, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  SLLIW s2, s2, 2
  LA s4, a
  ADD s2, s4, s2
  LW s4, 0(s2)
  ADDI s5, zero, 30
  REMW s0, s0, s5
  SLLIW s0, s0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  DIVW s4, s4, s0
  SLLI s5, s4, 1
  SRLI s5, s5, 63
  ADD s5, s4, s5
  ANDI s5, s5, -2
  SUBW s5, s4, s5
  BNE s5, a0, bb11
  # implict jump to bb7
bb7:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  LW s0, 0(s2)
  ADDW a0, s0, a0
  SW a0, 0(s2)
  # implict jump to bb9
bb9:   # loop depth 1
  BLT zero, s1, bb10
  JAL zero, bb1
bb10:   # loop depth 1
  JAL zero, bb3
bb11:   # loop depth 1
  ANDI s4, s4, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb20
  # implict jump to bb12
bb12:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 1
  XORI s4, s5, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb16
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  JAL zero, bb8
bb16:   # loop depth 1
  ANDI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb19
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  JAL zero, bb15
bb19:   # loop depth 1
  SUBW a0, a0, s0
  JAL zero, bb18
bb20:   # loop depth 1
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb21
bb21:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  JAL zero, bb13
bb23:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb22
bb24:   # loop depth 1
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s2, 244141
  ADDIW s2, s2, -1529
  ADDW a0, a0, s2
  LA s2, staticvalue
  SW a0, 0(s2)
  JAL zero, bb5
bb25:   # loop depth 1
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s0, 244141
  ADDIW s0, s0, -1529
  ADDW a0, a0, s0
  LA s0, staticvalue
  SW a0, 0(s0)
  JAL zero, bb4
