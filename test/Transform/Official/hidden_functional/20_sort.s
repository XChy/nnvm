.global sortB
.global sortC
.global main
.global sortA
.global quick_read
.section .bss
c:
.space 400020
b:
.space 400020
a:
.space 400020
x:
.space 400020
cnt:
.space 1600080


.section .data





maxn:
.word 0x000186a5
n:
.word 0x00000000
.section .text
sortB:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADDI s1, zero, -100
  ADD s2, zero, zero
  JAL zero, bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s0, s6
  LW s6, 0(s5)
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s6, cnt
  ADD s7, s6, s8
  LW s6, 0(s5)
  ADDI s8, zero, 4
  MULW s9, s6, s8
  LA s6, cnt
  ADD s8, s6, s9
  LW s6, 0(s8)
  ADDIW s8, s6, 1
  SW s8, 0(s7)
  LW s6, 0(s5)
  SLT s7, s4, s6
  BNE s7, zero, bb4
  JAL zero, bb12
bb3:
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb6
bb4:
  LW s6, 0(s5)
  ADD s5, s6, zero
  JAL zero, bb5
bb5:
  ADD s6, s5, zero
  ADDIW s7, s3, 1
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb1
bb6:
  ADD s3, s2, zero
  ADD s5, s1, zero
  SLT s6, s4, s3
  XORI s7, s6, 1
  BNE s7, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s6, zero, 4
  MULW s7, s3, s6
  LA s6, cnt
  ADD s8, s6, s7
  LW s6, 0(s8)
  ADD s7, s6, zero
  ADD s6, s5, zero
  JAL zero, bb9
bb8:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb9:
  ADD s5, s6, zero
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb10
  JAL zero, bb11
bb10:
  ADDI s9, zero, 4
  MULW s10, s5, s9
  ADD s9, s0, s10
  SW s3, 0(s9)
  ADDIW s9, s5, 1
  ADDI s10, zero, 1
  SUBW s11, s8, s10
  ADD s7, s11, zero
  ADD s6, s9, zero
  JAL zero, bb9
bb11:
  ADDIW s6, s3, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb6
bb12:
  ADD s5, s4, zero
  JAL zero, bb5
sortC:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb15
  JAL zero, bb16
bb15:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  ADD s5, s2, zero
  JAL zero, bb17
bb16:
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s8, zero, 4
  MULW s9, s7, s8
  ADD s8, s0, s9
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s6, s8
  ADD s8, s0, s10
  LW s10, 0(s8)
  SLT s8, s9, s10
  BNE s8, zero, bb20
  JAL zero, bb22
bb19:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 0(s2)
  ADDI s5, zero, 4
  MULW s7, s6, s5
  ADD s5, s0, s7
  LW s6, 0(s5)
  SW s6, 0(s2)
  SW s4, 0(s5)
  ADD s1, s3, zero
  JAL zero, bb14
bb20:
  ADD s8, s7, zero
  JAL zero, bb21
bb21:
  ADD s9, s8, zero
  ADDIW s10, s7, 1
  ADD s4, s10, zero
  ADD s5, s9, zero
  JAL zero, bb17
bb22:
  ADD s8, s6, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -192
  SD s11, 80(sp)
  SD s8, 88(sp)
  SD ra, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD s7, 120(sp)
  SD s10, 128(sp)
  SD s1, 136(sp)
  SD s6, 144(sp)
  SD s2, 152(sp)
  SD s9, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb70
bb24:
  LW t4, 48(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  ADD s1, zero, zero
  JAL zero, bb25
bb25:
  ADD s7, s1, zero
  LA s9, n
  LW s10, 0(s9)
  XOR s9, s7, s10
  SLTU s10, zero, s9
  BNE s10, zero, bb26
  JAL zero, bb28
bb26:
  ADDI s9, zero, 4
  MULW s10, s7, s9
  LA s9, a
  ADD t4, s9, s10
  SD t4, 72(sp)
  CALL getch
  ADD s9, a0, zero
  ADD s3, zero, zero
  ADD s0, s9, zero
  JAL zero, bb86
bb27:
  ADD s0, s2, zero
  LD t4, 72(sp)
  SW s0, 0(t4)
  LA s4, b
  ADD s9, s4, s10
  SW s0, 0(s9)
  LA s4, c
  ADD s9, s4, s10
  SW s0, 0(s9)
  ADDIW s0, s7, 1
  ADD s1, s0, zero
  JAL zero, bb25
bb28:
  JAL zero, bb61
bb29:
  ADD s0, zero, zero
  JAL zero, bb30
bb30:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, b
  ADD s4, s2, s3
  LW s2, 0(s4)
  LA s5, a
  ADD s6, s5, s3
  LW s5, 0(s6)
  SUBW s7, s2, s5
  SW s7, 0(s4)
  LA s2, c
  ADD s4, s2, s3
  LW s2, 0(s4)
  SUBW s3, s2, s7
  LW s2, 0(s6)
  SUBW s5, s3, s2
  SW s5, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb30
bb32:
  ADD s0, zero, zero
  JAL zero, bb33
bb33:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb34
  JAL zero, bb35
bb34:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, b
  ADD s4, s2, s3
  LW s2, 0(s4)
  XOR s4, s2, zero
  SLTU s2, zero, s4
  BNE s2, zero, bb36
  JAL zero, bb37
bb35:
  ADDI a0, zero, -123
  LD s11, 80(sp)
  LD s8, 88(sp)
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s7, 120(sp)
  LD s10, 128(sp)
  LD s1, 136(sp)
  LD s6, 144(sp)
  LD s2, 152(sp)
  LD s9, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb36:
  ADDI a0, zero, 1
  LD s11, 80(sp)
  LD s8, 88(sp)
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s7, 120(sp)
  LD s10, 128(sp)
  LD s1, 136(sp)
  LD s6, 144(sp)
  LD s2, 152(sp)
  LD s9, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb37:
  LA s2, c
  ADD s4, s2, s3
  LW s2, 0(s4)
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb38
  JAL zero, bb39
bb38:
  ADDI a0, zero, 2
  LD s11, 80(sp)
  LD s8, 88(sp)
  LD ra, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s7, 120(sp)
  LD s10, 128(sp)
  LD s1, 136(sp)
  LD s6, 144(sp)
  LD s2, 152(sp)
  LD s9, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb39:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb33
bb40:
  ADDI s0, zero, -100
  ADD s1, zero, zero
  JAL zero, bb41
bb41:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  LA s4, b
  ADD s6, s4, s5
  LW s4, 0(s6)
  ADDI s5, zero, 4
  MULW s7, s4, s5
  LA s4, cnt
  ADD s5, s4, s7
  LW s4, 0(s6)
  ADDI s7, zero, 4
  MULW s8, s4, s7
  LA s4, cnt
  ADD s7, s4, s8
  LW s4, 0(s7)
  ADDIW s7, s4, 1
  SW s7, 0(s5)
  LW s4, 0(s6)
  SLT s5, s3, s4
  BNE s5, zero, bb44
  JAL zero, bb102
bb43:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb46
bb44:
  LW s4, 0(s6)
  ADD s5, s4, zero
  JAL zero, bb45
bb45:
  ADD s4, s5, zero
  ADDIW s6, s2, 1
  ADD s0, s4, zero
  ADD s1, s6, zero
  JAL zero, bb41
bb46:
  ADD s2, s1, zero
  ADD s4, s0, zero
  SLT s5, s3, s2
  XORI s6, s5, 1
  BNE s6, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LA s5, cnt
  ADD s7, s5, s6
  LW s5, 0(s7)
  ADD s6, s5, zero
  ADD s5, s4, zero
  JAL zero, bb49
bb48:
  JAL zero, bb52
bb49:
  ADD s4, s5, zero
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb50
  JAL zero, bb51
bb50:
  ADDI s8, zero, 4
  MULW s9, s4, s8
  LA s8, b
  ADD s10, s8, s9
  SW s2, 0(s10)
  ADDIW s8, s4, 1
  ADDI s9, zero, 1
  SUBW s10, s7, s9
  ADD s6, s10, zero
  ADD s5, s8, zero
  JAL zero, bb49
bb51:
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb46
bb52:
  ADD s0, zero, zero
  JAL zero, bb53
bb53:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb54
  JAL zero, bb55
bb54:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  ADD s4, s1, zero
  JAL zero, bb56
bb55:
  JAL zero, bb29
bb56:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb57
  JAL zero, bb58
bb57:
  ADDI s7, zero, 4
  MULW s8, s6, s7
  LA s7, c
  ADD s9, s7, s8
  LW s7, 0(s9)
  ADDI s8, zero, 4
  MULW s9, s5, s8
  LA s8, c
  ADD s10, s8, s9
  LW s8, 0(s10)
  SLT s9, s7, s8
  BNE s9, zero, bb59
  JAL zero, bb103
bb58:
  ADDI s3, zero, 4
  MULW s4, s1, s3
  LA s1, c
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LA s4, c
  ADD s5, s4, s6
  LW s4, 0(s5)
  SW s4, 0(s3)
  SW s1, 0(s5)
  ADD s0, s2, zero
  JAL zero, bb53
bb59:
  ADD s7, s6, zero
  JAL zero, bb60
bb60:
  ADD s8, s7, zero
  ADDIW s9, s6, 1
  ADD s3, s9, zero
  ADD s4, s8, zero
  JAL zero, bb56
bb61:
  ADD s0, zero, zero
  ADD s1, zero, zero
  JAL zero, bb62
bb62:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb63
  JAL zero, bb64
bb63:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  JAL zero, bb65
bb64:
  JAL zero, bb40
bb65:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb66
  JAL zero, bb67
bb66:
  ADDI s8, zero, 4
  MULW s9, s2, s8
  LA s8, a
  ADD s10, s8, s9
  LW s8, 0(s10)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  LA s9, a
  ADD t0, s9, s11
  LW s9, 0(t0)
  SLT s11, s9, s8
  BNE s11, zero, bb68
  JAL zero, bb104
bb67:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb62
bb68:
  LW s8, 0(s10)
  LW s9, 0(t0)
  SW s9, 0(s10)
  SW s8, 0(t0)
  ADD s9, s8, zero
  JAL zero, bb69
bb69:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb65
bb70:
  ADD t4, s2, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 8(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb73
  JAL zero, bb74
bb71:
  LW t4, 8(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb76
  JAL zero, bb105
bb72:
  ADD s1, zero, zero
  LW t4, 8(sp)
  ADD s2, t4, zero
  JAL zero, bb78
bb73:
  ADDI t4, zero, 1
  SB t4, 16(sp)
  JAL zero, bb75
bb74:
  ADDI s0, zero, 57
  LW t4, 8(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 16(sp)
  JAL zero, bb75
bb75:
  LB t4, 16(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb71
  JAL zero, bb72
bb76:
  ADDI s5, zero, 1
  JAL zero, bb77
bb77:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb70
bb78:
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  LW t4, 32(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb81
  JAL zero, bb82
bb79:
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
  JAL zero, bb78
bb80:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb84
  JAL zero, bb85
bb81:
  ADDI s7, zero, 57
  LW t4, 32(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb83
bb82:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb83
bb83:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb79
  JAL zero, bb80
bb84:
  LW t4, 24(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb24
bb85:
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb24
bb86:
  ADD t4, s0, zero
  SW t4, 64(sp)
  ADD t4, s3, zero
  SW t4, 56(sp)
  LW t4, 64(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb89
  JAL zero, bb90
bb87:
  LW t4, 64(sp)
  XORI s5, t4, 45
  SLTIU s8, s5, 1
  BNE s8, zero, bb92
  JAL zero, bb106
bb88:
  ADD s0, zero, zero
  LW t4, 64(sp)
  ADD s2, t4, zero
  JAL zero, bb94
bb89:
  ADDI s6, zero, 1
  JAL zero, bb91
bb90:
  ADDI s0, zero, 57
  LW t4, 64(sp)
  SLT s1, s0, t4
  ADD s6, s1, zero
  JAL zero, bb91
bb91:
  ADD s5, s6, zero
  BNE s5, zero, bb87
  JAL zero, bb88
bb92:
  ADDI s5, zero, 1
  JAL zero, bb93
bb93:
  ADD s8, s5, zero
  CALL getch
  ADD s2, a0, zero
  ADD s3, s8, zero
  ADD s0, s2, zero
  JAL zero, bb86
bb94:
  ADD s3, s2, zero
  ADD s5, s0, zero
  SLTI s8, s3, 48
  XORI s4, s8, 1
  BNE s4, zero, bb97
  JAL zero, bb98
bb95:
  ADDI s4, zero, 10
  MULW s9, s5, s4
  ADDW s4, s9, s3
  ADDI s9, zero, 48
  SUBW s11, s4, s9
  CALL getch
  ADD s4, a0, zero
  ADD s0, s11, zero
  ADD s2, s4, zero
  JAL zero, bb94
bb96:
  LW t4, 56(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb100
  JAL zero, bb101
bb97:
  ADDI s4, zero, 57
  SLT s8, s4, s3
  XORI s4, s8, 1
  ADD s8, s4, zero
  JAL zero, bb99
bb98:
  ADD s8, zero, zero
  JAL zero, bb99
bb99:
  ADD s4, s8, zero
  BNE s4, zero, bb95
  JAL zero, bb96
bb100:
  SUB s0, zero, s5
  ADD s2, s0, zero
  JAL zero, bb27
bb101:
  ADD s2, s5, zero
  JAL zero, bb27
bb102:
  ADD s5, s3, zero
  JAL zero, bb45
bb103:
  ADD s7, s5, zero
  JAL zero, bb60
bb104:
  ADD s9, s7, zero
  JAL zero, bb69
bb105:
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb77
bb106:
  LW t4, 56(sp)
  ADD s5, t4, zero
  JAL zero, bb93
sortA:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  JAL zero, bb108
bb108:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb109
  JAL zero, bb110
bb109:
  ADDIW s5, s3, 1
  ADD s6, s4, zero
  ADD s4, s5, zero
  JAL zero, bb111
bb110:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb111:
  ADD s7, s4, zero
  ADD s8, s6, zero
  LA s9, n
  LW s10, 0(s9)
  SLT s9, s7, s10
  BNE s9, zero, bb112
  JAL zero, bb113
bb112:
  ADDI s9, zero, 4
  MULW s10, s3, s9
  ADD s9, s0, s10
  LW s10, 0(s9)
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s0, t0
  LW t0, 0(s11)
  SLT t1, t0, s10
  BNE t1, zero, bb114
  JAL zero, bb116
bb113:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb108
bb114:
  LW s10, 0(s9)
  LW t0, 0(s11)
  SW t0, 0(s9)
  SW s10, 0(s11)
  ADD s9, s10, zero
  JAL zero, bb115
bb115:
  ADD s10, s9, zero
  ADDIW s11, s7, 1
  ADD s6, s10, zero
  ADD s4, s11, zero
  JAL zero, bb111
bb116:
  ADD s9, s8, zero
  JAL zero, bb115
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
  JAL zero, bb118
bb118:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb121
  JAL zero, bb122
bb119:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb124
  JAL zero, bb134
bb120:
  ADD s1, zero, zero
  ADD s2, s0, zero
  JAL zero, bb126
bb121:
  ADDI s4, zero, 1
  JAL zero, bb123
bb122:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  JAL zero, bb123
bb123:
  ADD s5, s4, zero
  BNE s5, zero, bb119
  JAL zero, bb120
bb124:
  ADDI s5, zero, 1
  JAL zero, bb125
bb125:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb118
bb126:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb129
  JAL zero, bb130
bb127:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb126
bb128:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb132
  JAL zero, bb133
bb129:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb131
bb130:
  ADD s8, zero, zero
  JAL zero, bb131
bb131:
  ADD s7, s8, zero
  BNE s7, zero, bb127
  JAL zero, bb128
bb132:
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
bb133:
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
bb134:
  ADD s5, s3, zero
  JAL zero, bb125
