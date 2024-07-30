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
  SD s0, 8(sp)
  SD s1, 16(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
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
  # implict jump to bb4
bb4:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 192(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb119
  # implict jump to bb5
bb5:
  ADDI s4, zero, 57
  LW t4, 192(sp)
  SLT s4, s4, t4
  # implict jump to bb6
bb6:
  BNE s4, zero, bb115
  # implict jump to bb7
bb7:
  ADD t4, zero, zero
  SW t4, 200(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 196(sp)
  # implict jump to bb8
bb8:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 204(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb114
  # implict jump to bb9
bb9:
  ADD s8, zero, zero
  # implict jump to bb10
bb10:
  BNE s8, zero, bb113
  # implict jump to bb11
bb11:
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 216(sp)
  ADD t4, s8, zero
  SW t4, 212(sp)
  # implict jump to bb12
bb12:
  LW t3, 212(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  LW t4, 128(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb112
  # implict jump to bb13
bb13:
  ADDI s0, zero, 57
  LW t4, 128(sp)
  SLT s0, s0, t4
  # implict jump to bb14
bb14:
  BNE s0, zero, bb108
  # implict jump to bb15
bb15:
  ADD t4, zero, zero
  SW t4, 4(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb16
bb16:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 8(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb107
  # implict jump to bb17
bb17:
  ADD s5, zero, zero
  # implict jump to bb18
bb18:
  BNE s5, zero, bb106
  # implict jump to bb19
bb19:
  LW t4, 220(sp)
  BNE t4, zero, bb105
  # implict jump to bb20
bb20:
  LW t4, 12(sp)
  ADD s4, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s4, zero
  SW t4, 28(sp)
  LW t4, 28(sp)
  BLT zero, t4, bb48
  # implict jump to bb22
bb22:
  LA s3, m
  LW s3, 0(s3)
  BLT zero, s3, bb36
  # implict jump to bb23
bb23:
  LA s4, n
  LW s4, 0(s4)
  SLTI s4, s4, 1
  XORI s4, s4, 1
  BNE s4, zero, bb33
  # implict jump to bb24
bb24:
  ADD s7, zero, zero
  ADD s9, zero, zero
  # implict jump to bb25
bb25:
  ADD s10, s9, zero
  ADD s5, s7, zero
  LA s0, m
  LW s0, 0(s0)
  BLT s10, s0, bb27
  # implict jump to bb26
bb26:
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
bb27:
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
  BNE s3, zero, bb32
  # implict jump to bb28
bb28:
  ADD s3, zero, zero
  # implict jump to bb29
bb29:
  BNE s3, zero, bb31
  # implict jump to bb30
bb30:
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
  JAL zero, bb25
bb31:
  ADD s7, s5, zero
  ADD s9, s10, zero
  JAL zero, bb25
bb32:
  ADDI s3, zero, 1
  JAL zero, bb29
bb33:
  ADDI s4, zero, 1
  # implict jump to bb34
bb34:
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
  BNE s7, zero, bb35
  JAL zero, bb24
bb35:
  ADD s4, s6, zero
  JAL zero, bb34
bb36:
  ADD t4, s3, zero
  SW t4, 132(sp)
  ADD t4, zero, zero
  SW t4, 136(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  # implict jump to bb37
bb37:
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
  BLT t4, t3, bb41
  # implict jump to bb38
bb38:
  ADD s11, s6, zero
  # implict jump to bb39
bb39:
  ADD t4, s11, zero
  SW t4, 140(sp)
  LA s1, m
  LW s1, 0(s1)
  LW t4, 168(sp)
  BLT t4, s1, bb40
  JAL zero, bb23
bb40:
  ADD t4, s1, zero
  SW t4, 132(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  JAL zero, bb37
bb41:
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
  # implict jump to bb42
bb42:
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
  BLT s7, s10, bb47
  # implict jump to bb43
bb43:
  # implict jump to bb44
bb44:
  ADD t4, s5, zero
  SW t4, 152(sp)
  ADDIW t4, s0, 1
  SW t4, 148(sp)
  LW t4, 148(sp)
  LW t3, 164(sp)
  BLT t4, t3, bb46
  # implict jump to bb45
bb45:
  LW t4, 152(sp)
  ADD s11, t4, zero
  JAL zero, bb39
bb46:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  JAL zero, bb42
bb47:
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
  JAL zero, bb44
bb48:
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb49
bb49:
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
  # implict jump to bb50
bb50:
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb104
  # implict jump to bb51
bb51:
  ADDI s0, zero, 57
  LW t4, 44(sp)
  SLT s0, s0, t4
  # implict jump to bb52
bb52:
  BNE s0, zero, bb100
  # implict jump to bb53
bb53:
  ADD t4, zero, zero
  SW t4, 52(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  # implict jump to bb54
bb54:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t4, 56(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb99
  # implict jump to bb55
bb55:
  ADD s7, zero, zero
  # implict jump to bb56
bb56:
  BNE s7, zero, bb98
  # implict jump to bb57
bb57:
  LW t4, 40(sp)
  BNE t4, zero, bb97
  # implict jump to bb58
bb58:
  LW t4, 60(sp)
  ADD s6, t4, zero
  # implict jump to bb59
bb59:
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
  # implict jump to bb60
bb60:
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t4, 80(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb96
  # implict jump to bb61
bb61:
  ADDI s1, zero, 57
  LW t4, 80(sp)
  SLT s1, s1, t4
  # implict jump to bb62
bb62:
  BNE s1, zero, bb92
  # implict jump to bb63
bb63:
  ADD t4, zero, zero
  SW t4, 88(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  # implict jump to bb64
bb64:
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t4, 92(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb91
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  BNE s2, zero, bb90
  # implict jump to bb67
bb67:
  LW t4, 76(sp)
  BNE t4, zero, bb89
  # implict jump to bb68
bb68:
  LW t4, 96(sp)
  ADD s2, t4, zero
  # implict jump to bb69
bb69:
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
  # implict jump to bb70
bb70:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb88
  # implict jump to bb71
bb71:
  ADDI s11, zero, 57
  LW t4, 116(sp)
  SLT s11, s11, t4
  # implict jump to bb72
bb72:
  BNE s11, zero, bb84
  # implict jump to bb73
bb73:
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb74
bb74:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 100(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 100(sp)
  SLTI s3, t4, 48
  XORI s3, s3, 1
  BNE s3, zero, bb83
  # implict jump to bb75
bb75:
  ADD s3, zero, zero
  # implict jump to bb76
bb76:
  BNE s3, zero, bb82
  # implict jump to bb77
bb77:
  LW t4, 112(sp)
  BNE t4, zero, bb81
  # implict jump to bb78
bb78:
  LW t4, 0(sp)
  ADD s0, t4, zero
  # implict jump to bb79
bb79:
  LD t4, 336(sp)
  SW s0, 0(t4)
  LW t3, 24(sp)
  ADDIW t4, t3, 1
  SW t4, 176(sp)
  LW t4, 176(sp)
  LW t3, 28(sp)
  BLT t4, t3, bb80
  JAL zero, bb22
bb80:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb49
bb81:
  LW t4, 0(sp)
  SUB s3, zero, t4
  ADD s0, s3, zero
  JAL zero, bb79
bb82:
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
  JAL zero, bb74
bb83:
  ADDI s0, zero, 57
  LW t4, 100(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s3, s0, zero
  JAL zero, bb76
bb84:
  LW t4, 116(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb86
bb86:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb70
bb87:
  ADDI s0, zero, 1
  JAL zero, bb86
bb88:
  ADDI s11, zero, 1
  JAL zero, bb72
bb89:
  LW t4, 96(sp)
  SUB s8, zero, t4
  ADD s2, s8, zero
  JAL zero, bb69
bb90:
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
  JAL zero, bb64
bb91:
  ADDI s8, zero, 57
  LW t4, 92(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s2, s8, zero
  JAL zero, bb66
bb92:
  LW t4, 80(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb95
  # implict jump to bb93
bb93:
  LW t4, 76(sp)
  ADD s0, t4, zero
  # implict jump to bb94
bb94:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 68(sp)
  JAL zero, bb60
bb95:
  ADDI s0, zero, 1
  JAL zero, bb94
bb96:
  ADDI s1, zero, 1
  JAL zero, bb62
bb97:
  LW t4, 60(sp)
  SUB s7, zero, t4
  ADD s6, s7, zero
  JAL zero, bb59
bb98:
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
  JAL zero, bb54
bb99:
  ADDI s6, zero, 57
  LW t4, 56(sp)
  SLT s6, s6, t4
  XORI s6, s6, 1
  ADD s7, s6, zero
  JAL zero, bb56
bb100:
  LW t4, 44(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb103
  # implict jump to bb101
bb101:
  LW t4, 40(sp)
  ADD s0, t4, zero
  # implict jump to bb102
bb102:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 36(sp)
  ADD t4, s1, zero
  SW t4, 32(sp)
  JAL zero, bb50
bb103:
  ADDI s0, zero, 1
  JAL zero, bb102
bb104:
  ADDI s0, zero, 1
  JAL zero, bb52
bb105:
  LW t4, 12(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb21
bb106:
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
  JAL zero, bb16
bb107:
  ADDI s4, zero, 57
  LW t4, 8(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb18
bb108:
  LW t4, 128(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb111
  # implict jump to bb109
bb109:
  LW t4, 220(sp)
  ADD s0, t4, zero
  # implict jump to bb110
bb110:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 216(sp)
  ADD t4, s1, zero
  SW t4, 212(sp)
  JAL zero, bb12
bb111:
  ADDI s0, zero, 1
  JAL zero, bb110
bb112:
  ADDI s0, zero, 1
  JAL zero, bb14
bb113:
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
  JAL zero, bb8
bb114:
  ADDI s9, zero, 57
  LW t4, 204(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb10
bb115:
  LW t4, 192(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb118
  # implict jump to bb116
bb116:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb117
bb117:
  CALL getch
  ADD t4, s0, zero
  SW t4, 184(sp)
  ADD t4, a0, zero
  SW t4, 180(sp)
  JAL zero, bb4
bb118:
  ADDI s0, zero, 1
  JAL zero, bb117
bb119:
  ADDI s4, zero, 1
  JAL zero, bb6
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
  BNE s2, zero, bb122
  # implict jump to bb121
bb121:
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
bb122:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
prim:
  ADDI sp, sp, -176
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s6, 104(sp)
  SD s7, 112(sp)
  SD s8, 120(sp)
  SD s9, 128(sp)
  SD s10, 136(sp)
  SD s11, 144(sp)
  LA s0, m
  LW s0, 0(s0)
  BLT zero, s0, bb137
  # implict jump to bb124
bb124:
  LA t1, n
  LW t1, 0(t1)
  SLTI t1, t1, 1
  XORI t1, t1, 1
  BNE t1, zero, bb134
  # implict jump to bb125
bb125:
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  # implict jump to bb126
bb126:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LA a4, m
  LW a4, 0(a4)
  LW t4, 12(sp)
  BLT t4, a4, bb128
  # implict jump to bb127
bb127:
  LW t4, 8(sp)
  ADD a0, t4, zero
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s6, 104(sp)
  LD s7, 112(sp)
  LD s8, 120(sp)
  LD s9, 128(sp)
  LD s10, 136(sp)
  LD s11, 144(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb128:
  LW t3, 12(sp)
  SLLIW t4, t3, 2
  SW t4, 4(sp)
  LA a5, u
  LW t3, 4(sp)
  ADD t4, a5, t3
  SD t4, 160(sp)
  LD t4, 160(sp)
  LW a6, 0(t4)
  LA a7, v
  LW t3, 4(sp)
  ADD t4, a7, t3
  SD t4, 152(sp)
  LD t3, 152(sp)
  LW t4, 0(t3)
  SW t4, 20(sp)
  ADD a0, a6, zero
  CALL find
  ADD s8, a0, zero
  LW t4, 20(sp)
  ADD a0, t4, zero
  CALL find
  ADD s4, a0, zero
  XOR s4, s8, s4
  SLTIU s4, s4, 1
  BNE s4, zero, bb133
  # implict jump to bb129
bb129:
  ADD s4, zero, zero
  # implict jump to bb130
bb130:
  BNE s4, zero, bb132
  # implict jump to bb131
bb131:
  LA s4, c
  LW t4, 4(sp)
  ADD s4, s4, t4
  LW s4, 0(s4)
  LW t4, 8(sp)
  ADDW s4, t4, s4
  LD t4, 160(sp)
  LW s8, 0(t4)
  ADD a0, s8, zero
  CALL find
  SLLIW s8, a0, 2
  LA t0, fa
  ADD s8, t0, s8
  LD t4, 152(sp)
  LW t0, 0(t4)
  SW t0, 0(s8)
  LW t4, 12(sp)
  ADDIW s8, t4, 1
  ADD t4, s4, zero
  SW t4, 0(sp)
  ADD t4, s8, zero
  SW t4, 16(sp)
  JAL zero, bb126
bb132:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  JAL zero, bb126
bb133:
  ADDI s4, zero, 1
  JAL zero, bb130
bb134:
  ADDI t4, zero, 1
  SW t4, 24(sp)
  # implict jump to bb135
bb135:
  LW t4, 24(sp)
  ADD t2, t4, zero
  SLLIW a0, t2, 2
  LA a1, fa
  ADD a0, a1, a0
  SW t2, 0(a0)
  ADDIW t4, t2, 1
  SW t4, 28(sp)
  LA a0, n
  LW a0, 0(a0)
  LW t4, 28(sp)
  SLT a0, a0, t4
  XORI a0, a0, 1
  BNE a0, zero, bb136
  JAL zero, bb125
bb136:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  JAL zero, bb135
bb137:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb138
bb138:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADDIW s6, s4, 1
  BLT s6, s5, bb142
  # implict jump to bb139
bb139:
  ADD s7, s3, zero
  # implict jump to bb140
bb140:
  LA t0, m
  LW t4, 0(t0)
  SW t4, 32(sp)
  LW t4, 32(sp)
  BLT s6, t4, bb141
  JAL zero, bb124
bb141:
  LW t4, 32(sp)
  ADD s0, t4, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb138
bb142:
  SLLIW t4, s4, 2
  SW t4, 36(sp)
  LA s8, c
  LW t3, 36(sp)
  ADD t4, s8, t3
  SD t4, 56(sp)
  ADD s9, s6, zero
  # implict jump to bb143
bb143:
  ADD s10, s3, zero
  ADD s11, s9, zero
  LD t4, 56(sp)
  LW t0, 0(t4)
  SLLIW t1, s11, 2
  LA t2, c
  ADD t2, t2, t1
  LW a0, 0(t2)
  BLT a0, t0, bb148
  # implict jump to bb144
bb144:
  # implict jump to bb145
bb145:
  ADDIW s11, s11, 1
  BLT s11, s5, bb147
  # implict jump to bb146
bb146:
  ADD s7, s10, zero
  JAL zero, bb140
bb147:
  ADD s9, s11, zero
  ADD s3, s10, zero
  JAL zero, bb143
bb148:
  LA t0, u
  LW t4, 36(sp)
  ADD t0, t0, t4
  LW a0, 0(t0)
  LA a1, u
  ADD a1, a1, t1
  LW a2, 0(a1)
  SW a2, 0(t0)
  SW a0, 0(a1)
  LA t0, v
  LW t4, 36(sp)
  ADD t0, t0, t4
  LW a0, 0(t0)
  LA a1, v
  ADD t1, a1, t1
  LW a1, 0(t1)
  SW a1, 0(t0)
  SW a0, 0(t1)
  LD t4, 56(sp)
  LW t0, 0(t4)
  LW t1, 0(t2)
  LD t4, 56(sp)
  SW t1, 0(t4)
  SW t0, 0(t2)
  ADD s10, t0, zero
  JAL zero, bb145
quick_read:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb150
bb150:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb166
  # implict jump to bb151
bb151:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb152
bb152:
  BNE s4, zero, bb162
  # implict jump to bb153
bb153:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb154
bb154:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb161
  # implict jump to bb155
bb155:
  ADD s8, zero, zero
  # implict jump to bb156
bb156:
  BNE s8, zero, bb160
  # implict jump to bb157
bb157:
  BNE s3, zero, bb159
  # implict jump to bb158
bb158:
  ADD a0, s7, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb159:
  SUB s8, zero, s7
  ADD a0, s8, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb160:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb154
bb161:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb156
bb162:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb165
  # implict jump to bb163
bb163:
  ADD s2, s3, zero
  # implict jump to bb164
bb164:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb150
bb165:
  ADDI s2, zero, 1
  JAL zero, bb164
bb166:
  ADDI s4, zero, 1
  JAL zero, bb152
