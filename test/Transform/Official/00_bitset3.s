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
  LW s1, 4(s1)
  ADDW s0, s0, s1
  LA s1, staticvalue
  SW s0, 0(s1)
  LA s1, seed
  LW s1, 8(s1)
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
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  SW zero, 0(s3)
  BNE s2, zero, bb26
  # implict jump to bb5
bb5:
  ADDI s3, zero, 1
  SW s3, 0(sp)
  ADDI s3, zero, 2
  SW s3, 4(sp)
  ADDI s3, zero, 4
  SW s3, 8(sp)
  ADDI s3, zero, 8
  SW s3, 12(sp)
  ADDI s3, zero, 16
  SW s3, 16(sp)
  ADDI s3, zero, 32
  SW s3, 20(sp)
  ADDI s3, zero, 64
  SW s3, 24(sp)
  ADDI s3, zero, 128
  SW s3, 28(sp)
  ADDI s3, zero, 256
  SW s3, 32(sp)
  ADDI s3, zero, 512
  SW s3, 36(sp)
  ADDI s3, zero, 1024
  SW s3, 40(sp)
  ADDI s3, zero, 10
  # implict jump to bb6
bb6:
  ADD s4, s3, zero
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
  SLTI s4, s5, 30
  BNE s4, zero, bb25
  # implict jump to bb7
bb7:
  ADDI s4, zero, 30
  DIVW s4, a1, s4
  LUI s6, 2
  ADDIW s6, s6, 1808
  SLT s6, s4, s6
  XORI s6, s6, 1
  BNE s6, zero, bb24
  # implict jump to bb8
bb8:
  SLLIW s4, s4, 2
  ADD s4, s0, s4
  LW s6, 0(s4)
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
  LW s6, 0(s4)
  ADDW s6, s6, s8
  SW s6, 0(s4)
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
  ADD s3, s5, zero
  JAL zero, bb6
bb26:
  ADD s1, s2, zero
  JAL zero, bb4
main:
  ADDI sp, sp, -256
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  LA s2, staticvalue
  SW s1, 0(s2)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  BLT zero, s0, bb29
  # implict jump to bb28
bb28:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s2, 2
  ADDIW s2, s2, 1808
  ADD a0, zero, s2
  LA s2, a
  ADD a1, s2, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb29:
  LA s1, seed
  LW s1, 0(s1)
  LA s2, seed
  LW t4, 4(s2)
  SW t4, 0(sp)
  LA s3, seed
  LW t4, 8(s3)
  SW t4, 4(sp)
  # implict jump to bb30
bb30:
  ADD s4, s0, zero
  ADDI s5, zero, 1
  SUBW t4, s4, s5
  SW t4, 8(sp)
  LA s5, staticvalue
  LW s5, 0(s5)
  MULW s5, s5, s1
  LW t4, 0(sp)
  ADDW s5, s5, t4
  LA s6, staticvalue
  SW s5, 0(s6)
  LW t4, 4(sp)
  REMW s5, s5, t4
  LA s6, staticvalue
  SW s5, 0(s6)
  BLT s5, zero, bb58
  # implict jump to bb31
bb31:
  LA s5, staticvalue
  LW s5, 0(s5)
  LUI s6, 73
  ADDIW s6, s6, 992
  REMW t4, s5, s6
  SW t4, 12(sp)
  MULW s5, s5, s1
  LW t4, 0(sp)
  ADDW s5, s5, t4
  LA s7, staticvalue
  SW s5, 0(s7)
  LW t4, 4(sp)
  REMW s5, s5, t4
  LA s7, staticvalue
  SW s5, 0(s7)
  BLT s5, zero, bb57
  # implict jump to bb32
bb32:
  LA s5, staticvalue
  LW s5, 0(s5)
  ADDI s7, zero, 2
  REMW t4, s5, s7
  SW t4, 16(sp)
  ADDI s7, zero, 31
  # implict jump to bb33
bb33:
  ADD s8, s7, zero
  ADDI s9, zero, 1
  SUBW s8, s8, s9
  SLLIW s9, s8, 2
  ADDI t5, sp, 128
  ADD s9, t5, s9
  SW zero, 0(s9)
  BNE s8, zero, bb56
  # implict jump to bb34
bb34:
  ADDI s9, zero, 1
  SW s9, 128(sp)
  ADDI s9, zero, 2
  SW s9, 132(sp)
  ADDI s9, zero, 4
  SW s9, 136(sp)
  ADDI s9, zero, 8
  SW s9, 140(sp)
  ADDI s9, zero, 16
  SW s9, 144(sp)
  ADDI s9, zero, 32
  SW s9, 148(sp)
  ADDI s9, zero, 64
  SW s9, 152(sp)
  ADDI s9, zero, 128
  SW s9, 156(sp)
  ADDI s9, zero, 256
  SW s9, 160(sp)
  ADDI s9, zero, 512
  SW s9, 164(sp)
  ADDI s9, zero, 1024
  SW s9, 168(sp)
  ADDI s9, zero, 10
  # implict jump to bb35
bb35:
  ADD s10, s9, zero
  ADDIW s11, s10, 1
  SLLIW s5, s11, 2
  ADDI t5, sp, 128
  ADD s5, t5, s5
  SLLIW s10, s10, 2
  ADDI t5, sp, 128
  ADD s10, t5, s10
  LW s10, 0(s10)
  SLLIW s10, s10, 1
  SW s10, 0(s5)
  SLTI s5, s11, 30
  BNE s5, zero, bb55
  # implict jump to bb36
bb36:
  ADDI s5, zero, 30
  LW t4, 12(sp)
  DIVW s5, t4, s5
  LUI s10, 2
  ADDIW s10, s10, 1808
  SLT s10, s5, s10
  XORI s10, s10, 1
  BNE s10, zero, bb40
  # implict jump to bb37
bb37:
  SLLIW s5, s5, 2
  LA s10, a
  ADD s5, s10, s5
  LW s10, 0(s5)
  ADDI s6, zero, 30
  LW t4, 12(sp)
  REMW s6, t4, s6
  SLLIW s6, s6, 2
  ADDI t5, sp, 128
  ADD s6, t5, s6
  LW s6, 0(s6)
  DIVW s10, s10, s6
  ADDI s4, zero, 2
  REMW s4, s10, s4
  LW t4, 16(sp)
  BNE s4, t4, bb42
  # implict jump to bb38
bb38:
  ADD s10, zero, zero
  # implict jump to bb39
bb39:
  LW s2, 0(s5)
  ADDW s2, s2, s10
  SW s2, 0(s5)
  # implict jump to bb40
bb40:
  LW t4, 8(sp)
  BLT zero, t4, bb41
  JAL zero, bb28
bb41:
  LW t4, 8(sp)
  ADD s0, t4, zero
  JAL zero, bb30
bb42:
  SLTIU s3, s4, 1
  BNE s3, zero, bb51
  # implict jump to bb43
bb43:
  ADD s3, zero, zero
  # implict jump to bb44
bb44:
  XORI s2, s4, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb47
  # implict jump to bb45
bb45:
  ADD s2, s3, zero
  # implict jump to bb46
bb46:
  ADD s10, s2, zero
  JAL zero, bb39
bb47:
  LW t4, 16(sp)
  SLTIU s4, t4, 1
  BNE s4, zero, bb50
  # implict jump to bb48
bb48:
  ADD s4, s3, zero
  # implict jump to bb49
bb49:
  ADD s2, s4, zero
  JAL zero, bb46
bb50:
  SUBW s3, s3, s6
  ADD s4, s3, zero
  JAL zero, bb49
bb51:
  LW t4, 16(sp)
  XORI s2, t4, 1
  SLTIU s2, s2, 1
  BNE s2, zero, bb54
  # implict jump to bb52
bb52:
  ADD s2, zero, zero
  # implict jump to bb53
bb53:
  ADD s3, s2, zero
  JAL zero, bb44
bb54:
  ADD s2, s6, zero
  JAL zero, bb53
bb55:
  ADD s9, s11, zero
  JAL zero, bb35
bb56:
  ADD s7, s8, zero
  JAL zero, bb33
bb57:
  LA s5, staticvalue
  LW s5, 0(s5)
  LW t4, 4(sp)
  ADDW s5, t4, s5
  LA s7, staticvalue
  SW s5, 0(s7)
  JAL zero, bb32
bb58:
  LA s5, staticvalue
  LW s5, 0(s5)
  LW t4, 4(sp)
  ADDW s5, t4, s5
  LA s6, staticvalue
  SW s5, 0(s6)
  JAL zero, bb31
