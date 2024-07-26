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
  ADD s1, zero, zero
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, head
  ADD s3, s4, s3
  ADDI s4, zero, -1
  SW s4, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb15
bb15:
  SLTI s2, s0, 1005
  BNE s2, zero, bb16
  JAL zero, bb12
bb16:
  ADD s1, s0, zero
  JAL zero, bb14
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
  SD s5, 256(sp)
  SD s8, 264(sp)
  SD s9, 272(sp)
  SD s10, 280(sp)
  SD s11, 288(sp)
  SD s3, 296(sp)
  SD s4, 304(sp)
  SD s6, 312(sp)
  SD s7, 320(sp)
  CALL getch
  ADD s6, a0, zero
  ADD t4, zero, zero
  SW t4, 192(sp)
  ADD t4, s6, zero
  SW t4, 196(sp)
  # implict jump to bb19
bb19:
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  LW t3, 192(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t4, 184(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb150
  # implict jump to bb20
bb20:
  ADDI s10, zero, 57
  LW t4, 184(sp)
  SLT s10, s10, t4
  # implict jump to bb21
bb21:
  BNE s10, zero, bb146
  # implict jump to bb22
bb22:
  ADD t4, zero, zero
  SW t4, 124(sp)
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 180(sp)
  # implict jump to bb23
bb23:
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 64(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb145
  # implict jump to bb24
bb24:
  ADD s9, zero, zero
  # implict jump to bb25
bb25:
  BNE s9, zero, bb144
  # implict jump to bb26
bb26:
  LW t4, 188(sp)
  BNE t4, zero, bb143
  # implict jump to bb27
bb27:
  LW t4, 4(sp)
  ADD s8, t4, zero
  # implict jump to bb28
bb28:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, s8, zero
  SW t4, 8(sp)
  # implict jump to bb29
bb29:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t4, 20(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb142
  # implict jump to bb30
bb30:
  ADDI s6, zero, 57
  LW t4, 20(sp)
  SLT s6, s6, t4
  # implict jump to bb31
bb31:
  BNE s6, zero, bb138
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SW t4, 28(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb33
bb33:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 32(sp)
  SLTI s10, t4, 48
  XORI s10, s10, 1
  BNE s10, zero, bb137
  # implict jump to bb34
bb34:
  ADD s10, zero, zero
  # implict jump to bb35
bb35:
  BNE s10, zero, bb136
  # implict jump to bb36
bb36:
  LW t4, 16(sp)
  BNE t4, zero, bb135
  # implict jump to bb37
bb37:
  LW t4, 36(sp)
  ADD s10, t4, zero
  # implict jump to bb38
bb38:
  LA s11, m
  SW s10, 0(s11)
  SLTI s10, zero, 1005
  BNE s10, zero, bb131
  # implict jump to bb39
bb39:
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD ra, 224(sp)
  LD s0, 232(sp)
  LD s1, 240(sp)
  LD s2, 248(sp)
  LD s5, 256(sp)
  LD s8, 264(sp)
  LD s9, 272(sp)
  LD s10, 280(sp)
  LD s11, 288(sp)
  LD s3, 296(sp)
  LD s4, 304(sp)
  LD s6, 312(sp)
  LD s7, 320(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb41:
  ADD t4, zero, zero
  SW t4, 96(sp)
  ADD t4, zero, zero
  SW t4, 88(sp)
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  # implict jump to bb42
bb42:
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
  # implict jump to bb43
bb43:
  LW t4, 0(sp)
  ADD s10, t4, zero
  XORI s5, s10, 81
  BNE s5, zero, bb130
  # implict jump to bb44
bb44:
  ADD s5, zero, zero
  # implict jump to bb45
bb45:
  BNE s5, zero, bb129
  # implict jump to bb46
bb46:
  XORI s5, s10, 81
  SLTIU s5, s5, 1
  BNE s5, zero, bb87
  # implict jump to bb47
bb47:
  CALL getch
  ADD s5, a0, zero
  ADD t4, zero, zero
  SW t4, 108(sp)
  ADD t4, s5, zero
  SW t4, 104(sp)
  # implict jump to bb48
bb48:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t4, 116(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb86
  # implict jump to bb49
bb49:
  ADDI s8, zero, 57
  LW t4, 116(sp)
  SLT s8, s8, t4
  # implict jump to bb50
bb50:
  BNE s8, zero, bb82
  # implict jump to bb51
bb51:
  ADD t4, zero, zero
  SW t4, 200(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 120(sp)
  # implict jump to bb52
bb52:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 204(sp)
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 208(sp)
  LW t4, 204(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb81
  # implict jump to bb53
bb53:
  ADD s7, zero, zero
  # implict jump to bb54
bb54:
  BNE s7, zero, bb80
  # implict jump to bb55
bb55:
  LW t4, 112(sp)
  BNE t4, zero, bb79
  # implict jump to bb56
bb56:
  LW t4, 208(sp)
  ADD s1, t4, zero
  # implict jump to bb57
bb57:
  ADD t4, s1, zero
  SW t4, 212(sp)
  CALL getch
  ADD s7, a0, zero
  ADD s6, zero, zero
  ADD t4, s7, zero
  SW t4, 216(sp)
  # implict jump to bb58
bb58:
  LW t4, 216(sp)
  ADD s0, t4, zero
  ADD s5, s6, zero
  SLTI s9, s0, 48
  BNE s9, zero, bb78
  # implict jump to bb59
bb59:
  ADDI s9, zero, 57
  SLT s9, s9, s0
  # implict jump to bb60
bb60:
  BNE s9, zero, bb74
  # implict jump to bb61
bb61:
  ADD s9, zero, zero
  ADD s2, s0, zero
  # implict jump to bb62
bb62:
  ADD s10, s2, zero
  ADD s3, s9, zero
  SLTI s8, s10, 48
  XORI s8, s8, 1
  BNE s8, zero, bb73
  # implict jump to bb63
bb63:
  ADD s8, zero, zero
  # implict jump to bb64
bb64:
  BNE s8, zero, bb72
  # implict jump to bb65
bb65:
  BNE s5, zero, bb71
  # implict jump to bb66
bb66:
  ADD s8, s3, zero
  # implict jump to bb67
bb67:
  LA s11, cnt
  LW s11, 0(s11)
  SLLIW s4, s11, 2
  LA s1, to
  ADD s1, s1, s4
  SW s8, 0(s1)
  LA s1, next
  ADD s1, s1, s4
  LW t4, 212(sp)
  SLLIW s4, t4, 2
  LA s7, head
  ADD s4, s7, s4
  LW s7, 0(s4)
  SW s7, 0(s1)
  SW s11, 0(s4)
  ADDIW s1, s11, 1
  LA s4, cnt
  SW s1, 0(s4)
  SLLIW s4, s1, 2
  LA s7, to
  ADD s7, s7, s4
  LW t4, 212(sp)
  SW t4, 0(s7)
  LA s7, next
  ADD s4, s7, s4
  SLLIW s7, s8, 2
  LA s11, head
  ADD s7, s11, s7
  LW s11, 0(s7)
  SW s11, 0(s4)
  SW s1, 0(s7)
  ADDIW s1, s1, 1
  LA s4, cnt
  SW s1, 0(s4)
  ADD s1, s8, zero
  LW t4, 56(sp)
  ADD s4, t4, zero
  LW t4, 212(sp)
  ADD s7, t4, zero
  LW t4, 48(sp)
  ADD s8, t4, zero
  # implict jump to bb68
bb68:
  ADD t4, s8, zero
  SW t4, 100(sp)
  ADD t4, s7, zero
  SW t4, 92(sp)
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s1, zero
  SW t4, 76(sp)
  LA s1, m
  LW s1, 0(s1)
  ADDI s3, zero, 1
  SUBW s1, s1, s3
  LA s3, m
  SW s1, 0(s3)
  # implict jump to bb69
bb69:
  LA s1, m
  LW s1, 0(s1)
  BNE s1, zero, bb70
  JAL zero, bb40
bb70:
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
  JAL zero, bb42
bb71:
  SUB s11, zero, s3
  ADD s8, s11, zero
  JAL zero, bb67
bb72:
  ADDI s11, zero, 10
  MULW s3, s3, s11
  ADDW s3, s3, s10
  ADDI s10, zero, 48
  SUBW s3, s3, s10
  CALL getch
  ADD s10, a0, zero
  ADD s9, s3, zero
  ADD s2, s10, zero
  JAL zero, bb62
bb73:
  ADDI s11, zero, 57
  SLT s11, s11, s10
  XORI s11, s11, 1
  ADD s8, s11, zero
  JAL zero, bb64
bb74:
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb77
  # implict jump to bb75
bb75:
  ADD s0, s5, zero
  # implict jump to bb76
bb76:
  CALL getch
  ADD s2, a0, zero
  ADD s6, s0, zero
  ADD t4, s2, zero
  SW t4, 216(sp)
  JAL zero, bb58
bb77:
  ADDI s0, zero, 1
  JAL zero, bb76
bb78:
  ADDI s9, zero, 1
  JAL zero, bb60
bb79:
  LW t4, 208(sp)
  SUB s7, zero, t4
  ADD s1, s7, zero
  JAL zero, bb57
bb80:
  ADDI s0, zero, 10
  LW t4, 208(sp)
  MULW s0, t4, s0
  LW t4, 204(sp)
  ADDW s0, s0, t4
  ADDI s2, zero, 48
  SUBW s0, s0, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s0, zero
  SW t4, 200(sp)
  ADD t4, s2, zero
  SW t4, 120(sp)
  JAL zero, bb52
bb81:
  ADDI s1, zero, 57
  LW t4, 204(sp)
  SLT s1, s1, t4
  XORI s1, s1, 1
  ADD s7, s1, zero
  JAL zero, bb54
bb82:
  LW t4, 116(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb85
  # implict jump to bb83
bb83:
  LW t4, 112(sp)
  ADD s0, t4, zero
  # implict jump to bb84
bb84:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s0, zero
  SW t4, 108(sp)
  ADD t4, s2, zero
  SW t4, 104(sp)
  JAL zero, bb48
bb85:
  ADDI s0, zero, 1
  JAL zero, bb84
bb86:
  ADDI s8, zero, 1
  JAL zero, bb50
bb87:
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 220(sp)
  ADD t4, s0, zero
  SW t4, 176(sp)
  # implict jump to bb88
bb88:
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 168(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb128
  # implict jump to bb89
bb89:
  ADDI s6, zero, 57
  LW t4, 168(sp)
  SLT s6, s6, t4
  # implict jump to bb90
bb90:
  BNE s6, zero, bb124
  # implict jump to bb91
bb91:
  ADD t4, zero, zero
  SW t4, 160(sp)
  LW t3, 168(sp)
  ADD t4, t3, zero
  SW t4, 164(sp)
  # implict jump to bb92
bb92:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t4, 156(sp)
  SLTI s0, t4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb93
bb93:
  ADD s0, zero, zero
  # implict jump to bb94
bb94:
  BNE s0, zero, bb122
  # implict jump to bb95
bb95:
  LW t4, 172(sp)
  BNE t4, zero, bb121
  # implict jump to bb96
bb96:
  LW t4, 152(sp)
  ADD s0, t4, zero
  # implict jump to bb97
bb97:
  ADD t4, s0, zero
  SW t4, 148(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 140(sp)
  ADD t4, s2, zero
  SW t4, 144(sp)
  # implict jump to bb98
bb98:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 132(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb120
  # implict jump to bb99
bb99:
  ADDI s6, zero, 57
  LW t4, 132(sp)
  SLT s6, s6, t4
  # implict jump to bb100
bb100:
  BNE s6, zero, bb116
  # implict jump to bb101
bb101:
  ADD s6, zero, zero
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  # implict jump to bb102
bb102:
  LW t4, 128(sp)
  ADD s11, t4, zero
  ADD s0, s6, zero
  SLTI s2, s11, 48
  XORI s2, s2, 1
  BNE s2, zero, bb115
  # implict jump to bb103
bb103:
  ADD s2, zero, zero
  # implict jump to bb104
bb104:
  BNE s2, zero, bb114
  # implict jump to bb105
bb105:
  LW t4, 136(sp)
  BNE t4, zero, bb113
  # implict jump to bb106
bb106:
  ADD s2, s0, zero
  # implict jump to bb107
bb107:
  LA s5, n
  LW s5, 0(s5)
  SLTI s5, s5, 1
  XORI s5, s5, 1
  BNE s5, zero, bb109
  # implict jump to bb108
bb108:
  LW t4, 148(sp)
  ADD a0, t4, zero
  ADD a1, s2, zero
  CALL same
  ADD s3, a0, zero
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 52(sp)
  ADD s1, t4, zero
  LW t4, 148(sp)
  ADD s4, t4, zero
  LW t4, 60(sp)
  ADD s7, t4, zero
  ADD s8, s2, zero
  JAL zero, bb68
bb109:
  ADDI s5, zero, 1
  # implict jump to bb110
bb110:
  ADD s9, s5, zero
  SLLIW s3, s9, 2
  LA s10, vis
  ADD s3, s10, s3
  SW zero, 0(s3)
  ADDIW t4, s9, 1
  SW t4, 68(sp)
  # implict jump to bb111
bb111:
  LA s3, n
  LW s3, 0(s3)
  LW t4, 68(sp)
  SLT s3, s3, t4
  XORI s3, s3, 1
  BNE s3, zero, bb112
  JAL zero, bb108
bb112:
  LW t4, 68(sp)
  ADD s5, t4, zero
  JAL zero, bb110
bb113:
  SUB s5, zero, s0
  ADD s2, s5, zero
  JAL zero, bb107
bb114:
  ADDI s1, zero, 10
  MULW s0, s0, s1
  ADDW s0, s0, s11
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD s6, s0, zero
  ADD t4, s1, zero
  SW t4, 128(sp)
  JAL zero, bb102
bb115:
  ADDI s5, zero, 57
  SLT s5, s5, s11
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb104
bb116:
  LW t4, 132(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb118
bb118:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 140(sp)
  ADD t4, s1, zero
  SW t4, 144(sp)
  JAL zero, bb98
bb119:
  ADDI s0, zero, 1
  JAL zero, bb118
bb120:
  ADDI s6, zero, 1
  JAL zero, bb100
bb121:
  LW t4, 152(sp)
  SUB s2, zero, t4
  ADD s0, s2, zero
  JAL zero, bb97
bb122:
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
  JAL zero, bb92
bb123:
  ADDI s2, zero, 57
  LW t4, 156(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s0, s2, zero
  JAL zero, bb94
bb124:
  LW t4, 168(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb127
  # implict jump to bb125
bb125:
  LW t4, 172(sp)
  ADD s0, t4, zero
  # implict jump to bb126
bb126:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 220(sp)
  ADD t4, s1, zero
  SW t4, 176(sp)
  JAL zero, bb88
bb127:
  ADDI s0, zero, 1
  JAL zero, bb126
bb128:
  ADDI s6, zero, 1
  JAL zero, bb90
bb129:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb43
bb130:
  XORI s9, s10, 85
  SLTU s9, zero, s9
  ADD s5, s9, zero
  JAL zero, bb45
bb131:
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb132
bb132:
  LW t4, 40(sp)
  ADD s11, t4, zero
  SLLIW s7, s11, 2
  LA s6, head
  ADD s6, s6, s7
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s11, 1
  SW t4, 44(sp)
  # implict jump to bb133
bb133:
  LW t4, 44(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb134
  JAL zero, bb39
bb134:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  JAL zero, bb132
bb135:
  LW t4, 36(sp)
  SUB s11, zero, t4
  ADD s10, s11, zero
  JAL zero, bb38
bb136:
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
  JAL zero, bb33
bb137:
  ADDI s11, zero, 57
  LW t4, 32(sp)
  SLT s11, s11, t4
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb35
bb138:
  LW t4, 20(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 16(sp)
  ADD s0, t4, zero
  # implict jump to bb140
bb140:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 12(sp)
  ADD t4, s1, zero
  SW t4, 8(sp)
  JAL zero, bb29
bb141:
  ADDI s0, zero, 1
  JAL zero, bb140
bb142:
  ADDI s6, zero, 1
  JAL zero, bb31
bb143:
  LW t4, 4(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb28
bb144:
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
  JAL zero, bb23
bb145:
  ADDI s8, zero, 57
  LW t4, 64(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb25
bb146:
  LW t4, 184(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb149
  # implict jump to bb147
bb147:
  LW t4, 188(sp)
  ADD s0, t4, zero
  # implict jump to bb148
bb148:
  CALL getch
  ADD t4, s0, zero
  SW t4, 192(sp)
  ADD t4, a0, zero
  SW t4, 196(sp)
  JAL zero, bb19
bb149:
  ADDI s0, zero, 1
  JAL zero, bb148
bb150:
  ADDI s10, zero, 1
  JAL zero, bb21
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
  BNE s1, zero, bb153
  # implict jump to bb152
bb152:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb153:
  ADDI s1, zero, 1
  # implict jump to bb154
bb154:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, vis
  ADD s3, s4, s3
  SW zero, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb155
bb155:
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s2, s0
  XORI s2, s2, 1
  BNE s2, zero, bb156
  JAL zero, bb152
bb156:
  ADD s1, s0, zero
  JAL zero, bb154
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
  # implict jump to bb158
bb158:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb174
  # implict jump to bb159
bb159:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb160
bb160:
  BNE s4, zero, bb170
  # implict jump to bb161
bb161:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb162
bb162:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb169
  # implict jump to bb163
bb163:
  ADD s8, zero, zero
  # implict jump to bb164
bb164:
  BNE s8, zero, bb168
  # implict jump to bb165
bb165:
  BNE s3, zero, bb167
  # implict jump to bb166
bb166:
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
bb167:
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
bb168:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb162
bb169:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb164
bb170:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb173
  # implict jump to bb171
bb171:
  ADD s2, s3, zero
  # implict jump to bb172
bb172:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb158
bb173:
  ADDI s2, zero, 1
  JAL zero, bb172
bb174:
  ADDI s4, zero, 1
  JAL zero, bb160
