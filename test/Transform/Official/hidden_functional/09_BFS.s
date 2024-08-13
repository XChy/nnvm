.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  SD s0, 16(sp)
  SD ra, 80(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
  SD s10, 168(sp)
  SD s11, 176(sp)
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb135
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI s2, zero, 57
  SLT s4, s2, s0
  SLTI s2, s0, 48
  XORI s4, s4, 1
  XORI s2, s2, 1
  AND s2, s2, s4
  BNE s2, zero, bb131
  # implict jump to bb3
bb3:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 0
  SUBW s0, zero, s1
  BNE s3, zero, bb130
  # implict jump to bb5
bb5:   # loop depth 0
  ADD s0, s1, zero
  # implict jump to bb6
bb6:   # loop depth 0
  LA s1, n
  ADDI s2, zero, 57
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SLT s2, s2, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb123
  # implict jump to bb7
bb7:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI s1, zero, 57
  SLT s3, s1, s0
  SLTI s1, s0, 48
  XORI s3, s3, 1
  XORI s1, s1, 1
  AND s1, s1, s3
  BNE s1, zero, bb119
  # implict jump to bb9
bb9:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:   # loop depth 0
  SUBW s2, zero, s1
  BNE s4, zero, bb118
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s2, s1, zero
  # implict jump to bb12
bb12:   # loop depth 0
  LA s1, m
  ADD s0, zero, zero
  SW s2, 0(s1)
  # implict jump to bb13
bb13:   # loop depth 1
  LA s3, head
  ADDIW s1, s0, 1
  ADDI s4, zero, -1
  SH2ADD s0, s0, s3
  SLTI s3, s1, 1005
  SW s4, 0(s0)
  BNE s3, zero, bb117
  # implict jump to bb14
bb14:   # loop depth 0
  BNE s2, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 0
  ADD a0, zero, zero
  LD s0, 16(sp)
  LD ra, 80(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  LD s10, 168(sp)
  LD s11, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb16:   # loop depth 0
  LA s0, que
  SD s0, 24(sp)
  ADD s4, zero, zero
  ADD s10, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb17
bb17:   # loop depth 1
  SW s8, 0(sp)
  CALL getch
  ADD s2, a0, zero
  XORI s5, s2, 85
  XORI s3, s2, 81
  SLTU s5, zero, s5
  SLTU s3, zero, s3
  AND s3, s3, s5
  BNE s3, zero, bb115
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 1
  XORI s2, s2, 81
  BEQ s2, zero, bb59
  # implict jump to bb20
bb20:   # loop depth 1
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s4, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s4
  BNE s3, zero, bb52
  # implict jump to bb21
bb21:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb22
bb22:   # loop depth 1
  ADDI s4, zero, 57
  SLT s7, s4, s2
  SLTI s4, s2, 48
  XORI s7, s7, 1
  XORI s4, s4, 1
  AND s4, s4, s7
  BNE s4, zero, bb48
  # implict jump to bb23
bb23:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb24
bb24:   # loop depth 1
  SUBW s7, zero, s3
  BNE s5, zero, bb47
  # implict jump to bb25
bb25:   # loop depth 1
  ADD s7, s3, zero
  # implict jump to bb26
bb26:   # loop depth 1
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s4, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s4
  BNE s3, zero, bb40
  # implict jump to bb27
bb27:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb28
bb28:   # loop depth 1
  ADDI s4, zero, 57
  SLT s8, s4, s2
  SLTI s4, s2, 48
  XORI s8, s8, 1
  XORI s4, s4, 1
  AND s4, s4, s8
  BNE s4, zero, bb36
  # implict jump to bb29
bb29:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb30
bb30:   # loop depth 1
  SUBW s4, zero, s3
  BNE s5, zero, bb35
  # implict jump to bb31
bb31:   # loop depth 1
  ADD s4, s3, zero
  # implict jump to bb32
bb32:   # loop depth 1
  LA s3, cnt
  LA s8, to
  LA s10, head
  LW s5, 0(s3)
  LA s3, next
  SH2ADD s10, s7, s10
  LA s0, cnt
  SD s0, 88(sp)
  LA s0, head
  SD s0, 32(sp)
  LA s0, next
  SD s0, 64(sp)
  SH2ADD s11, s5, s8
  SH2ADD s3, s5, s3
  SW s4, 0(s11)
  ADDIW s0, s5, 1
  SW s0, 8(sp)
  LW s8, 0(s10)
  LD s0, 32(sp)
  SH2ADD s0, s4, s0
  SD s0, 48(sp)
  LW s0, 8(sp)
  LD s1, 64(sp)
  SH2ADD s0, s0, s1
  SD s0, 56(sp)
  LA s0, cnt
  SD s0, 184(sp)
  ADDIW s0, s5, 2
  SW s0, 4(sp)
  SW s8, 0(s3)
  LW s8, 0(sp)
  SW s5, 0(s10)
  ADD s10, s7, zero
  LD s0, 88(sp)
  LW s1, 8(sp)
  SW s1, 0(s0)
  SW s7, 4(s11)
  LD s0, 48(sp)
  LW s2, 0(s0)
  LD s0, 56(sp)
  SW s2, 0(s0)
  LD s0, 48(sp)
  LW s1, 8(sp)
  SW s1, 0(s0)
  LD s2, 184(sp)
  LW s0, 4(sp)
  SW s0, 0(s2)
  # implict jump to bb33
bb33:   # loop depth 1
  LA s2, m
  LA s11, m
  LW s7, 0(s2)
  ADDIW s6, s7, -1
  SW s6, 0(s11)
  BNE s6, zero, bb34
  JAL zero, bb15
bb34:   # loop depth 1
  JAL zero, bb17
bb35:   # loop depth 1
  JAL zero, bb32
bb36:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb37
bb37:   # loop depth 2
  ADDI s4, zero, 10
  CALL getch
  MULW s3, s3, s4
  ADDI s8, zero, 57
  ADD s4, a0, zero
  SLT s10, s8, s4
  SLTI s8, s4, 48
  XORI s10, s10, 1
  XORI s8, s8, 1
  ADDW s2, s3, s2
  AND s8, s8, s10
  ADDIW s3, s2, -48
  BNE s8, zero, bb39
  # implict jump to bb38
bb38:   # loop depth 1
  JAL zero, bb30
bb39:   # loop depth 2
  ADD s2, s4, zero
  JAL zero, bb37
bb40:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb41
bb41:   # loop depth 2
  XORI s2, s2, 45
  BEQ s2, zero, bb46
  # implict jump to bb42
bb42:   # loop depth 2
  # implict jump to bb43
bb43:   # loop depth 2
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s8, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s8
  BNE s3, zero, bb45
  # implict jump to bb44
bb44:   # loop depth 1
  JAL zero, bb28
bb45:   # loop depth 2
  JAL zero, bb41
bb46:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb43
bb47:   # loop depth 1
  JAL zero, bb26
bb48:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb49
bb49:   # loop depth 2
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
  BNE s7, zero, bb51
  # implict jump to bb50
bb50:   # loop depth 1
  JAL zero, bb24
bb51:   # loop depth 2
  ADD s2, s4, zero
  JAL zero, bb49
bb52:   # loop depth 1
  ADD s5, zero, zero
  # implict jump to bb53
bb53:   # loop depth 2
  XORI s2, s2, 45
  BEQ s2, zero, bb58
  # implict jump to bb54
bb54:   # loop depth 2
  # implict jump to bb55
bb55:   # loop depth 2
  CALL getch
  ADDI s3, zero, 57
  ADD s2, a0, zero
  SLT s7, s3, s2
  SLTI s3, s2, 48
  OR s3, s3, s7
  BNE s3, zero, bb57
  # implict jump to bb56
bb56:   # loop depth 1
  JAL zero, bb22
bb57:   # loop depth 2
  JAL zero, bb53
bb58:   # loop depth 2
  ADDI s5, zero, 1
  JAL zero, bb55
bb59:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s2, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s2
  BNE s1, zero, bb108
  # implict jump to bb60
bb60:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  ADDI s2, zero, 57
  SLT s5, s2, s0
  SLTI s2, s0, 48
  XORI s5, s5, 1
  XORI s2, s2, 1
  AND s2, s2, s5
  BNE s2, zero, bb104
  # implict jump to bb62
bb62:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb63
bb63:   # loop depth 1
  SUBW s9, zero, s1
  BNE s3, zero, bb103
  # implict jump to bb64
bb64:   # loop depth 1
  ADD s9, s1, zero
  # implict jump to bb65
bb65:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s5, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s5
  BNE s2, zero, bb96
  # implict jump to bb66
bb66:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb67
bb67:   # loop depth 1
  ADDI s5, zero, 57
  SLT s7, s5, s3
  SLTI s5, s3, 48
  XORI s7, s7, 1
  XORI s5, s5, 1
  AND s5, s5, s7
  BNE s5, zero, bb92
  # implict jump to bb68
bb68:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb69
bb69:   # loop depth 1
  SUBW s8, zero, s0
  BNE s6, zero, bb91
  # implict jump to bb70
bb70:   # loop depth 1
  ADD s8, s0, zero
  # implict jump to bb71
bb71:   # loop depth 1
  LA s0, h
  LA s3, inq
  LA s2, tail
  LA s6, tail
  SW zero, 0(s0)
  ADDI s5, zero, 1
  SH2ADD s0, s9, s3
  SW zero, 0(s2)
  ADDI s2, zero, 1
  SW s5, 0(s0)
  SW s2, 0(s6)
  ADDI s0, zero, 1
  LD s2, 24(sp)
  SW s9, 4(s2)
  BNE s0, zero, bb78
  # implict jump to bb72
bb72:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb73
bb73:   # loop depth 1
  LA s0, tail
  LW s0, 0(s0)
  BGE s0, zero, bb75
  # implict jump to bb74
bb74:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb33
bb75:   # loop depth 1
  LA s3, tail
  ADD s0, zero, zero
  LW s5, 0(s3)
  # implict jump to bb76
bb76:   # loop depth 2
  LA s6, que
  LA s7, inq
  ADDIW s3, s0, 1
  SH2ADD s0, s0, s6
  LW s0, 0(s0)
  SH2ADD s0, s0, s7
  SW zero, 0(s0)
  BGE s5, s3, bb77
  JAL zero, bb74
bb77:   # loop depth 2
  ADD s0, s3, zero
  JAL zero, bb76
bb78:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb79
bb79:   # loop depth 2
  LA s0, h
  LA s6, que
  LA s5, h
  LW s0, 0(s0)
  ADDIW s3, s0, 1
  SH2ADD s0, s0, s6
  SW s3, 0(s5)
  LW s0, 4(s0)
  BEQ s0, s8, bb90
  # implict jump to bb80
bb80:   # loop depth 2
  # implict jump to bb81
bb81:   # loop depth 2
  LA s5, head
  SH2ADD s0, s0, s5
  LW s0, 0(s0)
  XORI s5, s0, -1
  BNE s5, zero, bb85
  # implict jump to bb82
bb82:   # loop depth 2
  LA s0, tail
  LW s0, 0(s0)
  BLT s3, s0, bb84
  # implict jump to bb83
bb83:   # loop depth 1
  JAL zero, bb73
bb84:   # loop depth 2
  JAL zero, bb79
bb85:   # loop depth 2
  # implict jump to bb86
bb86:   # loop depth 3
  LA s5, to
  LA s6, inq
  SH2ADD s5, s0, s5
  LW s5, 0(s5)
  SH2ADD s6, s5, s6
  LW s7, 0(s6)
  SLTU s7, zero, s7
  BEQ s7, zero, bb89
  # implict jump to bb87
bb87:   # loop depth 3
  LA s5, next
  SH2ADD s0, s0, s5
  LW s0, 0(s0)
  XORI s5, s0, -1
  BNE s5, zero, bb88
  JAL zero, bb82
bb88:   # loop depth 3
  JAL zero, bb86
bb89:   # loop depth 3
  LA s1, tail
  SD s1, 72(sp)
  ADDI s7, zero, 1
  SW s7, 0(s6)
  LA s11, que
  LD s1, 72(sp)
  LW s6, 0(s1)
  LA s7, tail
  ADDIW s1, s6, 1
  SW s1, 12(sp)
  SH2ADD s6, s6, s11
  LW s1, 12(sp)
  SW s1, 0(s7)
  SW s5, 4(s6)
  JAL zero, bb87
bb90:   # loop depth 2
  ADDI a0, zero, 1
  JAL zero, bb81
bb91:   # loop depth 1
  JAL zero, bb71
bb92:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  ADDI s5, zero, 10
  CALL getch
  MULW s2, s0, s5
  ADDI s7, zero, 57
  ADD s5, a0, zero
  SLT s8, s7, s5
  SLTI s7, s5, 48
  XORI s8, s8, 1
  XORI s7, s7, 1
  ADDW s0, s2, s3
  AND s2, s7, s8
  ADDIW s0, s0, -48
  BNE s2, zero, bb95
  # implict jump to bb94
bb94:   # loop depth 1
  JAL zero, bb69
bb95:   # loop depth 2
  ADD s3, s5, zero
  JAL zero, bb93
bb96:   # loop depth 1
  ADD s6, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  XORI s0, s3, 45
  BEQ s0, zero, bb102
  # implict jump to bb98
bb98:   # loop depth 2
  # implict jump to bb99
bb99:   # loop depth 2
  CALL getch
  ADDI s2, zero, 57
  ADD s3, a0, zero
  SLT s5, s2, s3
  SLTI s2, s3, 48
  OR s2, s2, s5
  BNE s2, zero, bb101
  # implict jump to bb100
bb100:   # loop depth 1
  JAL zero, bb67
bb101:   # loop depth 2
  JAL zero, bb97
bb102:   # loop depth 2
  ADDI s6, zero, 1
  JAL zero, bb99
bb103:   # loop depth 1
  JAL zero, bb65
bb104:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb105
bb105:   # loop depth 2
  ADDI s2, zero, 10
  CALL getch
  MULW s1, s1, s2
  ADDI s5, zero, 57
  ADD s2, a0, zero
  SLT s6, s5, s2
  SLTI s5, s2, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  ADDW s0, s1, s0
  AND s5, s5, s6
  ADDIW s1, s0, -48
  BNE s5, zero, bb107
  # implict jump to bb106
bb106:   # loop depth 1
  JAL zero, bb63
bb107:   # loop depth 2
  ADD s0, s2, zero
  JAL zero, bb105
bb108:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb109
bb109:   # loop depth 2
  XORI s0, s0, 45
  BEQ s0, zero, bb114
  # implict jump to bb110
bb110:   # loop depth 2
  # implict jump to bb111
bb111:   # loop depth 2
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s5, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s5
  BNE s1, zero, bb113
  # implict jump to bb112
bb112:   # loop depth 1
  JAL zero, bb61
bb113:   # loop depth 2
  JAL zero, bb109
bb114:   # loop depth 2
  ADDI s3, zero, 1
  JAL zero, bb111
bb115:   # loop depth 2
  CALL getch
  ADD s2, a0, zero
  XORI s5, s2, 85
  XORI s3, s2, 81
  SLTU s5, zero, s5
  SLTU s3, zero, s3
  AND s3, s3, s5
  BNE s3, zero, bb115
  # implict jump to bb116
bb116:   # loop depth 1
  JAL zero, bb19
bb117:   # loop depth 1
  ADD s0, s1, zero
  JAL zero, bb13
bb118:   # loop depth 0
  JAL zero, bb12
bb119:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb120
bb120:   # loop depth 1
  ADDI s3, zero, 10
  CALL getch
  MULW s1, s1, s3
  ADDI s5, zero, 57
  ADD s3, a0, zero
  SLT s6, s5, s3
  SLTI s5, s3, 48
  XORI s6, s6, 1
  XORI s5, s5, 1
  ADDW s0, s1, s0
  AND s5, s5, s6
  ADDIW s1, s0, -48
  BNE s5, zero, bb122
  # implict jump to bb121
bb121:   # loop depth 0
  JAL zero, bb10
bb122:   # loop depth 1
  ADD s0, s3, zero
  JAL zero, bb120
bb123:   # loop depth 0
  ADD s4, zero, zero
  # implict jump to bb124
bb124:   # loop depth 1
  XORI s0, s0, 45
  BEQ s0, zero, bb129
  # implict jump to bb125
bb125:   # loop depth 1
  # implict jump to bb126
bb126:   # loop depth 1
  CALL getch
  ADDI s2, zero, 57
  ADD s0, a0, zero
  SLT s3, s2, s0
  SLTI s2, s0, 48
  OR s2, s2, s3
  BNE s2, zero, bb128
  # implict jump to bb127
bb127:   # loop depth 0
  JAL zero, bb8
bb128:   # loop depth 1
  JAL zero, bb124
bb129:   # loop depth 1
  ADDI s4, zero, 1
  JAL zero, bb126
bb130:   # loop depth 0
  JAL zero, bb6
bb131:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb132
bb132:   # loop depth 1
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
  BNE s4, zero, bb134
  # implict jump to bb133
bb133:   # loop depth 0
  JAL zero, bb4
bb134:   # loop depth 1
  ADD s0, s2, zero
  JAL zero, bb132
bb135:   # loop depth 0
  ADD s3, zero, zero
  # implict jump to bb136
bb136:   # loop depth 1
  XORI s0, s0, 45
  BEQ s0, zero, bb141
  # implict jump to bb137
bb137:   # loop depth 1
  # implict jump to bb138
bb138:   # loop depth 1
  CALL getch
  ADDI s1, zero, 57
  ADD s0, a0, zero
  SLT s4, s1, s0
  SLTI s1, s0, 48
  OR s1, s1, s4
  BNE s1, zero, bb140
  # implict jump to bb139
bb139:   # loop depth 0
  JAL zero, bb2
bb140:   # loop depth 1
  JAL zero, bb136
bb141:   # loop depth 1
  ADDI s3, zero, 1
  JAL zero, bb138
