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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s2, vis
  ADD s4, s2, s3
  ADDI s2, zero, 1
  SW s2, 0(s4)
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:
  LA s0, head
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADD s2, s0, zero
  # implict jump to bb2
bb2:
  ADD s0, s2, zero
  XORI s3, s0, -1
  SLTU s4, zero, s3
  BNE s4, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADDI s3, zero, 4
  MULW s4, s0, s3
  LA s0, to
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADDI s3, zero, 4
  MULW s5, s0, s3
  LA s3, vis
  ADD s6, s3, s5
  LW s3, 0(s6)
  XOR s5, s3, zero
  SLTU s3, zero, s5
  XORI s5, s3, 1
  XOR s3, s5, zero
  SLTU s5, zero, s3
  BNE s5, zero, bb9
  # implict jump to bb5
bb5:
  ADD s3, zero, zero
  # implict jump to bb6
bb6:
  ADD s0, s3, zero
  BNE s0, zero, bb8
  # implict jump to bb7
bb7:
  LA s0, next
  ADD s5, s0, s4
  LW s0, 0(s5)
  ADD s2, s0, zero
  JAL zero, bb2
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL same
  ADD s0, a0, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s3, s0, zero
  JAL zero, bb6
bb10:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, zero, zero
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  SLTI s2, s1, 1005
  BNE s2, zero, bb14
  # implict jump to bb13
bb13:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb14:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, head
  ADD s4, s2, s3
  ADDI s2, zero, -1
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb12
add_edge:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, to
  ADD s3, s2, s4
  SW s1, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, next
  ADD s3, s2, s4
  ADDI s2, zero, 4
  MULW s4, s0, s2
  LA s2, head
  ADD s5, s2, s4
  LW s2, 0(s5)
  SW s2, 0(s3)
  LA s2, cnt
  LW s3, 0(s2)
  SW s3, 0(s5)
  LA s2, cnt
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, cnt
  SW s2, 0(s3)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s2, to
  ADD s3, s2, s4
  SW s0, 0(s3)
  LA s0, cnt
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, next
  ADD s2, s0, s3
  ADDI s0, zero, 4
  MULW s3, s1, s0
  LA s0, head
  ADD s1, s0, s3
  LW s0, 0(s1)
  SW s0, 0(s2)
  LA s0, cnt
  LW s2, 0(s0)
  SW s2, 0(s1)
  LA s0, cnt
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, cnt
  SW s0, 0(s1)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -288
  SD s11, 184(sp)
  SD s8, 192(sp)
  SD s10, 200(sp)
  SD s0, 208(sp)
  SD s5, 216(sp)
  SD s7, 224(sp)
  SD s1, 232(sp)
  SD s6, 240(sp)
  SD s2, 248(sp)
  SD s9, 256(sp)
  SD s4, 264(sp)
  SD ra, 272(sp)
  SD s3, 280(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb17
bb17:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb142
  # implict jump to bb18
bb18:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb19
bb19:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb138
  # implict jump to bb20
bb20:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb137
  # implict jump to bb22
bb22:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb23
bb23:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb136
  # implict jump to bb24
bb24:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb135
  # implict jump to bb25
bb25:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb26
bb26:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  CALL getch
  ADD s1, a0, zero
  ADD s7, zero, zero
  ADD s9, s1, zero
  # implict jump to bb27
bb27:
  ADD t4, s9, zero
  SW t4, 32(sp)
  ADD t4, s7, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s11, t4, 48
  BNE s11, zero, bb134
  # implict jump to bb28
bb28:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 36(sp)
  # implict jump to bb29
bb29:
  LB t4, 36(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb130
  # implict jump to bb30
bb30:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s3, t4, zero
  # implict jump to bb31
bb31:
  ADD t4, s3, zero
  SW t4, 44(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  LW t4, 44(sp)
  SLTI s9, t4, 48
  XORI s6, s9, 1
  BNE s6, zero, bb129
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SB t4, 48(sp)
  # implict jump to bb33
bb33:
  LB t4, 48(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb128
  # implict jump to bb34
bb34:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb127
  # implict jump to bb35
bb35:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  # implict jump to bb36
bb36:
  LW t4, 52(sp)
  ADD s0, t4, zero
  LA s5, m
  SW s0, 0(s5)
  ADD s0, zero, zero
  # implict jump to bb37
bb37:
  ADD s5, s0, zero
  SLTI s6, s5, 1005
  BNE s6, zero, bb126
  # implict jump to bb38
bb38:
  ADD s0, zero, zero
  ADD s2, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb39
bb39:
  ADD t4, s6, zero
  SW t4, 72(sp)
  ADD t4, s5, zero
  SW t4, 68(sp)
  ADD t4, s2, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 60(sp)
  LA s7, m
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD s11, 184(sp)
  LD s8, 192(sp)
  LD s10, 200(sp)
  LD s0, 208(sp)
  LD s5, 216(sp)
  LD s7, 224(sp)
  LD s1, 232(sp)
  LD s6, 240(sp)
  LD s2, 248(sp)
  LD s9, 256(sp)
  LD s4, 264(sp)
  LD ra, 272(sp)
  LD s3, 280(sp)
  ADDI sp, sp, 288
  JALR zero, 0(ra)
bb41:
  CALL getch
  ADD s4, a0, zero
  ADD s7, s4, zero
  # implict jump to bb42
bb42:
  ADD t4, s7, zero
  SW t4, 56(sp)
  LW t4, 56(sp)
  XORI s9, t4, 81
  SLTU s3, zero, s9
  BNE s3, zero, bb125
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SB t4, 76(sp)
  # implict jump to bb44
bb44:
  LB t4, 76(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb124
  # implict jump to bb45
bb45:
  LW t4, 56(sp)
  XORI s7, t4, 81
  SLTIU s9, s7, 1
  BNE s9, zero, bb84
  # implict jump to bb46
bb46:
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb47
bb47:
  ADD t4, s2, zero
  SW t4, 156(sp)
  ADD t4, s1, zero
  SW t4, 152(sp)
  LW t4, 156(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb83
  # implict jump to bb48
bb48:
  ADDI s0, zero, 57
  LW t4, 156(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 160(sp)
  # implict jump to bb49
bb49:
  LB t4, 160(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb79
  # implict jump to bb50
bb50:
  ADD s1, zero, zero
  LW t4, 156(sp)
  ADD s2, t4, zero
  # implict jump to bb51
bb51:
  ADD t4, s2, zero
  SW t4, 168(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  LW t4, 168(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb78
  # implict jump to bb52
bb52:
  ADD t4, zero, zero
  SB t4, 172(sp)
  # implict jump to bb53
bb53:
  LB t4, 172(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb77
  # implict jump to bb54
bb54:
  LW t4, 152(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb76
  # implict jump to bb55
bb55:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  # implict jump to bb56
bb56:
  LW t4, 176(sp)
  ADD s1, t4, zero
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s10, s7, zero
  # implict jump to bb57
bb57:
  ADD s7, s10, zero
  ADD s11, s9, zero
  SLTI s3, s7, 48
  BNE s3, zero, bb75
  # implict jump to bb58
bb58:
  ADDI s0, zero, 57
  SLT s2, s0, s7
  ADD s3, s2, zero
  # implict jump to bb59
bb59:
  ADD s0, s3, zero
  BNE s0, zero, bb71
  # implict jump to bb60
bb60:
  ADD s0, zero, zero
  ADD s4, s7, zero
  # implict jump to bb61
bb61:
  ADD s6, s4, zero
  ADD s9, s0, zero
  SLTI s10, s6, 48
  XORI s5, s10, 1
  BNE s5, zero, bb70
  # implict jump to bb62
bb62:
  ADD s10, zero, zero
  # implict jump to bb63
bb63:
  ADD s5, s10, zero
  BNE s5, zero, bb69
  # implict jump to bb64
bb64:
  XOR s0, s11, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb68
  # implict jump to bb65
bb65:
  ADD s2, s9, zero
  # implict jump to bb66
bb66:
  ADD s0, s2, zero
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, to
  ADD s5, s4, s8
  SW s0, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, next
  ADD s5, s4, s8
  ADDI s4, zero, 4
  MULW s8, s1, s4
  LA s4, head
  ADD t0, s4, s8
  LW s4, 0(t0)
  SW s4, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  SW s5, 0(t0)
  LA s4, cnt
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, cnt
  SW s4, 0(s5)
  ADDI s5, zero, 4
  MULW s8, s4, s5
  LA s4, to
  ADD s5, s4, s8
  SW s1, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s5, s4
  LA s4, next
  ADD s5, s4, s8
  ADDI s4, zero, 4
  MULW s8, s0, s4
  LA s4, head
  ADD t0, s4, s8
  LW s4, 0(t0)
  SW s4, 0(s5)
  LA s4, cnt
  LW s5, 0(s4)
  SW s5, 0(t0)
  LA s4, cnt
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, cnt
  SW s4, 0(s5)
  ADD t4, s0, zero
  SW t4, 144(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  ADD t4, s1, zero
  SW t4, 136(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 132(sp)
  # implict jump to bb67
bb67:
  LW t4, 132(sp)
  ADD s1, t4, zero
  LW t4, 136(sp)
  ADD s10, t4, zero
  LW t4, 140(sp)
  ADD s9, t4, zero
  LW t4, 144(sp)
  ADD s8, t4, zero
  LA s7, m
  LW s4, 0(s7)
  ADDI s7, zero, 1
  SUBW s11, s4, s7
  LA s4, m
  SW s11, 0(s4)
  ADD s0, s8, zero
  ADD s2, s9, zero
  ADD s5, s10, zero
  ADD s6, s1, zero
  JAL zero, bb39
bb68:
  SUB s0, zero, s9
  ADD s2, s0, zero
  JAL zero, bb66
bb69:
  ADDI s5, zero, 10
  MULW s8, s9, s5
  ADDW s5, s8, s6
  ADDI s8, zero, 48
  SUBW s2, s5, s8
  CALL getch
  ADD s5, a0, zero
  ADD s0, s2, zero
  ADD s4, s5, zero
  JAL zero, bb61
bb70:
  ADDI s5, zero, 57
  SLT s10, s5, s6
  XORI s5, s10, 1
  ADD s10, s5, zero
  JAL zero, bb63
bb71:
  XORI s0, s7, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb74
  # implict jump to bb72
bb72:
  ADD s0, s11, zero
  # implict jump to bb73
bb73:
  ADD s4, s0, zero
  CALL getch
  ADD s6, a0, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb57
bb74:
  ADDI s0, zero, 1
  JAL zero, bb73
bb75:
  ADDI s3, zero, 1
  JAL zero, bb59
bb76:
  LW t4, 164(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 176(sp)
  JAL zero, bb56
bb77:
  ADDI s7, zero, 10
  LW t4, 164(sp)
  MULW s9, t4, s7
  LW t4, 168(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb51
bb78:
  ADDI s7, zero, 57
  LW t4, 168(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 172(sp)
  JAL zero, bb53
bb79:
  LW t4, 156(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb82
  # implict jump to bb80
bb80:
  LW t4, 152(sp)
  ADD s5, t4, zero
  # implict jump to bb81
bb81:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb47
bb82:
  ADDI s5, zero, 1
  JAL zero, bb81
bb83:
  ADDI t4, zero, 1
  SB t4, 160(sp)
  JAL zero, bb49
bb84:
  CALL getch
  ADD s7, a0, zero
  ADD s9, zero, zero
  ADD s4, s7, zero
  # implict jump to bb85
bb85:
  ADD t4, s4, zero
  SW t4, 84(sp)
  ADD t4, s9, zero
  SW t4, 80(sp)
  LW t4, 84(sp)
  SLTI s1, t4, 48
  BNE s1, zero, bb123
  # implict jump to bb86
bb86:
  ADDI s0, zero, 57
  LW t4, 84(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 88(sp)
  # implict jump to bb87
bb87:
  LB t4, 88(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb119
  # implict jump to bb88
bb88:
  ADD s3, zero, zero
  LW t4, 84(sp)
  ADD s4, t4, zero
  # implict jump to bb89
bb89:
  ADD t4, s4, zero
  SW t4, 96(sp)
  ADD t4, s3, zero
  SW t4, 92(sp)
  LW t4, 96(sp)
  SLTI s10, t4, 48
  XORI s11, s10, 1
  BNE s11, zero, bb118
  # implict jump to bb90
bb90:
  ADD t4, zero, zero
  SB t4, 100(sp)
  # implict jump to bb91
bb91:
  LB t4, 100(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb117
  # implict jump to bb92
bb92:
  LW t4, 80(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb116
  # implict jump to bb93
bb93:
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  # implict jump to bb94
bb94:
  LW t3, 104(sp)
  ADD t4, t3, zero
  SW t4, 116(sp)
  CALL getch
  ADD s4, a0, zero
  ADD s7, zero, zero
  ADD s10, s4, zero
  # implict jump to bb95
bb95:
  ADD t4, s10, zero
  SW t4, 112(sp)
  ADD t4, s7, zero
  SW t4, 108(sp)
  LW t4, 112(sp)
  SLTI s8, t4, 48
  BNE s8, zero, bb115
  # implict jump to bb96
bb96:
  ADDI s0, zero, 57
  LW t4, 112(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 120(sp)
  # implict jump to bb97
bb97:
  LB t4, 120(sp)
  ADD s11, t4, zero
  BNE s11, zero, bb111
  # implict jump to bb98
bb98:
  ADD s3, zero, zero
  LW t4, 112(sp)
  ADD s7, t4, zero
  # implict jump to bb99
bb99:
  ADD t4, s7, zero
  SW t4, 128(sp)
  ADD t4, s3, zero
  SW t4, 124(sp)
  LW t4, 128(sp)
  SLTI s11, t4, 48
  XORI s4, s11, 1
  BNE s4, zero, bb110
  # implict jump to bb100
bb100:
  ADD t4, zero, zero
  SB t4, 148(sp)
  # implict jump to bb101
bb101:
  LB t4, 148(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb109
  # implict jump to bb102
bb102:
  LW t4, 108(sp)
  XOR s1, t4, zero
  SLTU s3, zero, s1
  BNE s3, zero, bb108
  # implict jump to bb103
bb103:
  LW t4, 124(sp)
  ADD s3, t4, zero
  # implict jump to bb104
bb104:
  ADD s1, s3, zero
  ADDI s4, zero, 1
  # implict jump to bb105
bb105:
  ADD s7, s4, zero
  LA s8, n
  LW s10, 0(s8)
  SLT s8, s10, s7
  XORI s10, s8, 1
  BNE s10, zero, bb107
  # implict jump to bb106
bb106:
  LW t4, 116(sp)
  ADD a0, t4, zero
  ADD a1, s1, zero
  CALL same
  ADD s4, a0, zero
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  ADD t4, s1, zero
  SW t4, 132(sp)
  JAL zero, bb67
bb107:
  ADDI s8, zero, 4
  MULW s10, s7, s8
  LA s8, vis
  ADD s9, s8, s10
  SW zero, 0(s9)
  ADDIW s8, s7, 1
  ADD s4, s8, zero
  JAL zero, bb105
bb108:
  LW t4, 124(sp)
  SUB s1, zero, t4
  ADD s3, s1, zero
  JAL zero, bb104
bb109:
  ADDI s4, zero, 10
  LW t4, 124(sp)
  MULW s1, t4, s4
  LW t4, 128(sp)
  ADDW s4, s1, t4
  ADDI s1, zero, 48
  SUBW s8, s4, s1
  CALL getch
  ADD s1, a0, zero
  ADD s3, s8, zero
  ADD s7, s1, zero
  JAL zero, bb99
bb110:
  ADDI s4, zero, 57
  LW t4, 128(sp)
  SLT s11, s4, t4
  XORI s4, s11, 1
  ADD t4, s4, zero
  SB t4, 148(sp)
  JAL zero, bb101
bb111:
  LW t4, 112(sp)
  XORI s11, t4, 45
  SLTIU s3, s11, 1
  BNE s3, zero, bb114
  # implict jump to bb112
bb112:
  LW t4, 108(sp)
  ADD s3, t4, zero
  # implict jump to bb113
bb113:
  ADD s11, s3, zero
  CALL getch
  ADD s9, a0, zero
  ADD s7, s11, zero
  ADD s10, s9, zero
  JAL zero, bb95
bb114:
  ADDI s3, zero, 1
  JAL zero, bb113
bb115:
  ADDI t4, zero, 1
  SB t4, 120(sp)
  JAL zero, bb97
bb116:
  LW t4, 92(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 104(sp)
  JAL zero, bb94
bb117:
  ADDI s10, zero, 10
  LW t4, 92(sp)
  MULW s7, t4, s10
  LW t4, 96(sp)
  ADDW s10, s7, t4
  ADDI s7, zero, 48
  SUBW s1, s10, s7
  CALL getch
  ADD s7, a0, zero
  ADD s3, s1, zero
  ADD s4, s7, zero
  JAL zero, bb89
bb118:
  ADDI s10, zero, 57
  LW t4, 96(sp)
  SLT s11, s10, t4
  XORI s10, s11, 1
  ADD t4, s10, zero
  SB t4, 100(sp)
  JAL zero, bb91
bb119:
  LW t4, 84(sp)
  XORI s10, t4, 45
  SLTIU s8, s10, 1
  BNE s8, zero, bb122
  # implict jump to bb120
bb120:
  LW t4, 80(sp)
  ADD s8, t4, zero
  # implict jump to bb121
bb121:
  ADD s10, s8, zero
  CALL getch
  ADD s3, a0, zero
  ADD s9, s10, zero
  ADD s4, s3, zero
  JAL zero, bb85
bb122:
  ADDI s8, zero, 1
  JAL zero, bb121
bb123:
  ADDI t4, zero, 1
  SB t4, 88(sp)
  JAL zero, bb87
bb124:
  CALL getch
  ADD s9, a0, zero
  ADD s7, s9, zero
  JAL zero, bb42
bb125:
  LW t4, 56(sp)
  XORI s3, t4, 85
  SLTU s9, zero, s3
  ADD t4, s9, zero
  SB t4, 76(sp)
  JAL zero, bb44
bb126:
  ADDI s6, zero, 4
  MULW s8, s5, s6
  LA s6, head
  ADD s2, s6, s8
  ADDI s6, zero, -1
  SW s6, 0(s2)
  ADDIW s2, s5, 1
  ADD s0, s2, zero
  JAL zero, bb37
bb127:
  LW t4, 40(sp)
  SUB s0, zero, t4
  ADD t4, s0, zero
  SW t4, 52(sp)
  JAL zero, bb36
bb128:
  ADDI s6, zero, 10
  LW t4, 40(sp)
  MULW s5, t4, s6
  LW t4, 44(sp)
  ADDW s6, s5, t4
  ADDI s5, zero, 48
  SUBW s8, s6, s5
  CALL getch
  ADD s5, a0, zero
  ADD s0, s8, zero
  ADD s3, s5, zero
  JAL zero, bb31
bb129:
  ADDI s6, zero, 57
  LW t4, 44(sp)
  SLT s9, s6, t4
  XORI s6, s9, 1
  ADD t4, s6, zero
  SB t4, 48(sp)
  JAL zero, bb33
bb130:
  LW t4, 32(sp)
  XORI s3, t4, 45
  SLTIU s0, s3, 1
  BNE s0, zero, bb133
  # implict jump to bb131
bb131:
  LW t4, 28(sp)
  ADD s0, t4, zero
  # implict jump to bb132
bb132:
  ADD s3, s0, zero
  CALL getch
  ADD s4, a0, zero
  ADD s7, s3, zero
  ADD s9, s4, zero
  JAL zero, bb27
bb133:
  ADDI s0, zero, 1
  JAL zero, bb132
bb134:
  ADDI t4, zero, 1
  SB t4, 36(sp)
  JAL zero, bb29
bb135:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb26
bb136:
  ADDI s7, zero, 10
  LW t4, 12(sp)
  MULW s9, t4, s7
  LW t4, 16(sp)
  ADDW s7, s9, t4
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb21
bb137:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb23
bb138:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb141
  # implict jump to bb139
bb139:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb140
bb140:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb17
bb141:
  ADDI s5, zero, 1
  JAL zero, bb140
bb142:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb19
clear:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  # implict jump to bb144
bb144:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  BNE s3, zero, bb146
  # implict jump to bb145
bb145:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb146:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, vis
  ADD s4, s2, s3
  SW zero, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb144
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
  # implict jump to bb148
bb148:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb164
  # implict jump to bb149
bb149:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb150
bb150:
  ADD s5, s4, zero
  BNE s5, zero, bb160
  # implict jump to bb151
bb151:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb152
bb152:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb159
  # implict jump to bb153
bb153:
  ADD s8, zero, zero
  # implict jump to bb154
bb154:
  ADD s7, s8, zero
  BNE s7, zero, bb158
  # implict jump to bb155
bb155:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb157
  # implict jump to bb156
bb156:
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
bb157:
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
bb158:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb152
bb159:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb154
bb160:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb163
  # implict jump to bb161
bb161:
  ADD s5, s3, zero
  # implict jump to bb162
bb162:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb148
bb163:
  ADDI s5, zero, 1
  JAL zero, bb162
bb164:
  ADDI s4, zero, 1
  JAL zero, bb150
