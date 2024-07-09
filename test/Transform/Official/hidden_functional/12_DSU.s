.global same
.global init
.global main
.global find
.global quick_read
.section .bss

fa:
.space 400020

.section .data
m:
.word 0x00000000

n:
.word 0x00000000
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
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, fa
  ADD s4, s2, s3
  SW s1, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -480
  SD s11, 376(sp)
  SD s8, 384(sp)
  SD s10, 392(sp)
  SD s0, 400(sp)
  SD s5, 408(sp)
  SD s7, 416(sp)
  SD s1, 424(sp)
  SD s6, 432(sp)
  SD s2, 440(sp)
  SD s9, 448(sp)
  SD s4, 456(sp)
  SD ra, 464(sp)
  SD s3, 472(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb32
bb8:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  JAL zero, bb48
bb9:
  LW t4, 104(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADDI s0, zero, 1
  JAL zero, bb29
bb10:
  ADD t4, s6, zero
  SW t4, 144(sp)
  ADD t4, s5, zero
  SW t4, 136(sp)
  ADD t4, s2, zero
  SW t4, 128(sp)
  ADD t4, s0, zero
  SW t4, 120(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb11
  JAL zero, bb12
bb11:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  JAL zero, bb13
bb12:
  ADD a0, zero, zero
  LD s11, 376(sp)
  LD s8, 384(sp)
  LD s10, 392(sp)
  LD s0, 400(sp)
  LD s5, 408(sp)
  LD s7, 416(sp)
  LD s1, 424(sp)
  LD s6, 432(sp)
  LD s2, 440(sp)
  LD s9, 448(sp)
  LD s4, 456(sp)
  LD ra, 464(sp)
  LD s3, 472(sp)
  ADDI sp, sp, 480
  JALR zero, 0(ra)
bb13:
  ADD t4, s7, zero
  SW t4, 112(sp)
  LW t4, 112(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb16
  JAL zero, bb17
bb14:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb13
bb15:
  LW t4, 112(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb19
  JAL zero, bb24
bb16:
  LW t4, 112(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 152(sp)
  JAL zero, bb18
bb17:
  ADD t4, zero, zero
  SB t4, 152(sp)
  JAL zero, bb18
bb18:
  LB t4, 152(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb14
  JAL zero, bb15
bb19:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  JAL zero, bb64
bb20:
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 232(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  JAL zero, bb80
bb21:
  LW t3, 304(sp)
  ADD t4, t3, zero
  SW t4, 312(sp)
  LW t4, 232(sp)
  ADD a0, t4, zero
  CALL find
  ADD s4, a0, zero
  LW t4, 312(sp)
  ADD a0, t4, zero
  CALL find
  ADD s7, a0, zero
  XOR s8, s4, s7
  SLTIU s4, s8, 1
  BNE s4, zero, bb27
  JAL zero, bb28
bb22:
  ADD s7, s4, zero
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 272(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 264(sp)
  LW t3, 312(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 232(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  JAL zero, bb23
bb23:
  LW t4, 256(sp)
  ADD s8, t4, zero
  LW t4, 248(sp)
  ADD s7, t4, zero
  LW t4, 264(sp)
  ADD s10, t4, zero
  LW t4, 272(sp)
  ADD s9, t4, zero
  LA s11, m
  LW s3, 0(s11)
  ADDI s11, zero, 1
  SUBW s1, s3, s11
  LA s3, m
  SW s1, 0(s3)
  ADD s0, s9, zero
  ADD s2, s10, zero
  ADD s5, s7, zero
  ADD s6, s8, zero
  JAL zero, bb10
bb24:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb96
bb25:
  LW t4, 368(sp)
  ADD s1, t4, zero
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  JAL zero, bb112
bb26:
  ADD s0, s2, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  ADDI s4, zero, 4
  MULW s5, s1, s4
  LA s4, fa
  ADD s8, s4, s5
  SW s0, 0(s8)
  ADD t4, s0, zero
  SW t4, 272(sp)
  ADD t4, s1, zero
  SW t4, 264(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 248(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 256(sp)
  JAL zero, bb23
bb27:
  ADDI s4, zero, 1
  JAL zero, bb22
bb28:
  ADD s4, zero, zero
  JAL zero, bb22
bb29:
  ADD s5, s0, zero
  LA s6, n
  LW s8, 0(s6)
  SLT s6, s8, s5
  XORI s8, s6, 1
  BNE s8, zero, bb30
  JAL zero, bb31
bb30:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, fa
  ADD s2, s6, s8
  SW s5, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb29
bb31:
  ADD s0, zero, zero
  ADD s2, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb10
bb32:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb35
  JAL zero, bb36
bb33:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb38
  JAL zero, bb128
bb34:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb40
bb35:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb37
bb36:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb37
bb37:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb33
  JAL zero, bb34
bb38:
  ADDI s5, zero, 1
  JAL zero, bb39
bb39:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb32
bb40:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb43
  JAL zero, bb44
bb41:
  ADDI s7, zero, 10
  LW t4, 24(sp)
  MULW s9, t4, s7
  LW t4, 32(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb40
bb42:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb46
  JAL zero, bb47
bb43:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb45
bb44:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb45
bb45:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb41
  JAL zero, bb42
bb46:
  LW t4, 24(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb8
bb47:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb8
bb48:
  ADD t4, s9, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb51
  JAL zero, bb52
bb49:
  LW t4, 64(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb54
  JAL zero, bb129
bb50:
  ADD s0, zero, zero
  LW t4, 64(sp)
  ADD s3, t4, zero
  JAL zero, bb56
bb51:
  ADDI t4, zero, 1
  SB t4, 72(sp)
  JAL zero, bb53
bb52:
  ADDI s0, zero, 57
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 72(sp)
  JAL zero, bb53
bb53:
  LB t4, 72(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb49
  JAL zero, bb50
bb54:
  ADDI s0, zero, 1
  JAL zero, bb55
bb55:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb48
bb56:
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  LW t4, 88(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb59
  JAL zero, bb60
bb57:
  ADDI s6, zero, 10
  LW t4, 80(sp)
  MULW s5, t4, s6
  LW t4, 88(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb56
bb58:
  LW t4, 56(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb62
  JAL zero, bb63
bb59:
  ADDI s6, zero, 57
  LW t4, 88(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 96(sp)
  JAL zero, bb61
bb60:
  ADD t4, zero, zero
  SB t4, 96(sp)
  JAL zero, bb61
bb61:
  LB t4, 96(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb57
  JAL zero, bb58
bb62:
  LW t4, 80(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 104(sp)
  JAL zero, bb9
bb63:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  JAL zero, bb9
bb64:
  ADD t4, s4, zero
  SW t4, 168(sp)
  ADD t4, s9, zero
  SW t4, 160(sp)
  LW t4, 168(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb67
  JAL zero, bb68
bb65:
  LW t4, 168(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb70
  JAL zero, bb130
bb66:
  ADD s3, zero, zero
  LW t4, 168(sp)
  ADD s4, t4, zero
  JAL zero, bb72
bb67:
  ADDI t4, zero, 1
  SB t4, 176(sp)
  JAL zero, bb69
bb68:
  ADDI s0, zero, 57
  LW t4, 168(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 176(sp)
  JAL zero, bb69
bb69:
  LB t4, 176(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb65
  JAL zero, bb66
bb70:
  ADDI s8, zero, 1
  JAL zero, bb71
bb71:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb64
bb72:
  ADD t4, s4, zero
  SW t4, 192(sp)
  ADD t4, s3, zero
  SW t4, 184(sp)
  LW t4, 192(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb75
  JAL zero, bb76
bb73:
  ADDI s10, zero, 10
  LW t4, 184(sp)
  MULW s7, t4, s10
  LW t4, 192(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb72
bb74:
  LW t4, 160(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb78
  JAL zero, bb79
bb75:
  ADDI s10, zero, 57
  LW t4, 192(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 200(sp)
  JAL zero, bb77
bb76:
  ADD t4, zero, zero
  SB t4, 200(sp)
  JAL zero, bb77
bb77:
  LB t4, 200(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb73
  JAL zero, bb74
bb78:
  LW t4, 184(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 208(sp)
  JAL zero, bb20
bb79:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  JAL zero, bb20
bb80:
  ADD t4, s10, zero
  SW t4, 224(sp)
  ADD t4, s7, zero
  SW t4, 216(sp)
  LW t4, 224(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb83
  JAL zero, bb84
bb81:
  LW t4, 224(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb86
  JAL zero, bb131
bb82:
  ADD s3, zero, zero
  LW t4, 224(sp)
  ADD s7, t4, zero
  JAL zero, bb88
bb83:
  ADDI t4, zero, 1
  SB t4, 240(sp)
  JAL zero, bb85
bb84:
  ADDI s0, zero, 57
  LW t4, 224(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 240(sp)
  JAL zero, bb85
bb85:
  LB t4, 240(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb81
  JAL zero, bb82
bb86:
  ADDI s3, zero, 1
  JAL zero, bb87
bb87:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb80
bb88:
  ADD t4, s7, zero
  SW t4, 288(sp)
  ADD t4, s3, zero
  SW t4, 280(sp)
  LW t4, 288(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb91
  JAL zero, bb92
bb89:
  ADDI s4, zero, 10
  LW t4, 280(sp)
  MULW s1, t4, s4
  LW t4, 288(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb88
bb90:
  LW t4, 216(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb94
  JAL zero, bb95
bb91:
  ADDI s4, zero, 57
  LW t4, 288(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 296(sp)
  JAL zero, bb93
bb92:
  ADD t4, zero, zero
  SB t4, 296(sp)
  JAL zero, bb93
bb93:
  LB t4, 296(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb89
  JAL zero, bb90
bb94:
  LW t4, 280(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 304(sp)
  JAL zero, bb21
bb95:
  LW t3, 280(sp)
  ADD t4, t3, zero
  SW t4, 304(sp)
  JAL zero, bb21
bb96:
  ADD t4, s2, zero
  SW t4, 328(sp)
  ADD t4, s1, zero
  SW t4, 320(sp)
  LW t4, 328(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb99
  JAL zero, bb100
bb97:
  LW t4, 328(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb102
  JAL zero, bb132
bb98:
  ADD s1, zero, zero
  LW t4, 328(sp)
  ADD s2, t4, zero
  JAL zero, bb104
bb99:
  ADDI t4, zero, 1
  SB t4, 336(sp)
  JAL zero, bb101
bb100:
  ADDI s0, zero, 57
  LW t4, 328(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 336(sp)
  JAL zero, bb101
bb101:
  LB t4, 336(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb97
  JAL zero, bb98
bb102:
  ADDI s5, zero, 1
  JAL zero, bb103
bb103:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb96
bb104:
  ADD t4, s2, zero
  SW t4, 352(sp)
  ADD t4, s1, zero
  SW t4, 344(sp)
  LW t4, 352(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb107
  JAL zero, bb108
bb105:
  ADDI s7, zero, 10
  LW t4, 344(sp)
  MULW s9, t4, s7
  LW t4, 352(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb104
bb106:
  LW t4, 320(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb110
  JAL zero, bb111
bb107:
  ADDI s7, zero, 57
  LW t4, 352(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 360(sp)
  JAL zero, bb109
bb108:
  ADD t4, zero, zero
  SB t4, 360(sp)
  JAL zero, bb109
bb109:
  LB t4, 360(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb105
  JAL zero, bb106
bb110:
  LW t4, 344(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 368(sp)
  JAL zero, bb25
bb111:
  LW t3, 344(sp)
  ADD t4, t3, zero
  SW t4, 368(sp)
  JAL zero, bb25
bb112:
  ADD s7, s10, zero
  ADD s11, s9, zero
  SLTI s3, s7, 48
  BNE s3, zero, bb115
  JAL zero, bb116
bb113:
  XORI s0, s7, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb118
  JAL zero, bb133
bb114:
  ADD s0, zero, zero
  ADD s4, s7, zero
  JAL zero, bb120
bb115:
  ADDI s3, zero, 1
  JAL zero, bb117
bb116:
  ADDI s0, zero, 57
  SLT s2, s0, s7
  ADD s3, s2, zero
  JAL zero, bb117
bb117:
  ADD s0, s3, zero
  BNE s0, zero, bb113
  JAL zero, bb114
bb118:
  ADDI s0, zero, 1
  JAL zero, bb119
bb119:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb112
bb120:
  ADD s6, s4, zero
  ADD s9, s0, zero
  SLTI s10, s6, 48
  XORI s5, s10, 1
  BNE s5, zero, bb123
  JAL zero, bb124
bb121:
  ADDI s5, zero, 10
  MULW s8, s9, s5
  ADDW s5, s8, s6
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb120
bb122:
  XOR s0, s11, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb126
  JAL zero, bb127
bb123:
  ADDI s5, zero, 57
  SLT s10, s5, s6
  XORI s5, s10, 1
  ADD s10, s5, zero
  JAL zero, bb125
bb124:
  ADD s10, zero, zero
  JAL zero, bb125
bb125:
  ADD s5, s10, zero
  BNE s5, zero, bb121
  JAL zero, bb122
bb126:
  SUB s0, zero, s9
  ADD s2, s0, zero
  JAL zero, bb26
bb127:
  ADD s2, s9, zero
  JAL zero, bb26
bb128:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb39
bb129:
  LW t4, 56(sp)
  ADD s0, t4, zero
  JAL zero, bb55
bb130:
  LW t4, 160(sp)
  ADD s8, t4, zero
  JAL zero, bb71
bb131:
  LW t4, 216(sp)
  ADD s3, t4, zero
  JAL zero, bb87
bb132:
  LW t4, 320(sp)
  ADD s5, t4, zero
  JAL zero, bb103
bb133:
  ADD s0, s11, zero
  JAL zero, bb119
find:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s1, s2, 1
  BNE s1, zero, bb135
  JAL zero, bb136
bb135:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb136:
  LW s0, 0(s3)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
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
  JAL zero, bb138
bb138:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb141
  JAL zero, bb142
bb139:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb144
  JAL zero, bb154
bb140:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb146
bb141:
  ADDI s4, zero, 1
  JAL zero, bb143
bb142:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb143
bb143:
  ADD s5, s4, zero
  BNE s5, zero, bb139
  JAL zero, bb140
bb144:
  ADDI s5, zero, 1
  JAL zero, bb145
bb145:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb138
bb146:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb149
  JAL zero, bb150
bb147:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb146
bb148:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb152
  JAL zero, bb153
bb149:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb151
bb150:
  ADD s8, zero, zero
  JAL zero, bb151
bb151:
  ADD s7, s8, zero
  BNE s7, zero, bb147
  JAL zero, bb148
bb152:
  SUB s1, zero, s6
  ADD a0, s1, zero
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
bb153:
  ADD a0, s6, zero
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
bb154:
  ADD s5, s3, zero
  JAL zero, bb145
