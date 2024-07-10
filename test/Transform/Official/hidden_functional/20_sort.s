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
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD a0, a0, zero
  ADDI s0, zero, -100
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  SLT s4, s2, s4
  BNE s4, zero, bb9
  # implict jump to bb2
bb2:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb3
bb3:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLT s8, s3, s6
  XORI s8, s8, 1
  BNE s8, zero, bb5
  # implict jump to bb4
bb4:
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
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  SLLIW s8, s6, 2
  LA s9, cnt
  ADD s8, s9, s8
  LW s8, 0(s8)
  ADD s8, s8, zero
  ADD s7, s7, zero
  # implict jump to bb6
bb6:
  ADD s9, s7, zero
  ADD s10, s8, zero
  XOR s11, s10, zero
  SLTU s11, zero, s11
  BNE s11, zero, bb8
  # implict jump to bb7
bb7:
  ADDIW s11, s6, 1
  ADD s4, s9, zero
  ADD s5, s11, zero
  JAL zero, bb3
bb8:
  SLLIW s4, s9, 2
  ADD s4, a0, s4
  SW s6, 0(s4)
  ADDIW s4, s9, 1
  ADDI s5, zero, 1
  SUBW s5, s10, s5
  ADD s8, s5, zero
  ADD s7, s4, zero
  JAL zero, bb6
bb9:
  SLLIW s4, s2, 2
  ADD s4, a0, s4
  LW s5, 0(s4)
  SLLIW s5, s5, 2
  LA s6, cnt
  ADD s5, s6, s5
  LW s6, 0(s5)
  ADDIW s6, s6, 1
  SW s6, 0(s5)
  LW s5, 0(s4)
  SLT s5, s3, s5
  BNE s5, zero, bb12
  # implict jump to bb10
bb10:
  ADD s3, s3, zero
  # implict jump to bb11
bb11:
  ADD s3, s3, zero
  ADDIW s2, s2, 1
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb1
bb12:
  LW s4, 0(s4)
  ADD s3, s4, zero
  JAL zero, bb11
sortC:
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
  SD s10, 88(sp)
  ADD a0, a0, zero
  ADD s0, zero, zero
  # implict jump to bb14
bb14:
  ADD s1, s0, zero
  LA s2, n
  LW s2, 0(s2)
  SLT s2, s1, s2
  BNE s2, zero, bb16
  # implict jump to bb15
bb15:
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
  LD s10, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb16:
  ADDIW s2, s1, 1
  ADD s3, s2, zero
  ADD s4, s1, zero
  # implict jump to bb17
bb17:
  ADD s5, s4, zero
  ADD s6, s3, zero
  LA s7, n
  LW s7, 0(s7)
  SLT s7, s6, s7
  BNE s7, zero, bb19
  # implict jump to bb18
bb18:
  SLLIW s7, s1, 2
  ADD s7, a0, s7
  LW s8, 0(s7)
  SLLIW s9, s5, 2
  ADD s9, a0, s9
  LW s10, 0(s9)
  SW s10, 0(s7)
  SW s8, 0(s9)
  ADD s0, s2, zero
  JAL zero, bb14
bb19:
  SLLIW s0, s6, 2
  ADD s0, a0, s0
  LW s0, 0(s0)
  SLLIW s7, s5, 2
  ADD s7, a0, s7
  LW s7, 0(s7)
  SLT s0, s0, s7
  BNE s0, zero, bb22
  # implict jump to bb20
bb20:
  ADD s0, s5, zero
  # implict jump to bb21
bb21:
  ADD s0, s0, zero
  ADDIW s5, s6, 1
  ADD s3, s5, zero
  ADD s4, s0, zero
  JAL zero, bb17
bb22:
  ADD s0, s6, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -192
  SD ra, 88(sp)
  SD s0, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s5, 152(sp)
  SD s8, 160(sp)
  SD s9, 168(sp)
  SD s10, 176(sp)
  SD s11, 184(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, s0, zero
  SW t4, 80(sp)
  # implict jump to bb24
bb24:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t4, 68(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb102
  # implict jump to bb25
bb25:
  ADDI s4, zero, 57
  LW t4, 68(sp)
  SLT s4, s4, t4
  ADD s4, s4, zero
  # implict jump to bb26
bb26:
  ADD s4, s4, zero
  BNE s4, zero, bb98
  # implict jump to bb27
bb27:
  ADD t4, zero, zero
  SW t4, 60(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  # implict jump to bb28
bb28:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t4, 56(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb97
  # implict jump to bb29
bb29:
  ADD s8, zero, zero
  # implict jump to bb30
bb30:
  ADD s8, s8, zero
  BNE s8, zero, bb96
  # implict jump to bb31
bb31:
  LW t4, 72(sp)
  XOR s8, t4, zero
  SLTU s8, zero, s8
  BNE s8, zero, bb95
  # implict jump to bb32
bb32:
  LW t4, 0(sp)
  ADD s8, t4, zero
  # implict jump to bb33
bb33:
  ADD s8, s8, zero
  LA s9, n
  SW s8, 0(s9)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb34
bb34:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s10, n
  LW s10, 0(s10)
  LW t4, 52(sp)
  XOR s10, t4, s10
  SLTU s10, zero, s10
  BNE s10, zero, bb76
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SW t4, 36(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  # implict jump to bb36
bb36:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LA s3, n
  LW s3, 0(s3)
  LW t4, 44(sp)
  SLT s3, t4, s3
  BNE s3, zero, bb69
  # implict jump to bb37
bb37:
  ADDI t4, zero, -100
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb38
bb38:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LA s6, n
  LW s6, 0(s6)
  LW t4, 20(sp)
  SLT s6, t4, s6
  BNE s6, zero, bb65
  # implict jump to bb39
bb39:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb40
bb40:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 4(sp)
  ADD s8, t4, zero
  LW t4, 16(sp)
  LW t3, 12(sp)
  SLT s0, t4, t3
  XORI s0, s0, 1
  BNE s0, zero, bb61
  # implict jump to bb41
bb41:
  ADD s0, zero, zero
  # implict jump to bb42
bb42:
  ADD s11, s0, zero
  LA s10, n
  LW s10, 0(s10)
  SLT s10, s11, s10
  BNE s10, zero, bb54
  # implict jump to bb43
bb43:
  ADD s10, zero, zero
  # implict jump to bb44
bb44:
  ADD s1, s10, zero
  LA s2, n
  LW s2, 0(s2)
  SUBW s2, s2, s1
  XOR s2, s2, zero
  SLTU s2, zero, s2
  BNE s2, zero, bb53
  # implict jump to bb45
bb45:
  ADD s2, zero, zero
  # implict jump to bb46
bb46:
  ADD s3, s2, zero
  LA s5, n
  LW s5, 0(s5)
  SUBW s5, s3, s5
  XOR s5, s5, zero
  SLTU s5, zero, s5
  BNE s5, zero, bb48
  # implict jump to bb47
bb47:
  ADDI a0, zero, -123
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s5, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb48:
  SLLIW s5, s3, 2
  LA s4, b
  ADD s4, s4, s5
  LW s4, 0(s4)
  XOR s4, s4, zero
  SLTU s4, zero, s4
  BNE s4, zero, bb52
  # implict jump to bb49
bb49:
  LA s4, c
  ADD s4, s4, s5
  LW s4, 0(s4)
  XOR s4, s4, zero
  SLTU s4, zero, s4
  BNE s4, zero, bb51
  # implict jump to bb50
bb50:
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb46
bb51:
  ADDI a0, zero, 2
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s5, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb52:
  ADDI a0, zero, 1
  LD ra, 88(sp)
  LD s0, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s5, 152(sp)
  LD s8, 160(sp)
  LD s9, 168(sp)
  LD s10, 176(sp)
  LD s11, 184(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb53:
  SLLIW s2, s1, 2
  LA s3, b
  ADD s3, s3, s2
  LW s4, 0(s3)
  LA s5, a
  ADD s5, s5, s2
  LW s9, 0(s5)
  SUBW s4, s4, s9
  SW s4, 0(s3)
  LA s3, c
  ADD s2, s3, s2
  LW s3, 0(s2)
  SUBW s3, s3, s4
  LW s4, 0(s5)
  SUBW s3, s3, s4
  SW s3, 0(s2)
  ADDIW s1, s1, 1
  ADD s10, s1, zero
  JAL zero, bb44
bb54:
  ADDIW s1, s11, 1
  ADD s2, s1, zero
  ADD s3, s11, zero
  # implict jump to bb55
bb55:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s9, n
  LW s9, 0(s9)
  SLT s9, s5, s9
  BNE s9, zero, bb57
  # implict jump to bb56
bb56:
  SLLIW s9, s11, 2
  LA s10, c
  ADD s9, s10, s9
  LW s10, 0(s9)
  SLLIW s7, s4, 2
  LA s6, c
  ADD s6, s6, s7
  LW s7, 0(s6)
  SW s7, 0(s9)
  SW s10, 0(s6)
  ADD s0, s1, zero
  JAL zero, bb42
bb57:
  SLLIW s0, s5, 2
  LA s6, c
  ADD s0, s6, s0
  LW s0, 0(s0)
  SLLIW s6, s4, 2
  LA s7, c
  ADD s6, s7, s6
  LW s6, 0(s6)
  SLT s0, s0, s6
  BNE s0, zero, bb60
  # implict jump to bb58
bb58:
  ADD s0, s4, zero
  # implict jump to bb59
bb59:
  ADD s0, s0, zero
  ADDIW s4, s5, 1
  ADD s2, s4, zero
  ADD s3, s0, zero
  JAL zero, bb55
bb60:
  ADD s0, s5, zero
  JAL zero, bb59
bb61:
  LW t4, 12(sp)
  SLLIW s0, t4, 2
  LA s1, cnt
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADD s0, s0, zero
  ADD s1, s8, zero
  # implict jump to bb62
bb62:
  ADD s2, s1, zero
  ADD s3, s0, zero
  XOR s4, s3, zero
  SLTU s4, zero, s4
  BNE s4, zero, bb64
  # implict jump to bb63
bb63:
  LW t4, 12(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 4(sp)
  ADD t4, s4, zero
  SW t4, 8(sp)
  JAL zero, bb40
bb64:
  SLLIW s4, s2, 2
  LA s5, b
  ADD s4, s5, s4
  LW t4, 12(sp)
  SW t4, 0(s4)
  ADDIW s2, s2, 1
  ADDI s4, zero, 1
  SUBW s3, s3, s4
  ADD s0, s3, zero
  ADD s1, s2, zero
  JAL zero, bb62
bb65:
  LW t4, 20(sp)
  SLLIW s0, t4, 2
  LA s1, b
  ADD s0, s1, s0
  LW s1, 0(s0)
  SLLIW s1, s1, 2
  LA s2, cnt
  ADD s1, s2, s1
  LW s2, 0(s1)
  ADDIW s2, s2, 1
  SW s2, 0(s1)
  LW s1, 0(s0)
  LW t4, 16(sp)
  SLT s1, t4, s1
  BNE s1, zero, bb68
  # implict jump to bb66
bb66:
  LW t4, 16(sp)
  ADD s1, t4, zero
  # implict jump to bb67
bb67:
  ADD s1, s1, zero
  LW t4, 20(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 24(sp)
  ADD t4, s0, zero
  SW t4, 28(sp)
  JAL zero, bb38
bb68:
  LW s0, 0(s0)
  ADD s1, s0, zero
  JAL zero, bb67
bb69:
  LW t4, 44(sp)
  ADDIW s0, t4, 1
  LW t4, 32(sp)
  ADD s1, t4, zero
  ADD s2, s0, zero
  # implict jump to bb70
bb70:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s5, 0(s5)
  SLT s5, s3, s5
  BNE s5, zero, bb72
  # implict jump to bb71
bb71:
  ADD t4, s4, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 40(sp)
  JAL zero, bb36
bb72:
  LW t4, 44(sp)
  SLLIW s5, t4, 2
  LA s6, a
  ADD s5, s6, s5
  LW s6, 0(s5)
  SLLIW s7, s3, 2
  LA s8, a
  ADD s7, s8, s7
  LW s8, 0(s7)
  SLT s6, s8, s6
  BNE s6, zero, bb75
  # implict jump to bb73
bb73:
  ADD s4, s4, zero
  # implict jump to bb74
bb74:
  ADD s4, s4, zero
  ADDIW s3, s3, 1
  ADD s1, s4, zero
  ADD s2, s3, zero
  JAL zero, bb70
bb75:
  LW s6, 0(s5)
  LW s8, 0(s7)
  SW s8, 0(s5)
  SW s6, 0(s7)
  ADD s4, s6, zero
  JAL zero, bb74
bb76:
  LW t4, 52(sp)
  SLLIW s0, t4, 2
  LA s1, a
  ADD s1, s1, s0
  CALL getch
  ADD s2, a0, zero
  ADD s3, zero, zero
  ADD s2, s2, zero
  # implict jump to bb77
bb77:
  ADD s4, s2, zero
  ADD s5, s3, zero
  SLTI s6, s4, 48
  BNE s6, zero, bb94
  # implict jump to bb78
bb78:
  ADDI s6, zero, 57
  SLT s6, s6, s4
  ADD s6, s6, zero
  # implict jump to bb79
bb79:
  ADD s6, s6, zero
  BNE s6, zero, bb90
  # implict jump to bb80
bb80:
  ADD s6, zero, zero
  ADD s7, s4, zero
  # implict jump to bb81
bb81:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLTI s10, s8, 48
  XORI s10, s10, 1
  BNE s10, zero, bb89
  # implict jump to bb82
bb82:
  ADD s10, zero, zero
  # implict jump to bb83
bb83:
  ADD s10, s10, zero
  BNE s10, zero, bb88
  # implict jump to bb84
bb84:
  XOR s10, s5, zero
  SLTU s10, zero, s10
  BNE s10, zero, bb87
  # implict jump to bb85
bb85:
  ADD s10, s9, zero
  # implict jump to bb86
bb86:
  ADD s10, s10, zero
  SW s10, 0(s1)
  LA s11, b
  ADD s11, s11, s0
  SW s10, 0(s11)
  LA s11, c
  ADD s11, s11, s0
  SW s10, 0(s11)
  LW t4, 52(sp)
  ADDIW s10, t4, 1
  ADD t4, s10, zero
  SW t4, 48(sp)
  JAL zero, bb34
bb87:
  SUB s11, zero, s9
  ADD s10, s11, zero
  JAL zero, bb86
bb88:
  ADDI s10, zero, 10
  MULW s9, s9, s10
  ADDW s8, s9, s8
  ADDI s9, zero, 48
  SUBW s8, s8, s9
  CALL getch
  ADD s9, a0, zero
  ADD s6, s8, zero
  ADD s7, s9, zero
  JAL zero, bb81
bb89:
  ADDI s11, zero, 57
  SLT s11, s11, s8
  XORI s11, s11, 1
  ADD s10, s11, zero
  JAL zero, bb83
bb90:
  XORI s4, s4, 45
  SLTIU s4, s4, 1
  BNE s4, zero, bb93
  # implict jump to bb91
bb91:
  ADD s4, s5, zero
  # implict jump to bb92
bb92:
  ADD s4, s4, zero
  CALL getch
  ADD s5, a0, zero
  ADD s3, s4, zero
  ADD s2, s5, zero
  JAL zero, bb77
bb93:
  ADDI s4, zero, 1
  JAL zero, bb92
bb94:
  ADDI s6, zero, 1
  JAL zero, bb79
bb95:
  LW t4, 0(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb33
bb96:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  MULW s0, t4, s0
  LW t4, 56(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 60(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  JAL zero, bb28
bb97:
  ADDI s9, zero, 57
  LW t4, 56(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb30
bb98:
  LW t4, 68(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb101
  # implict jump to bb99
bb99:
  LW t4, 72(sp)
  ADD s0, t4, zero
  # implict jump to bb100
bb100:
  ADD s0, s0, zero
  CALL getch
  ADD a0, a0, zero
  ADD t4, s0, zero
  SW t4, 76(sp)
  ADD t4, a0, zero
  SW t4, 80(sp)
  JAL zero, bb24
bb101:
  ADDI s0, zero, 1
  JAL zero, bb100
bb102:
  ADDI s4, zero, 1
  JAL zero, bb26
sortA:
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
  ADD a0, a0, zero
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb104
bb104:
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, n
  LW s4, 0(s4)
  SLT s4, s2, s4
  BNE s4, zero, bb106
  # implict jump to bb105
bb105:
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
bb106:
  ADDIW s4, s2, 1
  ADD s3, s3, zero
  ADD s5, s4, zero
  # implict jump to bb107
bb107:
  ADD s6, s5, zero
  ADD s7, s3, zero
  LA s8, n
  LW s8, 0(s8)
  SLT s8, s6, s8
  BNE s8, zero, bb109
  # implict jump to bb108
bb108:
  ADD s0, s7, zero
  ADD s1, s4, zero
  JAL zero, bb104
bb109:
  SLLIW s0, s2, 2
  ADD s0, a0, s0
  LW s1, 0(s0)
  SLLIW s8, s6, 2
  ADD s8, a0, s8
  LW s9, 0(s8)
  SLT s1, s9, s1
  BNE s1, zero, bb112
  # implict jump to bb110
bb110:
  ADD s1, s7, zero
  # implict jump to bb111
bb111:
  ADD s1, s1, zero
  ADDIW s0, s6, 1
  ADD s3, s1, zero
  ADD s5, s0, zero
  JAL zero, bb107
bb112:
  LW s7, 0(s0)
  LW s9, 0(s8)
  SW s9, 0(s0)
  SW s7, 0(s8)
  ADD s1, s7, zero
  JAL zero, bb111
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
  ADD s0, s0, zero
  # implict jump to bb114
bb114:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb130
  # implict jump to bb115
bb115:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  ADD s4, s4, zero
  # implict jump to bb116
bb116:
  ADD s4, s4, zero
  BNE s4, zero, bb126
  # implict jump to bb117
bb117:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb118
bb118:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb125
  # implict jump to bb119
bb119:
  ADD s8, zero, zero
  # implict jump to bb120
bb120:
  ADD s8, s8, zero
  BNE s8, zero, bb124
  # implict jump to bb121
bb121:
  XOR s8, s3, zero
  SLTU s8, zero, s8
  BNE s8, zero, bb123
  # implict jump to bb122
bb122:
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
bb123:
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
bb124:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb118
bb125:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb120
bb126:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb129
  # implict jump to bb127
bb127:
  ADD s2, s3, zero
  # implict jump to bb128
bb128:
  ADD s2, s2, zero
  CALL getch
  ADD a0, a0, zero
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb114
bb129:
  ADDI s2, zero, 1
  JAL zero, bb128
bb130:
  ADDI s4, zero, 1
  JAL zero, bb116
