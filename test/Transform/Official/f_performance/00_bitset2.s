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
  ADDI sp, sp, -224
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s6, 24(sp)
  SD s7, 32(sp)
  SD s8, 40(sp)
  SD s9, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  CALL getint
  LA s2, staticvalue
  ADD s1, a0, zero
  ADDI s3, zero, 0
  CALL getint
  ADD s0, a0, zero
  ADDI a0, zero, 56
  SW s0, 0(s2)
  CALL _sysy_starttime
  BLT s3, s1, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, a
  LUI s1, 2
  ADDIW s1, s1, 1808
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  ADD a1, s0, zero
  ADD a0, zero, s1
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s6, 24(sp)
  LD s7, 32(sp)
  LD s8, 40(sp)
  LD s9, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  LA a0, staticvalue
  LUI s0, 4876
  ADDIW s0, s0, -865
  LUI s2, 4878
  LW a0, 0(a0)
  LUI s5, 244141
  ADDIW s2, s2, 725
  ADDIW s5, s5, -1529
  LA s3, staticvalue
  LA s4, staticvalue
  MULW a0, a0, s0
  ADDIW s1, s1, -1
  ADDW a0, a0, s2
  REMW s0, a0, s5
  SW a0, 0(s3)
  SW s0, 0(s4)
  BLT s0, zero, bb25
  # implict jump to bb4
bb4:   # loop depth 1
  LA a0, staticvalue
  LUI s0, 4876
  ADDIW s0, s0, -865
  LUI s3, 4878
  LW a0, 0(a0)
  LUI s5, 244141
  ADDIW s3, s3, 725
  ADDIW s5, s5, -1529
  LUI s2, 73
  LA s4, staticvalue
  MULW s0, a0, s0
  ADDIW s2, s2, 992
  REMW a0, a0, s2
  LA s6, staticvalue
  ADDW s0, s0, s3
  REMW s2, s0, s5
  SW s0, 0(s4)
  SW s2, 0(s6)
  BLT s2, zero, bb24
  # implict jump to bb5
bb5:   # loop depth 1
  ADDI s0, zero, 30
  LA s2, staticvalue
  DIVW s0, a0, s0
  ADDI s4, zero, 1
  LW s3, 0(s2)
  ADDI s2, zero, 2
  ADDI s5, zero, 4
  ADDI s6, zero, 8
  ADDI s7, zero, 16
  ADDI s8, zero, 32
  SW s4, 88(sp)
  ADDI s4, zero, 64
  SW s2, 92(sp)
  ADDI s2, zero, 128
  SW s5, 96(sp)
  ADDI s5, zero, 256
  SW s6, 100(sp)
  ADDI s6, zero, 512
  SW s7, 104(sp)
  LUI s9, 1
  SW s8, 108(sp)
  ADDI s7, zero, 1024
  SW s4, 112(sp)
  LUI s4, 1
  SW s2, 116(sp)
  ADDIW s9, s9, -2048
  SW s5, 120(sp)
  LUI s2, 2
  SW s6, 124(sp)
  ADDIW s4, s4, 0
  SW s7, 128(sp)
  LUI s5, 4
  SW s9, 132(sp)
  ADDIW s2, s2, 0
  SW s4, 136(sp)
  LUI s4, 8
  ADDIW s5, s5, 0
  SW s2, 140(sp)
  LUI s2, 16
  ADDIW s4, s4, 0
  SW s5, 144(sp)
  LUI s5, 32
  ADDIW s2, s2, 0
  SW s4, 148(sp)
  LUI s4, 64
  ADDIW s5, s5, 0
  SW s2, 152(sp)
  LUI s2, 128
  ADDIW s4, s4, 0
  SW s5, 156(sp)
  LUI s5, 256
  ADDIW s2, s2, 0
  SW s4, 160(sp)
  LUI s4, 512
  ADDIW s5, s5, 0
  SW s2, 164(sp)
  LUI s2, 1024
  ADDIW s4, s4, 0
  SW s5, 168(sp)
  LUI s5, 2048
  ADDIW s2, s2, 0
  SW s4, 172(sp)
  LUI s4, 4096
  ADDIW s5, s5, 0
  SW s2, 176(sp)
  LUI s2, 8192
  ADDIW s4, s4, 0
  SW s5, 180(sp)
  LUI s5, 16384
  ADDIW s2, s2, 0
  SW s4, 184(sp)
  LUI s8, 32768
  ADDIW s5, s5, 0
  SW s2, 188(sp)
  LUI s4, 65536
  ADDIW s8, s8, 0
  SW s5, 192(sp)
  SLLI s2, s3, 1
  LUI s7, 2
  LUI s6, 131072
  ADDIW s4, s4, 0
  SW s8, 196(sp)
  SRLI s2, s2, 63
  ADDIW s7, s7, 1808
  LUI s5, 262144
  ADDIW s6, s6, 0
  SW s4, 200(sp)
  ADD s4, s3, s2
  SLT s2, s0, s7
  ADDIW s5, s5, 0
  SW s6, 204(sp)
  ANDI s4, s4, -2
  XORI s2, s2, 1
  SW s5, 208(sp)
  SUBW s4, s3, s4
  BNE s2, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI s5, zero, 30
  LA s2, a
  REMW s5, a0, s5
  SLLIW a0, s0, 2
  ADD s2, s2, a0
  LW a0, 0(s2)
  SLLIW s0, s5, 2
  ADDI t6, sp, 88
  ADD s0, t6, s0
  LW s0, 0(s0)
  DIVW a0, a0, s0
  SLLI s5, a0, 1
  SRLI s5, s5, 63
  ADD s5, a0, s5
  ANDI s5, s5, -2
  SUBW s5, a0, s5
  BNE s5, s4, bb11
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
  ANDI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb20
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
  XORI a0, s4, 1
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
  LA s0, staticvalue
  LUI s2, 244141
  LA s3, staticvalue
  ADDIW s2, s2, -1529
  LW s0, 0(s0)
  ADDW s0, s0, s2
  SW s0, 0(s3)
  JAL zero, bb5
bb25:   # loop depth 1
  LA a0, staticvalue
  LUI s0, 244141
  LA s2, staticvalue
  ADDIW s0, s0, -1529
  LW a0, 0(a0)
  ADDW a0, a0, s0
  SW a0, 0(s2)
  JAL zero, bb4
