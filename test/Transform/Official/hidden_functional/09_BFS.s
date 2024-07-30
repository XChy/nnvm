.global main
.section .bss

head:
.space 4020
inq:
.space 4020
next:
.space 20020
que:
.space 4020
to:
.space 20020




.section .data
h:
.word 0x00000000





cnt:
.word 0x00000000
m:
.word 0x00000000
tail:
.word 0x00000000
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -336
  SD ra, 232(sp)
  SD s0, 240(sp)
  SD s1, 248(sp)
  SD s2, 256(sp)
  SD s3, 264(sp)
  SD s4, 272(sp)
  SD s5, 280(sp)
  SD s7, 288(sp)
  SD s8, 296(sp)
  SD s9, 304(sp)
  SD s6, 312(sp)
  SD s10, 320(sp)
  SD s11, 328(sp)
  CALL getch
  ADD s0, a0, zero
  ADD t4, zero, zero
  SW t4, 208(sp)
  ADD t4, s0, zero
  SW t4, 204(sp)
  # implict jump to bb1
bb1:
  LW t3, 204(sp)
  ADD t4, t3, zero
  SW t4, 216(sp)
  LW t3, 208(sp)
  ADD t4, t3, zero
  SW t4, 212(sp)
  LW t4, 216(sp)
  SLTI s4, t4, 48
  BNE s4, zero, bb143
  # implict jump to bb2
bb2:
  ADDI s4, zero, 57
  LW t4, 216(sp)
  SLT s4, s4, t4
  # implict jump to bb3
bb3:
  BNE s4, zero, bb139
  # implict jump to bb4
bb4:
  ADD t4, zero, zero
  SW t4, 224(sp)
  LW t3, 216(sp)
  ADD t4, t3, zero
  SW t4, 220(sp)
  # implict jump to bb5
bb5:
  LW t3, 220(sp)
  ADD t4, t3, zero
  SW t4, 124(sp)
  LW t3, 224(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t4, 124(sp)
  SLTI s8, t4, 48
  XORI s8, s8, 1
  BNE s8, zero, bb138
  # implict jump to bb6
bb6:
  ADD s8, zero, zero
  # implict jump to bb7
bb7:
  BNE s8, zero, bb137
  # implict jump to bb8
bb8:
  LW t4, 212(sp)
  BNE t4, zero, bb136
  # implict jump to bb9
bb9:
  LW t4, 64(sp)
  ADD s8, t4, zero
  # implict jump to bb10
bb10:
  LA s9, n
  SW s8, 0(s9)
  CALL getch
  ADD s8, a0, zero
  ADD t4, zero, zero
  SW t4, 8(sp)
  ADD t4, s8, zero
  SW t4, 4(sp)
  # implict jump to bb11
bb11:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 16(sp)
  SLTI s0, t4, 48
  BNE s0, zero, bb135
  # implict jump to bb12
bb12:
  ADDI s0, zero, 57
  LW t4, 16(sp)
  SLT s0, s0, t4
  # implict jump to bb13
bb13:
  BNE s0, zero, bb131
  # implict jump to bb14
bb14:
  ADD t4, zero, zero
  SW t4, 24(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  # implict jump to bb15
bb15:
  LW t3, 20(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  LW t4, 28(sp)
  SLTI s5, t4, 48
  XORI s5, s5, 1
  BNE s5, zero, bb130
  # implict jump to bb16
bb16:
  ADD s5, zero, zero
  # implict jump to bb17
bb17:
  BNE s5, zero, bb129
  # implict jump to bb18
bb18:
  LW t4, 12(sp)
  BNE t4, zero, bb128
  # implict jump to bb19
bb19:
  LW t4, 32(sp)
  ADD s4, t4, zero
  # implict jump to bb20
bb20:
  LA s5, m
  SW s4, 0(s5)
  ADD t4, zero, zero
  SW t4, 36(sp)
  # implict jump to bb21
bb21:
  LW t4, 36(sp)
  ADD s5, t4, zero
  SLLIW s6, s5, 2
  LA s7, head
  ADD s6, s7, s6
  ADDI s7, zero, -1
  SW s7, 0(s6)
  ADDIW t4, s5, 1
  SW t4, 40(sp)
  LW t4, 40(sp)
  SLTI s6, t4, 1005
  BNE s6, zero, bb127
  # implict jump to bb22
bb22:
  LA s6, m
  LW s6, 0(s6)
  BNE s6, zero, bb24
  # implict jump to bb23
bb23:
  ADD a0, zero, zero
  LD ra, 232(sp)
  LD s0, 240(sp)
  LD s1, 248(sp)
  LD s2, 256(sp)
  LD s3, 264(sp)
  LD s4, 272(sp)
  LD s5, 280(sp)
  LD s7, 288(sp)
  LD s8, 296(sp)
  LD s9, 304(sp)
  LD s6, 312(sp)
  LD s10, 320(sp)
  LD s11, 328(sp)
  ADDI sp, sp, 336
  JALR zero, 0(ra)
bb24:
  ADD t4, zero, zero
  SW t4, 76(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  ADD t4, zero, zero
  SW t4, 68(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  # implict jump to bb25
bb25:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 44(sp)
  LW t3, 68(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 52(sp)
  LW t3, 76(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  CALL getch
  ADD s3, a0, zero
  ADD t4, s3, zero
  SW t4, 60(sp)
  # implict jump to bb26
bb26:
  LW t4, 60(sp)
  ADD s2, t4, zero
  XORI s4, s2, 81
  BNE s4, zero, bb126
  # implict jump to bb27
bb27:
  ADD s4, zero, zero
  # implict jump to bb28
bb28:
  BNE s4, zero, bb125
  # implict jump to bb29
bb29:
  XORI s2, s2, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb69
  # implict jump to bb30
bb30:
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 84(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  # implict jump to bb31
bb31:
  LW t3, 80(sp)
  ADD t4, t3, zero
  SW t4, 92(sp)
  LW t3, 84(sp)
  ADD t4, t3, zero
  SW t4, 88(sp)
  LW t4, 92(sp)
  SLTI s10, t4, 48
  BNE s10, zero, bb68
  # implict jump to bb32
bb32:
  ADDI s10, zero, 57
  LW t4, 92(sp)
  SLT s10, s10, t4
  # implict jump to bb33
bb33:
  BNE s10, zero, bb64
  # implict jump to bb34
bb34:
  ADD t4, zero, zero
  SW t4, 100(sp)
  LW t3, 92(sp)
  ADD t4, t3, zero
  SW t4, 96(sp)
  # implict jump to bb35
bb35:
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 104(sp)
  LW t3, 100(sp)
  ADD t4, t3, zero
  SW t4, 108(sp)
  LW t4, 104(sp)
  SLTI s9, t4, 48
  XORI s9, s9, 1
  BNE s9, zero, bb63
  # implict jump to bb36
bb36:
  ADD s9, zero, zero
  # implict jump to bb37
bb37:
  BNE s9, zero, bb62
  # implict jump to bb38
bb38:
  LW t4, 88(sp)
  BNE t4, zero, bb61
  # implict jump to bb39
bb39:
  LW t4, 108(sp)
  ADD s8, t4, zero
  # implict jump to bb40
bb40:
  ADD t4, s8, zero
  SW t4, 112(sp)
  CALL getch
  ADD s9, a0, zero
  ADD t4, zero, zero
  SW t4, 120(sp)
  ADD t4, s9, zero
  SW t4, 116(sp)
  # implict jump to bb41
bb41:
  LW t4, 116(sp)
  ADD s6, t4, zero
  LW t4, 120(sp)
  ADD s2, t4, zero
  SLTI s4, s6, 48
  BNE s4, zero, bb60
  # implict jump to bb42
bb42:
  ADDI s4, zero, 57
  SLT s4, s4, s6
  # implict jump to bb43
bb43:
  BNE s4, zero, bb56
  # implict jump to bb44
bb44:
  ADD s4, zero, zero
  ADD s11, s6, zero
  # implict jump to bb45
bb45:
  ADD s5, s11, zero
  ADD s1, s4, zero
  SLTI s10, s5, 48
  XORI s10, s10, 1
  BNE s10, zero, bb55
  # implict jump to bb46
bb46:
  ADD s10, zero, zero
  # implict jump to bb47
bb47:
  BNE s10, zero, bb54
  # implict jump to bb48
bb48:
  BNE s2, zero, bb53
  # implict jump to bb49
bb49:
  ADD s0, s1, zero
  # implict jump to bb50
bb50:
  LA s10, cnt
  LW s10, 0(s10)
  SLLIW s3, s10, 2
  LA s8, to
  ADD s8, s8, s3
  SW s0, 0(s8)
  LA s8, next
  ADD s3, s8, s3
  LW t4, 112(sp)
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
  ADD s9, s9, s8
  LW t4, 112(sp)
  SW t4, 0(s9)
  LA s9, next
  ADD s8, s9, s8
  SLLIW s9, s0, 2
  LA s7, head
  ADD s7, s7, s9
  LW s9, 0(s7)
  SW s9, 0(s8)
  SW s3, 0(s7)
  ADDIW s3, s10, 2
  LA s7, cnt
  SW s3, 0(s7)
  LW t4, 112(sp)
  ADD s3, t4, zero
  LW t4, 52(sp)
  ADD s7, t4, zero
  LW t4, 56(sp)
  ADD s8, t4, zero
  # implict jump to bb51
bb51:
  LA s10, m
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  LA s11, m
  SW s10, 0(s11)
  LA s10, m
  LW s10, 0(s10)
  BNE s10, zero, bb52
  JAL zero, bb23
bb52:
  ADD t4, s8, zero
  SW t4, 76(sp)
  ADD t4, s7, zero
  SW t4, 72(sp)
  ADD t4, s3, zero
  SW t4, 68(sp)
  ADD t4, s0, zero
  SW t4, 0(sp)
  JAL zero, bb25
bb53:
  SUBW s10, zero, s1
  ADD s0, s10, zero
  JAL zero, bb50
bb54:
  ADDI s9, zero, 10
  MULW s1, s1, s9
  ADDW s1, s1, s5
  ADDI s5, zero, 48
  SUBW s1, s1, s5
  CALL getch
  ADD s5, a0, zero
  ADD s4, s1, zero
  ADD s11, s5, zero
  JAL zero, bb45
bb55:
  ADDI s0, zero, 57
  SLT s0, s0, s5
  XORI s0, s0, 1
  ADD s10, s0, zero
  JAL zero, bb47
bb56:
  XORI s1, s6, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb59
  # implict jump to bb57
bb57:
  ADD s1, s2, zero
  # implict jump to bb58
bb58:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 120(sp)
  ADD t4, s2, zero
  SW t4, 116(sp)
  JAL zero, bb41
bb59:
  ADDI s1, zero, 1
  JAL zero, bb58
bb60:
  ADDI s4, zero, 1
  JAL zero, bb43
bb61:
  LW t4, 108(sp)
  SUBW s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb40
bb62:
  ADDI s1, zero, 10
  LW t4, 108(sp)
  MULW s1, t4, s1
  LW t4, 104(sp)
  ADDW s1, s1, t4
  ADDI s2, zero, 48
  SUBW s1, s1, s2
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 100(sp)
  ADD t4, s2, zero
  SW t4, 96(sp)
  JAL zero, bb35
bb63:
  ADDI s8, zero, 57
  LW t4, 104(sp)
  SLT s8, s8, t4
  XORI s8, s8, 1
  ADD s9, s8, zero
  JAL zero, bb37
bb64:
  LW t4, 92(sp)
  XORI s1, t4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb67
  # implict jump to bb65
bb65:
  LW t4, 88(sp)
  ADD s1, t4, zero
  # implict jump to bb66
bb66:
  CALL getch
  ADD s2, a0, zero
  ADD t4, s1, zero
  SW t4, 84(sp)
  ADD t4, s2, zero
  SW t4, 80(sp)
  JAL zero, bb31
bb67:
  ADDI s1, zero, 1
  JAL zero, bb66
bb68:
  ADDI s10, zero, 1
  JAL zero, bb33
bb69:
  CALL getch
  ADD s1, a0, zero
  ADD t4, zero, zero
  SW t4, 196(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  # implict jump to bb70
bb70:
  LW t3, 200(sp)
  ADD t4, t3, zero
  SW t4, 188(sp)
  LW t3, 196(sp)
  ADD t4, t3, zero
  SW t4, 192(sp)
  LW t4, 188(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb124
  # implict jump to bb71
bb71:
  ADDI s6, zero, 57
  LW t4, 188(sp)
  SLT s6, s6, t4
  # implict jump to bb72
bb72:
  BNE s6, zero, bb120
  # implict jump to bb73
bb73:
  ADD t4, zero, zero
  SW t4, 180(sp)
  LW t3, 188(sp)
  ADD t4, t3, zero
  SW t4, 184(sp)
  # implict jump to bb74
bb74:
  LW t3, 184(sp)
  ADD t4, t3, zero
  SW t4, 176(sp)
  LW t3, 180(sp)
  ADD t4, t3, zero
  SW t4, 172(sp)
  LW t4, 176(sp)
  SLTI s1, t4, 48
  XORI s1, s1, 1
  BNE s1, zero, bb119
  # implict jump to bb75
bb75:
  ADD s1, zero, zero
  # implict jump to bb76
bb76:
  BNE s1, zero, bb118
  # implict jump to bb77
bb77:
  LW t4, 192(sp)
  BNE t4, zero, bb117
  # implict jump to bb78
bb78:
  LW t4, 172(sp)
  ADD s1, t4, zero
  # implict jump to bb79
bb79:
  ADD t4, s1, zero
  SW t4, 168(sp)
  CALL getch
  ADD s2, a0, zero
  ADD t4, zero, zero
  SW t4, 160(sp)
  ADD t4, s2, zero
  SW t4, 164(sp)
  # implict jump to bb80
bb80:
  LW t3, 164(sp)
  ADD t4, t3, zero
  SW t4, 152(sp)
  LW t3, 160(sp)
  ADD t4, t3, zero
  SW t4, 156(sp)
  LW t4, 152(sp)
  SLTI s6, t4, 48
  BNE s6, zero, bb116
  # implict jump to bb81
bb81:
  ADDI s6, zero, 57
  LW t4, 152(sp)
  SLT s6, s6, t4
  # implict jump to bb82
bb82:
  BNE s6, zero, bb112
  # implict jump to bb83
bb83:
  ADD t4, zero, zero
  SW t4, 144(sp)
  LW t3, 152(sp)
  ADD t4, t3, zero
  SW t4, 148(sp)
  # implict jump to bb84
bb84:
  LW t3, 148(sp)
  ADD t4, t3, zero
  SW t4, 140(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t4, 140(sp)
  SLTI s2, t4, 48
  XORI s2, s2, 1
  BNE s2, zero, bb111
  # implict jump to bb85
bb85:
  ADD s2, zero, zero
  # implict jump to bb86
bb86:
  BNE s2, zero, bb110
  # implict jump to bb87
bb87:
  LW t4, 156(sp)
  BNE t4, zero, bb109
  # implict jump to bb88
bb88:
  LW t4, 136(sp)
  ADD s2, t4, zero
  # implict jump to bb89
bb89:
  ADD t4, s2, zero
  SW t4, 128(sp)
  LA s5, h
  SW zero, 0(s5)
  LA s5, tail
  SW zero, 0(s5)
  LW t4, 168(sp)
  SLLIW s5, t4, 2
  LA s9, inq
  ADD s5, s9, s5
  ADDI s9, zero, 1
  SW s9, 0(s5)
  LA s5, tail
  ADDI s9, zero, 1
  SW s9, 0(s5)
  LA s5, que
  LW t4, 168(sp)
  SW t4, 4(s5)
  LA s5, h
  LW s5, 0(s5)
  LA s9, tail
  LW s9, 0(s9)
  BLT s5, s9, bb96
  # implict jump to bb90
bb90:
  ADD s5, zero, zero
  # implict jump to bb91
bb91:
  LA s4, tail
  LW s4, 0(s4)
  SLT s4, s4, zero
  XORI s4, s4, 1
  BNE s4, zero, bb93
  # implict jump to bb92
bb92:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t4, 44(sp)
  ADD s0, t4, zero
  LW t4, 48(sp)
  ADD s3, t4, zero
  LW t4, 128(sp)
  ADD s7, t4, zero
  LW t4, 168(sp)
  ADD s8, t4, zero
  JAL zero, bb51
bb93:
  ADD s4, zero, zero
  # implict jump to bb94
bb94:
  ADD s10, s4, zero
  SLLIW s11, s10, 2
  LA s2, que
  ADD s2, s2, s11
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s11, inq
  ADD s2, s11, s2
  SW zero, 0(s2)
  ADDIW s2, s10, 1
  LA s10, tail
  LW s10, 0(s10)
  SLT s10, s10, s2
  XORI s10, s10, 1
  BNE s10, zero, bb95
  JAL zero, bb92
bb95:
  ADD s4, s2, zero
  JAL zero, bb94
bb96:
  ADD s9, zero, zero
  # implict jump to bb97
bb97:
  ADD s4, s9, zero
  LA s10, h
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  LA s6, h
  SW s10, 0(s6)
  SLLIW s6, s10, 2
  LA s10, que
  ADD s6, s10, s6
  LW s6, 0(s6)
  LW t4, 128(sp)
  XOR s10, s6, t4
  SLTIU s10, s10, 1
  BNE s10, zero, bb108
  # implict jump to bb98
bb98:
  # implict jump to bb99
bb99:
  ADD t4, s4, zero
  SW t4, 132(sp)
  SLLIW s6, s6, 2
  LA s10, head
  ADD s6, s10, s6
  LW s6, 0(s6)
  XORI s10, s6, -1
  BNE s10, zero, bb103
  # implict jump to bb100
bb100:
  LA s4, h
  LW s4, 0(s4)
  LA s10, tail
  LW s10, 0(s10)
  BLT s4, s10, bb102
  # implict jump to bb101
bb101:
  LW t4, 132(sp)
  ADD s5, t4, zero
  JAL zero, bb91
bb102:
  LW t4, 132(sp)
  ADD s9, t4, zero
  JAL zero, bb97
bb103:
  # implict jump to bb104
bb104:
  ADD s10, s6, zero
  SLLIW s10, s10, 2
  LA s11, to
  ADD s11, s11, s10
  LW s11, 0(s11)
  SLLIW s1, s11, 2
  LA s4, inq
  ADD s1, s4, s1
  LW s4, 0(s1)
  SLTU s4, zero, s4
  XORI s4, s4, 1
  BNE s4, zero, bb107
  # implict jump to bb105
bb105:
  LA s1, next
  ADD s1, s1, s10
  LW s1, 0(s1)
  XORI s4, s1, -1
  BNE s4, zero, bb106
  JAL zero, bb100
bb106:
  ADD s6, s1, zero
  JAL zero, bb104
bb107:
  ADDI s4, zero, 1
  SW s4, 0(s1)
  LA s1, tail
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s4, tail
  SW s1, 0(s4)
  SLLIW s1, s1, 2
  LA s4, que
  ADD s1, s4, s1
  SW s11, 0(s1)
  JAL zero, bb105
bb108:
  ADDI s4, zero, 1
  JAL zero, bb99
bb109:
  LW t4, 136(sp)
  SUBW s5, zero, t4
  ADD s2, s5, zero
  JAL zero, bb89
bb110:
  ADDI s0, zero, 10
  LW t4, 136(sp)
  MULW s0, t4, s0
  LW t4, 140(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 144(sp)
  ADD t4, s1, zero
  SW t4, 148(sp)
  JAL zero, bb84
bb111:
  ADDI s5, zero, 57
  LW t4, 140(sp)
  SLT s5, s5, t4
  XORI s5, s5, 1
  ADD s2, s5, zero
  JAL zero, bb86
bb112:
  LW t4, 152(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb115
  # implict jump to bb113
bb113:
  LW t4, 156(sp)
  ADD s0, t4, zero
  # implict jump to bb114
bb114:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 160(sp)
  ADD t4, s1, zero
  SW t4, 164(sp)
  JAL zero, bb80
bb115:
  ADDI s0, zero, 1
  JAL zero, bb114
bb116:
  ADDI s6, zero, 1
  JAL zero, bb82
bb117:
  LW t4, 172(sp)
  SUBW s2, zero, t4
  ADD s1, s2, zero
  JAL zero, bb79
bb118:
  ADDI s0, zero, 10
  LW t4, 172(sp)
  MULW s0, t4, s0
  LW t4, 176(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 180(sp)
  ADD t4, s1, zero
  SW t4, 184(sp)
  JAL zero, bb74
bb119:
  ADDI s2, zero, 57
  LW t4, 176(sp)
  SLT s2, s2, t4
  XORI s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb76
bb120:
  LW t4, 188(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb121
bb121:
  LW t4, 192(sp)
  ADD s0, t4, zero
  # implict jump to bb122
bb122:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 196(sp)
  ADD t4, s1, zero
  SW t4, 200(sp)
  JAL zero, bb70
bb123:
  ADDI s0, zero, 1
  JAL zero, bb122
bb124:
  ADDI s6, zero, 1
  JAL zero, bb72
bb125:
  CALL getch
  ADD s0, a0, zero
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb26
bb126:
  XORI s5, s2, 85
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb28
bb127:
  LW t3, 40(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  JAL zero, bb21
bb128:
  LW t4, 32(sp)
  SUBW s5, zero, t4
  ADD s4, s5, zero
  JAL zero, bb20
bb129:
  ADDI s0, zero, 10
  LW t4, 32(sp)
  MULW s0, t4, s0
  LW t4, 28(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 20(sp)
  JAL zero, bb15
bb130:
  ADDI s4, zero, 57
  LW t4, 28(sp)
  SLT s4, s4, t4
  XORI s4, s4, 1
  ADD s5, s4, zero
  JAL zero, bb17
bb131:
  LW t4, 16(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:
  LW t4, 12(sp)
  ADD s0, t4, zero
  # implict jump to bb133
bb133:
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 8(sp)
  ADD t4, s1, zero
  SW t4, 4(sp)
  JAL zero, bb11
bb134:
  ADDI s0, zero, 1
  JAL zero, bb133
bb135:
  ADDI s0, zero, 1
  JAL zero, bb13
bb136:
  LW t4, 64(sp)
  SUBW s9, zero, t4
  ADD s8, s9, zero
  JAL zero, bb10
bb137:
  ADDI s0, zero, 10
  LW t4, 64(sp)
  MULW s0, t4, s0
  LW t4, 124(sp)
  ADDW s0, s0, t4
  ADDI s1, zero, 48
  SUBW s0, s0, s1
  CALL getch
  ADD s1, a0, zero
  ADD t4, s0, zero
  SW t4, 224(sp)
  ADD t4, s1, zero
  SW t4, 220(sp)
  JAL zero, bb5
bb138:
  ADDI s9, zero, 57
  LW t4, 124(sp)
  SLT s9, s9, t4
  XORI s9, s9, 1
  ADD s8, s9, zero
  JAL zero, bb7
bb139:
  LW t4, 216(sp)
  XORI s0, t4, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb140
bb140:
  LW t4, 212(sp)
  ADD s0, t4, zero
  # implict jump to bb141
bb141:
  CALL getch
  ADD t4, s0, zero
  SW t4, 208(sp)
  ADD t4, a0, zero
  SW t4, 204(sp)
  JAL zero, bb1
bb142:
  ADDI s0, zero, 1
  JAL zero, bb141
bb143:
  ADDI s4, zero, 1
  JAL zero, bb3
