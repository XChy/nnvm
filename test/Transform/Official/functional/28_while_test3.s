.global main
.global EightWhile
.section .bss




.section .data
e:
.word 0x00000000
f:
.word 0x00000000
h:
.word 0x00000000
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -144
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD ra, 56(sp)
  SD s0, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  LA s10, g
  ADDI s11, zero, 1
  SW s11, 0(s10)
  LA s10, h
  ADDI s11, zero, 2
  SW s11, 0(s10)
  LA s10, e
  ADDI s11, zero, 4
  SW s11, 0(s10)
  LA s10, f
  ADDI s11, zero, 6
  SW s11, 0(s10)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb3
  # implict jump to bb1
bb1:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb2
bb2:
  ADDW s2, s11, t1
  ADDW s2, s10, s2
  ADDW s2, s2, t0
  LA s3, e
  LW s3, 0(s3)
  ADDW s3, s3, t1
  LA s5, g
  LW s5, 0(s5)
  SUBW s3, s3, s5
  LA s5, h
  LW s5, 0(s5)
  ADDW s3, s3, s5
  SUBW s2, s2, s3
  ADD a0, s2, zero
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD ra, 56(sp)
  LD s0, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb3:
  ADDI t2, zero, 10
  ADDI a0, zero, 7
  ADDI a1, zero, 6
  ADDI a2, zero, 5
  # implict jump to bb4
bb4:
  ADD t4, a0, zero
  SW t4, 32(sp)
  # implict jump to bb5
bb5:
  ADD a3, t2, zero
  LW t4, 32(sp)
  ADD a4, t4, zero
  ADD a5, a1, zero
  ADD a6, a2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb11
  # implict jump to bb6
bb6:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb7
bb7:
  ADD s0, t6, zero
  ADD s4, a7, zero
  ADDI s2, zero, 2
  SUBW s6, a6, s2
  # implict jump to bb8
bb8:
  LW t4, 8(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb10
  # implict jump to bb9
bb9:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s6, zero
  ADD t0, s4, zero
  ADD t1, s0, zero
  JAL zero, bb2
bb10:
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a1, s6, zero
  ADD t4, s4, zero
  SW t4, 32(sp)
  ADD t2, s0, zero
  JAL zero, bb5
bb11:
  # implict jump to bb12
bb12:
  # implict jump to bb13
bb13:
  ADD s3, a3, zero
  ADD s7, a4, zero
  ADD s2, a5, zero
  ADDIW t4, s2, 1
  SW t4, 4(sp)
  XORI s2, s7, 7
  SLTIU s2, s2, 1
  BNE s2, zero, bb19
  # implict jump to bb14
bb14:
  ADD s2, s7, zero
  ADD s5, s3, zero
  # implict jump to bb15
bb15:
  ADD s9, s5, zero
  ADDIW s1, s2, 1
  # implict jump to bb16
bb16:
  LW t4, 4(sp)
  SLTI s2, t4, 10
  BNE s2, zero, bb18
  # implict jump to bb17
bb17:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s1, zero
  ADD t6, s9, zero
  JAL zero, bb7
bb18:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s1, zero
  ADD a3, s9, zero
  JAL zero, bb13
bb19:
  # implict jump to bb20
bb20:
  ADD t4, s7, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 16(sp)
  # implict jump to bb21
bb21:
  LW t4, 16(sp)
  ADD s3, t4, zero
  LW t4, 24(sp)
  ADD s8, t4, zero
  ADDI s7, zero, 1
  SUBW t4, s8, s7
  SW t4, 0(sp)
  SLTI s7, s3, 20
  BNE s7, zero, bb27
  # implict jump to bb22
bb22:
  ADD s7, s3, zero
  # implict jump to bb23
bb23:
  ADDI s3, zero, 1
  SUBW t4, s7, s3
  SW t4, 20(sp)
  # implict jump to bb24
bb24:
  LW t4, 0(sp)
  XORI s3, t4, 7
  SLTIU s3, s3, 1
  BNE s3, zero, bb26
  # implict jump to bb25
bb25:
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 20(sp)
  ADD s5, t4, zero
  JAL zero, bb15
bb26:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb21
bb27:
  # implict jump to bb28
bb28:
  ADD t4, s3, zero
  SW t4, 28(sp)
  # implict jump to bb29
bb29:
  LW t4, 28(sp)
  ADD s8, t4, zero
  ADDIW t4, s8, 3
  SW t4, 12(sp)
  LA s8, e
  LW s8, 0(s8)
  ADDI s3, zero, 1
  BLT s3, s8, bb34
  # implict jump to bb30
bb30:
  LA s3, e
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s8, e
  SW s3, 0(s8)
  # implict jump to bb31
bb31:
  LW t4, 12(sp)
  SLTI s3, t4, 20
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
  LW t4, 12(sp)
  ADD s7, t4, zero
  JAL zero, bb23
bb33:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb29
bb34:
  # implict jump to bb35
bb35:
  LA s3, e
  LW s3, 0(s3)
  ADDI s8, zero, 1
  SUBW s3, s3, s8
  LA s8, e
  SW s3, 0(s8)
  LA s3, f
  LW s3, 0(s3)
  ADDI s8, zero, 2
  BLT s8, s3, bb38
  # implict jump to bb36
bb36:
  LA s3, f
  LW s3, 0(s3)
  ADDIW s3, s3, 1
  LA s8, f
  SW s3, 0(s8)
  # implict jump to bb37
bb37:
  LA s3, e
  LW s3, 0(s3)
  ADDI s8, zero, 1
  BLT s8, s3, bb35
  JAL zero, bb30
bb38:
  # implict jump to bb39
bb39:
  LA s3, f
  LW s3, 0(s3)
  ADDI s8, zero, 2
  SUBW s3, s3, s8
  LA s8, f
  SW s3, 0(s8)
  LA s3, g
  LW s3, 0(s3)
  SLTI s3, s3, 3
  BNE s3, zero, bb42
  # implict jump to bb40
bb40:
  LA s3, g
  LW s3, 0(s3)
  ADDI s8, zero, 8
  SUBW s3, s3, s8
  LA s8, g
  SW s3, 0(s8)
  # implict jump to bb41
bb41:
  LA s3, f
  LW s3, 0(s3)
  ADDI s8, zero, 2
  BLT s8, s3, bb39
  JAL zero, bb36
bb42:
  # implict jump to bb43
bb43:
  LA s3, g
  LW s3, 0(s3)
  ADDIW s3, s3, 10
  LA s8, g
  SW s3, 0(s8)
  LA s3, h
  LW s3, 0(s3)
  SLTI s3, s3, 10
  BNE s3, zero, bb46
  # implict jump to bb44
bb44:
  LA s3, h
  LW s3, 0(s3)
  ADDI s8, zero, 1
  SUBW s3, s3, s8
  LA s8, h
  SW s3, 0(s8)
  # implict jump to bb45
bb45:
  LA s3, g
  LW s3, 0(s3)
  SLTI s3, s3, 3
  BNE s3, zero, bb43
  JAL zero, bb40
bb46:
  # implict jump to bb47
bb47:
  LA s3, h
  LW s3, 0(s3)
  ADDIW s3, s3, 8
  LA s8, h
  SW s3, 0(s8)
  # implict jump to bb48
bb48:
  LA s3, h
  LW s3, 0(s3)
  SLTI s3, s3, 10
  BNE s3, zero, bb47
  JAL zero, bb44
EightWhile:
  ADDI sp, sp, -144
  SD s2, 40(sp)
  SD ra, 48(sp)
  SD s0, 56(sp)
  SD s1, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADDI s10, zero, 5
  SLTI s10, s10, 20
  BNE s10, zero, bb52
  # implict jump to bb50
bb50:
  ADDI s10, zero, 5
  ADDI s11, zero, 6
  ADDI t0, zero, 7
  ADDI t1, zero, 10
  # implict jump to bb51
bb51:
  ADDW s2, s11, t1
  ADDW s2, s10, s2
  ADDW s2, s2, t0
  LA s6, e
  LW s6, 0(s6)
  ADDW s6, s6, t1
  LA s7, g
  LW s7, 0(s7)
  SUBW s6, s6, s7
  LA s7, h
  LW s7, 0(s7)
  ADDW s6, s6, s7
  SUBW s2, s2, s6
  ADD a0, s2, zero
  LD s2, 40(sp)
  LD ra, 48(sp)
  LD s0, 56(sp)
  LD s1, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb52:
  ADDI t2, zero, 10
  ADDI a0, zero, 7
  ADDI a1, zero, 6
  ADDI a2, zero, 5
  # implict jump to bb53
bb53:
  ADD t4, a0, zero
  SW t4, 32(sp)
  # implict jump to bb54
bb54:
  ADD a3, t2, zero
  LW t4, 32(sp)
  ADD a4, t4, zero
  ADD a5, a1, zero
  ADD a6, a2, zero
  ADDIW t4, a6, 3
  SW t4, 8(sp)
  SLTI a6, a5, 10
  BNE a6, zero, bb60
  # implict jump to bb55
bb55:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADD t6, a3, zero
  # implict jump to bb56
bb56:
  ADD s0, t6, zero
  ADD s3, a7, zero
  ADDI s2, zero, 2
  SUBW s1, a6, s2
  # implict jump to bb57
bb57:
  LW t4, 8(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb59
  # implict jump to bb58
bb58:
  LW t4, 8(sp)
  ADD s10, t4, zero
  ADD s11, s1, zero
  ADD t0, s3, zero
  ADD t1, s0, zero
  JAL zero, bb51
bb59:
  LW t4, 8(sp)
  ADD a2, t4, zero
  ADD a1, s1, zero
  ADD t4, s3, zero
  SW t4, 32(sp)
  ADD t2, s0, zero
  JAL zero, bb54
bb60:
  # implict jump to bb61
bb61:
  # implict jump to bb62
bb62:
  ADD s2, a3, zero
  ADD s9, a4, zero
  ADD s6, a5, zero
  ADDIW t4, s6, 1
  SW t4, 4(sp)
  XORI s6, s9, 7
  SLTIU s6, s6, 1
  BNE s6, zero, bb68
  # implict jump to bb63
bb63:
  ADD s6, s9, zero
  ADD s8, s2, zero
  # implict jump to bb64
bb64:
  ADD s5, s8, zero
  ADDIW s4, s6, 1
  # implict jump to bb65
bb65:
  LW t4, 4(sp)
  SLTI s2, t4, 10
  BNE s2, zero, bb67
  # implict jump to bb66
bb66:
  LW t4, 4(sp)
  ADD a6, t4, zero
  ADD a7, s4, zero
  ADD t6, s5, zero
  JAL zero, bb56
bb67:
  LW t4, 4(sp)
  ADD a5, t4, zero
  ADD a4, s4, zero
  ADD a3, s5, zero
  JAL zero, bb62
bb68:
  # implict jump to bb69
bb69:
  ADD t4, s9, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 16(sp)
  # implict jump to bb70
bb70:
  LW t4, 16(sp)
  ADD s2, t4, zero
  LW t4, 24(sp)
  ADD s7, t4, zero
  ADDI s9, zero, 1
  SUBW t4, s7, s9
  SW t4, 0(sp)
  SLTI s7, s2, 20
  BNE s7, zero, bb76
  # implict jump to bb71
bb71:
  ADD s7, s2, zero
  # implict jump to bb72
bb72:
  ADDI s2, zero, 1
  SUBW t4, s7, s2
  SW t4, 20(sp)
  # implict jump to bb73
bb73:
  LW t4, 0(sp)
  XORI s2, t4, 7
  SLTIU s2, s2, 1
  BNE s2, zero, bb75
  # implict jump to bb74
bb74:
  LW t4, 0(sp)
  ADD s6, t4, zero
  LW t4, 20(sp)
  ADD s8, t4, zero
  JAL zero, bb64
bb75:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb70
bb76:
  # implict jump to bb77
bb77:
  ADD t4, s2, zero
  SW t4, 28(sp)
  # implict jump to bb78
bb78:
  LW t4, 28(sp)
  ADD s9, t4, zero
  ADDIW t4, s9, 3
  SW t4, 12(sp)
  LA s9, e
  LW s9, 0(s9)
  ADDI s2, zero, 1
  BLT s2, s9, bb83
  # implict jump to bb79
bb79:
  LA s2, e
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s9, e
  SW s2, 0(s9)
  # implict jump to bb80
bb80:
  LW t4, 12(sp)
  SLTI s2, t4, 20
  BNE s2, zero, bb82
  # implict jump to bb81
bb81:
  LW t4, 12(sp)
  ADD s7, t4, zero
  JAL zero, bb72
bb82:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb78
bb83:
  # implict jump to bb84
bb84:
  LA s2, e
  LW s2, 0(s2)
  ADDI s9, zero, 1
  SUBW s2, s2, s9
  LA s9, e
  SW s2, 0(s9)
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  BLT s9, s2, bb87
  # implict jump to bb85
bb85:
  LA s2, f
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s9, f
  SW s2, 0(s9)
  # implict jump to bb86
bb86:
  LA s2, e
  LW s2, 0(s2)
  ADDI s9, zero, 1
  BLT s9, s2, bb84
  JAL zero, bb79
bb87:
  # implict jump to bb88
bb88:
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  SUBW s2, s2, s9
  LA s9, f
  SW s2, 0(s9)
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb91
  # implict jump to bb89
bb89:
  LA s2, g
  LW s2, 0(s2)
  ADDI s9, zero, 8
  SUBW s2, s2, s9
  LA s9, g
  SW s2, 0(s9)
  # implict jump to bb90
bb90:
  LA s2, f
  LW s2, 0(s2)
  ADDI s9, zero, 2
  BLT s9, s2, bb88
  JAL zero, bb85
bb91:
  # implict jump to bb92
bb92:
  LA s2, g
  LW s2, 0(s2)
  ADDIW s2, s2, 10
  LA s9, g
  SW s2, 0(s9)
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb95
  # implict jump to bb93
bb93:
  LA s2, h
  LW s2, 0(s2)
  ADDI s9, zero, 1
  SUBW s2, s2, s9
  LA s9, h
  SW s2, 0(s9)
  # implict jump to bb94
bb94:
  LA s2, g
  LW s2, 0(s2)
  SLTI s2, s2, 3
  BNE s2, zero, bb92
  JAL zero, bb89
bb95:
  # implict jump to bb96
bb96:
  LA s2, h
  LW s2, 0(s2)
  ADDIW s2, s2, 8
  LA s9, h
  SW s2, 0(s9)
  # implict jump to bb97
bb97:
  LA s2, h
  LW s2, 0(s2)
  SLTI s2, s2, 10
  BNE s2, zero, bb96
  JAL zero, bb93
