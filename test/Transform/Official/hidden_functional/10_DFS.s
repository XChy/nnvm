.global same
.global init
.global add_edge
.global main
.global clear
.global quick_read
.section .bss
vis:
.space 4020
head:
.space 4020
next:
.space 20020
to:
.space 20020





.section .data




maxm:
.word 0x0000138d
cnt:
.word 0x00000000
maxn:
.word 0x000003ed
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SLLIW s2, s0, 2
  LA s3, vis
  ADD s3, s3, s2
  ADDI s4, zero, 1
  SW s4, 0(s3)
  XOR s0, s0, s1
  SLTIU s0, s0, 1
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:
  LA s0, head
  ADD s0, s0, s2
  LW s0, 0(s0)
  # implict jump to bb2
bb2:
  ADD s2, s0, zero
  XORI s3, s2, -1
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  SLLIW s2, s2, 2
  LA s3, to
  ADD s3, s3, s2
  LW s3, 0(s3)
  SLLIW s4, s3, 2
  LA s5, vis
  ADD s4, s5, s4
  LW s4, 0(s4)
  SLTU s4, zero, s4
  XORI s4, s4, 1
  BNE s4, zero, bb9
  # implict jump to bb5
bb5:
  ADD s4, zero, zero
  # implict jump to bb6
bb6:
  BNE s4, zero, bb8
  # implict jump to bb7
bb7:
  LA s3, next
  ADD s2, s3, s2
  LW s2, 0(s2)
  ADD s0, s2, zero
  JAL zero, bb2
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADD a0, s3, zero
  ADD a1, s1, zero
  CALL same
  ADD s3, a0, zero
  SLTU s3, zero, s3
  ADD s4, s3, zero
  JAL zero, bb6
bb10:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SLTI s1, zero, 1005
  BNE s1, zero, bb13
  # implict jump to bb12
bb12:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb13:
  # implict jump to bb14
bb14:
  ADD s1, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, head
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb16
bb16:
  SLTI s2, s0, 1005
  BNE s2, zero, bb17
  JAL zero, bb12
bb17:
  ADD s1, s0, zero
  JAL zero, bb15
add_edge:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s0, cnt
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  LA s2, to
  ADD s2, s2, s1
  SW a1, 0(s2)
  LA s2, next
  ADD s1, s2, s1
  SLLIW s2, a0, 2
  LA s3, head
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s1)
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  LA s1, cnt
  SW s0, 0(s1)
  SLLIW s1, s0, 2
  LA s2, to
  ADD s2, s2, s1
  SW a0, 0(s2)
  LA s2, next
  ADD s1, s2, s1
  SLLIW s2, a1, 2
  LA s3, head
  ADD s2, s3, s2
  LW s3, 0(s2)
  SW s3, 0(s1)
  SW s0, 0(s2)
  ADDIW s0, s0, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -336
  SD ra, 224(sp)
  SD s0, 232(sp)
  SD s1, 240(sp)
  SD s2, 248(sp)
  SD s4, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s10, 280(sp)
  SD s11, 288(sp)
  SD s3, 296(sp)
  SD s5, 304(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s6, zero
  SW t4, 196(sp)
  # implict jump to bb20
bb20:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 184(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb154
  # implict jump to bb21
bb21:
  ADDI s10, zero, 57
  LW t4, 184(sp)
  SLT s10, s10, t4
  # implict jump to bb22
bb22:
  BNE s10, zero, bb150
  # implict jump to bb23
bb23:
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  # implict jump to bb24
bb24:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 64(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb149
  # implict jump to bb25
bb25:
  ADD s9, zero, zero
  # implict jump to bb26
bb26:
  BNE s9, zero, bb148
  # implict jump to bb27
bb27:
  LW t4, 188(sp)
  BNE t4, zero, bb147
  # implict jump to bb28
bb28:
  LW t4, 4(sp)
  ADD s8, t4, zero
  # implict jump to bb29
bb29:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 8(sp)
  # implict jump to bb30
bb30:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb146
  # implict jump to bb31
bb31:
  ADDI s6, zero, 57
  LW t4, 20(sp)
  SLT s6, s6, t4
  # implict jump to bb32
bb32:
  BNE s6, zero, bb142
  # implict jump to bb33
bb33:
  ADD t4, zero, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb34
bb34:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 32(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb141
  # implict jump to bb35
bb35:
  ADD s10, zero, zero
  # implict jump to bb36
bb36:
  BNE s10, zero, bb140
  # implict jump to bb37
bb37:
  LW t4, 16(sp)
  BNE t4, zero, bb139
  # implict jump to bb38
bb38:
  LW t4, 36(sp)
  ADD s10, t4, zero
  # implict jump to bb39
bb39:
  LA s11, m
  SW s10, 0(s11)
  SLTI s10, zero, 1005
  BNE s10, zero, bb134
  # implict jump to bb40
bb40:
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb42
  # implict jump to bb41
bb41:
  ADD a0, zero, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s4, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  LD s3, 296(sp)
  LD s5, 304(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb42:
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb44
bb44:
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, s9, zero
  SW t4, 0(sp)
  # implict jump to bb45
bb45:
  LW t4, 0(sp)
  ADD s10, t4, zero
  XORI s4, s10, 81
  BNE s4, zero, bb133
  # implict jump to bb46
bb46:
  ADD s4, zero, zero
  # implict jump to bb47
bb47:
  BNE s4, zero, bb132
  # implict jump to bb48
bb48:
  XORI s4, s10, 81
  SLTIU s4, s4, 1
  BNE s4, zero, bb89
  # implict jump to bb49
bb49:
  CALL getch
  ADD s4, a0, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  ADD t4, s4, zero
  SW t4, 104(sp)
  # implict jump to bb50
bb50:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb88
  # implict jump to bb51
bb51:
  ADDI s8, zero, 57
  LW t4, 116(sp)
  SLT s8, s8, t4
  # implict jump to bb52
bb52:
  BNE s8, zero, bb84
  # implict jump to bb53
bb53:
  ADD t4, zero, zero
  SW t4, 200(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb54
bb54:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 204(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb83
  # implict jump to bb55
bb55:
  ADD s7, zero, zero
  # implict jump to bb56
bb56:
  BNE s7, zero, bb82
  # implict jump to bb57
bb57:
  LW t4, 112(sp)
  BNE t4, zero, bb81
  # implict jump to bb58
bb58:
  LW t4, 208(sp)
  ADD s0, t4, zero
  # implict jump to bb59
bb59:
  ADD t4, s0, zero
  SW t4, 212(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s6, zero, zero
  ADD t4, s7, zero
  SW t4, 216(sp)
  # implict jump to bb60
bb60:
  LW t4, 216(sp)
  ADD s2, t4, zero
  ADD s4, s6, zero
  SLTI s9, s2, 48
  BNE s9, zero, bb80
  # implict jump to bb61
bb61:
  ADDI s9, zero, 57
  SLT s9, s9, s2
  # implict jump to bb62
bb62:
  BNE s9, zero, bb76
  # implict jump to bb63
bb63:
  ADD s9, zero, zero
  ADD s5, s2, zero
  # implict jump to bb64
bb64:
  ADD s10, s5, zero
  ADD s1, s9, zero
  SLTI s8, s10, 48
  XORI s8, s8, 1
  BNE s8, zero, bb75
  # implict jump to bb65
bb65:
  ADD s8, zero, zero
  # implict jump to bb66
bb66:
  BNE s8, zero, bb74
  # implict jump to bb67
bb67:
  BNE s4, zero, bb73
  # implict jump to bb68
bb68:
  ADD s8, s1, zero
  # implict jump to bb69
bb69:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s3, s11, 2
  LA s0, to
  ADD s0, s0, s3
  SW s8, 0(s0)
  LA s0, next
  ADD s0, s0, s3
  LW t4, 212(sp)
  SLLIW s3, t4, 2
  LA s7, head
  ADD s3, s7, s3
  LW s7, 0(s3)
  SW s7, 0(s0)
  SW s11, 0(s3)
  ADDIW s0, s11, 1
  LA s3, cnt
  SW s0, 0(s3)
  SLLIW s3, s0, 2
  LA s7, to
  ADD s7, s7, s3
  LW t4, 212(sp)
  SW t4, 0(s7)
  LA s7, next
  ADD s3, s7, s3
  SLLIW s7, s8, 2
  LA s11, head
  ADD s7, s11, s7
  LW s11, 0(s7)
  SW s11, 0(s3)
  SW s0, 0(s7)
  ADDIW s0, s0, 1
  LA s3, cnt
  SW s0, 0(s3)
  ADD s0, s8, zero
  LW t4, 56(sp)
  ADD s3, t4, zero
  LW t4, 212(sp)
  ADD s7, t4, zero
  LW t4, 48(sp)
  ADD s8, t4, zero
  # implict jump to bb70
bb70:
  ADD t4, s8, zero
  SW t4, 100(sp)
  ADD t4, s7, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 84(sp)
  ADD t4, s0, zero
  SW t4, 76(sp)
  LA s0, m
  LW s0, 0(s0)
  ADDI s3, zero, 1
  SUBW s0, s0, s3
  LA s3, m
  SW s0, 0(s3)
  # implict jump to bb71
bb71:
  LA s0, m
  LW s0, 0(s0)
  BNE s0, zero, bb72
  JAL zero, bb41
bb72:
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb44
bb73:
  SUB s11, zero, s1
  ADD s8, s11, zero
  JAL zero, bb69
bb74:
  ADDI s11, zero, 10
  MULW s1, s1, s11
  ADDW s1, s1, s10
  ADDI s10, zero, 48
  SUBW s1, s1, s10
  CALL getch
  ADD s10, a0, zero
  ADD s9, s1, zero
  ADD s5, s10, zero
  JAL zero, bb64
bb75:
  ADDI s11, zero, 57
  SLT s11, s11, s10
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb66
bb76:
  XORI s1, s2, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb79
  # implict jump to bb77
bb77:
  ADD s1, s4, zero
  # implict jump to bb78
bb78:
  CALL getch
  ADD s2, a0, zero
  ADD s6, s1, zero
  ADD t4, s2, zero
  SW t4, 216(sp)
  JAL zero, bb60
bb79:
  ADDI s1, zero, 1
  JAL zero, bb78
bb80:
  ADDI s9, zero, 1
  JAL zero, bb62
bb81:
  LW t4, 208(sp)
  SUB s7, zero, t4
  ADD s0, s7, zero
  JAL zero, bb59
bb82:
  ADDI s1, zero, 10
  LW t4, 208(sp)
  MULW s1, t4, s1
  LW t4, 204(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 200(sp)
  ADD t4, s2, zero
  SW t4, 120(sp)
  JAL zero, bb54
bb83:
  ADDI s0, zero, 57
  LW t4, 204(sp)
  SLT s0, s0, t4
  XORI s0, s0, 1
  ADD s7, s0, zero
  JAL zero, bb56
bb84:
  LW t4, 116(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb87
  # implict jump to bb85
bb85:
  LW t4, 112(sp)
  ADD s1, t4, zero
  # implict jump to bb86
bb86:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 108(sp)
  ADD t4, s2, zero
  SW t4, 104(sp)
  JAL zero, bb50
bb87:
  ADDI s1, zero, 1
  JAL zero, bb86
bb88:
  ADDI s8, zero, 1
  JAL zero, bb52
bb89:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 220(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  # implict jump to bb90
bb90:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 168(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb131
  # implict jump to bb91
bb91:
  ADDI s6, zero, 57
  LW t4, 168(sp)
  SLT s6, s6, t4
  # implict jump to bb92
bb92:
  BNE s6, zero, bb127
  # implict jump to bb93
bb93:
  ADD t4, zero, zero
  SW t4, 160(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  # implict jump to bb94
bb94:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t4, 156(sp)
  SLTI s1, t4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb126
  # implict jump to bb95
bb95:
  ADD s1, zero, zero
  # implict jump to bb96
bb96:
  BNE s1, zero, bb125
  # implict jump to bb97
bb97:
  LW t4, 172(sp)
  BNE t4, zero, bb124
  # implict jump to bb98
bb98:
  LW t4, 152(sp)
  ADD s1, t4, zero
  # implict jump to bb99
bb99:
  ADD t4, s1, zero
  SW t4, 148(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, s2, zero
  SW t4, 144(sp)
  # implict jump to bb100
bb100:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 132(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb123
  # implict jump to bb101
bb101:
  ADDI s6, zero, 57
  LW t4, 132(sp)
  SLT s6, s6, t4
  # implict jump to bb102
bb102:
  BNE s6, zero, bb119
  # implict jump to bb103
bb103:
  ADD s6, zero, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  # implict jump to bb104
bb104:
  LW t4, 128(sp)
  ADD s11, t4, zero
  ADD s1, s6, zero
  SLTI s2, s11, 48
  XORI s2, s2, 1
  BNE s2, zero, bb118
  # implict jump to bb105
bb105:
  ADD s2, zero, zero
  # implict jump to bb106
bb106:
  BNE s2, zero, bb117
  # implict jump to bb107
bb107:
  LW t4, 136(sp)
  BNE t4, zero, bb116
  # implict jump to bb108
bb108:
  ADD s2, s1, zero
  # implict jump to bb109
bb109:
  LA s5, n
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb111
  # implict jump to bb110
bb110:
  LW t4, 148(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL same
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 52(sp)
  ADD s0, t4, zero
  LW t4, 148(sp)
  ADD s3, t4, zero
  LW t4, 60(sp)
  ADD s7, t4, zero
  ADD s8, s2, zero
  JAL zero, bb70
bb111:
  ADDI s5, zero, 1
  # implict jump to bb112
bb112:
  # implict jump to bb113
bb113:
  ADD s9, s5, zero
  SLLIW s4, s9, 2
  LA s10, vis
  ADD s4, s10, s4
  SW zero, 0(s4)
  ADDIW t4, s9, 1
  SW t4, 68(sp)
  # implict jump to bb114
bb114:
  LA s4, n
  LW s4, 0(s4)
  LW t4, 68(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  BNE s4, zero, bb115
  JAL zero, bb110
bb115:
  LW t4, 68(sp)
  ADD s5, t4, zero
  JAL zero, bb113
bb116:
  SUB s5, zero, s1
  ADD s2, s5, zero
  JAL zero, bb109
bb117:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s0, s0, s11
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD s6, s0, zero
  ADD t4, s1, zero
  SW t4, 128(sp)
  JAL zero, bb104
bb118:
  ADDI s5, zero, 57
  SLT s5, s5, s11
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb106
bb119:
  LW t4, 132(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb120
bb120:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb121
bb121:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 140(sp)
  ADD t4, s1, zero
  SW t4, 144(sp)
  JAL zero, bb100
bb122:
  ADDI s0, zero, 1
  JAL zero, bb121
bb123:
  ADDI s6, zero, 1
  JAL zero, bb102
bb124:
  LW t4, 152(sp)
  SUB s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb99
bb125:
  ADDI s0, zero, 10
  LW t4, 152(sp)
  MULW s0, t4, s0
  LW t4, 156(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  JAL zero, bb94
bb126:
  ADDI s2, zero, 57
  LW t4, 156(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb96
bb127:
  LW t4, 168(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:
  LW t4, 172(sp)
  ADD s0, t4, zero
  # implict jump to bb129
bb129:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 220(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  JAL zero, bb90
bb130:
  ADDI s0, zero, 1
  JAL zero, bb129
bb131:
  ADDI s6, zero, 1
  JAL zero, bb92
bb132:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb45
bb133:
  XORI s9, s10, 85
  SLTU s9, zero, s9
  ADD s4, s9, zero
  JAL zero, bb47
bb134:
  # implict jump to bb135
bb135:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb136
bb136:
  LW t4, 40(sp)
  ADD s11, t4, zero
  SLLIW s7, s11, 2
  LA s6, head
  ADD s6, s6, s7
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s11, 1
  SW t4, 44(sp)
  # implict jump to bb137
bb137:
  LW t4, 44(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb138
  JAL zero, bb40
bb138:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb136
bb139:
  LW t4, 36(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb39
bb140:
  ADDI s0, zero, 10
  LW t4, 36(sp)
  MULW s0, t4, s0
  LW t4, 32(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 28(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb34
bb141:
  ADDI s11, zero, 57
  LW t4, 32(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb36
bb142:
  LW t4, 20(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb145
  # implict jump to bb143
bb143:
  LW t4, 16(sp)
  ADD s0, t4, zero
  # implict jump to bb144
bb144:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb30
bb145:
  ADDI s0, zero, 1
  JAL zero, bb144
bb146:
  ADDI s6, zero, 1
  JAL zero, bb32
bb147:
  LW t4, 4(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb29
bb148:
  ADDI s0, zero, 10
  LW t4, 4(sp)
  MULW s0, t4, s0
  LW t4, 64(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 124(sp)
  ADD t4, s1, zero
  SW t4, 180(sp)
  JAL zero, bb24
bb149:
  ADDI s8, zero, 57
  LW t4, 64(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb26
bb150:
  LW t4, 184(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb153
  # implict jump to bb151
bb151:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb152
bb152:
  CALL getch
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, a0, zero
  SW t4, 196(sp)
  JAL zero, bb20
bb153:
  ADDI s0, zero, 1
  JAL zero, bb152
bb154:
  ADDI s10, zero, 1
  JAL zero, bb22
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, n
  LW s1, 0(s1)
  SLTI s1, s1, 1
  XORI s1, s1, 1
  BNE s1, zero, bb157
  # implict jump to bb156
bb156:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb157:
  ADDI s1, zero, 1
  # implict jump to bb158
bb158:
  # implict jump to bb159
bb159:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, vis
  ADD s3, s4, s3
  SW zero, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb160
bb160:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb161
  JAL zero, bb156
bb161:
  ADD s1, s0, zero
  JAL zero, bb159
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
  # implict jump to bb163
bb163:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb179
  # implict jump to bb164
bb164:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb165
bb165:
  BNE s4, zero, bb175
  # implict jump to bb166
bb166:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb167
bb167:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb174
  # implict jump to bb168
bb168:
  ADD s8, zero, zero
  # implict jump to bb169
bb169:
  BNE s8, zero, bb173
  # implict jump to bb170
bb170:
  BNE s3, zero, bb172
  # implict jump to bb171
bb171:
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
bb172:
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
bb173:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb167
bb174:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb169
bb175:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb178
  # implict jump to bb176
bb176:
  ADD s2, s3, zero
  # implict jump to bb177
bb177:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb163
bb178:
  ADDI s2, zero, 1
  JAL zero, bb177
bb179:
  ADDI s4, zero, 1
  JAL zero, bb165
