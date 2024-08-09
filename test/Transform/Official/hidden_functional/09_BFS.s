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
main:   # loop depth 0
  ADDI sp, sp, -192
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
  SD s2, 88(sp)
  SD s3, 96(sp)
  SD s4, 104(sp)
  SD s5, 112(sp)
  SD s6, 120(sp)
  SD s7, 128(sp)
  SD s8, 136(sp)
  SD s9, 144(sp)
  SD s10, 152(sp)
  SD s11, 160(sp)
  CALL getch
  ADD s4, zero, zero
  ADD s2, a0, zero
  # implict jump to bb1
bb1:   # loop depth 1
  SLTI s1, s2, 48
  BNE s1, zero, bb143
  # implict jump to bb2
bb2:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb3
bb3:   # loop depth 1
  BNE s1, zero, bb139
  # implict jump to bb4
bb4:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADD s5, s2, zero
  SLTI s1, s5, 48
  XORI s1, s1, 1
  BNE s1, zero, bb138
  # implict jump to bb6
bb6:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE s1, zero, bb137
  # implict jump to bb8
bb8:   # loop depth 0
  BNE s4, zero, bb136
  # implict jump to bb9
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  LA s1, n
  ADD s4, zero, zero
  SW s3, 0(s1)
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb11
bb11:   # loop depth 1
  SLTI s1, s2, 48
  BNE s1, zero, bb135
  # implict jump to bb12
bb12:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb13
bb13:   # loop depth 1
  BNE s1, zero, bb131
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb15
bb15:   # loop depth 1
  ADD s5, s2, zero
  SLTI s1, s5, 48
  XORI s1, s1, 1
  BNE s1, zero, bb130
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  BNE s1, zero, bb129
  # implict jump to bb18
bb18:   # loop depth 0
  BNE s4, zero, bb128
  # implict jump to bb19
bb19:   # loop depth 0
  # implict jump to bb20
bb20:   # loop depth 0
  LA s1, m
  ADD s0, zero, zero
  SW s3, 0(s1)
  # implict jump to bb21
bb21:   # loop depth 1
  LA s2, head
  SLLIW s1, s0, 2
  ADDI s4, zero, -1
  ADDIW s0, s0, 1
  ADD s1, s2, s1
  SW s4, 0(s1)
  SLTI s1, s0, 1005
  BNE s1, zero, bb127
  # implict jump to bb22
bb22:   # loop depth 0
  BNE s3, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  LD s2, 88(sp)
  LD s3, 96(sp)
  LD s4, 104(sp)
  LD s5, 112(sp)
  LD s6, 120(sp)
  LD s7, 128(sp)
  LD s8, 136(sp)
  LD s9, 144(sp)
  LD s10, 152(sp)
  LD s11, 160(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb24:   # loop depth 0
  ADD s9, zero, zero
  ADD s5, zero, zero
  ADD s7, zero, zero
  ADD s6, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  SW s5, 4(sp)
  SW s9, 0(sp)
  CALL getch
  ADD s5, a0, zero
  # implict jump to bb26
bb26:   # loop depth 2
  XORI s4, s5, 81
  BNE s4, zero, bb126
  # implict jump to bb27
bb27:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb28
bb28:   # loop depth 2
  BNE s4, zero, bb125
  # implict jump to bb29
bb29:   # loop depth 1
  XORI s4, s5, 81
  SLTIU s4, s4, 1
  BNE s4, zero, bb69
  # implict jump to bb30
bb30:   # loop depth 1
  CALL getch
  ADD s6, zero, zero
  ADD s5, a0, zero
  # implict jump to bb31
bb31:   # loop depth 2
  SLTI s3, s5, 48
  BNE s3, zero, bb68
  # implict jump to bb32
bb32:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s5
  # implict jump to bb33
bb33:   # loop depth 2
  BNE s3, zero, bb64
  # implict jump to bb34
bb34:   # loop depth 1
  ADD s8, zero, zero
  # implict jump to bb35
bb35:   # loop depth 2
  ADD s7, s5, zero
  SLTI s3, s7, 48
  XORI s3, s3, 1
  BNE s3, zero, bb63
  # implict jump to bb36
bb36:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb37
bb37:   # loop depth 2
  BNE s3, zero, bb62
  # implict jump to bb38
bb38:   # loop depth 1
  BNE s6, zero, bb61
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  CALL getch
  ADD s5, a0, zero
  ADD s7, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
  SLTI s3, s5, 48
  BNE s3, zero, bb60
  # implict jump to bb42
bb42:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s5
  # implict jump to bb43
bb43:   # loop depth 2
  BNE s3, zero, bb56
  # implict jump to bb44
bb44:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb45
bb45:   # loop depth 2
  ADD s9, s5, zero
  SLTI s3, s9, 48
  XORI s3, s3, 1
  BNE s3, zero, bb55
  # implict jump to bb46
bb46:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb47
bb47:   # loop depth 2
  BNE s3, zero, bb54
  # implict jump to bb48
bb48:   # loop depth 1
  BNE s7, zero, bb53
  # implict jump to bb49
bb49:   # loop depth 1
  # implict jump to bb50
bb50:   # loop depth 1
  LA s3, cnt
  LA s7, to
  LA s5, head
  LW s3, 0(s3)
  SLLIW s4, s8, 2
  ADD s5, s5, s4
  LA s10, next
  LA s0, cnt
  SD s0, 184(sp)
  LA s11, head
  SLLIW s4, s3, 2
  ADDIW s0, s3, 1
  SW s0, 12(sp)
  ADD s9, s7, s4
  ADD s4, s10, s4
  SW s6, 0(s9)
  SLLIW s10, s6, 2
  LW s7, 0(s5)
  ADD s0, s11, s10
  SD s0, 48(sp)
  LA s0, next
  SD s0, 168(sp)
  LW s0, 12(sp)
  SLLIW s0, s0, 2
  SW s0, 8(sp)
  LA s0, cnt
  SD s0, 176(sp)
  ADDIW s0, s3, 2
  SW s0, 44(sp)
  SW s7, 0(s4)
  LD s0, 168(sp)
  LW s1, 8(sp)
  ADD s4, s0, s1
  SW s3, 0(s5)
  ADD s7, s8, zero
  LD s0, 184(sp)
  LW s1, 12(sp)
  SW s1, 0(s0)
  LW s5, 4(sp)
  SW s8, 4(s9)
  LW s9, 0(sp)
  LD s0, 48(sp)
  LW s3, 0(s0)
  SW s3, 0(s4)
  LW s0, 12(sp)
  LD s1, 48(sp)
  SW s0, 0(s1)
  LD s2, 176(sp)
  LW s0, 44(sp)
  SW s0, 0(s2)
  # implict jump to bb51
bb51:   # loop depth 1
  LA s8, m
  LA s10, m
  LW s8, 0(s8)
  ADDIW s8, s8, -1
  SW s8, 0(s10)
  BNE s8, zero, bb52
  JAL zero, bb23
bb52:   # loop depth 1
  JAL zero, bb25
bb53:   # loop depth 1
  SUBW s6, zero, s6
  JAL zero, bb50
bb54:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s3, s6, s3
  ADD s5, a0, zero
  ADDW s2, s3, s9
  ADDIW s6, s2, -48
  JAL zero, bb45
bb55:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s9
  XORI s3, s3, 1
  JAL zero, bb47
bb56:   # loop depth 2
  XORI s2, s5, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb59
  # implict jump to bb57
bb57:   # loop depth 2
  # implict jump to bb58
bb58:   # loop depth 2
  CALL getch
  ADD s5, a0, zero
  JAL zero, bb41
bb59:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb58
bb60:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb43
bb61:   # loop depth 1
  SUBW s8, zero, s8
  JAL zero, bb40
bb62:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s3, s8, s3
  ADD s5, a0, zero
  ADDW s2, s3, s7
  ADDIW s8, s2, -48
  JAL zero, bb35
bb63:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s7
  XORI s3, s3, 1
  JAL zero, bb37
bb64:   # loop depth 2
  XORI s2, s5, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb67
  # implict jump to bb65
bb65:   # loop depth 2
  # implict jump to bb66
bb66:   # loop depth 2
  CALL getch
  ADD s5, a0, zero
  JAL zero, bb31
bb67:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb66
bb68:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb33
bb69:   # loop depth 1
  CALL getch
  ADD s4, zero, zero
  ADD s1, a0, zero
  # implict jump to bb70
bb70:   # loop depth 2
  SLTI s0, s1, 48
  BNE s0, zero, bb124
  # implict jump to bb71
bb71:   # loop depth 2
  ADDI s0, zero, 57
  SLT s0, s0, s1
  # implict jump to bb72
bb72:   # loop depth 2
  BNE s0, zero, bb120
  # implict jump to bb73
bb73:   # loop depth 1
  ADD s9, zero, zero
  # implict jump to bb74
bb74:   # loop depth 2
  ADD s5, s1, zero
  SLTI s1, s5, 48
  XORI s1, s1, 1
  BNE s1, zero, bb119
  # implict jump to bb75
bb75:   # loop depth 2
  ADD s1, zero, zero
  # implict jump to bb76
bb76:   # loop depth 2
  BNE s1, zero, bb118
  # implict jump to bb77
bb77:   # loop depth 1
  BNE s4, zero, bb117
  # implict jump to bb78
bb78:   # loop depth 1
  # implict jump to bb79
bb79:   # loop depth 1
  CALL getch
  ADD s4, a0, zero
  ADD s8, zero, zero
  # implict jump to bb80
bb80:   # loop depth 2
  SLTI s5, s4, 48
  BNE s5, zero, bb116
  # implict jump to bb81
bb81:   # loop depth 2
  ADDI s5, zero, 57
  SLT s5, s5, s4
  # implict jump to bb82
bb82:   # loop depth 2
  BNE s5, zero, bb112
  # implict jump to bb83
bb83:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb84
bb84:   # loop depth 2
  SW s4, 16(sp)
  LW s0, 16(sp)
  SLTI s4, s0, 48
  XORI s4, s4, 1
  BNE s4, zero, bb111
  # implict jump to bb85
bb85:   # loop depth 2
  ADD s4, zero, zero
  # implict jump to bb86
bb86:   # loop depth 2
  BNE s4, zero, bb110
  # implict jump to bb87
bb87:   # loop depth 1
  BNE s8, zero, bb109
  # implict jump to bb88
bb88:   # loop depth 1
  # implict jump to bb89
bb89:   # loop depth 1
  LA s1, h
  LA s4, tail
  LA s8, inq
  SLLIW a0, s9, 2
  SW zero, 0(s1)
  ADDI s1, zero, 1
  LA s10, tail
  SW zero, 0(s4)
  ADD a0, s8, a0
  ADDI s4, zero, 1
  LA s8, que
  SW s1, 0(a0)
  SW s4, 0(s10)
  ADDI a0, zero, 1
  SW s9, 4(s8)
  BNE a0, zero, bb96
  # implict jump to bb90
bb90:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb91
bb91:   # loop depth 1
  LA s4, tail
  LW s4, 0(s4)
  SLT s4, s4, zero
  XORI s4, s4, 1
  BNE s4, zero, bb93
  # implict jump to bb92
bb92:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb51
bb93:   # loop depth 1
  LA s8, tail
  ADD s0, zero, zero
  SW s0, 24(sp)
  LW s0, 0(s8)
  SW s0, 28(sp)
  # implict jump to bb94
bb94:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  LA s8, que
  LW s0, 24(sp)
  SLLIW s4, s0, 2
  LA s11, inq
  ADD s8, s8, s4
  LW s0, 24(sp)
  ADDIW s0, s0, 1
  SW s0, 24(sp)
  LW s0, 0(s8)
  SW s0, 20(sp)
  LW s0, 24(sp)
  LW s1, 28(sp)
  SLT s8, s1, s0
  XORI s10, s8, 1
  LW s0, 20(sp)
  SLLIW s8, s0, 2
  ADD s8, s11, s8
  SW zero, 0(s8)
  BNE s10, zero, bb95
  JAL zero, bb92
bb95:   # loop depth 2
  LW s0, 24(sp)
  SW s0, 24(sp)
  JAL zero, bb94
bb96:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  LA s4, h
  LA s10, h
  LA s11, que
  LW s4, 0(s4)
  ADDIW s8, s4, 1
  SLLIW s4, s4, 2
  ADD s4, s11, s4
  SW s8, 0(s10)
  LW s4, 4(s4)
  XOR s10, s4, s5
  SLTIU s10, s10, 1
  BNE s10, zero, bb108
  # implict jump to bb98
bb98:   # loop depth 2
  # implict jump to bb99
bb99:   # loop depth 2
  LA s10, head
  SLLIW s4, s4, 2
  ADD s4, s10, s4
  LW s4, 0(s4)
  XORI s10, s4, -1
  BNE s10, zero, bb103
  # implict jump to bb100
bb100:   # loop depth 2
  LA s4, tail
  LW s4, 0(s4)
  BLT s8, s4, bb102
  # implict jump to bb101
bb101:   # loop depth 1
  JAL zero, bb91
bb102:   # loop depth 2
  JAL zero, bb97
bb103:   # loop depth 2
  # implict jump to bb104
bb104:   # loop depth 3
  LA s10, to
  SLLIW s0, s4, 2
  SW s0, 40(sp)
  LA s11, inq
  LW s0, 40(sp)
  ADD s4, s10, s0
  LW s0, 0(s4)
  SW s0, 36(sp)
  LW s0, 36(sp)
  SLLIW s4, s0, 2
  ADD s4, s11, s4
  LW s10, 0(s4)
  SLTU s10, zero, s10
  XORI s10, s10, 1
  BNE s10, zero, bb107
  # implict jump to bb105
bb105:   # loop depth 3
  LA s4, next
  LW s0, 40(sp)
  ADD s4, s4, s0
  LW s4, 0(s4)
  XORI s10, s4, -1
  BNE s10, zero, bb106
  JAL zero, bb100
bb106:   # loop depth 3
  JAL zero, bb104
bb107:   # loop depth 3
  ADDI s10, zero, 1
  LA s11, tail
  SW s10, 0(s4)
  LA s10, tail
  LW s4, 0(s11)
  LA s11, que
  ADDIW s0, s4, 1
  SW s0, 32(sp)
  SLLIW s4, s4, 2
  ADD s4, s11, s4
  LW s0, 32(sp)
  SW s0, 0(s10)
  LW s0, 36(sp)
  SW s0, 4(s4)
  JAL zero, bb105
bb108:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb99
bb109:   # loop depth 1
  SUBW s5, zero, s5
  JAL zero, bb89
bb110:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s5, s5, s4
  ADD s4, a0, zero
  LW s0, 16(sp)
  ADDW s1, s5, s0
  ADDIW s5, s1, -48
  JAL zero, bb84
bb111:   # loop depth 2
  ADDI s4, zero, 57
  LW s0, 16(sp)
  SLT s4, s4, s0
  XORI s4, s4, 1
  JAL zero, bb86
bb112:   # loop depth 2
  XORI s1, s4, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb115
  # implict jump to bb113
bb113:   # loop depth 2
  # implict jump to bb114
bb114:   # loop depth 2
  CALL getch
  ADD s4, a0, zero
  JAL zero, bb80
bb115:   # loop depth 2
  ADDI s8, zero, 1
  JAL zero, bb114
bb116:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb82
bb117:   # loop depth 1
  SUBW s9, zero, s9
  JAL zero, bb79
bb118:   # loop depth 2
  ADDI s1, zero, 10
  CALL getch
  MULW s8, s9, s1
  ADD s1, a0, zero
  ADDW s0, s8, s5
  ADDIW s9, s0, -48
  JAL zero, bb74
bb119:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s5
  XORI s1, s1, 1
  JAL zero, bb76
bb120:   # loop depth 2
  XORI s0, s1, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb123
  # implict jump to bb121
bb121:   # loop depth 2
  # implict jump to bb122
bb122:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb70
bb123:   # loop depth 2
  ADDI s4, zero, 1
  JAL zero, bb122
bb124:   # loop depth 2
  ADDI s0, zero, 1
  JAL zero, bb72
bb125:   # loop depth 2
  CALL getch
  ADD s5, a0, zero
  JAL zero, bb26
bb126:   # loop depth 2
  XORI s4, s5, 85
  SLTU s4, zero, s4
  JAL zero, bb28
bb127:   # loop depth 1
  JAL zero, bb21
bb128:   # loop depth 0
  SUBW s3, zero, s3
  JAL zero, bb20
bb129:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  MULW s1, s3, s1
  ADD s2, a0, zero
  ADDW s0, s1, s5
  ADDIW s3, s0, -48
  JAL zero, bb15
bb130:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s5
  XORI s1, s1, 1
  JAL zero, bb17
bb131:   # loop depth 1
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb132
bb132:   # loop depth 1
  # implict jump to bb133
bb133:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb11
bb134:   # loop depth 1
  ADDI s4, zero, 1
  JAL zero, bb133
bb135:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb13
bb136:   # loop depth 0
  SUBW s3, zero, s3
  JAL zero, bb10
bb137:   # loop depth 1
  ADDI s1, zero, 10
  CALL getch
  MULW s1, s3, s1
  ADD s2, a0, zero
  ADDW s0, s1, s5
  ADDIW s3, s0, -48
  JAL zero, bb5
bb138:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s5
  XORI s1, s1, 1
  JAL zero, bb7
bb139:   # loop depth 1
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb142
  # implict jump to bb140
bb140:   # loop depth 1
  # implict jump to bb141
bb141:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb1
bb142:   # loop depth 1
  ADDI s4, zero, 1
  JAL zero, bb141
bb143:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb3
