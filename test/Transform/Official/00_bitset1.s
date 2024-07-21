.global rand
.global set
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
rand:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  LA s0, staticvalue
  LW s0, 0(s0)
  LA s1, seed
  LW s1, 0(s1)
  MULW s0, s0, s1
  LA s1, seed
  ADDI s1, s1, 4
  LW s1, 0(s1)
  ADDW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  LA s1, seed
  ADDI s1, s1, 8
  LW s1, 0(s1)
  REMW s0, s0, s1
  LA s2, staticvalue
  SW s0, 0(s2)
  BLT s0, zero, bb2
  # implict jump to bb1
bb1:
  LA s0, staticvalue
  LW s0, 0(s0)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  LA s0, staticvalue
  LW s0, 0(s0)
  ADDW s0, s1, s0
  LA s1, staticvalue
  SW s0, 0(s1)
  JAL zero, bb1
set:
  ADDI sp, sp, -224
  SD ra, 128(sp)
  SD s0, 136(sp)
  SD s1, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s5, 176(sp)
  SD s6, 184(sp)
  SD s7, 192(sp)
  SD s8, 200(sp)
  SD s9, 208(sp)
  SD s10, 216(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 31
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  BNE s2, zero, bb26
  # implict jump to bb5
bb5:
  ADDI s3, zero, 1
  SW s3, 0(sp)
  ADDI s3, sp, 4
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, sp, 8
  ADDI s4, zero, 4
  SW s4, 0(s3)
  ADDI s3, sp, 12
  ADDI s4, zero, 8
  SW s4, 0(s3)
  ADDI s3, sp, 16
  ADDI s4, zero, 16
  SW s4, 0(s3)
  ADDI s3, sp, 20
  ADDI s4, zero, 32
  SW s4, 0(s3)
  ADDI s3, sp, 24
  ADDI s4, zero, 64
  SW s4, 0(s3)
  ADDI s3, sp, 28
  ADDI s4, zero, 128
  SW s4, 0(s3)
  ADDI s3, sp, 32
  ADDI s4, zero, 256
  SW s4, 0(s3)
  ADDI s3, sp, 36
  ADDI s4, zero, 512
  SW s4, 0(s3)
  ADDI s3, sp, 40
  ADDI s4, zero, 1024
  SW s4, 0(s3)
  ADDI s3, zero, 10
  # implict jump to bb6
bb6:
  ADD s4, s3, zero
  SLTI s5, s4, 30
  BNE s5, zero, bb25
  # implict jump to bb7
bb7:
  ADDI s5, zero, 30
  DIVW s5, a1, s5
  LUI s6, 2
  ADDIW s6, s6, 1808
  SLT s6, s5, s6
  XORI s6, s6, 1
  BNE s6, zero, bb24
  # implict jump to bb8
bb8:
  SLLIW s5, s5, 2
  ADD s5, s0, s5
  LW s6, 0(s5)
  ADDI s7, zero, 30
  REMW s7, a1, s7
  SLLIW s7, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s7
  LW s7, 0(s7)
  DIVW s6, s6, s7
  ADDI s8, zero, 2
  REMW s6, s6, s8
  BNE s6, a2, bb11
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  LW s6, 0(s5)
  ADDW s6, s6, s8
  SW s6, 0(s5)
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb11:
  SLTIU s9, s6, 1
  BNE s9, zero, bb20
  # implict jump to bb12
bb12:
  ADD s9, zero, zero
  # implict jump to bb13
bb13:
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb16
  # implict jump to bb14
bb14:
  ADD s6, s9, zero
  # implict jump to bb15
bb15:
  ADD s8, s6, zero
  JAL zero, bb10
bb16:
  SLTIU s10, a2, 1
  BNE s10, zero, bb19
  # implict jump to bb17
bb17:
  ADD s10, s9, zero
  # implict jump to bb18
bb18:
  ADD s6, s10, zero
  JAL zero, bb15
bb19:
  SUBW s7, s9, s7
  ADD s10, s7, zero
  JAL zero, bb18
bb20:
  XORI s10, a2, 1
  SLTIU s10, s10, 1
  BNE s10, zero, bb23
  # implict jump to bb21
bb21:
  ADD s10, zero, zero
  # implict jump to bb22
bb22:
  ADD s9, s10, zero
  JAL zero, bb13
bb23:
  ADD s10, s7, zero
  JAL zero, bb22
bb24:
  ADD a0, zero, zero
  LD ra, 128(sp)
  LD s0, 136(sp)
  LD s1, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s5, 176(sp)
  LD s6, 184(sp)
  LD s7, 192(sp)
  LD s8, 200(sp)
  LD s9, 208(sp)
  LD s10, 216(sp)
  ADDI sp, sp, 224
  JALR zero, 0(ra)
bb25:
  ADDIW s5, s4, 1
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  SLLIW s4, s4, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  LW s4, 0(s4)
  SLLIW s4, s4, 1
  SW s4, 0(s6)
  ADD s3, s5, zero
  JAL zero, bb6
bb26:
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADD s1, s2, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -240
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s9, 16(sp)
  SD s10, 24(sp)
  SD s11, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  # implict jump to bb28
bb28:
  ADD s1, s0, zero
  BLT zero, s1, bb30
  # implict jump to bb29
bb29:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s2, 2
  ADDIW s2, s2, 1808
  ADD a0, zero, s2
  LA s2, a
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s9, 16(sp)
  LD s10, 24(sp)
  LD s11, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb30:
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  LA s2, staticvalue
  LW s2, 0(s2)
  LA s3, seed
  LW s3, 0(s3)
  MULW s2, s2, s3
  LA s4, seed
  ADDI s4, s4, 4
  LW s4, 0(s4)
  ADDW s2, s2, s4
  LA s5, staticvalue
  SW s2, 0(s5)
  LA s5, seed
  ADDI s5, s5, 8
  LW s5, 0(s5)
  REMW s2, s2, s5
  LA s6, staticvalue
  SW s2, 0(s6)
  BLT s2, zero, bb57
  # implict jump to bb31
bb31:
  LA s2, staticvalue
  LW s2, 0(s2)
  LUI s6, 73
  ADDIW s6, s6, 992
  REMW s6, s2, s6
  MULW s2, s2, s3
  ADDW s2, s2, s4
  LA s3, staticvalue
  SW s2, 0(s3)
  REMW s2, s2, s5
  LA s3, staticvalue
  SW s2, 0(s3)
  BLT s2, zero, bb56
  # implict jump to bb32
bb32:
  LA s2, staticvalue
  LW s2, 0(s2)
  ADDI s3, zero, 2
  REMW s2, s2, s3
  ADDI s3, zero, 31
  # implict jump to bb33
bb33:
  ADD s4, s3, zero
  BNE s4, zero, bb55
  # implict jump to bb34
bb34:
  ADDI s5, zero, 1
  SW s5, 104(sp)
  ADDI s5, sp, 108
  ADDI s7, zero, 2
  SW s7, 0(s5)
  ADDI s5, sp, 112
  ADDI s7, zero, 4
  SW s7, 0(s5)
  ADDI s5, sp, 116
  ADDI s7, zero, 8
  SW s7, 0(s5)
  ADDI s5, sp, 120
  ADDI s7, zero, 16
  SW s7, 0(s5)
  ADDI s5, sp, 124
  ADDI s7, zero, 32
  SW s7, 0(s5)
  ADDI s5, sp, 128
  ADDI s7, zero, 64
  SW s7, 0(s5)
  ADDI s5, sp, 132
  ADDI s7, zero, 128
  SW s7, 0(s5)
  ADDI s5, sp, 136
  ADDI s7, zero, 256
  SW s7, 0(s5)
  ADDI s5, sp, 140
  ADDI s7, zero, 512
  SW s7, 0(s5)
  ADDI s5, sp, 144
  ADDI s7, zero, 1024
  SW s7, 0(s5)
  ADDI s5, zero, 10
  # implict jump to bb35
bb35:
  ADD s7, s5, zero
  SLTI s8, s7, 30
  BNE s8, zero, bb54
  # implict jump to bb36
bb36:
  ADDI s8, zero, 30
  DIVW s8, s6, s8
  LUI s9, 2
  ADDIW s9, s9, 1808
  SLT s9, s8, s9
  XORI s9, s9, 1
  BNE s9, zero, bb40
  # implict jump to bb37
bb37:
  SLLIW s8, s8, 2
  LA s9, a
  ADD s8, s9, s8
  LW s9, 0(s8)
  ADDI s10, zero, 30
  REMW s10, s6, s10
  SLLIW s10, s10, 2
  ADDI t5, sp, 104
  ADD s10, t5, s10
  LW s10, 0(s10)
  DIVW s9, s9, s10
  ADDI s11, zero, 2
  REMW s9, s9, s11
  BNE s9, s2, bb41
  # implict jump to bb38
bb38:
  ADD s11, zero, zero
  # implict jump to bb39
bb39:
  LW s9, 0(s8)
  ADDW s9, s9, s11
  SW s9, 0(s8)
  # implict jump to bb40
bb40:
  ADD s0, s1, zero
  JAL zero, bb28
bb41:
  SLTIU ra, s9, 1
  BNE ra, zero, bb50
  # implict jump to bb42
bb42:
  ADD ra, zero, zero
  # implict jump to bb43
bb43:
  XORI s9, s9, 1
  SLTIU s9, s9, 1
  BNE s9, zero, bb46
  # implict jump to bb44
bb44:
  ADD s9, ra, zero
  # implict jump to bb45
bb45:
  ADD s11, s9, zero
  JAL zero, bb39
bb46:
  SLTIU t0, s2, 1
  BNE t0, zero, bb49
  # implict jump to bb47
bb47:
  ADD t0, ra, zero
  # implict jump to bb48
bb48:
  ADD s9, t0, zero
  JAL zero, bb45
bb49:
  SUBW s10, ra, s10
  ADD t0, s10, zero
  JAL zero, bb48
bb50:
  XORI t0, s2, 1
  SLTIU t0, t0, 1
  BNE t0, zero, bb53
  # implict jump to bb51
bb51:
  ADD t0, zero, zero
  # implict jump to bb52
bb52:
  ADD ra, t0, zero
  JAL zero, bb43
bb53:
  ADD t0, s10, zero
  JAL zero, bb52
bb54:
  ADDIW s0, s7, 1
  SLLIW s8, s0, 2
  ADDI t5, sp, 104
  ADD s8, t5, s8
  SLLIW s7, s7, 2
  ADDI t5, sp, 104
  ADD s7, t5, s7
  LW s7, 0(s7)
  SLLIW s7, s7, 1
  SW s7, 0(s8)
  ADD s5, s0, zero
  JAL zero, bb35
bb55:
  ADDI s0, zero, 1
  SUBW s0, s4, s0
  SLLIW s4, s0, 2
  ADDI t5, sp, 104
  ADD s4, t5, s4
  SW zero, 0(s4)
  ADD s3, s0, zero
  JAL zero, bb33
bb56:
  LA s2, staticvalue
  LW s2, 0(s2)
  ADDW s2, s5, s2
  LA s3, staticvalue
  SW s2, 0(s3)
  JAL zero, bb32
bb57:
  LA s2, staticvalue
  LW s2, 0(s2)
  ADDW s2, s5, s2
  LA s6, staticvalue
  SW s2, 0(s6)
  JAL zero, bb31
