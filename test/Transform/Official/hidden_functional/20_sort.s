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
  SD s11, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s7, 32(sp)
  SD s10, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
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
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb3
bb3:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLT s9, s4, s7
  XORI s10, s9, 1
  BNE s10, zero, bb5
  # implict jump to bb4
bb4:
  LD ra, 0(sp)
  LD s11, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s7, 32(sp)
  LD s10, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  SLLIW s9, s7, 2
  LA s10, cnt
  ADD s11, s10, s9
  LW s9, 0(s11)
  ADD s10, s9, zero
  ADD s9, s8, zero
  # implict jump to bb6
bb6:
  ADD s8, s9, zero
  ADD s11, s10, zero
  XOR t0, s11, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb8
  # implict jump to bb7
bb7:
  ADDIW t0, s7, 1
  ADD s5, s8, zero
  ADD s6, t0, zero
  JAL zero, bb3
bb8:
  SLLIW s5, s8, 2
  ADD s6, s0, s5
  SW s7, 0(s6)
  ADDIW s5, s8, 1
  ADDI s6, zero, 1
  SUBW s8, s11, s6
  ADD s10, s8, zero
  ADD s9, s5, zero
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
  ADD s5, s4, zero
  # implict jump to bb11
bb11:
  ADD s4, s5, zero
  ADDIW s5, s3, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb1
bb12:
  LW s4, 0(s6)
  ADD s5, s4, zero
  JAL zero, bb11
sortC:
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
  # implict jump to bb14
bb14:
  ADD s2, s1, zero
  LA s3, n
  LW s4, 0(s3)
  SLT s3, s2, s4
  BNE s3, zero, bb16
  # implict jump to bb15
bb15:
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
  SLLIW s8, s2, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  SLLIW s10, s6, 2
  ADD s11, s0, s10
  LW s10, 0(s11)
  SW s10, 0(s9)
  SW s8, 0(s11)
  ADD s1, s3, zero
  JAL zero, bb14
bb19:
  SLLIW s1, s7, 2
  ADD s8, s0, s1
  LW s1, 0(s8)
  SLLIW s8, s6, 2
  ADD s9, s0, s8
  LW s8, 0(s9)
  SLT s9, s1, s8
  BNE s9, zero, bb22
  # implict jump to bb20
bb20:
  ADD s1, s6, zero
  # implict jump to bb21
bb21:
  ADD s6, s1, zero
  ADDIW s1, s7, 1
  ADD s4, s1, zero
  ADD s5, s6, zero
  JAL zero, bb17
bb22:
  ADD s1, s7, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -208
  SD s6, 96(sp)
  SD ra, 104(sp)
  SD s7, 112(sp)
  SD s0, 120(sp)
  SD s5, 128(sp)
  SD s10, 136(sp)
  SD s9, 144(sp)
  SD s8, 152(sp)
  SD s11, 160(sp)
  SD s1, 168(sp)
  SD s3, 176(sp)
  SD s4, 184(sp)
  SD s2, 192(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  # implict jump to bb24
bb24:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t4, 12(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb102
  # implict jump to bb25
bb25:
  ADDI s4, zero, 57
  LW t4, 12(sp)
  SLT s5, s4, t4
  ADD s4, s5, zero
  # implict jump to bb26
bb26:
  ADD s5, s4, zero
  BNE s5, zero, bb98
  # implict jump to bb27
bb27:
  ADD t4, zero, zero
  SW t4, 20(sp)
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  # implict jump to bb28
bb28:
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t4, 24(sp)
  SLTI s8, t4, 48
  XORI s9, s8, 1
  BNE s9, zero, bb97
  # implict jump to bb29
bb29:
  ADD s8, zero, zero
  # implict jump to bb30
bb30:
  ADD s9, s8, zero
  BNE s9, zero, bb96
  # implict jump to bb31
bb31:
  LW t4, 8(sp)
  XOR s8, t4, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb95
  # implict jump to bb32
bb32:
  LW t4, 28(sp)
  ADD s8, t4, zero
  # implict jump to bb33
bb33:
  ADD s9, s8, zero
  LA s8, n
  SW s9, 0(s8)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb34
bb34:
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LA s10, n
  LW s11, 0(s10)
  LW t4, 32(sp)
  XOR s10, t4, s11
  SLTU s11, zero, s10
  BNE s11, zero, bb76
  # implict jump to bb35
bb35:
  ADD t4, zero, zero
  SW t4, 48(sp)
  ADD t4, zero, zero
  SW t4, 44(sp)
  # implict jump to bb36
bb36:
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LA s3, n
  LW s0, 0(s3)
  LW t4, 40(sp)
  SLT s3, t4, s0
  BNE s3, zero, bb69
  # implict jump to bb37
bb37:
  ADDI t4, zero, -100
  SW t4, 60(sp)
  ADD t4, zero, zero
  SW t4, 56(sp)
  # implict jump to bb38
bb38:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 68(sp)
  LA s6, n
  LW s7, 0(s6)
  LW t4, 64(sp)
  SLT s6, t4, s7
  BNE s6, zero, bb65
  # implict jump to bb39
bb39:
  ADD t4, zero, zero
  SW t4, 80(sp)
  ADD t4, zero, zero
  SW t4, 76(sp)
  # implict jump to bb40
bb40:
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 84(sp)
  LW t4, 68(sp)
  LW t3, 72(sp)
  SLT s2, t4, t3
  XORI s11, s2, 1
  BNE s11, zero, bb61
  # implict jump to bb41
bb41:
  ADD s2, zero, zero
  # implict jump to bb42
bb42:
  ADD s11, s2, zero
  LA s10, n
  LW s1, 0(s10)
  SLT s10, s11, s1
  BNE s10, zero, bb54
  # implict jump to bb43
bb43:
  ADD s1, zero, zero
  # implict jump to bb44
bb44:
  ADD s10, s1, zero
  LA s3, n
  LW s0, 0(s3)
  SUBW s3, s0, s10
  XOR s0, s3, zero
  SLTU s3, zero, s0
  BNE s3, zero, bb53
  # implict jump to bb45
bb45:
  ADD s0, zero, zero
  # implict jump to bb46
bb46:
  ADD s3, s0, zero
  LA s5, n
  LW s4, 0(s5)
  SUBW s5, s3, s4
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb48
  # implict jump to bb47
bb47:
  ADDI a0, zero, -123
  LD s6, 96(sp)
  LD ra, 104(sp)
  LD s7, 112(sp)
  LD s0, 120(sp)
  LD s5, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD s8, 152(sp)
  LD s11, 160(sp)
  LD s1, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s2, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb48:
  SLLIW s4, s3, 2
  LA s5, b
  ADD s9, s5, s4
  LW s5, 0(s9)
  XOR s9, s5, zero
  SLTU s5, zero, s9
  BNE s5, zero, bb52
  # implict jump to bb49
bb49:
  LA s5, c
  ADD s9, s5, s4
  LW s4, 0(s9)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb51
  # implict jump to bb50
bb50:
  ADDIW s4, s3, 1
  ADD s0, s4, zero
  JAL zero, bb46
bb51:
  ADDI a0, zero, 2
  LD s6, 96(sp)
  LD ra, 104(sp)
  LD s7, 112(sp)
  LD s0, 120(sp)
  LD s5, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD s8, 152(sp)
  LD s11, 160(sp)
  LD s1, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s2, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb52:
  ADDI a0, zero, 1
  LD s6, 96(sp)
  LD ra, 104(sp)
  LD s7, 112(sp)
  LD s0, 120(sp)
  LD s5, 128(sp)
  LD s10, 136(sp)
  LD s9, 144(sp)
  LD s8, 152(sp)
  LD s11, 160(sp)
  LD s1, 168(sp)
  LD s3, 176(sp)
  LD s4, 184(sp)
  LD s2, 192(sp)
  ADDI sp, sp, 208
  JALR zero, 0(ra)
bb53:
  SLLIW s0, s10, 2
  LA s3, b
  ADD s4, s3, s0
  LW s3, 0(s4)
  LA s5, a
  ADD s9, s5, s0
  LW s5, 0(s9)
  SUBW s7, s3, s5
  SW s7, 0(s4)
  LA s3, c
  ADD s4, s3, s0
  LW s0, 0(s4)
  SUBW s3, s0, s7
  LW s0, 0(s9)
  SUBW s5, s3, s0
  SW s5, 0(s4)
  ADDIW s0, s10, 1
  ADD s1, s0, zero
  JAL zero, bb44
bb54:
  ADDIW s0, s11, 1
  ADD s1, s0, zero
  ADD s3, s11, zero
  # implict jump to bb55
bb55:
  ADD s4, s3, zero
  ADD s5, s1, zero
  LA s7, n
  LW s9, 0(s7)
  SLT s7, s5, s9
  BNE s7, zero, bb57
  # implict jump to bb56
bb56:
  SLLIW s7, s11, 2
  LA s9, c
  ADD s10, s9, s7
  LW s7, 0(s10)
  SLLIW s9, s4, 2
  LA s6, c
  ADD s8, s6, s9
  LW s6, 0(s8)
  SW s6, 0(s10)
  SW s7, 0(s8)
  ADD s2, s0, zero
  JAL zero, bb42
bb57:
  SLLIW s2, s5, 2
  LA s6, c
  ADD s7, s6, s2
  LW s2, 0(s7)
  SLLIW s6, s4, 2
  LA s7, c
  ADD s8, s7, s6
  LW s6, 0(s8)
  SLT s7, s2, s6
  BNE s7, zero, bb60
  # implict jump to bb58
bb58:
  ADD s2, s4, zero
  # implict jump to bb59
bb59:
  ADD s4, s2, zero
  ADDIW s2, s5, 1
  ADD s1, s2, zero
  ADD s3, s4, zero
  JAL zero, bb55
bb60:
  ADD s2, s5, zero
  JAL zero, bb59
bb61:
  LW t4, 72(sp)
  SLLIW s0, t4, 2
  LA s1, cnt
  ADD s2, s1, s0
  LW s0, 0(s2)
  ADD s1, s0, zero
  LW t4, 84(sp)
  ADD s0, t4, zero
  # implict jump to bb62
bb62:
  ADD s2, s0, zero
  ADD s3, s1, zero
  XOR s4, s3, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb64
  # implict jump to bb63
bb63:
  LW t4, 72(sp)
  ADDIW s4, t4, 1
  ADD t4, s2, zero
  SW t4, 80(sp)
  ADD t4, s4, zero
  SW t4, 76(sp)
  JAL zero, bb40
bb64:
  SLLIW s4, s2, 2
  LA s5, b
  ADD s6, s5, s4
  LW t4, 72(sp)
  SW t4, 0(s6)
  ADDIW s4, s2, 1
  ADDI s2, zero, 1
  SUBW s5, s3, s2
  ADD s1, s5, zero
  ADD s0, s4, zero
  JAL zero, bb62
bb65:
  LW t4, 64(sp)
  SLLIW s0, t4, 2
  LA s1, b
  ADD s2, s1, s0
  LW s0, 0(s2)
  SLLIW s1, s0, 2
  LA s0, cnt
  ADD s3, s0, s1
  LW s0, 0(s3)
  ADDIW s1, s0, 1
  SW s1, 0(s3)
  LW s0, 0(s2)
  LW t4, 68(sp)
  SLT s1, t4, s0
  BNE s1, zero, bb68
  # implict jump to bb66
bb66:
  LW t4, 68(sp)
  ADD s0, t4, zero
  # implict jump to bb67
bb67:
  ADD s1, s0, zero
  LW t4, 64(sp)
  ADDIW s0, t4, 1
  ADD t4, s1, zero
  SW t4, 60(sp)
  ADD t4, s0, zero
  SW t4, 56(sp)
  JAL zero, bb38
bb68:
  LW s1, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb67
bb69:
  LW t4, 40(sp)
  ADDIW s0, t4, 1
  LW t4, 52(sp)
  ADD s1, t4, zero
  ADD s2, s0, zero
  # implict jump to bb70
bb70:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, n
  LW s6, 0(s5)
  SLT s5, s3, s6
  BNE s5, zero, bb72
  # implict jump to bb71
bb71:
  ADD t4, s4, zero
  SW t4, 48(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  JAL zero, bb36
bb72:
  LW t4, 40(sp)
  SLLIW s5, t4, 2
  LA s6, a
  ADD s7, s6, s5
  LW s5, 0(s7)
  SLLIW s6, s3, 2
  LA s8, a
  ADD s9, s8, s6
  LW s6, 0(s9)
  SLT s8, s6, s5
  BNE s8, zero, bb75
  # implict jump to bb73
bb73:
  ADD s5, s4, zero
  # implict jump to bb74
bb74:
  ADD s4, s5, zero
  ADDIW s5, s3, 1
  ADD s1, s4, zero
  ADD s2, s5, zero
  JAL zero, bb70
bb75:
  LW s4, 0(s7)
  LW s6, 0(s9)
  SW s6, 0(s7)
  SW s4, 0(s9)
  ADD s5, s4, zero
  JAL zero, bb74
bb76:
  LW t4, 32(sp)
  SLLIW s0, t4, 2
  LA s1, a
  ADD t4, s1, s0
  SD t4, 88(sp)
  CALL getch
  ADD s1, a0, zero
  ADD s3, zero, zero
  ADD s4, s1, zero
  # implict jump to bb77
bb77:
  ADD s1, s4, zero
  ADD s5, s3, zero
  SLTI s6, s1, 48
  BNE s6, zero, bb94
  # implict jump to bb78
bb78:
  ADDI s6, zero, 57
  SLT s7, s6, s1
  ADD s6, s7, zero
  # implict jump to bb79
bb79:
  ADD s7, s6, zero
  BNE s7, zero, bb90
  # implict jump to bb80
bb80:
  ADD s6, zero, zero
  ADD s7, s1, zero
  # implict jump to bb81
bb81:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLTI s10, s8, 48
  XORI s11, s10, 1
  BNE s11, zero, bb89
  # implict jump to bb82
bb82:
  ADD s10, zero, zero
  # implict jump to bb83
bb83:
  ADD s2, s10, zero
  BNE s2, zero, bb88
  # implict jump to bb84
bb84:
  XOR s2, s5, zero
  SLTU s10, zero, s2
  BNE s10, zero, bb87
  # implict jump to bb85
bb85:
  ADD s2, s9, zero
  # implict jump to bb86
bb86:
  ADD s10, s2, zero
  LD t4, 88(sp)
  SW s10, 0(t4)
  LA s2, b
  ADD s11, s2, s0
  SW s10, 0(s11)
  LA s2, c
  ADD s11, s2, s0
  SW s10, 0(s11)
  LW t4, 32(sp)
  ADDIW s2, t4, 1
  ADD t4, s2, zero
  SW t4, 36(sp)
  JAL zero, bb34
bb87:
  SUB s10, zero, s9
  ADD s2, s10, zero
  JAL zero, bb86
bb88:
  ADDI s2, zero, 10
  MULW s10, s9, s2
  ADDW s2, s10, s8
  ADDI s8, zero, 48
  SUBW s9, s2, s8
  CALL getch
  ADD s2, a0, zero
  ADD s6, s9, zero
  ADD s7, s2, zero
  JAL zero, bb81
bb89:
  ADDI s11, zero, 57
  SLT s2, s11, s8
  XORI s11, s2, 1
  ADD s10, s11, zero
  JAL zero, bb83
bb90:
  XORI s2, s1, 45
  SLTIU s1, s2, 1
  BNE s1, zero, bb93
  # implict jump to bb91
bb91:
  ADD s1, s5, zero
  # implict jump to bb92
bb92:
  ADD s2, s1, zero
  CALL getch
  ADD s1, a0, zero
  ADD s3, s2, zero
  ADD s4, s1, zero
  JAL zero, bb77
bb93:
  ADDI s1, zero, 1
  JAL zero, bb92
bb94:
  ADDI s6, zero, 1
  JAL zero, bb79
bb95:
  LW t4, 28(sp)
  SUB s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb33
bb96:
  ADDI s0, zero, 10
  LW t4, 28(sp)
  MULW s1, t4, s0
  LW t4, 24(sp)
  ADDW s0, s1, t4
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  CALL getch
  ADD s0, a0, zero
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s0, zero
  SW t4, 16(sp)
  JAL zero, bb28
bb97:
  ADDI s9, zero, 57
  LW t4, 24(sp)
  SLT s10, s9, t4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb30
bb98:
  LW t4, 12(sp)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  BNE s1, zero, bb101
  # implict jump to bb99
bb99:
  LW t4, 8(sp)
  ADD s0, t4, zero
  # implict jump to bb100
bb100:
  ADD s1, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD t4, s1, zero
  SW t4, 4(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb24
bb101:
  ADDI s0, zero, 1
  JAL zero, bb100
bb102:
  ADDI s4, zero, 1
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
  SLLIW s1, s3, 2
  ADD s2, s0, s1
  LW s1, 0(s2)
  SLLIW s9, s7, 2
  ADD s10, s0, s9
  LW s9, 0(s10)
  SLT s11, s9, s1
  BNE s11, zero, bb112
  # implict jump to bb110
bb110:
  ADD s1, s8, zero
  # implict jump to bb111
bb111:
  ADD s2, s1, zero
  ADDIW s1, s7, 1
  ADD s6, s2, zero
  ADD s4, s1, zero
  JAL zero, bb107
bb112:
  LW s8, 0(s2)
  LW s9, 0(s10)
  SW s9, 0(s2)
  SW s8, 0(s10)
  ADD s1, s8, zero
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
  ADDI s4, zero, 57
  SLT s5, s4, s0
  ADD s4, s5, zero
  # implict jump to bb116
bb116:
  ADD s5, s4, zero
  BNE s5, zero, bb126
  # implict jump to bb117
bb117:
  ADD s4, zero, zero
  ADD s5, s0, zero
  # implict jump to bb118
bb118:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s9, s8, 1
  BNE s9, zero, bb125
  # implict jump to bb119
bb119:
  ADD s8, zero, zero
  # implict jump to bb120
bb120:
  ADD s9, s8, zero
  BNE s9, zero, bb124
  # implict jump to bb121
bb121:
  XOR s8, s3, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb123
  # implict jump to bb122
bb122:
  ADD a0, s7, zero
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
  SUB s8, zero, s7
  ADD a0, s8, zero
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
  ADDI s8, zero, 10
  MULW s9, s7, s8
  ADDW s7, s9, s6
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  CALL getch
  ADD s6, a0, zero
  ADD s4, s8, zero
  ADD s5, s6, zero
  JAL zero, bb118
bb125:
  ADDI s9, zero, 57
  SLT s10, s9, s6
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb120
bb126:
  XORI s4, s0, 45
  SLTIU s0, s4, 1
  BNE s0, zero, bb129
  # implict jump to bb127
bb127:
  ADD s0, s3, zero
  # implict jump to bb128
bb128:
  ADD s3, s0, zero
  CALL getch
  ADD s0, a0, zero
  ADD s1, s3, zero
  ADD s2, s0, zero
  JAL zero, bb114
bb129:
  ADDI s0, zero, 1
  JAL zero, bb128
bb130:
  ADDI s4, zero, 1
  JAL zero, bb116
