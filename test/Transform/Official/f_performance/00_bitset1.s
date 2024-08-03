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
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb2:
  ADD a0, s1, zero
  # implict jump to bb3
bb3:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  LA a0, staticvalue
  LW s1, 0(a0)
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
  BLT s1, zero, bb31
  # implict jump to bb4
bb4:
  LA a0, staticvalue
  LW s1, 0(a0)
  LUI a0, 73
  ADDIW a0, a0, 992
  REMW s2, s1, a0
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
  BLT s1, zero, bb30
  # implict jump to bb5
bb5:
  LA a0, staticvalue
  LW s1, 0(a0)
  ADDI a0, zero, 2
  REMW s1, s1, a0
  ADDI a0, zero, 31
  # implict jump to bb6
bb6:
  ADD s3, a0, zero
  ADDI a0, zero, 1
  SUBW s3, s3, a0
  SLLIW a0, s3, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s3, zero, bb29
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
  ADDI a0, zero, 10
  # implict jump to bb8
bb8:
  ADDIW s3, a0, 1
  SLLIW s4, s3, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 1
  SW a0, 0(s4)
  SLTI a0, s3, 30
  BNE a0, zero, bb28
  # implict jump to bb9
bb9:
  ADDI a0, zero, 30
  DIVW s3, s2, a0
  LUI a0, 2
  ADDIW a0, a0, 1808
  SLT a0, s3, a0
  XORI a0, a0, 1
  BNE a0, zero, bb13
  # implict jump to bb10
bb10:
  SLLIW s3, s3, 2
  LA a0, a
  ADD s3, a0, s3
  LW s5, 0(s3)
  ADDI a0, zero, 30
  REMW a0, s2, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s4, 0(a0)
  DIVW s2, s5, s4
  ADDI a0, zero, 2
  REMW s2, s2, a0
  BNE s2, s1, bb15
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  # implict jump to bb12
bb12:
  ADD s1, a0, zero
  LW a0, 0(s3)
  ADDW a0, a0, s1
  SW a0, 0(s3)
  # implict jump to bb13
bb13:
  BLT zero, s0, bb14
  JAL zero, bb1
bb14:
  ADD a0, s0, zero
  JAL zero, bb3
bb15:
  SLTIU a0, s2, 1
  BNE a0, zero, bb24
  # implict jump to bb16
bb16:
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  ADD s5, a0, zero
  XORI a0, s2, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb20
  # implict jump to bb18
bb18:
  ADD a0, s5, zero
  # implict jump to bb19
bb19:
  JAL zero, bb12
bb20:
  SLTIU a0, s1, 1
  BNE a0, zero, bb23
  # implict jump to bb21
bb21:
  ADD a0, s5, zero
  # implict jump to bb22
bb22:
  JAL zero, bb19
bb23:
  SUBW a0, s5, s4
  JAL zero, bb22
bb24:
  XORI a0, s1, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb25
bb25:
  ADD a0, zero, zero
  # implict jump to bb26
bb26:
  JAL zero, bb17
bb27:
  ADD a0, s4, zero
  JAL zero, bb26
bb28:
  ADD a0, s3, zero
  JAL zero, bb8
bb29:
  ADD a0, s3, zero
  JAL zero, bb6
bb30:
  LA a0, staticvalue
  LW s1, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  ADDW s1, s1, a0
  LA a0, staticvalue
  SW s1, 0(a0)
  JAL zero, bb5
bb31:
  LA a0, staticvalue
  LW s1, 0(a0)
  LUI a0, 244141
  ADDIW a0, a0, -1529
  ADDW s1, s1, a0
  LA a0, staticvalue
  SW s1, 0(a0)
  JAL zero, bb4
