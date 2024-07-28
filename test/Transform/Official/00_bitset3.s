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
  ADD s2, a0, zero
  XORI s3, zero, 31
  BNE s3, zero, bb28
  # implict jump to bb4
bb4:
  ADDI s4, zero, 1
  SW s4, 0(sp)
  ADDI s4, sp, 4
  ADDI s5, zero, 2
  SW s5, 0(s4)
  ADDI s4, sp, 8
  ADDI s5, zero, 4
  SW s5, 0(s4)
  ADDI s4, sp, 12
  ADDI s5, zero, 8
  SW s5, 0(s4)
  ADDI s4, sp, 16
  ADDI s5, zero, 16
  SW s5, 0(s4)
  ADDI s4, sp, 20
  ADDI s5, zero, 32
  SW s5, 0(s4)
  ADDI s4, sp, 24
  ADDI s5, zero, 64
  SW s5, 0(s4)
  ADDI s4, sp, 28
  ADDI s5, zero, 128
  SW s5, 0(s4)
  ADDI s4, sp, 32
  ADDI s5, zero, 256
  SW s5, 0(s4)
  ADDI s4, sp, 36
  ADDI s5, zero, 512
  SW s5, 0(s4)
  ADDI s4, sp, 40
  ADDI s5, zero, 1024
  SW s5, 0(s4)
  ADDI s4, zero, 10
  SLTI s4, s4, 30
  BNE s4, zero, bb23
  # implict jump to bb5
bb5:
  ADDI s5, zero, 30
  DIVW s5, a1, s5
  LUI s6, 2
  ADDIW s6, s6, 1808
  SLT s6, s5, s6
  XORI s6, s6, 1
  BNE s6, zero, bb22
  # implict jump to bb6
bb6:
  SLLIW s5, s5, 2
  ADD s5, s2, s5
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
  BNE s6, a2, bb9
  # implict jump to bb7
bb7:
  ADD s8, zero, zero
  # implict jump to bb8
bb8:
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
bb9:
  SLTIU s9, s6, 1
  BNE s9, zero, bb18
  # implict jump to bb10
bb10:
  ADD s9, zero, zero
  # implict jump to bb11
bb11:
  XORI s6, s6, 1
  SLTIU s6, s6, 1
  BNE s6, zero, bb14
  # implict jump to bb12
bb12:
  ADD s6, s9, zero
  # implict jump to bb13
bb13:
  ADD s8, s6, zero
  JAL zero, bb8
bb14:
  SLTIU s10, a2, 1
  BNE s10, zero, bb17
  # implict jump to bb15
bb15:
  ADD s10, s9, zero
  # implict jump to bb16
bb16:
  ADD s6, s10, zero
  JAL zero, bb13
bb17:
  SUBW s7, s9, s7
  ADD s10, s7, zero
  JAL zero, bb16
bb18:
  XORI s10, a2, 1
  SLTIU s10, s10, 1
  BNE s10, zero, bb21
  # implict jump to bb19
bb19:
  ADD s10, zero, zero
  # implict jump to bb20
bb20:
  ADD s9, s10, zero
  JAL zero, bb11
bb21:
  ADD s10, s7, zero
  JAL zero, bb20
bb22:
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
bb23:
  ADDI s4, zero, 10
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  ADD s5, s4, zero
  ADDIW s1, s5, 1
  SLLIW s6, s1, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  SLLIW s5, s5, 2
  ADDI t5, sp, 0
  ADD s5, t5, s5
  LW s5, 0(s5)
  SLLIW s5, s5, 1
  SW s5, 0(s6)
  # implict jump to bb26
bb26:
  SLTI s5, s1, 30
  BNE s5, zero, bb27
  JAL zero, bb5
bb27:
  ADD s4, s1, zero
  JAL zero, bb25
bb28:
  ADDI s3, zero, 31
  # implict jump to bb29
bb29:
  # implict jump to bb30
bb30:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s0, s4, s5
  SLLIW s4, s0, 2
  ADDI t5, sp, 0
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb31
bb31:
  BNE s0, zero, bb32
  JAL zero, bb4
bb32:
  ADD s3, s0, zero
  JAL zero, bb30
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
  SD s8, 88(sp)
  SD s7, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  CALL getint
  ADD s6, a0, zero
  CALL getint
  ADD s7, a0, zero
  LA s8, staticvalue
  SW s7, 0(s8)
  ADDI a0, zero, 56
  CALL _sysy_starttime
  BLT zero, s6, bb35
  # implict jump to bb34
bb34:
  ADDI a0, zero, 64
  CALL _sysy_stoptime
  LUI s0, 2
  ADDIW s0, s0, 1808
  ADD a0, zero, s0
  LA s0, a
  ADD a1, s0, zero
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
  LD s8, 88(sp)
  LD s7, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb35:
  # implict jump to bb36
bb36:
  LA s7, seed
  LW s2, 0(s7)
  LA s7, seed
  LW t4, 4(s7)
  SW t4, 16(sp)
  LA s7, seed
  LW t4, 8(s7)
  SW t4, 12(sp)
  # implict jump to bb37
bb37:
  ADD s7, s6, zero
  ADDI s8, zero, 1
  SUBW t4, s7, s8
  SW t4, 8(sp)
  LA s7, staticvalue
  LW s7, 0(s7)
  MULW s7, s7, s2
  LW t4, 16(sp)
  ADDW s7, s7, t4
  LA s8, staticvalue
  SW s7, 0(s8)
  LW t4, 12(sp)
  REMW s7, s7, t4
  LA s8, staticvalue
  SW s7, 0(s8)
  BLT s7, zero, bb72
  # implict jump to bb38
bb38:
  LA s7, staticvalue
  LW s7, 0(s7)
  LUI s8, 73
  ADDIW s8, s8, 992
  REMW t4, s7, s8
  SW t4, 4(sp)
  MULW s7, s7, s2
  LW t4, 16(sp)
  ADDW s7, s7, t4
  LA s9, staticvalue
  SW s7, 0(s9)
  LW t4, 12(sp)
  REMW s7, s7, t4
  LA s9, staticvalue
  SW s7, 0(s9)
  BLT s7, zero, bb71
  # implict jump to bb39
bb39:
  LA s7, staticvalue
  LW s7, 0(s7)
  ADDI s9, zero, 2
  REMW t4, s7, s9
  SW t4, 0(sp)
  XORI s9, zero, 31
  BNE s9, zero, bb66
  # implict jump to bb40
bb40:
  ADDI s10, zero, 1
  SW s10, 128(sp)
  ADDI s10, sp, 132
  ADDI s11, zero, 2
  SW s11, 0(s10)
  ADDI s10, sp, 136
  ADDI s11, zero, 4
  SW s11, 0(s10)
  ADDI s10, sp, 140
  ADDI s11, zero, 8
  SW s11, 0(s10)
  ADDI s10, sp, 144
  ADDI s11, zero, 16
  SW s11, 0(s10)
  ADDI s10, sp, 148
  ADDI s11, zero, 32
  SW s11, 0(s10)
  ADDI s10, sp, 152
  ADDI s11, zero, 64
  SW s11, 0(s10)
  ADDI s10, sp, 156
  ADDI s11, zero, 128
  SW s11, 0(s10)
  ADDI s10, sp, 160
  ADDI s11, zero, 256
  SW s11, 0(s10)
  ADDI s10, sp, 164
  ADDI s11, zero, 512
  SW s11, 0(s10)
  ADDI s10, sp, 168
  ADDI s11, zero, 1024
  SW s11, 0(s10)
  ADDI s10, zero, 10
  SLTI s10, s10, 30
  BNE s10, zero, bb61
  # implict jump to bb41
bb41:
  ADDI s7, zero, 30
  LW t4, 4(sp)
  DIVW s7, t4, s7
  LUI s11, 2
  ADDIW s11, s11, 1808
  SLT s11, s7, s11
  XORI s11, s11, 1
  BNE s11, zero, bb45
  # implict jump to bb42
bb42:
  SLLIW s7, s7, 2
  LA s11, a
  ADD s7, s11, s7
  LW s11, 0(s7)
  ADDI s8, zero, 30
  LW t4, 4(sp)
  REMW s8, t4, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 128
  ADD s8, t5, s8
  LW s8, 0(s8)
  DIVW s11, s11, s8
  ADDI s0, zero, 2
  REMW s0, s11, s0
  LW t4, 0(sp)
  BNE s0, t4, bb48
  # implict jump to bb43
bb43:
  ADD s11, zero, zero
  # implict jump to bb44
bb44:
  LW s0, 0(s7)
  ADDW s0, s0, s11
  SW s0, 0(s7)
  # implict jump to bb45
bb45:
  # implict jump to bb46
bb46:
  LW t4, 8(sp)
  BLT zero, t4, bb47
  JAL zero, bb34
bb47:
  LW t4, 8(sp)
  ADD s6, t4, zero
  JAL zero, bb37
bb48:
  SLTIU s1, s0, 1
  BNE s1, zero, bb57
  # implict jump to bb49
bb49:
  ADD s1, zero, zero
  # implict jump to bb50
bb50:
  XORI s0, s0, 1
  SLTIU s0, s0, 1
  BNE s0, zero, bb53
  # implict jump to bb51
bb51:
  ADD s0, s1, zero
  # implict jump to bb52
bb52:
  ADD s11, s0, zero
  JAL zero, bb44
bb53:
  LW t4, 0(sp)
  SLTIU s3, t4, 1
  BNE s3, zero, bb56
  # implict jump to bb54
bb54:
  ADD s3, s1, zero
  # implict jump to bb55
bb55:
  ADD s0, s3, zero
  JAL zero, bb52
bb56:
  SUBW s1, s1, s8
  ADD s3, s1, zero
  JAL zero, bb55
bb57:
  LW t4, 0(sp)
  XORI s3, t4, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb60
  # implict jump to bb58
bb58:
  ADD s3, zero, zero
  # implict jump to bb59
bb59:
  ADD s1, s3, zero
  JAL zero, bb50
bb60:
  ADD s3, s8, zero
  JAL zero, bb59
bb61:
  ADDI s10, zero, 10
  # implict jump to bb62
bb62:
  # implict jump to bb63
bb63:
  ADD s11, s10, zero
  ADDIW s4, s11, 1
  SLLIW s7, s4, 2
  ADDI t5, sp, 128
  ADD s7, t5, s7
  SLLIW s11, s11, 2
  ADDI t5, sp, 128
  ADD s11, t5, s11
  LW s11, 0(s11)
  SLLIW s11, s11, 1
  SW s11, 0(s7)
  # implict jump to bb64
bb64:
  SLTI s7, s4, 30
  BNE s7, zero, bb65
  JAL zero, bb41
bb65:
  ADD s10, s4, zero
  JAL zero, bb63
bb66:
  ADDI s9, zero, 31
  # implict jump to bb67
bb67:
  # implict jump to bb68
bb68:
  ADD s10, s9, zero
  ADDI s11, zero, 1
  SUBW s5, s10, s11
  SLLIW s10, s5, 2
  ADDI t5, sp, 128
  ADD s10, t5, s10
  SW zero, 0(s10)
  # implict jump to bb69
bb69:
  BNE s5, zero, bb70
  JAL zero, bb40
bb70:
  ADD s9, s5, zero
  JAL zero, bb68
bb71:
  LA s7, staticvalue
  LW s7, 0(s7)
  LW t4, 12(sp)
  ADDW s7, t4, s7
  LA s9, staticvalue
  SW s7, 0(s9)
  JAL zero, bb39
bb72:
  LA s7, staticvalue
  LW s7, 0(s7)
  LW t4, 12(sp)
  ADDW s7, t4, s7
  LA s8, staticvalue
  SW s7, 0(s8)
  JAL zero, bb38
