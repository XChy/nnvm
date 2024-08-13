.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADD s1, a1, zero
  ADDI s3, zero, 1
  XOR s0, a0, s1
  SH2ADD a1, a0, s2
  SLTIU s0, s0, 1
  SW s3, 0(a1)
  BNE s0, zero, bb10
  # implict jump to bb1
bb1:   # loop depth 0
  LA a1, head
  SH2ADD a0, a0, a1
  LW s0, 0(a0)
  # implict jump to bb2
bb2:   # loop depth 1
  XORI a0, s0, -1
  BNE a0, zero, bb4
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
  LA a0, to
  LA a1, vis
  SH2ADD a0, s0, a0
  LW a0, 0(a0)
  SH2ADD a1, a0, a1
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
  SH2ADD a0, s0, a0
  LW s0, 0(a0)
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
  ADD a1, s1, zero
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
  ADDI sp, sp, -176
  SD s1, 16(sp)
  SD ra, 72(sp)
  SD s0, 80(sp)
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
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb131
  # implict jump to bb12
bb12:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI s2, zero, 57
  SLT s4, s2, s0
  SLTI s2, s0, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb127
  # implict jump to bb14
bb14:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb15
bb15:   # loop depth 0
  SUB s0, zero, s1
  BNE s3, zero, bb126
  # implict jump to bb16
bb16:   # loop depth 0
  ADD s0, s1, zero
  # implict jump to bb17
bb17:   # loop depth 0
  LA s1, n
  ADDI s2, zero, 57
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s2, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb119
  # implict jump to bb18
bb18:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb19
bb19:   # loop depth 0
  ADDI s2, zero, 57
  SLT s4, s2, s0
  SLTI s2, s0, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb115
  # implict jump to bb20
bb20:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb21
bb21:   # loop depth 0
  SUB s2, zero, s1
  BNE s3, zero, bb114
  # implict jump to bb22
bb22:   # loop depth 0
  ADD s2, s1, zero
  # implict jump to bb23
bb23:   # loop depth 0
  LA s1, m
  ADD s0, zero, zero
  SW s2, 0(s1)
  # implict jump to bb24
bb24:   # loop depth 1
  LA s3, head
  ADDIW s1, s0, 1
  ADDI s4, zero, -1
  SH2ADD s0, s0, s3
  SLTI s3, s1, 1005
  SW s4, 0(s0)
  BNE s3, zero, bb113
  # implict jump to bb25
bb25:   # loop depth 0
  BNE s2, zero, bb27
  # implict jump to bb26
bb26:   # loop depth 0
  ADD a0, zero, zero
  LD s1, 16(sp)
  LD ra, 72(sp)
  LD s0, 80(sp)
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
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb27:   # loop depth 0
  ADD s6, zero, zero
  ADD s4, zero, zero
  ADD s7, zero, zero
  ADD s9, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  SW s4, 0(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s4, s2, 85
  XORI s3, s2, 81
  SLTU s4, zero, s4
  SLTU s3, zero, s3
  AND s3, s3, s4
  BNE s3, zero, bb111
  # implict jump to bb29
bb29:   # loop depth 1
  # implict jump to bb30
bb30:   # loop depth 1
  XORI s2, s2, 81
  SLTIU s2, s2, 1
  BNE s2, zero, bb70
  # implict jump to bb31
bb31:   # loop depth 1
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s4, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s4
  BNE s3, zero, bb63
  # implict jump to bb32
bb32:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI s4, zero, 57
  SLT s7, s4, s2
  SLTI s4, s2, 48
  XORI s7, s7, 1
  XORI s4, s4, 1
  AND s4, s4, s7
  BNE s4, zero, bb59
  # implict jump to bb34
bb34:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb35
bb35:   # loop depth 1
  SUB s8, zero, s3
  BNE s6, zero, bb58
  # implict jump to bb36
bb36:   # loop depth 1
  ADD s8, s3, zero
  # implict jump to bb37
bb37:   # loop depth 1
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s4, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s4
  BNE s3, zero, bb51
  # implict jump to bb38
bb38:   # loop depth 1
  ADD s7, zero, zero
  # implict jump to bb39
bb39:   # loop depth 1
  ADDI s4, zero, 57
  SLT s6, s4, s2
  SLTI s4, s2, 48
  XORI s6, s6, 1
  XORI s4, s4, 1
  AND s4, s4, s6
  BNE s4, zero, bb47
  # implict jump to bb40
bb40:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb41
bb41:   # loop depth 1
  SUB s6, zero, s3
  BNE s7, zero, bb46
  # implict jump to bb42
bb42:   # loop depth 1
  ADD s6, s3, zero
  # implict jump to bb43
bb43:   # loop depth 1
  LA s3, cnt
  LA s7, to
  LA s10, head
  LW s4, 0(s3)
  LA s3, next
  SH2ADD s11, s8, s10
  LA s0, cnt
  SD s0, 32(sp)
  LA s0, head
  SD s0, 40(sp)
  LA s0, next
  SD s0, 64(sp)
  SH2ADD s10, s4, s7
  SH2ADD s3, s4, s3
  SW s6, 0(s10)
  ADDIW s0, s4, 1
  SW s0, 8(sp)
  LW s7, 0(s11)
  LD s0, 40(sp)
  SH2ADD s0, s6, s0
  SD s0, 48(sp)
  LW s0, 8(sp)
  LD s1, 64(sp)
  SH2ADD s0, s0, s1
  SD s0, 56(sp)
  LA s0, cnt
  SD s0, 24(sp)
  ADDIW s0, s4, 2
  SW s0, 4(sp)
  SW s7, 0(s3)
  ADD s7, s8, zero
  SW s4, 0(s11)
  LW s4, 0(sp)
  LD s0, 32(sp)
  LW s1, 8(sp)
  SW s1, 0(s0)
  SW s8, 4(s10)
  LD s0, 48(sp)
  LW s2, 0(s0)
  LD s0, 56(sp)
  SW s2, 0(s0)
  LD s0, 48(sp)
  LW s1, 8(sp)
  SW s1, 0(s0)
  LD s2, 24(sp)
  LW s0, 4(sp)
  SW s0, 0(s2)
  # implict jump to bb44
bb44:   # loop depth 1
  LA s2, m
  LA s10, m
  LW s8, 0(s2)
  ADDIW s5, s8, -1
  SW s5, 0(s10)
  BNE s5, zero, bb45
  JAL zero, bb26
bb45:   # loop depth 1
  JAL zero, bb28
bb46:   # loop depth 1
  JAL zero, bb43
bb47:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb48
bb48:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s3, s3, s4
  ADDI s6, zero, 57
  ADD s4, a0, zero
  SLT s10, s6, s4
  SLTI s6, s4, 48
  XORI s10, s10, 1
  XORI s6, s6, 1
  ADDW s2, s3, s2
  AND s6, s6, s10
  ADDIW s3, s2, -48
  BNE s6, zero, bb50
  # implict jump to bb49
bb49:   # loop depth 1
  JAL zero, bb41
bb50:   # loop depth 2
  ADD s2, s4, zero
  JAL zero, bb48
bb51:   # loop depth 1
  ADD s7, zero, zero
  # implict jump to bb52
bb52:   # loop depth 2
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb57
  # implict jump to bb53
bb53:   # loop depth 2
  # implict jump to bb54
bb54:   # loop depth 2
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s6, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s6
  BNE s3, zero, bb56
  # implict jump to bb55
bb55:   # loop depth 1
  JAL zero, bb39
bb56:   # loop depth 2
  JAL zero, bb52
bb57:   # loop depth 2
  ADDI s7, zero, 1
  JAL zero, bb54
bb58:   # loop depth 1
  JAL zero, bb37
bb59:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb60
bb60:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s3, s3, s4
  ADDI s7, zero, 57
  ADD s4, a0, zero
  SLT s8, s7, s4
  SLTI s7, s4, 48
  XORI s8, s8, 1
  XORI s7, s7, 1
  ADDW s2, s3, s2
  AND s7, s7, s8
  ADDIW s3, s2, -48
  BNE s7, zero, bb62
  # implict jump to bb61
bb61:   # loop depth 1
  JAL zero, bb35
bb62:   # loop depth 2
  ADD s2, s4, zero
  JAL zero, bb60
bb63:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb64
bb64:   # loop depth 2
  XORI s2, s2, 45
  SLTIU s2, s2, 1
  BNE s2, zero, bb69
  # implict jump to bb65
bb65:   # loop depth 2
  # implict jump to bb66
bb66:   # loop depth 2
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s7, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s7
  BNE s3, zero, bb68
  # implict jump to bb67
bb67:   # loop depth 1
  JAL zero, bb33
bb68:   # loop depth 2
  JAL zero, bb64
bb69:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb66
bb70:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb104
  # implict jump to bb71
bb71:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb72
bb72:   # loop depth 1
  ADDI s2, zero, 57
  SLT s4, s2, s0
  SLTI s2, s0, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb100
  # implict jump to bb73
bb73:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb74
bb74:   # loop depth 1
  SUB s9, zero, s1
  BNE s3, zero, bb99
  # implict jump to bb75
bb75:   # loop depth 1
  ADD s9, s1, zero
  # implict jump to bb76
bb76:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s3, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s3
  BNE s2, zero, bb92
  # implict jump to bb77
bb77:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb78
bb78:   # loop depth 1
  ADDI s3, zero, 57
  SLT s4, s3, s1
  SLTI s3, s1, 48
  XORI s4, s4, 1
  XORI s3, s3, 1
  AND s3, s3, s4
  BNE s3, zero, bb88
  # implict jump to bb79
bb79:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb80
bb80:   # loop depth 1
  SUB s4, zero, s2
  BNE s5, zero, bb87
  # implict jump to bb81
bb81:   # loop depth 1
  ADD s4, s2, zero
  # implict jump to bb82
bb82:   # loop depth 1
  LA a1, n
  LW s3, 0(a1)
  SLTI a0, s3, 1
  XORI a0, a0, 1
  BNE a0, zero, bb84
  # implict jump to bb83
bb83:   # loop depth 1
  ADD a1, s4, zero
  ADD a0, s9, zero
  CALL same
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb44
bb84:   # loop depth 1
  ADDI a0, zero, 1
  # implict jump to bb85
bb85:   # loop depth 2
  LA s5, vis
  ADDIW a1, a0, 1
  SLT s2, s3, a1
  SH2ADD a0, a0, s5
  XORI s2, s2, 1
  SW zero, 0(a0)
  BNE s2, zero, bb86
  JAL zero, bb83
bb86:   # loop depth 2
  ADD a0, a1, zero
  JAL zero, bb85
bb87:   # loop depth 1
  JAL zero, bb82
bb88:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  ADDI s3, zero, 10
  CALL getch
  MULW s2, s2, s3
  ADDI s4, zero, 57
  ADD s3, a0, zero
  SLT s8, s4, s3
  SLTI s4, s3, 48
  XORI s8, s8, 1
  XORI s4, s4, 1
  ADDW s1, s2, s1
  AND s4, s4, s8
  ADDIW s2, s1, -48
  BNE s4, zero, bb91
  # implict jump to bb90
bb90:   # loop depth 1
  JAL zero, bb80
bb91:   # loop depth 2
  ADD s1, s3, zero
  JAL zero, bb89
bb92:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  XORI s1, s1, 45
  SLTIU s1, s1, 1
  BNE s1, zero, bb98
  # implict jump to bb94
bb94:   # loop depth 2
  # implict jump to bb95
bb95:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s1, a0, zero
  SLT s4, s2, s1
  SLTI s2, s1, 48
  OR s2, s2, s4
  BNE s2, zero, bb97
  # implict jump to bb96
bb96:   # loop depth 1
  JAL zero, bb78
bb97:   # loop depth 2
  JAL zero, bb93
bb98:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb95
bb99:   # loop depth 1
  JAL zero, bb76
bb100:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb101
bb101:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s1, s0
  AND s4, s4, s5
  ADDIW s1, s0, -48
  BNE s4, zero, bb103
  # implict jump to bb102
bb102:   # loop depth 1
  JAL zero, bb74
bb103:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb101
bb104:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb105
bb105:   # loop depth 2
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb110
  # implict jump to bb106
bb106:   # loop depth 2
  # implict jump to bb107
bb107:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s4, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s4
  BNE s1, zero, bb109
  # implict jump to bb108
bb108:   # loop depth 1
  JAL zero, bb72
bb109:   # loop depth 2
  JAL zero, bb105
bb110:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb107
bb111:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  XORI s4, s2, 85
  XORI s3, s2, 81
  SLTU s4, zero, s4
  SLTU s3, zero, s3
  AND s3, s3, s4
  BNE s3, zero, bb111
  # implict jump to bb112
bb112:   # loop depth 1
  JAL zero, bb30
bb113:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb24
bb114:   # loop depth 0
  JAL zero, bb23
bb115:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb116
bb116:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s1, s0
  AND s4, s4, s5
  ADDIW s1, s0, -48
  BNE s4, zero, bb118
  # implict jump to bb117
bb117:   # loop depth 0
  JAL zero, bb21
bb118:   # loop depth 1
  ADD s0, s2, zero
  JAL zero, bb116
bb119:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb120
bb120:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb125
  # implict jump to bb121
bb121:   # loop depth 1
  # implict jump to bb122
bb122:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s4, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s4
  BNE s1, zero, bb124
  # implict jump to bb123
bb123:   # loop depth 0
  JAL zero, bb19
bb124:   # loop depth 1
  JAL zero, bb120
bb125:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb122
bb126:   # loop depth 0
  JAL zero, bb17
bb127:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb128
bb128:   # loop depth 1
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADDI s4, zero, 57
  ADD s2, a0, zero
  SLT s5, s4, s2
  SLTI s4, s2, 48
  XORI s5, s5, 1
  XORI s4, s4, 1
  ADDW s0, s1, s0
  AND s4, s4, s5
  ADDIW s1, s0, -48
  BNE s4, zero, bb130
  # implict jump to bb129
bb129:   # loop depth 0
  JAL zero, bb15
bb130:   # loop depth 1
  ADD s0, s2, zero
  JAL zero, bb128
bb131:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb132
bb132:   # loop depth 1
  XORI s0, s0, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb137
  # implict jump to bb133
bb133:   # loop depth 1
  # implict jump to bb134
bb134:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s4, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s4
  BNE s1, zero, bb136
  # implict jump to bb135
bb135:   # loop depth 0
  JAL zero, bb13
bb136:   # loop depth 1
  JAL zero, bb132
bb137:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb134
