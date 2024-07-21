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
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
  SLLIW s2, s1, 2
  LA s3, head
  ADD s2, s3, s2
  ADDI s3, zero, -1
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb12
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
  ADD s1, s2, s1
  SW a1, 0(s1)
  SLLIW s1, s0, 2
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
  ADD s1, s2, s1
  SW a0, 0(s1)
  SLLIW s1, s0, 2
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
  ADDI sp, sp, -320
  SD ra, 208(sp)
  SD s0, 216(sp)
  SD s1, 224(sp)
  SD s10, 232(sp)
  SD s2, 240(sp)
  SD s3, 248(sp)
  SD s4, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  SD s7, 296(sp)
  SD s11, 304(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 200(sp)
  ADD t4, s0, zero
  SW t4, 196(sp)
  # implict jump to bb17
bb17:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 56(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb142
  # implict jump to bb18
bb18:
  ADDI s4, zero, 57
  LW t4, 56(sp)
  SLT s4, s4, t4
  # implict jump to bb19
bb19:
  BNE s4, zero, bb138
  # implict jump to bb20
bb20:
  ADD t4, zero, zero
  SW t4, 8(sp)
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  # implict jump to bb21
bb21:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 12(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb137
  # implict jump to bb22
bb22:
  ADD s8, zero, zero
  # implict jump to bb23
bb23:
  BNE s8, zero, bb136
  # implict jump to bb24
bb24:
  LW t4, 112(sp)
  BNE t4, zero, bb135
  # implict jump to bb25
bb25:
  LW t4, 16(sp)
  ADD s8, t4, zero
  # implict jump to bb26
bb26:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, s8, zero
  SW t4, 20(sp)
  # implict jump to bb27
bb27:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb134
  # implict jump to bb28
bb28:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s0, s0, t4
  # implict jump to bb29
bb29:
  BNE s0, zero, bb130
  # implict jump to bb30
bb30:
  ADD t4, zero, zero
  SW t4, 40(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  # implict jump to bb31
bb31:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t4, 44(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb129
  # implict jump to bb32
bb32:
  ADD s5, zero, zero
  # implict jump to bb33
bb33:
  BNE s5, zero, bb128
  # implict jump to bb34
bb34:
  LW t4, 28(sp)
  BNE t4, zero, bb127
  # implict jump to bb35
bb35:
  LW t4, 48(sp)
  ADD s4, t4, zero
  # implict jump to bb36
bb36:
  LA s5, m
  SW s4, 0(s5)
  ADD t4, zero, zero
  SW t4, 52(sp)
  # implict jump to bb37
bb37:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb126
  # implict jump to bb38
bb38:
  ADD t4, zero, zero
  SW t4, 92(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  # implict jump to bb39
bb39:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LA s3, m
  LW s3, 0(s3)
  BNE s3, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD ra, 208(sp)
  LD s0, 216(sp)
  LD s1, 224(sp)
  LD s10, 232(sp)
  LD s2, 240(sp)
  LD s3, 248(sp)
  LD s4, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  LD s7, 296(sp)
  LD s11, 304(sp)
  ADDI sp, sp, 320
  JALR zero, 0(ra)
bb41:
  CALL getch
  ADD s3, a0, zero
  ADD t4, s3, zero
  SW t4, 76(sp)
  # implict jump to bb42
bb42:
  LW t4, 76(sp)
  ADD s2, t4, zero
  XORI s4, s2, 81
  BNE s4, zero, bb125
  # implict jump to bb43
bb43:
  ADD s4, zero, zero
  # implict jump to bb44
bb44:
  BNE s4, zero, bb124
  # implict jump to bb45
bb45:
  XORI s2, s2, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb84
  # implict jump to bb46
bb46:
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  # implict jump to bb47
bb47:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t4, 108(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb83
  # implict jump to bb48
bb48:
  ADDI s10, zero, 57
  LW t4, 108(sp)
  SLT s10, s10, t4
  # implict jump to bb49
bb49:
  BNE s10, zero, bb79
  # implict jump to bb50
bb50:
  ADD t4, zero, zero
  SW t4, 188(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  # implict jump to bb51
bb51:
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  LW t4, 184(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb78
  # implict jump to bb52
bb52:
  ADD s9, zero, zero
  # implict jump to bb53
bb53:
  BNE s9, zero, bb77
  # implict jump to bb54
bb54:
  LW t4, 104(sp)
  BNE t4, zero, bb76
  # implict jump to bb55
bb55:
  LW t4, 180(sp)
  ADD s8, t4, zero
  # implict jump to bb56
bb56:
  ADD t4, s8, zero
  SW t4, 176(sp)
  CALL getch
  ADD s9, a0, zero
  ADD s7, zero, zero
  ADD t4, s9, zero
  SW t4, 172(sp)
  # implict jump to bb57
bb57:
  LW t4, 172(sp)
  ADD s6, t4, zero
  ADD s2, s7, zero
  SLTI s4, s6, 48
  BNE s4, zero, bb75
  # implict jump to bb58
bb58:
  ADDI s4, zero, 57
  SLT s4, s4, s6
  # implict jump to bb59
bb59:
  BNE s4, zero, bb71
  # implict jump to bb60
bb60:
  ADD s4, zero, zero
  ADD s11, s6, zero
  # implict jump to bb61
bb61:
  ADD s5, s11, zero
  ADD s1, s4, zero
  SLTI s10, s5, 48
  XORI s10, s10, 1
  BNE s10, zero, bb70
  # implict jump to bb62
bb62:
  ADD s10, zero, zero
  # implict jump to bb63
bb63:
  BNE s10, zero, bb69
  # implict jump to bb64
bb64:
  BNE s2, zero, bb68
  # implict jump to bb65
bb65:
  ADD s0, s1, zero
  # implict jump to bb66
bb66:
  LA s10, cnt
  LW s10, 0(s10)
  SLLIW s3, s10, 2
  LA s8, to
  ADD s3, s8, s3
  SW s0, 0(s3)
  SLLIW s3, s10, 2
  LA s8, next
  ADD s3, s8, s3
  LW t4, 176(sp)
  SLLIW s8, t4, 2
  LA s9, head
  ADD s8, s9, s8
  LW s9, 0(s8)
  SW s9, 0(s3)
  SW s10, 0(s8)
  ADDIW s3, s10, 1
  LA s8, cnt
  SW s3, 0(s8)
  SLLIW s8, s3, 2
  LA s9, to
  ADD s8, s9, s8
  LW t4, 176(sp)
  SW t4, 0(s8)
  SLLIW s8, s3, 2
  LA s9, next
  ADD s8, s9, s8
  SLLIW s9, s0, 2
  LA s10, head
  ADD s9, s10, s9
  LW s10, 0(s9)
  SW s10, 0(s8)
  SW s3, 0(s9)
  ADDIW s3, s3, 1
  LA s8, cnt
  SW s3, 0(s8)
  LW t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 176(sp)
  ADD s8, t4, zero
  LW t4, 60(sp)
  ADD s9, t4, zero
  # implict jump to bb67
bb67:
  LA s4, m
  LW s4, 0(s4)
  ADDI s10, zero, 1
  SUBW s4, s4, s10
  LA s10, m
  SW s4, 0(s10)
  ADD t4, s0, zero
  SW t4, 92(sp)
  ADD t4, s3, zero
  SW t4, 88(sp)
  ADD t4, s8, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  JAL zero, bb39
bb68:
  SUB s10, zero, s1
  ADD s0, s10, zero
  JAL zero, bb66
bb69:
  ADDI s10, zero, 10
  MULW s1, s1, s10
  ADDW s1, s1, s5
  ADDI s5, zero, 48
  SUBW s1, s1, s5
  CALL getch
  ADD s5, a0, zero
  ADD s4, s1, zero
  ADD s11, s5, zero
  JAL zero, bb61
bb70:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  ADD s10, s0, zero
  JAL zero, bb63
bb71:
  XORI s1, s6, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb74
  # implict jump to bb72
bb72:
  ADD s1, s2, zero
  # implict jump to bb73
bb73:
  CALL getch
  ADD s2, a0, zero
  ADD s7, s1, zero
  ADD t4, s2, zero
  SW t4, 172(sp)
  JAL zero, bb57
bb74:
  ADDI s1, zero, 1
  JAL zero, bb73
bb75:
  ADDI s4, zero, 1
  JAL zero, bb59
bb76:
  LW t4, 180(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb56
bb77:
  ADDI s1, zero, 10
  LW t4, 180(sp)
  MULW s1, t4, s1
  LW t4, 184(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 188(sp)
  ADD t4, s2, zero
  SW t4, 192(sp)
  JAL zero, bb51
bb78:
  ADDI s8, zero, 57
  LW t4, 184(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb53
bb79:
  LW t4, 108(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb82
  # implict jump to bb80
bb80:
  LW t4, 104(sp)
  ADD s1, t4, zero
  # implict jump to bb81
bb81:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb47
bb82:
  ADDI s1, zero, 1
  JAL zero, bb81
bb83:
  ADDI s10, zero, 1
  JAL zero, bb49
bb84:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 168(sp)
  # implict jump to bb85
bb85:
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 160(sp)
  LW t4, 156(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb123
  # implict jump to bb86
bb86:
  ADDI s6, zero, 57
  LW t4, 156(sp)
  SLT s6, s6, t4
  # implict jump to bb87
bb87:
  BNE s6, zero, bb119
  # implict jump to bb88
bb88:
  ADD t4, zero, zero
  SW t4, 148(sp)
  LW t3, 156(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  # implict jump to bb89
bb89:
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t4, 144(sp)
  SLTI s1, t4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb118
  # implict jump to bb90
bb90:
  ADD s1, zero, zero
  # implict jump to bb91
bb91:
  BNE s1, zero, bb117
  # implict jump to bb92
bb92:
  LW t4, 160(sp)
  BNE t4, zero, bb116
  # implict jump to bb93
bb93:
  LW t4, 140(sp)
  ADD s1, t4, zero
  # implict jump to bb94
bb94:
  ADD t4, s1, zero
  SW t4, 136(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 128(sp)
  ADD t4, s2, zero
  SW t4, 132(sp)
  # implict jump to bb95
bb95:
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t4, 120(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb115
  # implict jump to bb96
bb96:
  ADDI s6, zero, 57
  LW t4, 120(sp)
  SLT s6, s6, t4
  # implict jump to bb97
bb97:
  BNE s6, zero, bb111
  # implict jump to bb98
bb98:
  ADD s6, zero, zero
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  # implict jump to bb99
bb99:
  LW t4, 116(sp)
  ADD s11, t4, zero
  ADD s1, s6, zero
  SLTI s2, s11, 48
  XORI s2, s2, 1
  BNE s2, zero, bb110
  # implict jump to bb100
bb100:
  ADD s2, zero, zero
  # implict jump to bb101
bb101:
  BNE s2, zero, bb109
  # implict jump to bb102
bb102:
  LW t4, 124(sp)
  BNE t4, zero, bb108
  # implict jump to bb103
bb103:
  ADD s2, s1, zero
  # implict jump to bb104
bb104:
  ADDI s5, zero, 1
  # implict jump to bb105
bb105:
  ADD s7, s5, zero
  LA s4, n
  LW s4, 0(s4)
  SLT s4, s4, s7
  XORI s4, s4, 1
  BNE s4, zero, bb107
  # implict jump to bb106
bb106:
  LW t4, 136(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL same
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 72(sp)
  ADD s0, t4, zero
  LW t4, 136(sp)
  ADD s3, t4, zero
  LW t4, 64(sp)
  ADD s8, t4, zero
  ADD s9, s2, zero
  JAL zero, bb67
bb107:
  SLLIW s0, s7, 2
  LA s3, vis
  ADD s0, s3, s0
  SW zero, 0(s0)
  ADDIW s0, s7, 1
  ADD s5, s0, zero
  JAL zero, bb105
bb108:
  SUB s5, zero, s1
  ADD s2, s5, zero
  JAL zero, bb104
bb109:
  ADDI s0, zero, 10
  MULW s0, s1, s0
  ADDW s0, s0, s11
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD s6, s0, zero
  ADD t4, s1, zero
  SW t4, 116(sp)
  JAL zero, bb99
bb110:
  ADDI s5, zero, 57
  SLT s5, s5, s11
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb101
bb111:
  LW t4, 120(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb114
  # implict jump to bb112
bb112:
  LW t4, 124(sp)
  ADD s0, t4, zero
  # implict jump to bb113
bb113:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 128(sp)
  ADD t4, s1, zero
  SW t4, 132(sp)
  JAL zero, bb95
bb114:
  ADDI s0, zero, 1
  JAL zero, bb113
bb115:
  ADDI s6, zero, 1
  JAL zero, bb97
bb116:
  LW t4, 140(sp)
  SUB s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb94
bb117:
  ADDI s0, zero, 10
  LW t4, 140(sp)
  MULW s0, t4, s0
  LW t4, 144(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  JAL zero, bb89
bb118:
  ADDI s2, zero, 57
  LW t4, 144(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb91
bb119:
  LW t4, 156(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb122
  # implict jump to bb120
bb120:
  LW t4, 160(sp)
  ADD s0, t4, zero
  # implict jump to bb121
bb121:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 164(sp)
  ADD t4, s1, zero
  SW t4, 168(sp)
  JAL zero, bb85
bb122:
  ADDI s0, zero, 1
  JAL zero, bb121
bb123:
  ADDI s6, zero, 1
  JAL zero, bb87
bb124:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 76(sp)
  JAL zero, bb42
bb125:
  XORI s5, s2, 85
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb44
bb126:
  LW t4, 0(sp)
  SLLIW s0, t4, 2
  LA s1, head
  ADD s0, s1, s0
  ADDI s1, zero, -1
  SW s1, 0(s0)
  LW t4, 0(sp)
  ADDIW s0, t4, 1
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb37
bb127:
  LW t4, 48(sp)
  SUB s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb36
bb128:
  ADDI s0, zero, 10
  LW t4, 48(sp)
  MULW s0, t4, s0
  LW t4, 44(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 40(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  JAL zero, bb31
bb129:
  ADDI s4, zero, 57
  LW t4, 44(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb33
bb130:
  LW t4, 32(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb133
  # implict jump to bb131
bb131:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb132
bb132:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  JAL zero, bb27
bb133:
  ADDI s0, zero, 1
  JAL zero, bb132
bb134:
  ADDI s0, zero, 1
  JAL zero, bb29
bb135:
  LW t4, 16(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb26
bb136:
  ADDI s0, zero, 10
  LW t4, 16(sp)
  MULW s0, t4, s0
  LW t4, 12(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb21
bb137:
  ADDI s9, zero, 57
  LW t4, 12(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb23
bb138:
  LW t4, 56(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb140
bb140:
  CALL getch
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, a0, zero
  SW t4, 196(sp)
  JAL zero, bb17
bb141:
  ADDI s0, zero, 1
  JAL zero, bb140
bb142:
  ADDI s4, zero, 1
  JAL zero, bb19
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADDI s0, zero, 1
  # implict jump to bb144
bb144:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s1
  XORI s2, s2, 1
  BNE s2, zero, bb146
  # implict jump to bb145
bb145:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb146:
  SLLIW s2, s1, 2
  LA s3, vis
  ADD s2, s3, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb144
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
  # implict jump to bb148
bb148:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb164
  # implict jump to bb149
bb149:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb150
bb150:
  BNE s4, zero, bb160
  # implict jump to bb151
bb151:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb152
bb152:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb159
  # implict jump to bb153
bb153:
  ADD s8, zero, zero
  # implict jump to bb154
bb154:
  BNE s8, zero, bb158
  # implict jump to bb155
bb155:
  BNE s3, zero, bb157
  # implict jump to bb156
bb156:
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
bb157:
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
bb158:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb152
bb159:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb154
bb160:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb163
  # implict jump to bb161
bb161:
  ADD s2, s3, zero
  # implict jump to bb162
bb162:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb148
bb163:
  ADDI s2, zero, 1
  JAL zero, bb162
bb164:
  ADDI s4, zero, 1
  JAL zero, bb150
