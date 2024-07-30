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
  ADDI sp, sp, -240
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD s10, 96(sp)
  SD s11, 104(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s2, 2
  ADDIW s2, s2, 1808
  ADD a0, zero, s2
  LA s2, a
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD s10, 96(sp)
  LD s11, 104(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  LA s2, staticvalue
  LW s2, 0(s2)
  LUI s3, 4876
  ADDIW s3, s3, -865
  MULW s2, s2, s3
  LUI s3, 4878
  ADDIW s3, s3, 725
  ADDW s2, s2, s3
  LA s3, staticvalue
  SW s2, 0(s3)
  LUI s3, 244141
  ADDIW s3, s3, -1529
  REMW s2, s2, s3
  LA s3, staticvalue
  SW s2, 0(s3)
  BLT s2, zero, bb31
  # implict jump to bb4
bb4:
  LA s2, staticvalue
  LW s2, 0(s2)
  LUI s3, 73
  ADDIW s3, s3, 992
  REMW t4, s2, s3
  SW t4, 4(sp)
  LUI s4, 4876
  ADDIW s4, s4, -865
  MULW s2, s2, s4
  LUI s4, 4878
  ADDIW s4, s4, 725
  ADDW s2, s2, s4
  LA s4, staticvalue
  SW s2, 0(s4)
  LUI s4, 244141
  ADDIW s4, s4, -1529
  REMW s2, s2, s4
  LA s4, staticvalue
  SW s2, 0(s4)
  BLT s2, zero, bb30
  # implict jump to bb5
bb5:
  LA s2, staticvalue
  LW s2, 0(s2)
  ADDI s4, zero, 2
  REMW t4, s2, s4
  SW t4, 0(sp)
  ADDI s4, zero, 31
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SLLIW s6, s5, 2
  ADDI t5, sp, 112
  ADD s6, t5, s6
  SW zero, 0(s6)
  BNE s5, zero, bb29
  # implict jump to bb7
bb7:
  ADDI s6, zero, 1
  SW s6, 112(sp)
  ADDI s6, zero, 2
  SW s6, 116(sp)
  ADDI s6, zero, 4
  SW s6, 120(sp)
  ADDI s6, zero, 8
  SW s6, 124(sp)
  ADDI s6, zero, 16
  SW s6, 128(sp)
  ADDI s6, zero, 32
  SW s6, 132(sp)
  ADDI s6, zero, 64
  SW s6, 136(sp)
  ADDI s6, zero, 128
  SW s6, 140(sp)
  ADDI s6, zero, 256
  SW s6, 144(sp)
  ADDI s6, zero, 512
  SW s6, 148(sp)
  ADDI s6, zero, 1024
  SW s6, 152(sp)
  ADDI s6, zero, 10
  # implict jump to bb8
bb8:
  ADD s7, s6, zero
  ADDIW s8, s7, 1
  SLLIW s9, s8, 2
  ADDI t5, sp, 112
  ADD s9, t5, s9
  SLLIW s7, s7, 2
  ADDI t5, sp, 112
  ADD s7, t5, s7
  LW s7, 0(s7)
  SLLIW s7, s7, 1
  SW s7, 0(s9)
  SLTI s7, s8, 30
  BNE s7, zero, bb28
  # implict jump to bb9
bb9:
  ADDI s7, zero, 30
  LW t4, 4(sp)
  DIVW s7, t4, s7
  LUI s9, 2
  ADDIW s9, s9, 1808
  SLT s9, s7, s9
  XORI s9, s9, 1
  BNE s9, zero, bb13
  # implict jump to bb10
bb10:
  SLLIW s7, s7, 2
  LA s9, a
  ADD s7, s9, s7
  LW s9, 0(s7)
  ADDI s10, zero, 30
  LW t4, 4(sp)
  REMW s10, t4, s10
  SLLIW s10, s10, 2
  ADDI t5, sp, 112
  ADD s10, t5, s10
  LW s10, 0(s10)
  DIVW s9, s9, s10
  ADDI s11, zero, 2
  REMW s9, s9, s11
  LW t4, 0(sp)
  BNE s9, t4, bb15
  # implict jump to bb11
bb11:
  ADD s11, zero, zero
  # implict jump to bb12
bb12:
  LW s2, 0(s7)
  ADDW s2, s2, s11
  SW s2, 0(s7)
  # implict jump to bb13
bb13:
  BLT zero, s1, bb14
  JAL zero, bb1
bb14:
  ADD s0, s1, zero
  JAL zero, bb3
bb15:
  SLTIU s2, s9, 1
  BNE s2, zero, bb24
  # implict jump to bb16
bb16:
  ADD s2, zero, zero
  # implict jump to bb17
bb17:
  XORI s3, s9, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb20
  # implict jump to bb18
bb18:
  ADD s3, s2, zero
  # implict jump to bb19
bb19:
  ADD s11, s3, zero
  JAL zero, bb12
bb20:
  LW t4, 0(sp)
  SLTIU s9, t4, 1
  BNE s9, zero, bb23
  # implict jump to bb21
bb21:
  ADD s9, s2, zero
  # implict jump to bb22
bb22:
  ADD s3, s9, zero
  JAL zero, bb19
bb23:
  SUBW s2, s2, s10
  ADD s9, s2, zero
  JAL zero, bb22
bb24:
  LW t4, 0(sp)
  XORI s3, t4, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb27
  # implict jump to bb25
bb25:
  ADD s3, zero, zero
  # implict jump to bb26
bb26:
  ADD s2, s3, zero
  JAL zero, bb17
bb27:
  ADD s3, s10, zero
  JAL zero, bb26
bb28:
  ADD s6, s8, zero
  JAL zero, bb8
bb29:
  ADD s4, s5, zero
  JAL zero, bb6
bb30:
  LA s2, staticvalue
  LW s2, 0(s2)
  LUI s4, 244141
  ADDIW s4, s4, -1529
  ADDW s2, s2, s4
  LA s4, staticvalue
  SW s2, 0(s4)
  JAL zero, bb5
bb31:
  LA s2, staticvalue
  LW s2, 0(s2)
  LUI s3, 244141
  ADDIW s3, s3, -1529
  ADDW s2, s2, s3
  LA s3, staticvalue
  SW s2, 0(s3)
  JAL zero, bb4
