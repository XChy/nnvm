.global h
.global g
.global main
.global f
.section .bss
array:
.space 80

.section .data

sum:
.word 0x00000000
.section .text
h:
  ADDI sp, sp, -48
  SD s2, 16(sp)
  SD ra, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 3
  LA s1, sum
  SW s0, 0(s1)
  LW s0, 8(sp)
  SLT s1, s0, zero
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  SLTI s1, s0, 20
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb3
bb3:
  LB s0, 0(sp)
  BNE s0, zero, bb4
  JAL zero, bb5
bb4:
  ADD a0, zero, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb5:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD s2, 16(sp)
  LD ra, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
g:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 2
  LA s1, sum
  SW s0, 0(s1)
  LW s0, 16(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  BNE s0, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb9
bb8:
  LW s0, 16(sp)
  SLTI s1, s0, 20
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb9
bb9:
  LB s0, 0(sp)
  BNE s0, zero, bb10
  JAL zero, bb11
bb10:
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  SW zero, 0(s1)
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb12
  JAL zero, bb14
bb12:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:
bb14:
  LW s0, 16(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -528
  SD ra, 488(sp)
  SD s2, 496(sp)
  SD s1, 504(sp)
  SD s0, 512(sp)
  SW zero, 480(sp)
  JAL zero, bb16
bb16:
  LW s0, 480(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  LW s0, 480(sp)
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb19
  JAL zero, bb20
bb18:
  SW zero, 480(sp)
  JAL zero, bb78
bb19:
  LW s0, 480(sp)
  ADDI a0, zero, 1
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 472(sp)
  JAL zero, bb21
bb20:
  SB zero, 472(sp)
  JAL zero, bb21
bb21:
  LB s0, 472(sp)
  BNE s0, zero, bb22
  JAL zero, bb23
bb22:
  LW s0, 480(sp)
  ADDI a0, zero, 2
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 464(sp)
  JAL zero, bb24
bb23:
  SB zero, 464(sp)
  JAL zero, bb24
bb24:
  LB s0, 464(sp)
  BNE s0, zero, bb25
  JAL zero, bb26
bb25:
  LW s0, 480(sp)
  ADDI a0, zero, 3
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 456(sp)
  JAL zero, bb27
bb26:
  SB zero, 456(sp)
  JAL zero, bb27
bb27:
  LB s0, 456(sp)
  BNE s0, zero, bb28
  JAL zero, bb29
bb28:
  LW s0, 480(sp)
  ADDI a0, zero, 4
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 448(sp)
  JAL zero, bb30
bb29:
  SB zero, 448(sp)
  JAL zero, bb30
bb30:
  LB s0, 448(sp)
  BNE s0, zero, bb31
  JAL zero, bb32
bb31:
  LW s0, 480(sp)
  ADDI a0, zero, 5
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 440(sp)
  JAL zero, bb33
bb32:
  SB zero, 440(sp)
  JAL zero, bb33
bb33:
  LB s0, 440(sp)
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 480(sp)
  ADDI a0, zero, 6
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 432(sp)
  JAL zero, bb36
bb35:
  SB zero, 432(sp)
  JAL zero, bb36
bb36:
  LB s0, 432(sp)
  BNE s0, zero, bb37
  JAL zero, bb38
bb37:
  LW s0, 480(sp)
  ADDI a0, zero, 7
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 424(sp)
  JAL zero, bb39
bb38:
  SB zero, 424(sp)
  JAL zero, bb39
bb39:
  LB s0, 424(sp)
  BNE s0, zero, bb40
  JAL zero, bb41
bb40:
  LW s0, 480(sp)
  ADDI a0, zero, 8
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 416(sp)
  JAL zero, bb42
bb41:
  SB zero, 416(sp)
  JAL zero, bb42
bb42:
  LB s0, 416(sp)
  BNE s0, zero, bb43
  JAL zero, bb44
bb43:
  LW s0, 480(sp)
  ADDI a0, zero, 9
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 408(sp)
  JAL zero, bb45
bb44:
  SB zero, 408(sp)
  JAL zero, bb45
bb45:
  LB s0, 408(sp)
  BNE s0, zero, bb46
  JAL zero, bb47
bb46:
  LW s0, 480(sp)
  ADDI a0, zero, 10
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 400(sp)
  JAL zero, bb48
bb47:
  SB zero, 400(sp)
  JAL zero, bb48
bb48:
  LB s0, 400(sp)
  BNE s0, zero, bb49
  JAL zero, bb50
bb49:
  LW s0, 480(sp)
  ADDI a0, zero, 11
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 392(sp)
  JAL zero, bb51
bb50:
  SB zero, 392(sp)
  JAL zero, bb51
bb51:
  LB s0, 392(sp)
  BNE s0, zero, bb52
  JAL zero, bb53
bb52:
  LW s0, 480(sp)
  ADDI a0, zero, 12
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 384(sp)
  JAL zero, bb54
bb53:
  SB zero, 384(sp)
  JAL zero, bb54
bb54:
  LB s0, 384(sp)
  BNE s0, zero, bb55
  JAL zero, bb56
bb55:
  LW s0, 480(sp)
  ADDI a0, zero, 13
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 376(sp)
  JAL zero, bb57
bb56:
  SB zero, 376(sp)
  JAL zero, bb57
bb57:
  LB s0, 376(sp)
  BNE s0, zero, bb58
  JAL zero, bb59
bb58:
  LW s0, 480(sp)
  ADDI a0, zero, 14
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 368(sp)
  JAL zero, bb60
bb59:
  SB zero, 368(sp)
  JAL zero, bb60
bb60:
  LB s0, 368(sp)
  BNE s0, zero, bb61
  JAL zero, bb62
bb61:
  LW s0, 480(sp)
  ADDI a0, zero, 15
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 360(sp)
  JAL zero, bb63
bb62:
  SB zero, 360(sp)
  JAL zero, bb63
bb63:
  LB s0, 360(sp)
  BNE s0, zero, bb64
  JAL zero, bb65
bb64:
  LW s0, 480(sp)
  ADDI a0, zero, 16
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 352(sp)
  JAL zero, bb66
bb65:
  SB zero, 352(sp)
  JAL zero, bb66
bb66:
  LB s0, 352(sp)
  BNE s0, zero, bb67
  JAL zero, bb68
bb67:
  LW s0, 480(sp)
  ADDI a0, zero, 17
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 344(sp)
  JAL zero, bb69
bb68:
  SB zero, 344(sp)
  JAL zero, bb69
bb69:
  LB s0, 344(sp)
  BNE s0, zero, bb70
  JAL zero, bb71
bb70:
  LW s0, 480(sp)
  ADDI a0, zero, 18
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 336(sp)
  JAL zero, bb72
bb71:
  SB zero, 336(sp)
  JAL zero, bb72
bb72:
  LB s0, 336(sp)
  BNE s0, zero, bb73
  JAL zero, bb74
bb73:
  LW s0, 480(sp)
  ADDI a0, zero, 19
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 328(sp)
  JAL zero, bb75
bb74:
  SB zero, 328(sp)
  JAL zero, bb75
bb75:
  LB s0, 328(sp)
  BNE s0, zero, bb76
  JAL zero, bb77
bb76:
  JAL zero, bb77
bb77:
  LW s0, 480(sp)
  ADDIW s1, s0, 1
  SW s1, 480(sp)
  JAL zero, bb16
bb78:
  LW s0, 480(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb79
  JAL zero, bb80
bb79:
  LW s0, 480(sp)
  ADD a0, zero, zero
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb81
  JAL zero, bb82
bb80:
  ADDI s0, zero, 1
  SW s0, 480(sp)
  JAL zero, bb140
bb81:
  ADDI s0, zero, 1
  SB s0, 320(sp)
  JAL zero, bb83
bb82:
  LW s0, 480(sp)
  ADDI a0, zero, 1
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 320(sp)
  JAL zero, bb83
bb83:
  LB s0, 320(sp)
  BNE s0, zero, bb84
  JAL zero, bb85
bb84:
  ADDI s0, zero, 1
  SB s0, 312(sp)
  JAL zero, bb86
bb85:
  LW s0, 480(sp)
  ADDI a0, zero, 2
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 312(sp)
  JAL zero, bb86
bb86:
  LB s0, 312(sp)
  BNE s0, zero, bb87
  JAL zero, bb88
bb87:
  ADDI s0, zero, 1
  SB s0, 304(sp)
  JAL zero, bb89
bb88:
  LW s0, 480(sp)
  ADDI a0, zero, 3
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 304(sp)
  JAL zero, bb89
bb89:
  LB s0, 304(sp)
  BNE s0, zero, bb90
  JAL zero, bb91
bb90:
  ADDI s0, zero, 1
  SB s0, 296(sp)
  JAL zero, bb92
bb91:
  LW s0, 480(sp)
  ADDI a0, zero, 4
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 296(sp)
  JAL zero, bb92
bb92:
  LB s0, 296(sp)
  BNE s0, zero, bb93
  JAL zero, bb94
bb93:
  ADDI s0, zero, 1
  SB s0, 288(sp)
  JAL zero, bb95
bb94:
  LW s0, 480(sp)
  ADDI a0, zero, 5
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 288(sp)
  JAL zero, bb95
bb95:
  LB s0, 288(sp)
  BNE s0, zero, bb96
  JAL zero, bb97
bb96:
  ADDI s0, zero, 1
  SB s0, 280(sp)
  JAL zero, bb98
bb97:
  LW s0, 480(sp)
  ADDI a0, zero, 6
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 280(sp)
  JAL zero, bb98
bb98:
  LB s0, 280(sp)
  BNE s0, zero, bb99
  JAL zero, bb100
bb99:
  ADDI s0, zero, 1
  SB s0, 272(sp)
  JAL zero, bb101
bb100:
  LW s0, 480(sp)
  ADDI a0, zero, 7
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 272(sp)
  JAL zero, bb101
bb101:
  LB s0, 272(sp)
  BNE s0, zero, bb102
  JAL zero, bb103
bb102:
  ADDI s0, zero, 1
  SB s0, 264(sp)
  JAL zero, bb104
bb103:
  LW s0, 480(sp)
  ADDI a0, zero, 8
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 264(sp)
  JAL zero, bb104
bb104:
  LB s0, 264(sp)
  BNE s0, zero, bb105
  JAL zero, bb106
bb105:
  ADDI s0, zero, 1
  SB s0, 256(sp)
  JAL zero, bb107
bb106:
  LW s0, 480(sp)
  ADDI a0, zero, 9
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 256(sp)
  JAL zero, bb107
bb107:
  LB s0, 256(sp)
  BNE s0, zero, bb108
  JAL zero, bb109
bb108:
  ADDI s0, zero, 1
  SB s0, 248(sp)
  JAL zero, bb110
bb109:
  LW s0, 480(sp)
  ADDI a0, zero, 10
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 248(sp)
  JAL zero, bb110
bb110:
  LB s0, 248(sp)
  BNE s0, zero, bb111
  JAL zero, bb112
bb111:
  ADDI s0, zero, 1
  SB s0, 240(sp)
  JAL zero, bb113
bb112:
  LW s0, 480(sp)
  ADDI a0, zero, 11
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 240(sp)
  JAL zero, bb113
bb113:
  LB s0, 240(sp)
  BNE s0, zero, bb114
  JAL zero, bb115
bb114:
  ADDI s0, zero, 1
  SB s0, 232(sp)
  JAL zero, bb116
bb115:
  LW s0, 480(sp)
  ADDI a0, zero, 12
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 232(sp)
  JAL zero, bb116
bb116:
  LB s0, 232(sp)
  BNE s0, zero, bb117
  JAL zero, bb118
bb117:
  ADDI s0, zero, 1
  SB s0, 224(sp)
  JAL zero, bb119
bb118:
  LW s0, 480(sp)
  ADDI a0, zero, 13
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 224(sp)
  JAL zero, bb119
bb119:
  LB s0, 224(sp)
  BNE s0, zero, bb120
  JAL zero, bb121
bb120:
  ADDI s0, zero, 1
  SB s0, 216(sp)
  JAL zero, bb122
bb121:
  LW s0, 480(sp)
  ADDI a0, zero, 14
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 216(sp)
  JAL zero, bb122
bb122:
  LB s0, 216(sp)
  BNE s0, zero, bb123
  JAL zero, bb124
bb123:
  ADDI s0, zero, 1
  SB s0, 208(sp)
  JAL zero, bb125
bb124:
  LW s0, 480(sp)
  ADDI a0, zero, 15
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 208(sp)
  JAL zero, bb125
bb125:
  LB s0, 208(sp)
  BNE s0, zero, bb126
  JAL zero, bb127
bb126:
  ADDI s0, zero, 1
  SB s0, 200(sp)
  JAL zero, bb128
bb127:
  LW s0, 480(sp)
  ADDI a0, zero, 16
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 200(sp)
  JAL zero, bb128
bb128:
  LB s0, 200(sp)
  BNE s0, zero, bb129
  JAL zero, bb130
bb129:
  ADDI s0, zero, 1
  SB s0, 192(sp)
  JAL zero, bb131
bb130:
  LW s0, 480(sp)
  ADDI a0, zero, 17
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 192(sp)
  JAL zero, bb131
bb131:
  LB s0, 192(sp)
  BNE s0, zero, bb132
  JAL zero, bb133
bb132:
  ADDI s0, zero, 1
  SB s0, 184(sp)
  JAL zero, bb134
bb133:
  LW s0, 480(sp)
  ADDI a0, zero, 18
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 184(sp)
  JAL zero, bb134
bb134:
  LB s0, 184(sp)
  BNE s0, zero, bb135
  JAL zero, bb136
bb135:
  ADDI s0, zero, 1
  SB s0, 176(sp)
  JAL zero, bb137
bb136:
  LW s0, 480(sp)
  ADDI a0, zero, 19
  ADD a1, s0, zero
  CALL g
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 176(sp)
  JAL zero, bb137
bb137:
  LB s0, 176(sp)
  BNE s0, zero, bb138
  JAL zero, bb139
bb138:
  JAL zero, bb139
bb139:
  LW s0, 480(sp)
  ADDIW s1, s0, 1
  SW s1, 480(sp)
  JAL zero, bb78
bb140:
  LW s0, 480(sp)
  SLTI s1, s0, 20
  BNE s1, zero, bb143
  JAL zero, bb144
bb141:
  LW s0, 480(sp)
  ADDIW s1, s0, 1
  SW s1, 480(sp)
  JAL zero, bb140
bb142:
  SW zero, 160(sp)
  ADD a0, zero, zero
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb146
  JAL zero, bb147
bb143:
  LW s0, 480(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LW s0, 480(sp)
  ADD a0, s2, zero
  ADD a1, s0, zero
  CALL f
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 168(sp)
  JAL zero, bb145
bb144:
  SB zero, 168(sp)
  JAL zero, bb145
bb145:
  LB s0, 168(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb141
  JAL zero, bb142
bb146:
  ADDI a0, zero, 1
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 152(sp)
  JAL zero, bb148
bb147:
  SB zero, 152(sp)
  JAL zero, bb148
bb148:
  LB s0, 152(sp)
  BNE s0, zero, bb149
  JAL zero, bb150
bb149:
  ADDI s0, zero, 1
  SB s0, 144(sp)
  JAL zero, bb151
bb150:
  ADDI a0, zero, 2
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 144(sp)
  JAL zero, bb151
bb151:
  LB s0, 144(sp)
  BNE s0, zero, bb152
  JAL zero, bb153
bb152:
  ADDI s0, zero, 1
  SB s0, 136(sp)
  JAL zero, bb154
bb153:
  ADDI a0, zero, 3
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 136(sp)
  JAL zero, bb154
bb154:
  LB s0, 136(sp)
  BNE s0, zero, bb155
  JAL zero, bb156
bb155:
  ADDI s0, zero, 1
  SW s0, 160(sp)
  JAL zero, bb156
bb156:
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 160(sp)
  ADDW s2, s1, s0
  SW zero, 160(sp)
  ADDI a0, zero, 4
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb157
  JAL zero, bb158
bb157:
  ADDI s0, zero, 1
  SB s0, 128(sp)
  JAL zero, bb159
bb158:
  ADDI a0, zero, 5
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb160
  JAL zero, bb161
bb159:
  LB s0, 128(sp)
  BNE s0, zero, bb166
  JAL zero, bb167
bb160:
  ADDI a0, zero, 6
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 120(sp)
  JAL zero, bb162
bb161:
  SB zero, 120(sp)
  JAL zero, bb162
bb162:
  LB s0, 120(sp)
  BNE s0, zero, bb163
  JAL zero, bb164
bb163:
  ADDI a0, zero, 7
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 112(sp)
  JAL zero, bb165
bb164:
  SB zero, 112(sp)
  JAL zero, bb165
bb165:
  LB s0, 112(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 128(sp)
  JAL zero, bb159
bb166:
  ADDI s0, zero, 1
  SB s0, 104(sp)
  JAL zero, bb168
bb167:
  ADDI a0, zero, 8
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 104(sp)
  JAL zero, bb168
bb168:
  LB s0, 104(sp)
  BNE s0, zero, bb169
  JAL zero, bb170
bb169:
  ADDI s0, zero, 1
  SW s0, 160(sp)
  JAL zero, bb170
bb170:
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 160(sp)
  MULW s2, s1, s0
  SW zero, 160(sp)
  ADDI a0, zero, 9
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb171
  JAL zero, bb172
bb171:
  ADDI a0, zero, 10
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 96(sp)
  JAL zero, bb173
bb172:
  SB zero, 96(sp)
  JAL zero, bb173
bb173:
  LB s0, 96(sp)
  BNE s0, zero, bb174
  JAL zero, bb175
bb174:
  ADDI s0, zero, 1
  SB s0, 88(sp)
  JAL zero, bb176
bb175:
  ADDI a0, zero, 11
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 88(sp)
  JAL zero, bb176
bb176:
  LB s0, 88(sp)
  BNE s0, zero, bb177
  JAL zero, bb178
bb177:
  ADDI s0, zero, 1
  SB s0, 80(sp)
  JAL zero, bb179
bb178:
  ADDI a0, zero, 12
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 80(sp)
  JAL zero, bb179
bb179:
  LB s0, 80(sp)
  BNE s0, zero, bb180
  JAL zero, bb181
bb180:
  ADDI s0, zero, 1
  SB s0, 72(sp)
  JAL zero, bb182
bb181:
  ADDI a0, zero, 13
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 72(sp)
  JAL zero, bb182
bb182:
  LB s0, 72(sp)
  BNE s0, zero, bb183
  JAL zero, bb184
bb183:
  ADDI s0, zero, 1
  SB s0, 64(sp)
  JAL zero, bb185
bb184:
  ADDI a0, zero, 14
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb186
  JAL zero, bb187
bb185:
  LB s0, 64(sp)
  BNE s0, zero, bb189
  JAL zero, bb190
bb186:
  ADDI a0, zero, 15
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 56(sp)
  JAL zero, bb188
bb187:
  SB zero, 56(sp)
  JAL zero, bb188
bb188:
  LB s0, 56(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 64(sp)
  JAL zero, bb185
bb189:
  ADDI s0, zero, 1
  SW s0, 160(sp)
  JAL zero, bb190
bb190:
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 160(sp)
  SUBW s2, s1, s0
  SW zero, 160(sp)
  ADD a0, zero, zero
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb191
  JAL zero, bb192
bb191:
  ADDI a0, zero, 2
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 48(sp)
  JAL zero, bb193
bb192:
  SB zero, 48(sp)
  JAL zero, bb193
bb193:
  LB s0, 48(sp)
  BNE s0, zero, bb194
  JAL zero, bb195
bb194:
  ADDI a0, zero, 3
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 40(sp)
  JAL zero, bb196
bb195:
  SB zero, 40(sp)
  JAL zero, bb196
bb196:
  LB s0, 40(sp)
  BNE s0, zero, bb197
  JAL zero, bb198
bb197:
  ADDI a0, zero, 4
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb199
bb198:
  SB zero, 32(sp)
  JAL zero, bb199
bb199:
  LB s0, 32(sp)
  BNE s0, zero, bb200
  JAL zero, bb201
bb200:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb202
bb201:
  ADDI a0, zero, 5
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb202
bb202:
  LB s0, 24(sp)
  BNE s0, zero, bb203
  JAL zero, bb204
bb203:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb205
bb204:
  ADDI a0, zero, 6
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb206
  JAL zero, bb207
bb205:
  LB s0, 16(sp)
  BNE s0, zero, bb209
  JAL zero, bb210
bb206:
  ADDI a0, zero, 7
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb208
bb207:
  SB zero, 8(sp)
  JAL zero, bb208
bb208:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb205
bb209:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb211
bb210:
  ADDI a0, zero, 8
  CALL h
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb211
bb211:
  LB s0, 0(sp)
  BNE s0, zero, bb212
  JAL zero, bb213
bb212:
  ADDI s0, zero, 1
  SW s0, 160(sp)
  JAL zero, bb213
bb213:
  LA s0, sum
  LW s1, 0(s0)
  LW s0, 160(sp)
  ADDW s2, s1, s0
  ADD a0, s2, zero
  CALL putint
  ADD a0, zero, zero
  LD ra, 488(sp)
  LD s2, 496(sp)
  LD s1, 504(sp)
  LD s0, 512(sp)
  ADDI sp, sp, 528
  JALR zero, 0(ra)
f:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  LA s0, sum
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, sum
  SW s0, 0(s1)
  LW s0, 16(sp)
  LW s1, 8(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  BNE s0, zero, bb215
  JAL zero, bb216
bb215:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb217
bb216:
  LW s0, 16(sp)
  SLTI s1, s0, 20
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb217
bb217:
  LB s0, 0(sp)
  BNE s0, zero, bb218
  JAL zero, bb219
bb218:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb219:
  LW s0, 16(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, array
  ADD s1, s0, s2
  ADDI s0, zero, 1
  SW s0, 0(s1)
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb220
  JAL zero, bb222
bb220:
  ADDI s0, zero, 4
  MUL s1, zero, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb221:
bb222:
  LW s0, 16(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, array
  ADD s2, s0, s1
  LW s0, 0(s2)
  ADD a0, s0, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
