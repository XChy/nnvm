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
  SD s6, 184(sp)
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s0, a0, zero
  LA a0, staticvalue
  SW s0, 0(a0)
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
  LD s6, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb2:
  ADD a0, s1, zero
  # implict jump to bb3
bb3:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s2, s0, a0
  LA a0, staticvalue
  LW s0, 0(a0)
  LUI a0, 4876
  ADDIW a0, a0, -865
  MULW s0, s0, a0
  LUI a0, 4878
  ADDIW a0, a0, 725
  ADDW s0, s0, a0
  LA a0, staticvalue
  SW s0, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW s0, s0, a0
  LA a0, staticvalue
  SW s0, 0(a0)
  BLT s0, zero, bb28
  # implict jump to bb4
bb4:
  LA a0, staticvalue
  LW s1, 0(a0)
  LUI a0, 73
  ADDIW a0, a0, 992
  REMW s0, s1, a0
  LUI a0, 4876
  ADDIW a0, a0, -865
  MULW s1, s1, a0
  LUI a0, 4878
  ADDIW a0, a0, 725
  ADDW s1, s1, a0
  LA a0, staticvalue
  SW s1, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  REMW s1, s1, a0
  LA a0, staticvalue
  SW s1, 0(a0)
  BLT s1, zero, bb27
  # implict jump to bb5
bb5:
  LA a0, staticvalue
  LW s1, 0(a0)
  SLLI a0, s1, 1
  SRLI a0, a0, 63
  ADD a0, s1, a0
  ANDI a0, a0, -2
  SUBW s3, s1, a0
  ADDI a0, zero, 31
  # implict jump to bb6
bb6:
  ADD s4, a0, zero
  ADDI a0, zero, 1
  SUBW s4, s4, a0
  SLLIW a0, s4, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s4, zero, bb26
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
  LW a0, 40(sp)
  SLLIW a0, a0, 1
  SW a0, 44(sp)
  LW a0, 44(sp)
  SLLIW a0, a0, 1
  SW a0, 48(sp)
  LW a0, 48(sp)
  SLLIW a0, a0, 1
  SW a0, 52(sp)
  LW a0, 52(sp)
  SLLIW a0, a0, 1
  SW a0, 56(sp)
  LW a0, 56(sp)
  SLLIW a0, a0, 1
  SW a0, 60(sp)
  LW a0, 60(sp)
  SLLIW a0, a0, 1
  SW a0, 64(sp)
  LW a0, 64(sp)
  SLLIW a0, a0, 1
  SW a0, 68(sp)
  LW a0, 68(sp)
  SLLIW a0, a0, 1
  SW a0, 72(sp)
  LW a0, 72(sp)
  SLLIW a0, a0, 1
  SW a0, 76(sp)
  LW a0, 76(sp)
  SLLIW a0, a0, 1
  SW a0, 80(sp)
  LW a0, 80(sp)
  SLLIW a0, a0, 1
  SW a0, 84(sp)
  LW a0, 84(sp)
  SLLIW a0, a0, 1
  SW a0, 88(sp)
  LW a0, 88(sp)
  SLLIW a0, a0, 1
  SW a0, 92(sp)
  LW a0, 92(sp)
  SLLIW a0, a0, 1
  SW a0, 96(sp)
  LW a0, 96(sp)
  SLLIW a0, a0, 1
  SW a0, 100(sp)
  LW a0, 100(sp)
  SLLIW a0, a0, 1
  SW a0, 104(sp)
  LW a0, 104(sp)
  SLLIW a0, a0, 1
  SW a0, 108(sp)
  LW a0, 108(sp)
  SLLIW a0, a0, 1
  SW a0, 112(sp)
  LW a0, 112(sp)
  SLLIW a0, a0, 1
  SW a0, 116(sp)
  LW a0, 116(sp)
  SLLIW a0, a0, 1
  SW a0, 120(sp)
  ADDI a0, zero, 30
  DIVW s4, s0, a0
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s4, a0
  XORI a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb8
bb8:
  SLLIW s4, s4, 2
  LA a0, a
  ADD s4, a0, s4
  LW s5, 0(s4)
  ADDI a0, zero, 30
  REMW a0, s0, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  DIVW s6, s5, s0
  SLLI a0, s6, 1
  SRLI a0, a0, 63
  ADD a0, s6, a0
  ANDI a0, a0, -2
  SUBW s5, s6, a0
  BNE s5, s3, bb13
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  # implict jump to bb10
bb10:
  ADD s0, a0, zero
  LW a0, 0(s4)
  ADDW a0, a0, s0
  SW a0, 0(s4)
  # implict jump to bb11
bb11:
  BLT zero, s2, bb12
  JAL zero, bb1
bb12:
  ADD a0, s2, zero
  JAL zero, bb3
bb13:
  ANDI a0, s6, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb22
  # implict jump to bb14
bb14:
  ADD a0, zero, zero
  # implict jump to bb15
bb15:
  ADD s3, a0, zero
  XORI a0, s5, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb18
  # implict jump to bb16
bb16:
  ADD a0, s3, zero
  # implict jump to bb17
bb17:
  JAL zero, bb10
bb18:
  ANDI a0, s1, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb19
bb19:
  ADD a0, s3, zero
  # implict jump to bb20
bb20:
  JAL zero, bb17
bb21:
  SUBW a0, s3, s0
  JAL zero, bb20
bb22:
  XORI a0, s3, 1
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
  ADD a0, s4, zero
  JAL zero, bb6
bb27:
  LA a0, staticvalue
  LW s1, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  ADDW s1, s1, a0
  LA a0, staticvalue
  SW s1, 0(a0)
  JAL zero, bb5
bb28:
  LA a0, staticvalue
  LW s0, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  ADDW s0, s0, a0
  LA a0, staticvalue
  SW s0, 0(a0)
  JAL zero, bb4
