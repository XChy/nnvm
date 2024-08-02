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
  ADDI sp, sp, -176
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  LA s1, staticvalue
  SW a0, 0(s1)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADDI a0, zero, 0
  BLT a0, s0, bb2
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
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb2:
  ADD a0, s0, zero
  # implict jump to bb3
bb3:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  LA s0, staticvalue
  LW s0, 0(s0)
  LUI s1, 4876
  ADDIW s1, s1, -865
  MULW s0, s0, s1
  LUI s1, 4878
  ADDIW s1, s1, 725
  ADDW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  LUI s1, 244141
  ADDIW s1, s1, -1529
  REMW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  BLT s0, zero, bb31
  # implict jump to bb4
bb4:
  LA s0, staticvalue
  LW s0, 0(s0)
  LUI s1, 73
  ADDIW s1, s1, 992
  REMW s1, s0, s1
  LUI s2, 4876
  ADDIW s2, s2, -865
  MULW s0, s0, s2
  LUI s2, 4878
  ADDIW s2, s2, 725
  ADDW s0, s0, s2
  LA s2, staticvalue
  SW s0, 0(s2)
  LUI s2, 244141
  ADDIW s2, s2, -1529
  REMW s0, s0, s2
  LA s2, staticvalue
  SW s0, 0(s2)
  BLT s0, zero, bb30
  # implict jump to bb5
bb5:
  LA s0, staticvalue
  LW s0, 0(s0)
  SLLI s2, s0, 1
  SRLI s2, s2, 63
  ADD s2, s0, s2
  ANDI s2, s2, -2
  SUBW s0, s0, s2
  ADDI s2, zero, 31
  # implict jump to bb6
bb6:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  BNE s2, zero, bb29
  # implict jump to bb7
bb7:
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
  ADDI s2, zero, 10
  # implict jump to bb8
bb8:
  ADDIW s3, s2, 1
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SLLIW s2, s2, 2
  ADDI t5, sp, 0
  ADD s2, t5, s2
  LW s2, 0(s2)
  SLLIW s2, s2, 1
  SW s2, 0(s4)
  SLTI s2, s3, 30
  BNE s2, zero, bb28
  # implict jump to bb9
bb9:
  ADDI s2, zero, 30
  DIVW s2, s1, s2
  LUI s3, 2
  ADDIW s3, s3, 1808
  SLT s3, s2, s3
  XORI s3, s3, 1
  BNE s3, zero, bb13
  # implict jump to bb10
bb10:
  SLLIW s2, s2, 2
  LA s3, a
  ADD s2, s3, s2
  LW s3, 0(s2)
  ADDI s4, zero, 30
  REMW s1, s1, s4
  SLLIW s1, s1, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s1, 0(s1)
  DIVW s3, s3, s1
  SLLI s4, s3, 1
  SRLI s4, s4, 63
  ADD s4, s3, s4
  ANDI s4, s4, -2
  SUBW s3, s3, s4
  BNE s3, s0, bb15
  # implict jump to bb11
bb11:
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  LW s1, 0(s2)
  ADDW s0, s1, s0
  SW s0, 0(s2)
  # implict jump to bb13
bb13:
  BLT zero, a0, bb14
  JAL zero, bb1
bb14:
  JAL zero, bb3
bb15:
  SLTIU s4, s3, 1
  BNE s4, zero, bb24
  # implict jump to bb16
bb16:
  ADD s4, zero, zero
  # implict jump to bb17
bb17:
  XORI s3, s3, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:
  ADD s0, s4, zero
  # implict jump to bb19
bb19:
  JAL zero, bb12
bb20:
  SLTIU s0, s0, 1
  BNE s0, zero, bb23
  # implict jump to bb21
bb21:
  ADD s0, s4, zero
  # implict jump to bb22
bb22:
  JAL zero, bb19
bb23:
  SUBW s0, s4, s1
  JAL zero, bb22
bb24:
  XORI s4, s0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb27
  # implict jump to bb25
bb25:
  ADD s4, zero, zero
  # implict jump to bb26
bb26:
  JAL zero, bb17
bb27:
  ADD s4, s1, zero
  JAL zero, bb26
bb28:
  ADD s2, s3, zero
  JAL zero, bb8
bb29:
  JAL zero, bb6
bb30:
  LA s0, staticvalue
  LW s0, 0(s0)
  LUI s2, 244141
  ADDIW s2, s2, -1529
  ADDW s0, s0, s2
  LA s2, staticvalue
  SW s0, 0(s2)
  JAL zero, bb5
bb31:
  LA s0, staticvalue
  LW s0, 0(s0)
  LUI s1, 244141
  ADDIW s1, s1, -1529
  ADDW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  JAL zero, bb4
