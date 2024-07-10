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
  SD ra, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADDI s1, zero, -100
  ADD s2, zero, zero
  # implict jump to bb1
bb1:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb9
  # implict jump to bb2
bb2:
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb3
bb3:
  ADD s3, s2, zero
  ADD s5, s1, zero
  SLT s6, s4, s3
  XORI s7, s6, 1
  BNE s7, zero, bb5
  # implict jump to bb4
bb4:
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
  LD ra, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  SLLIW s6, s3, 2
  LA s7, cnt
  ADD s8, s7, s6
  LW s6, 0(s8)
  ADD s7, s6, zero
  ADD s6, s5, zero
  # implict jump to bb6
bb6:
  ADD s5, s6, zero
  ADD s8, s7, zero
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb8
  # implict jump to bb7
bb7:
  ADDIW s6, s3, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  JAL zero, bb3
bb8:
  SLLIW s9, s5, 2
  ADD s10, s0, s9
  SW s3, 0(s10)
  ADDIW s9, s5, 1
  ADDI s10, zero, 1
  SUBW s11, s8, s10
  ADD s7, s11, zero
  ADD s6, s9, zero
  JAL zero, bb6
bb9:
  SLLIW s5, s3, 2
  ADD s6, s0, s5
  LW s5, 0(s6)
  SLLIW s7, s5, 2
  LA s5, cnt
  ADD s8, s5, s7
  LW s5, 0(s8)
  ADDIW s7, s5, 1
  SW s7, 0(s8)
  LW s5, 0(s6)
  SLT s7, s4, s5
  BNE s7, zero, bb12
  # implict jump to bb10
bb10:
  ADD s6, s4, zero
  # implict jump to bb11
bb11:
  ADD s5, s6, zero
  ADDIW s7, s3, 1
  ADD s1, s5, zero
  ADD s2, s7, zero
  JAL zero, bb1
bb12:
  LW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb11
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
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
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
bb16:
  ADDIW s3, s2, 1
  ADD s4, s3, zero
  ADD s5, s2, zero
  # implict jump to bb17
bb17:
  ADD s6, s5, zero
  ADD s7, s4, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s7, s9
  BNE s8, zero, bb19
  # implict jump to bb18
bb18:
  SLLIW s4, s2, 2
  ADD s2, s0, s4
  LW s4, 0(s2)
  SLLIW s5, s6, 2
  ADD s6, s0, s5
  LW s5, 0(s6)
  SW s5, 0(s2)
  SW s4, 0(s6)
  ADD s1, s3, zero
  JAL zero, bb14
bb19:
  SLLIW s8, s7, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  SLLIW s9, s6, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  SLT s10, s8, s9
  BNE s10, zero, bb22
  # implict jump to bb20
bb20:
  ADD s8, s6, zero
  # implict jump to bb21
bb21:
  ADD s9, s8, zero
  ADDIW s10, s7, 1
  ADD s4, s10, zero
  ADD s5, s9, zero
  JAL zero, bb17
bb22:
  ADD s8, s7, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -160
  SD s11, 48(sp)
  SD s8, 56(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s5, 80(sp)
  SD s7, 88(sp)
  SD s10, 96(sp)
  SD s1, 104(sp)
  SD s6, 112(sp)
  SD s2, 120(sp)
  SD s9, 128(sp)
  SD s3, 136(sp)
  SD s4, 144(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb24
bb24:
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 4(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb102
  # implict jump to bb25
bb25:
  ADDI s0, zero, 57
  LW t4, 4(sp)
  SLT s1, s0, t4
  ADD t4, s1, zero
  SB t4, 8(sp)
  # implict jump to bb26
bb26:
  LB t4, 8(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb98
  # implict jump to bb27
bb27:
  ADD s1, zero, zero
  LW t4, 4(sp)
  ADD s2, t4, zero
  # implict jump to bb28
bb28:
  ADD t4, s2, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s7, t4, 48
  XORI s8, s7, 1
  BNE s8, zero, bb97
  # implict jump to bb29
bb29:
  ADD t4, zero, zero
  SB t4, 20(sp)
  # implict jump to bb30
bb30:
  LB t4, 20(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb96
  # implict jump to bb31
bb31:
  LW t4, 0(sp)
  XOR s1, t4, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb95
  # implict jump to bb32
bb32:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  # implict jump to bb33
bb33:
  LW t4, 24(sp)
  ADD s1, t4, zero
  LA s7, n
  SW s1, 0(s7)
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  ADD s7, s1, zero
  LA s9, n
  LW s10, 0(s9)
  XOR s9, s7, s10
  SLTU s10, zero, s9
  BNE s10, zero, bb76
  # implict jump to bb35
bb35:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb36
bb36:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb69
  # implict jump to bb37
bb37:
  ADDI s0, zero, -100
  ADD s1, zero, zero
  # implict jump to bb38
bb38:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s5, 0(s4)
  SLT s4, s2, s5
  BNE s4, zero, bb65
  # implict jump to bb39
bb39:
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb40
bb40:
  ADD s2, s1, zero
  ADD s4, s0, zero
  SLT s5, s3, s2
  XORI s6, s5, 1
  BNE s6, zero, bb61
  # implict jump to bb41
bb41:
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb54
  # implict jump to bb43
bb43:
  ADD s0, zero, zero
  # implict jump to bb44
bb44:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s3, s1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb53
  # implict jump to bb45
bb45:
  ADD s0, zero, zero
  # implict jump to bb46
bb46:
  ADD s1, s0, zero
  LA s2, n
  LW s3, 0(s2)
  SUBW s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb48
  # implict jump to bb47
bb47:
  ADDI a0, zero, -123
  LD s11, 48(sp)
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s9, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb48:
  SLLIW s2, s1, 2
  LA s3, b
  ADD s4, s3, s2
  LW s3, 0(s4)
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb52
  # implict jump to bb49
bb49:
  LA s3, c
  ADD s4, s3, s2
  LW s2, 0(s4)
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb51
  # implict jump to bb50
bb50:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb46
bb51:
  ADDI a0, zero, 2
  LD s11, 48(sp)
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s9, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb52:
  ADDI a0, zero, 1
  LD s11, 48(sp)
  LD s8, 56(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s5, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  LD s1, 104(sp)
  LD s6, 112(sp)
  LD s2, 120(sp)
  LD s9, 128(sp)
  LD s3, 136(sp)
  LD s4, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb53:
  SLLIW s2, s1, 2
  LA s3, b
  ADD s4, s3, s2
  LW s3, 0(s4)
  LA s5, a
  ADD s6, s5, s2
  LW s5, 0(s6)
  SUBW s7, s3, s5
  SW s7, 0(s4)
  LA s3, c
  ADD s4, s3, s2
  LW s2, 0(s4)
  SUBW s3, s2, s7
  LW s2, 0(s6)
  SUBW s5, s3, s2
  SW s5, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb44
bb54:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  ADD s4, s1, zero
  # implict jump to bb55
bb55:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, n
  LW s8, 0(s7)
  SLT s7, s6, s8
  BNE s7, zero, bb57
  # implict jump to bb56
bb56:
  SLLIW s3, s1, 2
  LA s1, c
  ADD s4, s1, s3
  LW s1, 0(s4)
  SLLIW s3, s5, 2
  LA s5, c
  ADD s6, s5, s3
  LW s3, 0(s6)
  SW s3, 0(s4)
  SW s1, 0(s6)
  ADD s0, s2, zero
  JAL zero, bb42
bb57:
  SLLIW s7, s6, 2
  LA s8, c
  ADD s9, s8, s7
  LW s7, 0(s9)
  SLLIW s8, s5, 2
  LA s9, c
  ADD s10, s9, s8
  LW s8, 0(s10)
  SLT s9, s7, s8
  BNE s9, zero, bb60
  # implict jump to bb58
bb58:
  ADD s7, s5, zero
  # implict jump to bb59
bb59:
  ADD s8, s7, zero
  ADDIW s9, s6, 1
  ADD s3, s9, zero
  ADD s4, s8, zero
  JAL zero, bb55
bb60:
  ADD s7, s6, zero
  JAL zero, bb59
bb61:
  SLLIW s5, s2, 2
  LA s6, cnt
  ADD s7, s6, s5
  LW s5, 0(s7)
  ADD s6, s5, zero
  ADD s5, s4, zero
  # implict jump to bb62
bb62:
  ADD s4, s5, zero
  ADD s7, s6, zero
  XOR s8, s7, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb64
  # implict jump to bb63
bb63:
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb40
bb64:
  SLLIW s8, s4, 2
  LA s9, b
  ADD s10, s9, s8
  SW s2, 0(s10)
  ADDIW s8, s4, 1
  ADDI s9, zero, 1
  SUBW s10, s7, s9
  ADD s6, s10, zero
  ADD s5, s8, zero
  JAL zero, bb62
bb65:
  SLLIW s4, s2, 2
  LA s5, b
  ADD s6, s5, s4
  LW s4, 0(s6)
  SLLIW s5, s4, 2
  LA s4, cnt
  ADD s7, s4, s5
  LW s4, 0(s7)
  ADDIW s5, s4, 1
  SW s5, 0(s7)
  LW s4, 0(s6)
  SLT s5, s3, s4
  BNE s5, zero, bb68
  # implict jump to bb66
bb66:
  ADD s5, s3, zero
  # implict jump to bb67
bb67:
  ADD s4, s5, zero
  ADDIW s6, s2, 1
  ADD s0, s4, zero
  ADD s1, s6, zero
  JAL zero, bb38
bb68:
  LW s4, 0(s6)
  ADD s5, s4, zero
  JAL zero, bb67
bb69:
  ADDIW s4, s2, 1
  ADD s5, s3, zero
  ADD s3, s4, zero
  # implict jump to bb70
bb70:
  ADD s6, s3, zero
  ADD s7, s5, zero
  LA s8, n
  LW s9, 0(s8)
  SLT s8, s6, s9
  BNE s8, zero, bb72
  # implict jump to bb71
bb71:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb36
bb72:
  SLLIW s8, s2, 2
  LA s9, a
  ADD s10, s9, s8
  LW s8, 0(s10)
  SLLIW s9, s6, 2
  LA s11, a
  ADD t0, s11, s9
  LW s9, 0(t0)
  SLT s11, s9, s8
  BNE s11, zero, bb75
  # implict jump to bb73
bb73:
  ADD s9, s7, zero
  # implict jump to bb74
bb74:
  ADD s8, s9, zero
  ADDIW s10, s6, 1
  ADD s5, s8, zero
  ADD s3, s10, zero
  JAL zero, bb70
bb75:
  LW s8, 0(s10)
  LW s9, 0(t0)
  SW s9, 0(s10)
  SW s8, 0(t0)
  ADD s9, s8, zero
  JAL zero, bb74
bb76:
  SLLIW s9, s7, 2
  LA s10, a
  ADD t4, s10, s9
  SD t4, 40(sp)
  CALL getch
  ADD s10, a0, zero
  ADD s3, zero, zero
  ADD s0, s10, zero
  # implict jump to bb77
bb77:
  ADD t4, s0, zero
  SW t4, 32(sp)
  ADD t4, s3, zero
  SW t4, 28(sp)
  LW t4, 32(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb94
  # implict jump to bb78
bb78:
  ADDI s0, zero, 57
  LW t4, 32(sp)
  SLT s1, s0, t4
  ADD s6, s1, zero
  # implict jump to bb79
bb79:
  ADD s5, s6, zero
  BNE s5, zero, bb90
  # implict jump to bb80
bb80:
  ADD s0, zero, zero
  LW t4, 32(sp)
  ADD s2, t4, zero
  # implict jump to bb81
bb81:
  ADD s3, s2, zero
  ADD s5, s0, zero
  SLTI s8, s3, 48
  XORI s4, s8, 1
  BNE s4, zero, bb89
  # implict jump to bb82
bb82:
  ADD s8, zero, zero
  # implict jump to bb83
bb83:
  ADD s4, s8, zero
  BNE s4, zero, bb88
  # implict jump to bb84
bb84:
  LW t4, 28(sp)
  XOR s0, t4, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb87
  # implict jump to bb85
bb85:
  ADD s2, s5, zero
  # implict jump to bb86
bb86:
  ADD s0, s2, zero
  LD t4, 40(sp)
  SW s0, 0(t4)
  LA s4, b
  ADD s10, s4, s9
  SW s0, 0(s10)
  LA s4, c
  ADD s10, s4, s9
  SW s0, 0(s10)
  ADDIW s0, s7, 1
  ADD s1, s0, zero
  JAL zero, bb34
bb87:
  SUB s0, zero, s5
  ADD s2, s0, zero
  JAL zero, bb86
bb88:
  ADDI s4, zero, 10
  MULW s10, s5, s4
  ADDW s4, s10, s3
  ADDI s10, zero, 48
  SUBW s11, s4, s10
  CALL getch
  ADD s4, a0, zero
  ADD s0, s11, zero
  ADD s2, s4, zero
  JAL zero, bb81
bb89:
  ADDI s4, zero, 57
  SLT s8, s4, s3
  XORI s4, s8, 1
  ADD s8, s4, zero
  JAL zero, bb83
bb90:
  LW t4, 32(sp)
  XORI s5, t4, 45
  SLTIU s8, s5, 1
  BNE s8, zero, bb93
  # implict jump to bb91
bb91:
  LW t4, 28(sp)
  ADD s5, t4, zero
  # implict jump to bb92
bb92:
  ADD s8, s5, zero
  CALL getch
  ADD s2, a0, zero
  ADD s3, s8, zero
  ADD s0, s2, zero
  JAL zero, bb77
bb93:
  ADDI s5, zero, 1
  JAL zero, bb92
bb94:
  ADDI s6, zero, 1
  JAL zero, bb79
bb95:
  LW t4, 12(sp)
  SUB s1, zero, t4
  ADD t4, s1, zero
  SW t4, 24(sp)
  JAL zero, bb33
bb96:
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
  JAL zero, bb28
bb97:
  ADDI s7, zero, 57
  LW t4, 16(sp)
  SLT s8, s7, t4
  XORI s7, s8, 1
  ADD t4, s7, zero
  SB t4, 20(sp)
  JAL zero, bb30
bb98:
  LW t4, 4(sp)
  XORI s5, t4, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb101
  # implict jump to bb99
bb99:
  LW t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb100
bb100:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb24
bb101:
  ADDI s5, zero, 1
  JAL zero, bb100
bb102:
  ADDI t4, zero, 1
  SB t4, 8(sp)
  JAL zero, bb26
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
  # implict jump to bb104
bb104:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb106
  # implict jump to bb105
bb105:
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
bb106:
  ADDIW s5, s3, 1
  ADD s6, s4, zero
  ADD s4, s5, zero
  # implict jump to bb107
bb107:
  ADD s7, s4, zero
  ADD s8, s6, zero
  LA s9, n
  LW s10, 0(s9)
  SLT s9, s7, s10
  BNE s9, zero, bb109
  # implict jump to bb108
bb108:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb104
bb109:
  SLLIW s9, s3, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  SLLIW s11, s7, 2
  ADD t0, s0, s11
  LW s11, 0(t0)
  SLT t1, s11, s9
  BNE t1, zero, bb112
  # implict jump to bb110
bb110:
  ADD s10, s8, zero
  # implict jump to bb111
bb111:
  ADD s9, s10, zero
  ADDIW s11, s7, 1
  ADD s6, s9, zero
  ADD s4, s11, zero
  JAL zero, bb107
bb112:
  LW s9, 0(s10)
  LW s11, 0(t0)
  SW s11, 0(s10)
  SW s9, 0(t0)
  ADD s10, s9, zero
  JAL zero, bb111
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
  # implict jump to bb114
bb114:
  ADD s0, s2, zero
  ADD s3, s1, zero
  SLTI s4, s0, 48
  BNE s4, zero, bb130
  # implict jump to bb115
bb115:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  ADD s4, s2, zero
  # implict jump to bb116
bb116:
  ADD s5, s4, zero
  BNE s5, zero, bb126
  # implict jump to bb117
bb117:
  ADD s1, zero, zero
  ADD s2, s0, zero
  # implict jump to bb118
bb118:
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLTI s7, s5, 48
  XORI s8, s7, 1
  BNE s8, zero, bb125
  # implict jump to bb119
bb119:
  ADD s8, zero, zero
  # implict jump to bb120
bb120:
  ADD s7, s8, zero
  BNE s7, zero, bb124
  # implict jump to bb121
bb121:
  XOR s1, s3, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb123
  # implict jump to bb122
bb122:
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
bb123:
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
bb124:
  ADDI s7, zero, 10
  MULW s9, s6, s7
  ADDW s7, s9, s5
  ADDI s9, zero, 48
  SUBW s10, s7, s9
  CALL getch
  ADD s7, a0, zero
  ADD s1, s10, zero
  ADD s2, s7, zero
  JAL zero, bb118
bb125:
  ADDI s7, zero, 57
  SLT s8, s7, s5
  XORI s7, s8, 1
  ADD s8, s7, zero
  JAL zero, bb120
bb126:
  XORI s5, s0, 45
  SLTIU s6, s5, 1
  BNE s6, zero, bb129
  # implict jump to bb127
bb127:
  ADD s5, s3, zero
  # implict jump to bb128
bb128:
  ADD s6, s5, zero
  CALL getch
  ADD s7, a0, zero
  ADD s1, s6, zero
  ADD s2, s7, zero
  JAL zero, bb114
bb129:
  ADDI s5, zero, 1
  JAL zero, bb128
bb130:
  ADDI s4, zero, 1
  JAL zero, bb116
