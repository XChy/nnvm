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
  LA s6, n
  LW s6, 0(s6)
  ADDI s7, zero, 0
  BLT s7, s6, bb15
  # implict jump to bb1
bb1:
  ADDI s6, zero, -100
  # implict jump to bb2
bb2:
  SLT s9, s6, zero
  XORI s9, s9, 1
  BNE s9, zero, bb4
  # implict jump to bb3
bb3:
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
bb4:
  ADD s9, zero, zero
  ADD s10, zero, zero
  # implict jump to bb5
bb5:
  ADD s11, s10, zero
  ADD t0, s9, zero
  SLLIW t1, t0, 2
  LA t2, cnt
  ADD t1, t2, t1
  LW t1, 0(t1)
  BNE t1, zero, bb10
  # implict jump to bb6
bb6:
  ADD t2, s11, zero
  # implict jump to bb7
bb7:
  ADD s2, t2, zero
  ADDIW s1, t0, 1
  # implict jump to bb8
bb8:
  SLT t2, s6, s1
  XORI t2, t2, 1
  BNE t2, zero, bb9
  JAL zero, bb3
bb9:
  ADD s9, s1, zero
  ADD s10, s2, zero
  JAL zero, bb5
bb10:
  # implict jump to bb11
bb11:
  ADD a1, t1, zero
  ADD a2, s11, zero
  SLLIW a3, a2, 2
  ADD a3, a0, a3
  SW t0, 0(a3)
  ADDIW s5, a2, 1
  ADDI a2, zero, 1
  SUBW s0, a1, a2
  # implict jump to bb12
bb12:
  BNE s0, zero, bb14
  # implict jump to bb13
bb13:
  ADD t2, s5, zero
  JAL zero, bb7
bb14:
  ADD s11, s5, zero
  ADD t1, s0, zero
  JAL zero, bb11
bb15:
  ADD s7, zero, zero
  ADDI s8, zero, -100
  # implict jump to bb16
bb16:
  ADD s9, s8, zero
  ADD s10, s7, zero
  SLLIW s11, s10, 2
  ADD s11, a0, s11
  LW t0, 0(s11)
  SLLIW t0, t0, 2
  LA t1, cnt
  ADD t0, t1, t0
  LW t1, 0(t0)
  ADDIW t1, t1, 1
  SW t1, 0(t0)
  LW s11, 0(s11)
  BLT s9, s11, bb22
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  ADD s3, s9, zero
  ADDIW s4, s10, 1
  # implict jump to bb19
bb19:
  LA s9, n
  LW s9, 0(s9)
  BLT s4, s9, bb21
  # implict jump to bb20
bb20:
  ADD s6, s3, zero
  JAL zero, bb2
bb21:
  ADD s7, s4, zero
  ADD s8, s3, zero
  JAL zero, bb16
bb22:
  ADD s9, s11, zero
  JAL zero, bb18
sortC:
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
  LA s3, n
  LW s3, 0(s3)
  BLT zero, s3, bb25
  # implict jump to bb24
bb24:
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
bb25:
  ADD s4, zero, zero
  # implict jump to bb26
bb26:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADDIW s2, s5, 1
  BLT s2, s6, bb31
  # implict jump to bb27
bb27:
  ADD s7, s5, zero
  # implict jump to bb28
bb28:
  SLLIW s10, s5, 2
  ADD s10, a0, s10
  LW s11, 0(s10)
  SLLIW s7, s7, 2
  ADD s7, a0, s7
  LW t0, 0(s7)
  SW t0, 0(s10)
  SW s11, 0(s7)
  # implict jump to bb29
bb29:
  LA s7, n
  LW s7, 0(s7)
  BLT s2, s7, bb30
  JAL zero, bb24
bb30:
  ADD s3, s7, zero
  ADD s4, s2, zero
  JAL zero, bb26
bb31:
  ADD s8, s5, zero
  ADD s9, s2, zero
  # implict jump to bb32
bb32:
  ADD s10, s9, zero
  ADD s11, s8, zero
  SLLIW t0, s10, 2
  ADD t0, a0, t0
  LW t0, 0(t0)
  SLLIW t1, s11, 2
  ADD t1, a0, t1
  LW t1, 0(t1)
  BLT t0, t1, bb38
  # implict jump to bb33
bb33:
  # implict jump to bb34
bb34:
  ADD s0, s11, zero
  ADDIW s1, s10, 1
  # implict jump to bb35
bb35:
  BLT s1, s6, bb37
  # implict jump to bb36
bb36:
  ADD s7, s0, zero
  JAL zero, bb28
bb37:
  ADD s8, s0, zero
  ADD s9, s1, zero
  JAL zero, bb32
bb38:
  ADD s11, s10, zero
  JAL zero, bb34
main:
  ADDI sp, sp, -304
  SD ra, 184(sp)
  SD s0, 192(sp)
  SD s1, 200(sp)
  SD s2, 208(sp)
  SD s3, 216(sp)
  SD s4, 224(sp)
  SD s5, 232(sp)
  SD s6, 240(sp)
  SD s7, 248(sp)
  SD s8, 256(sp)
  SD s9, 264(sp)
  SD s10, 272(sp)
  SD s11, 288(sp)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 132(sp)
  ADD t4, s7, zero
  SW t4, 96(sp)
  # implict jump to bb40
bb40:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 132(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb144
  # implict jump to bb41
bb41:
  ADDI s7, zero, 57
  LW t4, 140(sp)
  SLT s7, s7, t4
  # implict jump to bb42
bb42:
  BNE s7, zero, bb140
  # implict jump to bb43
bb43:
  ADD t4, zero, zero
  SW t4, 148(sp)
  LW t3, 140(sp)
  ADD t4, t3, zero
  SW t4, 144(sp)
  # implict jump to bb44
bb44:
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb139
  # implict jump to bb45
bb45:
  ADD s7, zero, zero
  # implict jump to bb46
bb46:
  BNE s7, zero, bb138
  # implict jump to bb47
bb47:
  LW t4, 136(sp)
  BNE t4, zero, bb137
  # implict jump to bb48
bb48:
  LW t4, 156(sp)
  ADD s4, t4, zero
  # implict jump to bb49
bb49:
  LA s7, n
  SW s4, 0(s7)
  LA s4, n
  LW s4, 0(s4)
  BNE zero, s4, bb115
  # implict jump to bb50
bb50:
  LA s4, n
  LW s4, 0(s4)
  BLT zero, s4, bb101
  # implict jump to bb51
bb51:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb93
  # implict jump to bb52
bb52:
  ADDI s1, zero, -100
  # implict jump to bb53
bb53:
  ADD t4, s1, zero
  SW t4, 84(sp)
  LW t4, 84(sp)
  SLT s3, t4, zero
  XORI s3, s3, 1
  BNE s3, zero, bb82
  # implict jump to bb54
bb54:
  LA s1, n
  LW s1, 0(s1)
  BLT zero, s1, bb68
  # implict jump to bb55
bb55:
  LA s0, n
  LW s0, 0(s0)
  SUBW s0, s0, zero
  BNE s0, zero, bb64
  # implict jump to bb56
bb56:
  ADD s2, zero, zero
  # implict jump to bb57
bb57:
  ADD s3, s2, zero
  LA s4, n
  LW s4, 0(s4)
  SUBW s4, s3, s4
  BNE s4, zero, bb59
  # implict jump to bb58
bb58:
  ADDI a0, zero, -123
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb59:
  SLLIW s4, s3, 2
  LA s7, b
  ADD s7, s7, s4
  LW s7, 0(s7)
  BNE s7, zero, bb63
  # implict jump to bb60
bb60:
  LA s7, c
  ADD s4, s7, s4
  LW s4, 0(s4)
  BNE s4, zero, bb62
  # implict jump to bb61
bb61:
  ADDIW s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb57
bb62:
  ADDI a0, zero, 2
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb63:
  ADDI a0, zero, 1
  LD ra, 184(sp)
  LD s0, 192(sp)
  LD s1, 200(sp)
  LD s2, 208(sp)
  LD s3, 216(sp)
  LD s4, 224(sp)
  LD s5, 232(sp)
  LD s6, 240(sp)
  LD s7, 248(sp)
  LD s8, 256(sp)
  LD s9, 264(sp)
  LD s10, 272(sp)
  LD s11, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb64:
  ADD s0, zero, zero
  # implict jump to bb65
bb65:
  ADD s2, s0, zero
  SLLIW s3, s2, 2
  LA s4, b
  ADD s4, s4, s3
  LW s7, 0(s4)
  LA s11, a
  ADD s11, s11, s3
  LW s11, 0(s11)
  SUBW s7, s7, s11
  SW s7, 0(s4)
  LA s4, c
  ADD s3, s4, s3
  LW s4, 0(s3)
  SUBW s4, s4, s7
  SUBW s4, s4, s11
  SW s4, 0(s3)
  ADDIW s5, s2, 1
  # implict jump to bb66
bb66:
  LA s2, n
  LW s2, 0(s2)
  SUBW s2, s2, s5
  BNE s2, zero, bb67
  JAL zero, bb56
bb67:
  ADD s0, s5, zero
  JAL zero, bb65
bb68:
  ADD s1, zero, zero
  # implict jump to bb69
bb69:
  ADD t4, s1, zero
  SW t4, 100(sp)
  LW t3, 100(sp)
  ADDIW t4, t3, 1
  SW t4, 104(sp)
  LA s7, n
  LW s7, 0(s7)
  LW t4, 104(sp)
  BLT t4, s7, bb74
  # implict jump to bb70
bb70:
  LW t4, 100(sp)
  ADD s7, t4, zero
  # implict jump to bb71
bb71:
  LW t4, 100(sp)
  SLLIW s0, t4, 2
  LA s2, c
  ADD s0, s2, s0
  LW s2, 0(s0)
  SLLIW s3, s7, 2
  LA s4, c
  ADD s3, s4, s3
  LW s4, 0(s3)
  SW s4, 0(s0)
  SW s2, 0(s3)
  # implict jump to bb72
bb72:
  LA s0, n
  LW s0, 0(s0)
  LW t4, 104(sp)
  BLT t4, s0, bb73
  JAL zero, bb55
bb73:
  LW t4, 104(sp)
  ADD s1, t4, zero
  JAL zero, bb69
bb74:
  LW t4, 100(sp)
  ADD s8, t4, zero
  LW t4, 104(sp)
  ADD s10, t4, zero
  # implict jump to bb75
bb75:
  ADD s4, s10, zero
  ADD s3, s8, zero
  SLLIW s0, s4, 2
  LA s11, c
  ADD s0, s11, s0
  LW s0, 0(s0)
  SLLIW s11, s3, 2
  LA s2, c
  ADD s2, s2, s11
  LW s2, 0(s2)
  BLT s0, s2, bb81
  # implict jump to bb76
bb76:
  ADD s0, s3, zero
  # implict jump to bb77
bb77:
  ADD s9, s0, zero
  ADDIW s6, s4, 1
  # implict jump to bb78
bb78:
  LA s0, n
  LW s0, 0(s0)
  BLT s6, s0, bb80
  # implict jump to bb79
bb79:
  ADD s7, s9, zero
  JAL zero, bb71
bb80:
  ADD s8, s9, zero
  ADD s10, s6, zero
  JAL zero, bb75
bb81:
  ADD s0, s4, zero
  JAL zero, bb77
bb82:
  ADD t4, zero, zero
  SW t4, 112(sp)
  ADD t4, zero, zero
  SW t4, 172(sp)
  # implict jump to bb83
bb83:
  LW t4, 172(sp)
  ADD s7, t4, zero
  LW t3, 112(sp)
  ADD t4, t3, zero
  SW t4, 80(sp)
  LW t4, 80(sp)
  SLLIW s10, t4, 2
  LA s2, cnt
  ADD s2, s2, s10
  LW s2, 0(s2)
  BNE s2, zero, bb88
  # implict jump to bb84
bb84:
  ADD s10, s7, zero
  # implict jump to bb85
bb85:
  ADD t4, s10, zero
  SW t4, 68(sp)
  LW t3, 80(sp)
  ADDIW t4, t3, 1
  SW t4, 108(sp)
  # implict jump to bb86
bb86:
  LW t4, 84(sp)
  LW t3, 108(sp)
  SLT s1, t4, t3
  XORI s1, s1, 1
  BNE s1, zero, bb87
  JAL zero, bb54
bb87:
  LW t3, 108(sp)
  ADD t4, t3, zero
  SW t4, 112(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  JAL zero, bb83
bb88:
  ADD t4, s7, zero
  SW t4, 92(sp)
  ADD t4, s2, zero
  SW t4, 88(sp)
  # implict jump to bb89
bb89:
  LW t4, 88(sp)
  ADD s8, t4, zero
  LW t4, 92(sp)
  ADD s1, t4, zero
  SLLIW s2, s1, 2
  LA s7, b
  ADD s2, s7, s2
  LW t4, 80(sp)
  SW t4, 0(s2)
  ADDIW t4, s1, 1
  SW t4, 64(sp)
  ADDI s1, zero, 1
  SUBW t4, s8, s1
  SW t4, 60(sp)
  # implict jump to bb90
bb90:
  LW t4, 60(sp)
  BNE t4, zero, bb92
  # implict jump to bb91
bb91:
  LW t4, 64(sp)
  ADD s10, t4, zero
  JAL zero, bb85
bb92:
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  JAL zero, bb89
bb93:
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADDI t4, zero, -100
  SW t4, 72(sp)
  # implict jump to bb94
bb94:
  LW t4, 72(sp)
  ADD s4, t4, zero
  LW t4, 76(sp)
  ADD s7, t4, zero
  SLLIW s8, s7, 2
  LA s10, b
  ADD s8, s10, s8
  LW s8, 0(s8)
  SLLIW s10, s8, 2
  LA s3, cnt
  ADD s3, s3, s10
  LW s10, 0(s3)
  ADDIW s10, s10, 1
  SW s10, 0(s3)
  BLT s4, s8, bb100
  # implict jump to bb95
bb95:
  ADD s3, s4, zero
  # implict jump to bb96
bb96:
  ADD t4, s3, zero
  SW t4, 52(sp)
  ADDIW t4, s7, 1
  SW t4, 56(sp)
  # implict jump to bb97
bb97:
  LA s3, n
  LW s3, 0(s3)
  LW t4, 56(sp)
  BLT t4, s3, bb99
  # implict jump to bb98
bb98:
  LW t4, 52(sp)
  ADD s1, t4, zero
  JAL zero, bb53
bb99:
  LW t3, 56(sp)
  ADD t4, t3, zero
  SW t4, 76(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 72(sp)
  JAL zero, bb94
bb100:
  ADD s3, s8, zero
  JAL zero, bb96
bb101:
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 32(sp)
  # implict jump to bb102
bb102:
  LW t4, 32(sp)
  ADD s7, t4, zero
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t3, 36(sp)
  ADDIW t4, t3, 1
  SW t4, 120(sp)
  LA s4, n
  LW s4, 0(s4)
  LW t4, 120(sp)
  BLT t4, s4, bb107
  # implict jump to bb103
bb103:
  ADD s4, s7, zero
  # implict jump to bb104
bb104:
  ADD t4, s4, zero
  SW t4, 160(sp)
  # implict jump to bb105
bb105:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 120(sp)
  BLT t4, s1, bb106
  JAL zero, bb51
bb106:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb102
bb107:
  LW t3, 120(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  ADD t4, s7, zero
  SW t4, 0(sp)
  # implict jump to bb108
bb108:
  LW t4, 0(sp)
  ADD s7, t4, zero
  LW t4, 44(sp)
  ADD s3, t4, zero
  LW t4, 36(sp)
  SLLIW s1, t4, 2
  LA s10, a
  ADD s1, s10, s1
  LW s10, 0(s1)
  SLLIW s8, s3, 2
  LA s2, a
  ADD s2, s2, s8
  LW s8, 0(s2)
  BLT s8, s10, bb114
  # implict jump to bb109
bb109:
  # implict jump to bb110
bb110:
  ADD t4, s7, zero
  SW t4, 124(sp)
  ADDIW t4, s3, 1
  SW t4, 128(sp)
  # implict jump to bb111
bb111:
  LA s1, n
  LW s1, 0(s1)
  LW t4, 128(sp)
  BLT t4, s1, bb113
  # implict jump to bb112
bb112:
  LW t4, 124(sp)
  ADD s4, t4, zero
  JAL zero, bb104
bb113:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 124(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb108
bb114:
  LW s8, 0(s1)
  LW s10, 0(s2)
  SW s10, 0(s1)
  SW s8, 0(s2)
  ADD s7, s8, zero
  JAL zero, bb110
bb115:
  ADD t4, zero, zero
  SW t4, 28(sp)
  # implict jump to bb116
bb116:
  LW t3, 28(sp)
  ADD t4, t3, zero
  SW t4, 168(sp)
  LW t3, 168(sp)
  SLLIW t4, t3, 2
  SW t4, 164(sp)
  LA s7, a
  LW t3, 164(sp)
  ADD t4, s7, t3
  SD t4, 280(sp)
  CALL getch
  ADD s7, a0, zero
  ADD t4, zero, zero
  SW t4, 176(sp)
  ADD t4, s7, zero
  SW t4, 48(sp)
  # implict jump to bb117
bb117:
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 176(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 8(sp)
  SLTI s7, t4, 48
  BNE s7, zero, bb136
  # implict jump to bb118
bb118:
  ADDI s7, zero, 57
  LW t4, 8(sp)
  SLT s7, s7, t4
  # implict jump to bb119
bb119:
  BNE s7, zero, bb132
  # implict jump to bb120
bb120:
  ADD t4, zero, zero
  SW t4, 16(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  # implict jump to bb121
bb121:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t4, 20(sp)
  SLTI s7, t4, 48
  XORI s7, s7, 1
  BNE s7, zero, bb131
  # implict jump to bb122
bb122:
  ADD s7, zero, zero
  # implict jump to bb123
bb123:
  BNE s7, zero, bb130
  # implict jump to bb124
bb124:
  LW t4, 4(sp)
  BNE t4, zero, bb129
  # implict jump to bb125
bb125:
  LW t4, 24(sp)
  ADD s4, t4, zero
  # implict jump to bb126
bb126:
  LD t4, 280(sp)
  SW s4, 0(t4)
  LA s7, b
  LW t4, 164(sp)
  ADD s7, s7, t4
  SW s4, 0(s7)
  LA s7, c
  LW t4, 164(sp)
  ADD s7, s7, t4
  SW s4, 0(s7)
  LW t3, 168(sp)
  ADDIW t4, t3, 1
  SW t4, 116(sp)
  # implict jump to bb127
bb127:
  LA s4, n
  LW s4, 0(s4)
  LW t4, 116(sp)
  BNE t4, s4, bb128
  JAL zero, bb50
bb128:
  LW t3, 116(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  JAL zero, bb116
bb129:
  LW t4, 24(sp)
  SUB s7, zero, t4
  ADD s4, s7, zero
  JAL zero, bb126
bb130:
  ADDI s0, zero, 10
  LW t4, 24(sp)
  MULW s0, t4, s0
  LW t4, 20(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  JAL zero, bb121
bb131:
  ADDI s4, zero, 57
  LW t4, 20(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s7, s4, zero
  JAL zero, bb123
bb132:
  LW t4, 8(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb135
  # implict jump to bb133
bb133:
  LW t4, 4(sp)
  ADD s0, t4, zero
  # implict jump to bb134
bb134:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 176(sp)
  ADD t4, s1, zero
  SW t4, 48(sp)
  JAL zero, bb117
bb135:
  ADDI s0, zero, 1
  JAL zero, bb134
bb136:
  ADDI s7, zero, 1
  JAL zero, bb119
bb137:
  LW t4, 156(sp)
  SUB s7, zero, t4
  ADD s4, s7, zero
  JAL zero, bb49
bb138:
  ADDI s0, zero, 10
  LW t4, 156(sp)
  MULW s0, t4, s0
  LW t4, 152(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 148(sp)
  ADD t4, s1, zero
  SW t4, 144(sp)
  JAL zero, bb44
bb139:
  ADDI s4, zero, 57
  LW t4, 152(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s7, s4, zero
  JAL zero, bb46
bb140:
  LW t4, 140(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb143
  # implict jump to bb141
bb141:
  LW t4, 136(sp)
  ADD s0, t4, zero
  # implict jump to bb142
bb142:
  CALL getch
  ADD t4, s0, zero
  SW t4, 132(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  JAL zero, bb40
bb143:
  ADDI s0, zero, 1
  JAL zero, bb142
bb144:
  ADDI s7, zero, 1
  JAL zero, bb42
sortA:
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
  LA s4, n
  LW s4, 0(s4)
  BLT zero, s4, bb147
  # implict jump to bb146
bb146:
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
bb147:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb148
bb148:
  ADD s6, s5, zero
  ADD s7, s4, zero
  ADDIW s1, s7, 1
  LA s8, n
  LW s8, 0(s8)
  BLT s1, s8, bb153
  # implict jump to bb149
bb149:
  ADD s8, s6, zero
  # implict jump to bb150
bb150:
  ADD s2, s8, zero
  # implict jump to bb151
bb151:
  LA s8, n
  LW s8, 0(s8)
  BLT s1, s8, bb152
  JAL zero, bb146
bb152:
  ADD s4, s1, zero
  ADD s5, s2, zero
  JAL zero, bb148
bb153:
  ADD s9, s1, zero
  # implict jump to bb154
bb154:
  ADD s10, s6, zero
  ADD s11, s9, zero
  SLLIW t0, s7, 2
  ADD t0, a0, t0
  LW t1, 0(t0)
  SLLIW t2, s11, 2
  ADD t2, a0, t2
  LW a1, 0(t2)
  BLT a1, t1, bb160
  # implict jump to bb155
bb155:
  # implict jump to bb156
bb156:
  ADD s0, s10, zero
  ADDIW s3, s11, 1
  # implict jump to bb157
bb157:
  LA s10, n
  LW s10, 0(s10)
  BLT s3, s10, bb159
  # implict jump to bb158
bb158:
  ADD s8, s0, zero
  JAL zero, bb150
bb159:
  ADD s9, s3, zero
  ADD s6, s0, zero
  JAL zero, bb154
bb160:
  LW t1, 0(t0)
  LW a1, 0(t2)
  SW a1, 0(t0)
  SW t1, 0(t2)
  ADD s10, t1, zero
  JAL zero, bb156
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
  # implict jump to bb162
bb162:
  ADD s2, s0, zero
  ADD s3, s1, zero
  SLTI s4, s2, 48
  BNE s4, zero, bb178
  # implict jump to bb163
bb163:
  ADDI s4, zero, 57
  SLT s4, s4, s2
  # implict jump to bb164
bb164:
  BNE s4, zero, bb174
  # implict jump to bb165
bb165:
  ADD s4, zero, zero
  ADD s5, s2, zero
  # implict jump to bb166
bb166:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 48
  XORI s8, s8, 1
  BNE s8, zero, bb173
  # implict jump to bb167
bb167:
  ADD s8, zero, zero
  # implict jump to bb168
bb168:
  BNE s8, zero, bb172
  # implict jump to bb169
bb169:
  BNE s3, zero, bb171
  # implict jump to bb170
bb170:
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
bb171:
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
bb172:
  ADDI s8, zero, 10
  MULW s7, s7, s8
  ADDW s6, s7, s6
  ADDI s7, zero, 48
  SUBW s6, s6, s7
  CALL getch
  ADD s7, a0, zero
  ADD s4, s6, zero
  ADD s5, s7, zero
  JAL zero, bb166
bb173:
  ADDI s9, zero, 57
  SLT s9, s9, s6
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb168
bb174:
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb177
  # implict jump to bb175
bb175:
  ADD s2, s3, zero
  # implict jump to bb176
bb176:
  CALL getch
  ADD s1, s2, zero
  ADD s0, a0, zero
  JAL zero, bb162
bb177:
  ADDI s2, zero, 1
  JAL zero, bb176
bb178:
  ADDI s4, zero, 1
  JAL zero, bb164
