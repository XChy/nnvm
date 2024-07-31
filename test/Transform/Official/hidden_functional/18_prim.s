.global main
.global find
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
.section .text
main:
  ADDI sp, sp, -368
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s3, 256(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s8, 304(sp)
  SD s9, 312(sp)
  SD s10, 320(sp)
  SD s11, 328(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 184(sp)
  ADD t4, s0, zero
  SW t4, 180(sp)
  # implict jump to bb1
bb1:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 192(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb116
  # implict jump to bb2
bb2:
  ADDI s4, zero, 57
  LW t4, 192(sp)
  SLT s4, s4, t4
  # implict jump to bb3
bb3:
  BNE s4, zero, bb112
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  # implict jump to bb5
bb5:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 204(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb111
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  BNE s8, zero, bb110
  # implict jump to bb8
bb8:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 216(sp)
  ADD t4, s8, zero
  SW t4, 212(sp)
  # implict jump to bb9
bb9:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t4, 128(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb109
  # implict jump to bb10
bb10:
  ADDI s0, zero, 57
  LW t4, 128(sp)
  SLT s0, s0, t4
  # implict jump to bb11
bb11:
  BNE s0, zero, bb105
  # implict jump to bb12
bb12:
  ADD t4, zero, zero
  SW t4, 4(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb13
bb13:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb104
  # implict jump to bb14
bb14:
  ADD s5, zero, zero
  # implict jump to bb15
bb15:
  BNE s5, zero, bb103
  # implict jump to bb16
bb16:
  LW t4, 220(sp)
  BNE t4, zero, bb102
  # implict jump to bb17
bb17:
  LW t4, 12(sp)
  ADD s4, t4, zero
  # implict jump to bb18
bb18:
  ADD t4, s4, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  BLT zero, t4, bb45
  # implict jump to bb19
bb19:
  LA s3, m
  LW s3, 0(s3)
  BLT zero, s3, bb33
  # implict jump to bb20
bb20:
  LA s4, n
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb30
  # implict jump to bb21
bb21:
  ADD s7, zero, zero
  ADD s9, zero, zero
  # implict jump to bb22
bb22:
  ADD s10, s9, zero
  ADD s5, s7, zero
  LA s0, m
  LW s0, 0(s0)
  BLT s10, s0, bb24
  # implict jump to bb23
bb23:
  ADD a0, s5, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s3, 256(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s8, 304(sp)
  LD s9, 312(sp)
  LD s10, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 368
  JALR zero, 0(ra)
bb24:
  SLLIW s0, s10, 2
  LA s8, u
  ADD s8, s8, s0
  LW s11, 0(s8)
  LA s2, v
  ADD s2, s2, s0
  LW s3, 0(s2)
  ADD a0, s11, zero
  CALL find
  ADD s11, a0, zero
  ADD a0, s3, zero
  CALL find
  ADD s3, a0, zero
  XOR s3, s11, s3
  SLTIU s3, s3, 1
  BNE s3, zero, bb29
  # implict jump to bb25
bb25:
  ADD s3, zero, zero
  # implict jump to bb26
bb26:
  BNE s3, zero, bb28
  # implict jump to bb27
bb27:
  LA s3, c
  ADD s0, s3, s0
  LW s0, 0(s0)
  ADDW s0, s5, s0
  LW s3, 0(s8)
  ADD a0, s3, zero
  CALL find
  ADD s3, a0, zero
  SLLIW s3, s3, 2
  LA s8, fa
  ADD s3, s8, s3
  LW s2, 0(s2)
  SW s2, 0(s3)
  ADDIW s2, s10, 1
  ADD s7, s0, zero
  ADD s9, s2, zero
  JAL zero, bb22
bb28:
  ADD s7, s5, zero
  ADD s9, s10, zero
  JAL zero, bb22
bb29:
  ADDI s3, zero, 1
  JAL zero, bb26
bb30:
  ADDI s4, zero, 1
  # implict jump to bb31
bb31:
  ADD s6, s4, zero
  SLLIW s7, s6, 2
  LA s9, fa
  ADD s7, s9, s7
  SW s6, 0(s7)
  ADDIW s6, s6, 1
  LA s7, n
  LW s7, 0(s7)
  SLT s7, s7, s6
  XORI s7, s7, 1
  BNE s7, zero, bb32
  JAL zero, bb21
bb32:
  ADD s4, s6, zero
  JAL zero, bb31
bb33:
  ADD t4, s3, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb34
bb34:
  LW t4, 144(sp)
  ADD s6, t4, zero
  LW t4, 136(sp)
  ADD s4, t4, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  ADDIW t4, s4, 1
  SW t4, 168(sp)
  LW t4, 168(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb38
  # implict jump to bb35
bb35:
  ADD s11, s6, zero
  # implict jump to bb36
bb36:
  ADD t4, s11, zero
  SW t4, 140(sp)
  LA s1, m
  LW s1, 0(s1)
  LW t4, 168(sp)
  BLT t4, s1, bb37
  JAL zero, bb20
bb37:
  ADD t4, s1, zero
  SW t4, 132(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb34
bb38:
  SLLIW t4, s4, 2
  SW t4, 172(sp)
  LA s10, c
  LW t3, 172(sp)
  ADD t4, s10, t3
  SD t4, 264(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  ADD t4, s6, zero
  SW t4, 160(sp)
  # implict jump to bb39
bb39:
  LW t4, 160(sp)
  ADD s5, t4, zero
  LW t4, 156(sp)
  ADD s0, t4, zero
  LD t4, 264(sp)
  LW s10, 0(t4)
  SLLIW s4, s0, 2
  LA s9, c
  ADD s9, s9, s4
  LW s7, 0(s9)
  BLT s7, s10, bb44
  # implict jump to bb40
bb40:
  # implict jump to bb41
bb41:
  ADD t4, s5, zero
  SW t4, 152(sp)
  ADDIW t4, s0, 1
  SW t4, 148(sp)
  LW t4, 148(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb43
  # implict jump to bb42
bb42:
  LW t4, 152(sp)
  ADD s11, t4, zero
  JAL zero, bb36
bb43:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb39
bb44:
  LA s7, u
  LW t4, 172(sp)
  ADD s7, s7, t4
  LW s10, 0(s7)
  LA s6, u
  ADD s6, s6, s4
  LW s1, 0(s6)
  SW s1, 0(s7)
  SW s10, 0(s6)
  LA s1, v
  LW t4, 172(sp)
  ADD s1, s1, t4
  LW s6, 0(s1)
  LA s7, v
  ADD s4, s7, s4
  LW s7, 0(s4)
  SW s7, 0(s1)
  SW s6, 0(s4)
  LD t4, 264(sp)
  LW s1, 0(t4)
  LW s4, 0(s9)
  LD t4, 264(sp)
  SW s4, 0(t4)
  SW s1, 0(s9)
  ADD s5, s1, zero
  JAL zero, bb41
bb45:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb46
bb46:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 24(sp)
  SLLIW t4, t3, 2
  SW t4, 20(sp)
  LA s8, u
  LW t3, 20(sp)
  ADD t4, s8, t3
  SD t4, 344(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, s9, zero
  SW t4, 32(sp)
  # implict jump to bb47
bb47:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb101
  # implict jump to bb48
bb48:
  ADDI s0, zero, 57
  LW t4, 44(sp)
  SLT s0, s0, t4
  # implict jump to bb49
bb49:
  BNE s0, zero, bb97
  # implict jump to bb50
bb50:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb51
bb51:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb96
  # implict jump to bb52
bb52:
  ADD s7, zero, zero
  # implict jump to bb53
bb53:
  BNE s7, zero, bb95
  # implict jump to bb54
bb54:
  LW t4, 40(sp)
  BNE t4, zero, bb94
  # implict jump to bb55
bb55:
  LW t4, 60(sp)
  ADD s6, t4, zero
  # implict jump to bb56
bb56:
  LD t4, 344(sp)
  SW s6, 0(t4)
  LA s6, v
  LW t3, 20(sp)
  ADD t4, s6, t3
  SD t4, 352(sp)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, s7, zero
  SW t4, 68(sp)
  # implict jump to bb57
bb57:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 80(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb93
  # implict jump to bb58
bb58:
  ADDI s1, zero, 57
  LW t4, 80(sp)
  SLT s1, s1, t4
  # implict jump to bb59
bb59:
  BNE s1, zero, bb89
  # implict jump to bb60
bb60:
  ADD t4, zero, zero
  SW t4, 88(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  # implict jump to bb61
bb61:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 92(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb88
  # implict jump to bb62
bb62:
  ADD s2, zero, zero
  # implict jump to bb63
bb63:
  BNE s2, zero, bb87
  # implict jump to bb64
bb64:
  LW t4, 76(sp)
  BNE t4, zero, bb86
  # implict jump to bb65
bb65:
  LW t4, 96(sp)
  ADD s2, t4, zero
  # implict jump to bb66
bb66:
  LD t4, 352(sp)
  SW s2, 0(t4)
  LA s2, c
  LW t3, 20(sp)
  ADD t4, s2, t3
  SD t4, 336(sp)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  ADD t4, s8, zero
  SW t4, 104(sp)
  # implict jump to bb67
bb67:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb85
  # implict jump to bb68
bb68:
  ADDI s11, zero, 57
  LW t4, 116(sp)
  SLT s11, s11, t4
  # implict jump to bb69
bb69:
  BNE s11, zero, bb81
  # implict jump to bb70
bb70:
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb71
bb71:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 100(sp)
  SLTI s3, t4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb80
  # implict jump to bb72
bb72:
  ADD s3, zero, zero
  # implict jump to bb73
bb73:
  BNE s3, zero, bb79
  # implict jump to bb74
bb74:
  LW t4, 112(sp)
  BNE t4, zero, bb78
  # implict jump to bb75
bb75:
  LW t4, 0(sp)
  ADD s0, t4, zero
  # implict jump to bb76
bb76:
  LD t4, 336(sp)
  SW s0, 0(t4)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  LW t4, 176(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb77
  JAL zero, bb19
bb77:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb46
bb78:
  LW t4, 0(sp)
  SUBW s3, zero, t4
  ADD s0, s3, zero
  JAL zero, bb76
bb79:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 100(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 124(sp)
  ADD t4, s1, zero
  SW t4, 120(sp)
  JAL zero, bb71
bb80:
  ADDI s0, zero, 57
  LW t4, 100(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb73
bb81:
  LW t4, 116(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb84
  # implict jump to bb82
bb82:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb83
bb83:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb67
bb84:
  ADDI s0, zero, 1
  JAL zero, bb83
bb85:
  ADDI s11, zero, 1
  JAL zero, bb69
bb86:
  LW t4, 96(sp)
  SUBW s8, zero, t4
  ADD s2, s8, zero
  JAL zero, bb66
bb87:
  ADDI s0, zero, 10
  LW t4, 96(sp)
  MULW s0, t4, s0
  LW t4, 92(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 88(sp)
  ADD t4, s1, zero
  SW t4, 84(sp)
  JAL zero, bb61
bb88:
  ADDI s8, zero, 57
  LW t4, 92(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s2, s8, zero
  JAL zero, bb63
bb89:
  LW t4, 80(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb92
  # implict jump to bb90
bb90:
  LW t4, 76(sp)
  ADD s0, t4, zero
  # implict jump to bb91
bb91:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  JAL zero, bb57
bb92:
  ADDI s0, zero, 1
  JAL zero, bb91
bb93:
  ADDI s1, zero, 1
  JAL zero, bb59
bb94:
  LW t4, 60(sp)
  SUBW s7, zero, t4
  ADD s6, s7, zero
  JAL zero, bb56
bb95:
  ADDI s0, zero, 10
  LW t4, 60(sp)
  MULW s0, t4, s0
  LW t4, 56(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 52(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb51
bb96:
  ADDI s6, zero, 57
  LW t4, 56(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s7, s6, zero
  JAL zero, bb53
bb97:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb99
bb99:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SW t4, 32(sp)
  JAL zero, bb47
bb100:
  ADDI s0, zero, 1
  JAL zero, bb99
bb101:
  ADDI s0, zero, 1
  JAL zero, bb49
bb102:
  LW t4, 12(sp)
  SUBW s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb18
bb103:
  ADDI s0, zero, 10
  LW t4, 12(sp)
  MULW s0, t4, s0
  LW t4, 8(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  JAL zero, bb13
bb104:
  ADDI s4, zero, 57
  LW t4, 8(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb15
bb105:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb108
  # implict jump to bb106
bb106:
  LW t4, 220(sp)
  ADD s0, t4, zero
  # implict jump to bb107
bb107:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 216(sp)
  ADD t4, s1, zero
  SW t4, 212(sp)
  JAL zero, bb9
bb108:
  ADDI s0, zero, 1
  JAL zero, bb107
bb109:
  ADDI s0, zero, 1
  JAL zero, bb11
bb110:
  ADDI s0, zero, 10
  LW t4, 208(sp)
  MULW s0, t4, s0
  LW t4, 204(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, s1, zero
  SW t4, 196(sp)
  JAL zero, bb5
bb111:
  ADDI s9, zero, 57
  LW t4, 204(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb7
bb112:
  LW t4, 192(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb114
bb114:
  CALL getch
  ADD t4, s0, zero
  SW t4, 184(sp)
  ADD t4, a0, zero
  SW t4, 180(sp)
  JAL zero, bb1
bb115:
  ADDI s0, zero, 1
  JAL zero, bb114
bb116:
  ADDI s4, zero, 1
  JAL zero, bb3
find:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADD s0, a0, zero
  SLLIW s1, s0, 2
  LA s2, fa
  ADD s1, s2, s1
  LW s2, 0(s1)
  XOR s2, s0, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb119
  # implict jump to bb118
bb118:
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL find
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb119:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
