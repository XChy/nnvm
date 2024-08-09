.global same
.global main
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




cnt:
.word 0x00000000
m:
.word 0x00000000
n:
.word 0x00000000
.section .text
same:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  LA s2, vis
  ADD s0, a1, zero
  SLLIW a1, a0, 2
  ADDI s3, zero, 1
  XOR s1, a0, s0
  ADD a0, s2, a1
  SLTIU s1, s1, 1
  SW s3, 0(a0)
  BNE s1, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, head
  ADD a0, a0, a1
  LW a0, 0(a0)
  # implict jump to bb2
bb2:   # loop depth 1
  XORI a1, a0, -1
  BNE a1, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb4:   # loop depth 1
  LA a1, to
  SLLIW s1, a0, 2
  LA s2, vis
  ADD a0, a1, s1
  LW a0, 0(a0)
  SLLIW a1, a0, 2
  ADD a1, s2, a1
  LW a1, 0(a1)
  SLTU a1, zero, a1
  XORI a1, a1, 1
  BNE a1, zero, bb9
  # implict jump to bb5
bb5:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb6
bb6:   # loop depth 1
  BNE a0, zero, bb8
  # implict jump to bb7
bb7:   # loop depth 1
  LA a0, next
  ADD a0, a0, s1
  LW a0, 0(a0)
  JAL zero, bb2
bb8:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb9:   # loop depth 1
  ADD a1, s0, zero
  CALL same
  SLTU a0, zero, a0
  JAL zero, bb6
bb10:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -160
  SD s1, 24(sp)
  SD ra, 64(sp)
  SD s0, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s5, 104(sp)
  SD s6, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s10, 144(sp)
  SD s11, 152(sp)
  CALL getch
  ADD s3, zero, zero
  ADD s2, a0, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SLTI s1, s2, 48
  BNE s1, zero, bb139
  # implict jump to bb13
bb13:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb14
bb14:   # loop depth 1
  BNE s1, zero, bb135
  # implict jump to bb15
bb15:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb16
bb16:   # loop depth 1
  ADD s4, s2, zero
  SLTI s0, s4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb134
  # implict jump to bb17
bb17:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 1
  BNE s0, zero, bb133
  # implict jump to bb19
bb19:   # loop depth 0
  BNE s3, zero, bb132
  # implict jump to bb20
bb20:   # loop depth 0
  # implict jump to bb21
bb21:   # loop depth 0
  LA s4, n
  ADD s3, zero, zero
  SW s1, 0(s4)
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb22
bb22:   # loop depth 1
  SLTI s1, s2, 48
  BNE s1, zero, bb131
  # implict jump to bb23
bb23:   # loop depth 1
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb24
bb24:   # loop depth 1
  BNE s1, zero, bb127
  # implict jump to bb25
bb25:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb26
bb26:   # loop depth 1
  ADD s4, s2, zero
  SLTI s0, s4, 48
  XORI s0, s0, 1
  BNE s0, zero, bb126
  # implict jump to bb27
bb27:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  BNE s0, zero, bb125
  # implict jump to bb29
bb29:   # loop depth 0
  BNE s3, zero, bb124
  # implict jump to bb30
bb30:   # loop depth 0
  # implict jump to bb31
bb31:   # loop depth 0
  LA s2, m
  ADD s0, zero, zero
  SW s1, 0(s2)
  # implict jump to bb32
bb32:   # loop depth 1
  LA s3, head
  SLLIW s2, s0, 2
  ADDI s4, zero, -1
  ADDIW s0, s0, 1
  ADD s2, s3, s2
  SW s4, 0(s2)
  SLTI s2, s0, 1005
  BNE s2, zero, bb123
  # implict jump to bb33
bb33:   # loop depth 0
  BNE s1, zero, bb35
  # implict jump to bb34
bb34:   # loop depth 0
  ADD a0, zero, zero
  LD s1, 24(sp)
  LD ra, 64(sp)
  LD s0, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s5, 104(sp)
  LD s6, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s10, 144(sp)
  LD s11, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb35:   # loop depth 0
  ADD s6, zero, zero
  ADD s8, zero, zero
  ADD s1, zero, zero
  ADD s4, zero, zero
  # implict jump to bb36
bb36:   # loop depth 1
  SW s1, 0(sp)
  SW s6, 4(sp)
  CALL getch
  ADD s3, a0, zero
  # implict jump to bb37
bb37:   # loop depth 2
  XORI s2, s3, 81
  BNE s2, zero, bb122
  # implict jump to bb38
bb38:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb39
bb39:   # loop depth 2
  BNE s2, zero, bb121
  # implict jump to bb40
bb40:   # loop depth 1
  XORI s2, s3, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb80
  # implict jump to bb41
bb41:   # loop depth 1
  CALL getch
  ADD s5, zero, zero
  ADD s4, a0, zero
  # implict jump to bb42
bb42:   # loop depth 2
  SLTI s3, s4, 48
  BNE s3, zero, bb79
  # implict jump to bb43
bb43:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s4
  # implict jump to bb44
bb44:   # loop depth 2
  BNE s3, zero, bb75
  # implict jump to bb45
bb45:   # loop depth 1
  ADD s7, zero, zero
  # implict jump to bb46
bb46:   # loop depth 2
  ADD s6, s4, zero
  SLTI s2, s6, 48
  XORI s2, s2, 1
  BNE s2, zero, bb74
  # implict jump to bb47
bb47:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  BNE s2, zero, bb73
  # implict jump to bb49
bb49:   # loop depth 1
  BNE s5, zero, bb72
  # implict jump to bb50
bb50:   # loop depth 1
  # implict jump to bb51
bb51:   # loop depth 1
  CALL getch
  ADD s5, a0, zero
  ADD s6, zero, zero
  # implict jump to bb52
bb52:   # loop depth 2
  SLTI s3, s5, 48
  BNE s3, zero, bb71
  # implict jump to bb53
bb53:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s5
  # implict jump to bb54
bb54:   # loop depth 2
  BNE s3, zero, bb67
  # implict jump to bb55
bb55:   # loop depth 1
  ADD s4, zero, zero
  # implict jump to bb56
bb56:   # loop depth 2
  ADD s8, s5, zero
  SLTI s3, s8, 48
  XORI s3, s3, 1
  BNE s3, zero, bb66
  # implict jump to bb57
bb57:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb58
bb58:   # loop depth 2
  BNE s3, zero, bb65
  # implict jump to bb59
bb59:   # loop depth 1
  BNE s6, zero, bb64
  # implict jump to bb60
bb60:   # loop depth 1
  # implict jump to bb61
bb61:   # loop depth 1
  LA s3, cnt
  LA s6, to
  LA s8, head
  LW s3, 0(s3)
  SLLIW s5, s7, 2
  ADD s8, s8, s5
  LA s9, next
  LA s0, cnt
  SD s0, 40(sp)
  LA s11, head
  SLLIW s5, s3, 2
  ADDIW s0, s3, 1
  SW s0, 12(sp)
  ADD s6, s6, s5
  ADD s5, s9, s5
  SW s4, 0(s6)
  SLLIW s10, s4, 2
  LW s9, 0(s8)
  ADD s10, s11, s10
  LA s0, next
  SD s0, 56(sp)
  LW s0, 12(sp)
  SLLIW s0, s0, 2
  SW s0, 8(sp)
  LA s0, cnt
  SD s0, 32(sp)
  ADDIW s0, s3, 2
  SW s0, 16(sp)
  SW s9, 0(s5)
  LD s0, 56(sp)
  LW s1, 8(sp)
  ADD s9, s0, s1
  SW s3, 0(s8)
  LW s1, 0(sp)
  LD s0, 40(sp)
  LW s2, 12(sp)
  SW s2, 0(s0)
  ADD s8, s7, zero
  SW s7, 4(s6)
  LW s6, 4(sp)
  LW s3, 0(s10)
  SW s3, 0(s9)
  LW s0, 12(sp)
  SW s0, 0(s10)
  LD s2, 32(sp)
  LW s0, 16(sp)
  SW s0, 0(s2)
  # implict jump to bb62
bb62:   # loop depth 1
  LA s7, m
  LA s9, m
  LW s5, 0(s7)
  ADDIW s5, s5, -1
  SW s5, 0(s9)
  BNE s5, zero, bb63
  JAL zero, bb34
bb63:   # loop depth 1
  JAL zero, bb36
bb64:   # loop depth 1
  SUB s4, zero, s4
  JAL zero, bb61
bb65:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s3, s4, s3
  ADD s5, a0, zero
  ADDW s2, s3, s8
  ADDIW s4, s2, -48
  JAL zero, bb56
bb66:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s8
  XORI s3, s3, 1
  JAL zero, bb58
bb67:   # loop depth 2
  XORI s2, s5, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb70
  # implict jump to bb68
bb68:   # loop depth 2
  # implict jump to bb69
bb69:   # loop depth 2
  CALL getch
  ADD s5, a0, zero
  JAL zero, bb52
bb70:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb69
bb71:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb54
bb72:   # loop depth 1
  SUB s7, zero, s7
  JAL zero, bb51
bb73:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s3, s7, s2
  ADD s4, a0, zero
  ADDW s2, s3, s6
  ADDIW s7, s2, -48
  JAL zero, bb46
bb74:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s6
  XORI s2, s2, 1
  JAL zero, bb48
bb75:   # loop depth 2
  XORI s2, s4, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb78
  # implict jump to bb76
bb76:   # loop depth 2
  # implict jump to bb77
bb77:   # loop depth 2
  CALL getch
  ADD s4, a0, zero
  JAL zero, bb42
bb78:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb77
bb79:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb44
bb80:   # loop depth 1
  CALL getch
  ADD s3, zero, zero
  ADD s2, a0, zero
  # implict jump to bb81
bb81:   # loop depth 2
  SLTI s1, s2, 48
  BNE s1, zero, bb120
  # implict jump to bb82
bb82:   # loop depth 2
  ADDI s1, zero, 57
  SLT s1, s1, s2
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s1, zero, bb116
  # implict jump to bb84
bb84:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  ADD s5, s2, zero
  SLTI s2, s5, 48
  XORI s2, s2, 1
  BNE s2, zero, bb115
  # implict jump to bb86
bb86:   # loop depth 2
  ADD s2, zero, zero
  # implict jump to bb87
bb87:   # loop depth 2
  BNE s2, zero, bb114
  # implict jump to bb88
bb88:   # loop depth 1
  BNE s3, zero, bb113
  # implict jump to bb89
bb89:   # loop depth 1
  # implict jump to bb90
bb90:   # loop depth 1
  CALL getch
  ADD s3, a0, zero
  ADD s5, zero, zero
  # implict jump to bb91
bb91:   # loop depth 2
  SLTI s2, s3, 48
  BNE s2, zero, bb112
  # implict jump to bb92
bb92:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s3
  # implict jump to bb93
bb93:   # loop depth 2
  BNE s2, zero, bb108
  # implict jump to bb94
bb94:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb95
bb95:   # loop depth 2
  ADD s7, s3, zero
  SLTI s3, s7, 48
  XORI s3, s3, 1
  BNE s3, zero, bb107
  # implict jump to bb96
bb96:   # loop depth 2
  ADD s3, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  BNE s3, zero, bb106
  # implict jump to bb98
bb98:   # loop depth 1
  BNE s5, zero, bb105
  # implict jump to bb99
bb99:   # loop depth 1
  # implict jump to bb100
bb100:   # loop depth 1
  LA a1, n
  LW a1, 0(a1)
  SLTI a0, a1, 1
  XORI a0, a0, 1
  BNE a0, zero, bb102
  # implict jump to bb101
bb101:   # loop depth 1
  ADD a0, s6, zero
  ADD a1, s1, zero
  CALL same
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb62
bb102:   # loop depth 1
  ADDI a0, zero, 1
  # implict jump to bb103
bb103:   # loop depth 2
  LA s5, vis
  SLLIW s2, a0, 2
  ADDIW a0, a0, 1
  SLT s3, a1, a0
  ADD s2, s5, s2
  SW zero, 0(s2)
  XORI s2, s3, 1
  BNE s2, zero, bb104
  JAL zero, bb101
bb104:   # loop depth 2
  JAL zero, bb103
bb105:   # loop depth 1
  SUB s1, zero, s1
  JAL zero, bb100
bb106:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s2, s1, s3
  ADD s3, a0, zero
  ADDW s1, s2, s7
  ADDIW s1, s1, -48
  JAL zero, bb95
bb107:   # loop depth 2
  ADDI s3, zero, 57
  SLT s3, s3, s7
  XORI s3, s3, 1
  JAL zero, bb97
bb108:   # loop depth 2
  XORI s1, s3, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb111
  # implict jump to bb109
bb109:   # loop depth 2
  # implict jump to bb110
bb110:   # loop depth 2
  CALL getch
  ADD s3, a0, zero
  JAL zero, bb91
bb111:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb110
bb112:   # loop depth 2
  ADDI s2, zero, 1
  JAL zero, bb93
bb113:   # loop depth 1
  SUB s6, zero, s6
  JAL zero, bb90
bb114:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s6, s2
  ADD s2, a0, zero
  ADDW s0, s1, s5
  ADDIW s6, s0, -48
  JAL zero, bb85
bb115:   # loop depth 2
  ADDI s2, zero, 57
  SLT s2, s2, s5
  XORI s2, s2, 1
  JAL zero, bb87
bb116:   # loop depth 2
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb119
  # implict jump to bb117
bb117:   # loop depth 2
  # implict jump to bb118
bb118:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb81
bb119:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb118
bb120:   # loop depth 2
  ADDI s1, zero, 1
  JAL zero, bb83
bb121:   # loop depth 2
  CALL getch
  ADD s3, a0, zero
  JAL zero, bb37
bb122:   # loop depth 2
  XORI s2, s3, 85
  SLTU s2, zero, s2
  JAL zero, bb39
bb123:   # loop depth 1
  JAL zero, bb32
bb124:   # loop depth 0
  SUB s1, zero, s1
  JAL zero, bb31
bb125:   # loop depth 1
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s2, a0, zero
  ADDW s0, s1, s4
  ADDIW s1, s0, -48
  JAL zero, bb26
bb126:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s4
  XORI s0, s0, 1
  JAL zero, bb28
bb127:   # loop depth 1
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb130
  # implict jump to bb128
bb128:   # loop depth 1
  # implict jump to bb129
bb129:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb22
bb130:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb129
bb131:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb24
bb132:   # loop depth 0
  SUB s1, zero, s1
  JAL zero, bb21
bb133:   # loop depth 1
  ADDI s0, zero, 10
  CALL getch
  MULW s1, s1, s0
  ADD s2, a0, zero
  ADDW s0, s1, s4
  ADDIW s1, s0, -48
  JAL zero, bb16
bb134:   # loop depth 1
  ADDI s0, zero, 57
  SLT s0, s0, s4
  XORI s0, s0, 1
  JAL zero, bb18
bb135:   # loop depth 1
  XORI s0, s2, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb138
  # implict jump to bb136
bb136:   # loop depth 1
  # implict jump to bb137
bb137:   # loop depth 1
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb12
bb138:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb137
bb139:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb14
