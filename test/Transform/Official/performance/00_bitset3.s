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
main:
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
bb1:
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
bb2:
  # implict jump to bb3
bb3:
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
  BLT a0, zero, bb28
  # implict jump to bb4
bb4:
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
  BLT a0, zero, bb27
  # implict jump to bb5
bb5:
  LA a0, staticvalue
  LW s3, 0(a0)
  SLLI a0, s3, 1
  SRLI a0, a0, 63
  ADD a0, s3, a0
  ANDI a0, a0, -2
  SUBW s4, s3, a0
  ADDI a0, zero, 31
  # implict jump to bb6
bb6:
  ADDI s2, zero, 1
  SUBW a0, a0, s2
  SLLIW s2, a0, 2
  ADDI t6, sp, 0
  ADD s2, t6, s2
  SW zero, 0(s2)
  BNE a0, zero, bb26
  # implict jump to bb7
bb7:
  ADDI a0, zero, 1
  SW a0, 0(sp)
  ADDI a0, zero, 2
  SW a0, 4(sp)
  ADDI a0, zero, 4
  SW a0, 8(sp)
  ADDI a0, zero, 8
  SW a0, 12(sp)
  ADDI a0, zero, 16
  SW a0, 16(sp)
  ADDI a0, zero, 32
  SW a0, 20(sp)
  ADDI a0, zero, 64
  SW a0, 24(sp)
  ADDI a0, zero, 128
  SW a0, 28(sp)
  ADDI a0, zero, 256
  SW a0, 32(sp)
  ADDI a0, zero, 512
  SW a0, 36(sp)
  ADDI a0, zero, 1024
  SW a0, 40(sp)
  LUI a0, 1
  ADDIW a0, a0, -2048
  SW a0, 44(sp)
  LUI a0, 1
  ADDIW a0, a0, 0
  SW a0, 48(sp)
  LUI a0, 2
  ADDIW a0, a0, 0
  SW a0, 52(sp)
  LUI a0, 4
  ADDIW a0, a0, 0
  SW a0, 56(sp)
  LUI a0, 8
  ADDIW a0, a0, 0
  SW a0, 60(sp)
  LUI a0, 16
  ADDIW a0, a0, 0
  SW a0, 64(sp)
  LUI a0, 32
  ADDIW a0, a0, 0
  SW a0, 68(sp)
  LUI a0, 64
  ADDIW a0, a0, 0
  SW a0, 72(sp)
  LUI a0, 128
  ADDIW a0, a0, 0
  SW a0, 76(sp)
  LUI a0, 256
  ADDIW a0, a0, 0
  SW a0, 80(sp)
  LUI a0, 512
  ADDIW a0, a0, 0
  SW a0, 84(sp)
  LUI a0, 1024
  ADDIW a0, a0, 0
  SW a0, 88(sp)
  LUI a0, 2048
  ADDIW a0, a0, 0
  SW a0, 92(sp)
  LUI a0, 4096
  ADDIW a0, a0, 0
  SW a0, 96(sp)
  LUI a0, 8192
  ADDIW a0, a0, 0
  SW a0, 100(sp)
  LUI a0, 16384
  ADDIW a0, a0, 0
  SW a0, 104(sp)
  LUI a0, 32768
  ADDIW a0, a0, 0
  SW a0, 108(sp)
  LUI a0, 65536
  ADDIW a0, a0, 0
  SW a0, 112(sp)
  LUI a0, 131072
  ADDIW a0, a0, 0
  SW a0, 116(sp)
  LUI a0, 262144
  ADDIW a0, a0, 0
  SW a0, 120(sp)
  ADDI a0, zero, 30
  DIVW a0, s0, a0
  LUI s2, 2
  ADDIW s2, s2, 1808
  SLT s2, a0, s2
  XORI s2, s2, 1
  BNE s2, zero, bb11
  # implict jump to bb8
bb8:
  SLLIW a0, a0, 2
  LA s2, a
  ADD s2, s2, a0
  LW a0, 0(s2)
  ADDI s5, zero, 30
  REMW s0, s0, s5
  SLLIW s0, s0, 2
  ADDI t6, sp, 0
  ADD s0, t6, s0
  LW s0, 0(s0)
  DIVW a0, a0, s0
  SLLI s5, a0, 1
  SRLI s5, s5, 63
  ADD s5, a0, s5
  ANDI s5, s5, -2
  SUBW s5, a0, s5
  BNE s5, s4, bb13
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  LW s0, 0(s2)
  ADDW a0, s0, a0
  SW a0, 0(s2)
  # implict jump to bb11
bb11:
  BLT zero, s1, bb12
  JAL zero, bb1
bb12:
  JAL zero, bb3
bb13:
  ANDI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb22
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  XORI s4, s5, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb18
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  JAL zero, bb10
bb18:
  ANDI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb21
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  JAL zero, bb17
bb21:
  SUBW a0, a0, s0
  JAL zero, bb20
bb22:
  XORI a0, s4, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  # implict jump to bb24
bb24:
  JAL zero, bb15
bb25:
  ADD a0, s0, zero
  JAL zero, bb24
bb26:
  JAL zero, bb6
bb27:
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s2, 244141
  ADDIW s2, s2, -1529
  ADDW a0, a0, s2
  LA s2, staticvalue
  SW a0, 0(s2)
  JAL zero, bb5
bb28:
  LA a0, staticvalue
  LW a0, 0(a0)
  LUI s0, 244141
  ADDIW s0, s0, -1529
  ADDW a0, a0, s0
  LA s0, staticvalue
  SW a0, 0(s0)
  JAL zero, bb4
