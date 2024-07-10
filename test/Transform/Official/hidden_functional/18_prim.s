.global same
.global main
.global find
.global prim
.global quick_read
.section .bss
c:
.space 4020
v:
.space 4020
fa:
.space 4020

u:
.space 4020



.section .data



n:
.word 0x00000000

m:
.word 0x00000000
maxn:
.word 0x00000069
maxm:
.word 0x000003ed
.section .text
same:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -288
  SD ra, 184(sp)
  SD s11, 192(sp)
  SD s5, 200(sp)
  SD s0, 208(sp)
  SD s7, 216(sp)
  SD s10, 224(sp)
  SD s4, 232(sp)
  SD s1, 240(sp)
  SD s6, 248(sp)
  SD s2, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s3, 280(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  # implict jump to bb4
bb4:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb113
  # implict jump to bb5
bb5:
  ADDI s4, zero, 57
  LW t4, 12(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb6
bb6:
  ADD s5, s4, zero
  BNE s5, zero, bb109
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb8
bb8:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb108
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  ADD s9, s8, zero
  BNE s9, zero, bb107
  # implict jump to bb11
bb11:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s8, zero
  SW t4, 32(sp)
  # implict jump to bb12
bb12:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s2, t4, 48
  BNE s2, zero, bb106
  # implict jump to bb13
bb13:
  ADDI s2, zero, 57
  LW t4, 44(sp)
  SLT s1, s2, t4
  ADD s2, s1, zero
  # implict jump to bb14
bb14:
  ADD s1, s2, zero
  BNE s1, zero, bb102
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb16
bb16:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s5, t4, 48
  XORI s4, s5, 1
  BNE s4, zero, bb101
  # implict jump to bb17
bb17:
  ADD s4, zero, zero
  # implict jump to bb18
bb18:
  ADD s5, s4, zero
  BNE s5, zero, bb100
  # implict jump to bb19
bb19:
  LW t4, 40(sp)
  XOR s4, t4, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb99
  # implict jump to bb20
bb20:
  LW t4, 60(sp)
  ADD s4, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s4, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb22
bb22:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 64(sp)
  LW t3, 68(sp)
  SLT s7, t4, t3
  BNE s7, zero, bb44
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb24
bb24:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LA s8, m
  LW s2, 0(s8)
  LW t4, 76(sp)
  SLT s8, t4, s2
  BNE s8, zero, bb37
  # implict jump to bb25
bb25:
  ADDI s2, zero, 1
  # implict jump to bb26
bb26:
  ADD s8, s2, zero
  LA s1, n
  LW s3, 0(s1)
  SLT s1, s3, s8
  XORI s3, s1, 1
  BNE s3, zero, bb36
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb28
bb28:
  ADD s0, s3, zero
  ADD s6, s1, zero
  LA s5, m
  LW s4, 0(s5)
  SLT s5, s0, s4
  BNE s5, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, s6, zero
  LD ra, 184(sp)
  LD s11, 192(sp)
  LD s5, 200(sp)
  LD s0, 208(sp)
  LD s7, 216(sp)
  LD s10, 224(sp)
  LD s4, 232(sp)
  LD s1, 240(sp)
  LD s6, 248(sp)
  LD s2, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s3, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb30:
  SLLIW s4, s0, 2
  LA s5, u
  ADD s9, s5, s4
  LW s5, 0(s9)
  LA s10, v
  ADD s7, s10, s4
  LW s10, 0(s7)
  ADD a0, s5, zero
  CALL find
  ADD s5, a0, zero
  ADD a0, s10, zero
  CALL find
  ADD s10, a0, zero
  XOR s11, s5, s10
  SLTIU s5, s11, 1
  BNE s5, zero, bb35
  # implict jump to bb31
bb31:
  ADD s5, zero, zero
  # implict jump to bb32
bb32:
  ADD s10, s5, zero
  XOR s5, s10, zero
  SLTU s10, zero, s5
  BNE s10, zero, bb34
  # implict jump to bb33
bb33:
  LA s5, c
  ADD s10, s5, s4
  LW s4, 0(s10)
  ADDW s5, s6, s4
  LW s4, 0(s9)
  ADD a0, s4, zero
  CALL find
  ADD s4, a0, zero
  SLLIW s9, s4, 2
  LA s4, fa
  ADD s10, s4, s9
  LW s4, 0(s7)
  SW s4, 0(s10)
  ADDIW s4, s0, 1
  ADD s1, s5, zero
  ADD s3, s4, zero
  JAL zero, bb28
bb34:
  ADD s1, s6, zero
  ADD s3, s0, zero
  JAL zero, bb28
bb35:
  ADDI s5, zero, 1
  JAL zero, bb32
bb36:
  SLLIW s0, s8, 2
  LA s1, fa
  ADD s3, s1, s0
  SW s8, 0(s3)
  ADDIW s0, s8, 1
  ADD s2, s0, zero
  JAL zero, bb26
bb37:
  LW t3, 76(sp)
  ADDIW t4, t3, 1
  SW t4, 92(sp)
  LW t4, 88(sp)
  ADD s1, t4, zero
  LW t4, 92(sp)
  ADD s2, t4, zero
  # implict jump to bb38
bb38:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, m
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb40
  # implict jump to bb39
bb39:
  ADD t4, s4, zero
  SW t4, 84(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  JAL zero, bb24
bb40:
  LW t4, 76(sp)
  SLLIW s5, t4, 2
  LA s6, c
  ADD s7, s6, s5
  LW s6, 0(s7)
  SLLIW s8, s3, 2
  LA s9, c
  ADD s10, s9, s8
  LW s9, 0(s10)
  SLT s11, s9, s6
  BNE s11, zero, bb43
  # implict jump to bb41
bb41:
  ADD s6, s4, zero
  # implict jump to bb42
bb42:
  ADD s0, s6, zero
  ADDIW s4, s3, 1
  ADD s1, s0, zero
  ADD s2, s4, zero
  JAL zero, bb38
bb43:
  LA s4, u
  ADD s9, s4, s5
  LW s4, 0(s9)
  LA s11, u
  ADD s0, s11, s8
  LW s11, 0(s0)
  SW s11, 0(s9)
  SW s4, 0(s0)
  LA s0, v
  ADD s4, s0, s5
  LW s0, 0(s4)
  LA s5, v
  ADD s9, s5, s8
  LW s5, 0(s9)
  SW s5, 0(s4)
  SW s0, 0(s9)
  LW s0, 0(s7)
  LW s4, 0(s10)
  SW s4, 0(s7)
  SW s0, 0(s10)
  ADD s6, s0, zero
  JAL zero, bb42
bb44:
  LW t3, 64(sp)
  SLLIW t4, t3, 2
  SW t4, 104(sp)
  LA s1, u
  LW t3, 104(sp)
  ADD t4, s1, t3
  SD t4, 96(sp)
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, s1, zero
  SW t4, 108(sp)
  # implict jump to bb45
bb45:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t4, 120(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb98
  # implict jump to bb46
bb46:
  ADDI s6, zero, 57
  LW t4, 120(sp)
  SLT s7, s6, t4
  ADD s6, s7, zero
  # implict jump to bb47
bb47:
  ADD s7, s6, zero
  BNE s7, zero, bb94
  # implict jump to bb48
bb48:
  ADD t4, zero, zero
  SW t4, 128(sp)
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  # implict jump to bb49
bb49:
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 132(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb93
  # implict jump to bb50
bb50:
  ADD s10, zero, zero
  # implict jump to bb51
bb51:
  ADD s2, s10, zero
  BNE s2, zero, bb92
  # implict jump to bb52
bb52:
  LW t4, 116(sp)
  XOR s2, t4, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb91
  # implict jump to bb53
bb53:
  LW t4, 136(sp)
  ADD s2, t4, zero
  # implict jump to bb54
bb54:
  ADD s10, s2, zero
  LD t4, 96(sp)
  SW s10, 0(t4)
  LA s2, v
  LW t3, 104(sp)
  ADD t4, s2, t3
  SD t4, 144(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 156(sp)
  ADD t4, s2, zero
  SW t4, 152(sp)
  # implict jump to bb55
bb55:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 164(sp)
  SLTI s3, t4, 48
  BNE s3, zero, bb90
  # implict jump to bb56
bb56:
  ADDI s3, zero, 57
  LW t4, 164(sp)
  SLT s5, s3, t4
  ADD s3, s5, zero
  # implict jump to bb57
bb57:
  ADD s5, s3, zero
  BNE s5, zero, bb86
  # implict jump to bb58
bb58:
  ADD t4, zero, zero
  SW t4, 172(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  # implict jump to bb59
bb59:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 172(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 176(sp)
  SLTI s6, t4, 48
  XORI s8, s6, 1
  BNE s8, zero, bb85
  # implict jump to bb60
bb60:
  ADD s6, zero, zero
  # implict jump to bb61
bb61:
  ADD s8, s6, zero
  BNE s8, zero, bb84
  # implict jump to bb62
bb62:
  LW t4, 160(sp)
  XOR s6, t4, zero
  SLTU s8, zero, s6
  BNE s8, zero, bb83
  # implict jump to bb63
bb63:
  LW t4, 180(sp)
  ADD s6, t4, zero
  # implict jump to bb64
bb64:
  ADD s8, s6, zero
  LD t4, 144(sp)
  SW s8, 0(t4)
  LA s6, c
  LW t4, 104(sp)
  ADD s8, s6, t4
  CALL getch
  ADD s6, a0, zero
  ADD s9, zero, zero
  ADD s10, s6, zero
  # implict jump to bb65
bb65:
  ADD s6, s10, zero
  ADD s0, s9, zero
  SLTI s11, s6, 48
  BNE s11, zero, bb82
  # implict jump to bb66
bb66:
  ADDI s11, zero, 57
  SLT s4, s11, s6
  ADD s11, s4, zero
  # implict jump to bb67
bb67:
  ADD s4, s11, zero
  BNE s4, zero, bb78
  # implict jump to bb68
bb68:
  ADD s4, zero, zero
  ADD s11, s6, zero
  # implict jump to bb69
bb69:
  ADD s2, s11, zero
  ADD s5, s4, zero
  SLTI s3, s2, 48
  XORI s1, s3, 1
  BNE s1, zero, bb77
  # implict jump to bb70
bb70:
  ADD s1, zero, zero
  # implict jump to bb71
bb71:
  ADD s3, s1, zero
  BNE s3, zero, bb76
  # implict jump to bb72
bb72:
  XOR s1, s0, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb75
  # implict jump to bb73
bb73:
  ADD s1, s5, zero
  # implict jump to bb74
bb74:
  ADD s3, s1, zero
  SW s3, 0(s8)
  LW t4, 64(sp)
  ADDIW s1, t4, 1
  ADD t4, s1, zero
  SW t4, 72(sp)
  JAL zero, bb22
bb75:
  SUB s3, zero, s5
  ADD s1, s3, zero
  JAL zero, bb74
bb76:
  ADDI s1, zero, 10
  MULW s3, s5, s1
  ADDW s1, s3, s2
  ADDI s2, zero, 48
  SUBW s3, s1, s2
  CALL getch
  ADD s1, a0, zero
  ADD s4, s3, zero
  ADD s11, s1, zero
  JAL zero, bb69
bb77:
  ADDI s3, zero, 57
  SLT s7, s3, s2
  XORI s3, s7, 1
  ADD s1, s3, zero
  JAL zero, bb71
bb78:
  XORI s1, s6, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb81
  # implict jump to bb79
bb79:
  ADD s1, s0, zero
  # implict jump to bb80
bb80:
  ADD s0, s1, zero
  CALL getch
  ADD s1, a0, zero
  ADD s9, s0, zero
  ADD s10, s1, zero
  JAL zero, bb65
bb81:
  ADDI s1, zero, 1
  JAL zero, bb80
bb82:
  ADDI s11, zero, 1
  JAL zero, bb67
bb83:
  LW t4, 180(sp)
  SUB s8, zero, t4
  ADD s6, s8, zero
  JAL zero, bb64
bb84:
  ADDI s0, zero, 10
  LW t4, 180(sp)
  MULW s1, t4, s0
  LW t4, 176(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 172(sp)
  ADD t4, s0, zero
  SW t4, 168(sp)
  JAL zero, bb59
bb85:
  ADDI s8, zero, 57
  LW t4, 176(sp)
  SLT s9, s8, t4
  XORI s8, s9, 1
  ADD s6, s8, zero
  JAL zero, bb61
bb86:
  LW t4, 164(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb89
  # implict jump to bb87
bb87:
  LW t4, 160(sp)
  ADD s0, t4, zero
  # implict jump to bb88
bb88:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 156(sp)
  ADD t4, s0, zero
  SW t4, 152(sp)
  JAL zero, bb55
bb89:
  ADDI s0, zero, 1
  JAL zero, bb88
bb90:
  ADDI s3, zero, 1
  JAL zero, bb57
bb91:
  LW t4, 136(sp)
  SUB s10, zero, t4
  ADD s2, s10, zero
  JAL zero, bb54
bb92:
  ADDI s0, zero, 10
  LW t4, 136(sp)
  MULW s1, t4, s0
  LW t4, 132(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 124(sp)
  JAL zero, bb49
bb93:
  ADDI s11, zero, 57
  LW t4, 132(sp)
  SLT s2, s11, t4
  XORI s11, s2, 1
  ADD s10, s11, zero
  JAL zero, bb51
bb94:
  LW t4, 120(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb97
  # implict jump to bb95
bb95:
  LW t4, 116(sp)
  ADD s0, t4, zero
  # implict jump to bb96
bb96:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 112(sp)
  ADD t4, s0, zero
  SW t4, 108(sp)
  JAL zero, bb45
bb97:
  ADDI s0, zero, 1
  JAL zero, bb96
bb98:
  ADDI s6, zero, 1
  JAL zero, bb47
bb99:
  LW t4, 60(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb21
bb100:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s1, t4, s0
  LW t4, 56(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 52(sp)
  ADD t4, s0, zero
  SW t4, 48(sp)
  JAL zero, bb16
bb101:
  ADDI s5, zero, 57
  LW t4, 56(sp)
  SLT s6, s5, t4
  XORI s5, s6, 1
  ADD s4, s5, zero
  JAL zero, bb18
bb102:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb105
  # implict jump to bb103
bb103:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb104
bb104:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 32(sp)
  JAL zero, bb12
bb105:
  ADDI s0, zero, 1
  JAL zero, bb104
bb106:
  ADDI s2, zero, 1
  JAL zero, bb14
bb107:
  ADDI s0, zero, 10
  LW t4, 28(sp)
  MULW s1, t4, s0
  LW t4, 24(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb8
bb108:
  ADDI s9, zero, 57
  LW t4, 24(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb10
bb109:
  LW t4, 12(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb112
  # implict jump to bb110
bb110:
  LW t4, 8(sp)
  ADD s0, t4, zero
  # implict jump to bb111
bb111:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb4
bb112:
  ADDI s0, zero, 1
  JAL zero, bb111
bb113:
  ADDI s4, zero, 1
  JAL zero, bb6
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, fa
  ADD s3, s2, s1
  LW s1, 0(s3)
  XOR s2, s0, s1
  SLTIU s1, s2, 1
  BNE s1, zero, bb116
  # implict jump to bb115
bb115:
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb116:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -144
  SD ra, 32(sp)
  SD s11, 40(sp)
  SD s0, 48(sp)
  SD s5, 56(sp)
  SD s10, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s1, 88(sp)
  SD s6, 96(sp)
  SD s2, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  ADD s0, zero, zero
  ADD t4, zero, zero
  SW t4, 24(sp)
  # implict jump to bb118
bb118:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  ADD s3, s0, zero
  LA s4, m
  LW s5, 0(s4)
  LW t4, 20(sp)
  SLT s4, t4, s5
  BNE s4, zero, bb131
  # implict jump to bb119
bb119:
  ADDI s4, zero, 1
  # implict jump to bb120
bb120:
  ADD s5, s4, zero
  LA s6, n
  LW s7, 0(s6)
  SLT s6, s7, s5
  XORI s7, s6, 1
  BNE s7, zero, bb130
  # implict jump to bb121
bb121:
  ADD s6, zero, zero
  ADD s7, zero, zero
  # implict jump to bb122
bb122:
  ADD s8, s7, zero
  ADD s9, s6, zero
  LA s10, m
  LW s11, 0(s10)
  SLT s10, s8, s11
  BNE s10, zero, bb124
  # implict jump to bb123
bb123:
  ADD a0, s9, zero
  LD ra, 32(sp)
  LD s11, 40(sp)
  LD s0, 48(sp)
  LD s5, 56(sp)
  LD s10, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s1, 88(sp)
  LD s6, 96(sp)
  LD s2, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
bb124:
  SLLIW s10, s8, 2
  LA s11, u
  ADD t4, s11, s10
  SD t4, 8(sp)
  LD t4, 8(sp)
  LW s11, 0(t4)
  LA t1, v
  ADD t4, t1, s10
  SD t4, 0(sp)
  LD t3, 0(sp)
  LW t4, 0(t3)
  SW t4, 16(sp)
  ADD a0, s11, zero
  CALL find
  ADD s11, a0, zero
  LW t4, 16(sp)
  ADD a0, t4, zero
  CALL find
  ADD s2, a0, zero
  XOR s1, s11, s2
  SLTIU s2, s1, 1
  BNE s2, zero, bb129
  # implict jump to bb125
bb125:
  ADD s1, zero, zero
  # implict jump to bb126
bb126:
  ADD s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb128
  # implict jump to bb127
bb127:
  LA s1, c
  ADD s2, s1, s10
  LW s1, 0(s2)
  ADDW s2, s9, s1
  LD t4, 8(sp)
  LW s1, 0(t4)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  SLLIW s10, s1, 2
  LA s1, fa
  ADD s11, s1, s10
  LD t4, 0(sp)
  LW s1, 0(t4)
  SW s1, 0(s11)
  ADDIW s1, s8, 1
  ADD s6, s2, zero
  ADD s7, s1, zero
  JAL zero, bb122
bb128:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb122
bb129:
  ADDI s1, zero, 1
  JAL zero, bb126
bb130:
  SLLIW s1, s5, 2
  LA s2, fa
  ADD s6, s2, s1
  SW s5, 0(s6)
  ADDIW s1, s5, 1
  ADD s4, s1, zero
  JAL zero, bb120
bb131:
  LW t4, 20(sp)
  ADDIW s1, t4, 1
  ADD s2, s3, zero
  ADD s3, s1, zero
  # implict jump to bb132
bb132:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, m
  LW s7, 0(s6)
  SLT s6, s4, s7
  BNE s6, zero, bb134
  # implict jump to bb133
bb133:
  ADD s0, s5, zero
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb118
bb134:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  LA s6, c
  ADD s7, s6, s0
  LW s6, 0(s7)
  SLLIW s8, s4, 2
  LA s9, c
  ADD s10, s9, s8
  LW s9, 0(s10)
  SLT s11, s9, s6
  BNE s11, zero, bb137
  # implict jump to bb135
bb135:
  ADD s6, s5, zero
  # implict jump to bb136
bb136:
  ADD s0, s6, zero
  ADDIW s5, s4, 1
  ADD s2, s0, zero
  ADD s3, s5, zero
  JAL zero, bb132
bb137:
  LA s5, u
  ADD s9, s5, s0
  LW s5, 0(s9)
  LA s11, u
  ADD t0, s11, s8
  LW s11, 0(t0)
  SW s11, 0(s9)
  SW s5, 0(t0)
  LA s5, v
  ADD s9, s5, s0
  LW s0, 0(s9)
  LA s5, v
  ADD s11, s5, s8
  LW s5, 0(s11)
  SW s5, 0(s9)
  SW s0, 0(s11)
  LW s0, 0(s7)
  LW s5, 0(s10)
  SW s5, 0(s7)
  SW s0, 0(s10)
  ADD s6, s0, zero
  JAL zero, bb136
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb139
bb139:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb155
  # implict jump to bb140
bb140:
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb141
bb141:
  ADD s5, s4, zero
  BNE s5, zero, bb151
  # implict jump to bb142
bb142:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb143
bb143:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb150
  # implict jump to bb144
bb144:
  ADD s8, zero, zero
  # implict jump to bb145
bb145:
  ADD s9, s8, zero
  BNE s9, zero, bb149
  # implict jump to bb146
bb146:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb148
  # implict jump to bb147
bb147:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb148:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb149:
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb143
bb150:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb145
bb151:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb154
  # implict jump to bb152
bb152:
  ADD s0, s3, zero
  # implict jump to bb153
bb153:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb139
bb154:
  ADDI s0, zero, 1
  JAL zero, bb153
bb155:
  ADDI s4, zero, 1
  JAL zero, bb141
