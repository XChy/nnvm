.global output_
.global run_program
.global read_program
.global main
.global get_bf_char
.section .bss

output:
.space 262144

input:
.space 262144
tape:
.space 262144
program:
.space 262144

.section .data
output_length:
.word 0x00000000

input_length:
.word 0x00000000



program_length:
.word 0x00000000
.section .text
output_:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, output_length
  LW s1, 0(s1)
  ADDI s2, zero, 0
  BLT s2, s1, bb2
  # implict jump to bb1
bb1:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, output
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putch
  ADDIW s0, s2, 1
  # implict jump to bb5
bb5:
  LA s2, output_length
  LW s2, 0(s2)
  BLT s0, s2, bb6
  JAL zero, bb1
bb6:
  ADD s1, s0, zero
  JAL zero, bb4
run_program:
  LUI t0, 1048575
  ADDIW t0, t0, 1872
  ADD sp, sp, t0
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
  XORI s10, zero, 512
  BNE s10, zero, bb62
  # implict jump to bb8
bb8:
  LA s11, output_length
  SW zero, 0(s11)
  LA s11, program_length
  LW s11, 0(s11)
  BLT zero, s11, bb10
  # implict jump to bb9
bb9:
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
  LUI t0, 1
  ADDIW t0, t0, -1872
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb10:
  # implict jump to bb11
bb11:
  ADD t4, zero, zero
  SW t4, 4(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 0(sp)
  ADD t4, zero, zero
  SW t4, 40(sp)
  ADD t4, zero, zero
  SW t4, 48(sp)
  # implict jump to bb12
bb12:
  LW t4, 48(sp)
  ADD a3, t4, zero
  LW t4, 40(sp)
  ADD a4, t4, zero
  LW t4, 0(sp)
  ADD a5, t4, zero
  LW t4, 28(sp)
  ADD a6, t4, zero
  LW t4, 20(sp)
  ADD a7, t4, zero
  LW t4, 12(sp)
  ADD t6, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  SLLIW s4, t6, 2
  LA a2, program
  ADD s4, a2, s4
  LW s4, 0(s4)
  XORI a2, s4, 62
  SLTIU a2, a2, 1
  BNE a2, zero, bb61
  # implict jump to bb13
bb13:
  XORI a2, s4, 60
  SLTIU a2, a2, 1
  BNE a2, zero, bb60
  # implict jump to bb14
bb14:
  XORI a2, s4, 43
  SLTIU a2, a2, 1
  BNE a2, zero, bb59
  # implict jump to bb15
bb15:
  XORI a2, s4, 45
  SLTIU a2, a2, 1
  BNE a2, zero, bb58
  # implict jump to bb16
bb16:
  XORI a2, s4, 91
  SLTIU a2, a2, 1
  BNE a2, zero, bb40
  # implict jump to bb17
bb17:
  XORI a2, s4, 93
  SLTIU a2, a2, 1
  BNE a2, zero, bb36
  # implict jump to bb18
bb18:
  XORI a2, s4, 46
  SLTIU a2, a2, 1
  BNE a2, zero, bb35
  # implict jump to bb19
bb19:
  XORI s4, s4, 44
  SLTIU s4, s4, 1
  BNE s4, zero, bb31
  # implict jump to bb20
bb20:
  ADD s4, a6, zero
  # implict jump to bb21
bb21:
  ADD s3, s4, zero
  # implict jump to bb22
bb22:
  ADD s4, a3, zero
  ADD a1, a7, zero
  ADD a2, t6, zero
  # implict jump to bb23
bb23:
  ADD s6, a4, zero
  ADD s9, a5, zero
  ADD t2, a1, zero
  ADD a0, a2, zero
  # implict jump to bb24
bb24:
  ADD s0, s4, zero
  ADD s1, s6, zero
  ADD s2, s9, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADD s6, s10, zero
  # implict jump to bb27
bb27:
  # implict jump to bb28
bb28:
  ADD t4, s6, zero
  SW t4, 60(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 32(sp)
  ADD t4, s1, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  ADDIW t4, s5, 1
  SW t4, 8(sp)
  # implict jump to bb29
bb29:
  LA s0, program_length
  LW s0, 0(s0)
  LW t4, 8(sp)
  BLT t4, s0, bb30
  JAL zero, bb9
bb30:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 16(sp)
  ADD t4, t3, zero
  SW t4, 20(sp)
  LW t3, 24(sp)
  ADD t4, t3, zero
  SW t4, 28(sp)
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LW t3, 36(sp)
  ADD t4, t3, zero
  SW t4, 40(sp)
  LW t3, 44(sp)
  ADD t4, t3, zero
  SW t4, 48(sp)
  JAL zero, bb12
bb31:
  LA a2, input_length
  LW a2, 0(a2)
  SLT a2, a6, a2
  XORI a2, a2, 1
  BNE a2, zero, bb34
  # implict jump to bb32
bb32:
  SLLIW a2, s10, 2
  LA s3, tape
  ADD s3, s3, a2
  SLLIW a2, a6, 2
  LA a1, input
  ADD a1, a1, a2
  LW a1, 0(a1)
  SW a1, 0(s3)
  ADDIW s3, a6, 1
  # implict jump to bb33
bb33:
  ADD s4, s3, zero
  JAL zero, bb21
bb34:
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  SW zero, 0(a1)
  ADD s3, a6, zero
  JAL zero, bb33
bb35:
  LA s4, output_length
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA a1, output
  ADD s4, a1, s4
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a1, 0(a1)
  SW a1, 0(s4)
  LA s4, output_length
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA a1, output_length
  SW s4, 0(a1)
  ADD s3, a6, zero
  JAL zero, bb22
bb36:
  SLLIW s6, s10, 2
  LA a0, tape
  ADD s6, a0, s6
  LW s6, 0(s6)
  SLTIU a0, s6, 1
  BNE a0, zero, bb39
  # implict jump to bb37
bb37:
  ADDI a0, zero, 1
  SUBW a0, a7, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 168
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADD s9, a7, zero
  # implict jump to bb38
bb38:
  ADD s4, s6, zero
  ADD s3, a6, zero
  ADD a1, s9, zero
  ADD a2, a0, zero
  JAL zero, bb23
bb39:
  ADDI t2, zero, 1
  SUBW t2, a7, t2
  ADD s9, t2, zero
  ADD a0, t6, zero
  JAL zero, bb38
bb40:
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a1, 0(a1)
  BNE a1, zero, bb57
  # implict jump to bb41
bb41:
  SLTI a2, zero, 1
  BNE a2, zero, bb45
  # implict jump to bb42
bb42:
  ADD a2, t6, zero
  ADDI s1, zero, 1
  # implict jump to bb43
bb43:
  ADD s5, a7, zero
  ADD s8, a2, zero
  # implict jump to bb44
bb44:
  ADD s4, a3, zero
  ADD s6, s1, zero
  ADD s9, a1, zero
  ADD s3, a6, zero
  ADD t2, s5, zero
  ADD a0, s8, zero
  JAL zero, bb24
bb45:
  ADDI t1, zero, 1
  # implict jump to bb46
bb46:
  ADD s7, t6, zero
  # implict jump to bb47
bb47:
  ADD t0, t1, zero
  ADD s8, s7, zero
  ADDIW s0, s8, 1
  SLLIW s8, s0, 2
  LA s11, program
  ADD s8, s11, s8
  LW s8, 0(s8)
  XORI s11, s8, 93
  SLTIU s11, s11, 1
  BNE s11, zero, bb56
  # implict jump to bb48
bb48:
  ADD s11, t0, zero
  # implict jump to bb49
bb49:
  XORI s5, s8, 91
  SLTIU s5, s5, 1
  BNE s5, zero, bb55
  # implict jump to bb50
bb50:
  ADD s5, s11, zero
  # implict jump to bb51
bb51:
  ADD s2, s5, zero
  # implict jump to bb52
bb52:
  BLT zero, s2, bb54
  # implict jump to bb53
bb53:
  ADD a2, s0, zero
  ADD s1, s2, zero
  JAL zero, bb43
bb54:
  ADD s7, s0, zero
  ADD t1, s2, zero
  JAL zero, bb47
bb55:
  ADDIW s8, s11, 1
  ADD s5, s8, zero
  JAL zero, bb51
bb56:
  ADDI s5, zero, 1
  SUBW s5, t0, s5
  ADD s11, s5, zero
  JAL zero, bb49
bb57:
  SLLIW s0, a7, 2
  ADDI t5, sp, 168
  ADD s0, t5, s0
  SW t6, 0(s0)
  ADDIW s0, a7, 1
  ADD s1, a4, zero
  ADD s5, s0, zero
  ADD s8, t6, zero
  JAL zero, bb44
bb58:
  SLLIW s6, s10, 2
  LA s7, tape
  ADD s6, s7, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SW s7, 0(s6)
  ADD s0, a3, zero
  ADD s1, a4, zero
  ADD s2, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  JAL zero, bb25
bb59:
  SLLIW s6, s10, 2
  LA s7, tape
  ADD s6, s7, s6
  LW s7, 0(s6)
  ADDIW s7, s7, 1
  SW s7, 0(s6)
  ADD s0, a3, zero
  ADD s1, a4, zero
  ADD s2, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  JAL zero, bb26
bb60:
  ADDI s7, zero, 1
  SUBW s7, s10, s7
  ADD s0, a3, zero
  ADD s1, a4, zero
  ADD s2, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  ADD s6, s7, zero
  JAL zero, bb27
bb61:
  ADDIW s7, s10, 1
  ADD s0, a3, zero
  ADD s1, a4, zero
  ADD s2, a5, zero
  ADD s3, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  ADD s6, s7, zero
  JAL zero, bb28
bb62:
  ADDI s10, zero, 512
  # implict jump to bb63
bb63:
  ADD t4, s10, zero
  SW t4, 56(sp)
  # implict jump to bb64
bb64:
  LW t4, 56(sp)
  ADD s11, t4, zero
  ADDI t0, zero, 1
  SUBW t4, s11, t0
  SW t4, 52(sp)
  LW t4, 52(sp)
  SLLIW s11, t4, 2
  ADDI t5, sp, 168
  ADD s11, t5, s11
  SW zero, 0(s11)
  # implict jump to bb65
bb65:
  LW t4, 52(sp)
  BNE t4, zero, bb66
  JAL zero, bb8
bb66:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb64
read_program:
  ADDI sp, sp, -80
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
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb68
bb68:
  ADD s3, s2, zero
  XORI s4, s3, 62
  BNE s4, zero, bb135
  # implict jump to bb69
bb69:
  ADD s4, zero, zero
  # implict jump to bb70
bb70:
  BNE s4, zero, bb134
  # implict jump to bb71
bb71:
  ADD s4, zero, zero
  # implict jump to bb72
bb72:
  BNE s4, zero, bb133
  # implict jump to bb73
bb73:
  ADD s4, zero, zero
  # implict jump to bb74
bb74:
  BNE s4, zero, bb132
  # implict jump to bb75
bb75:
  ADD s4, zero, zero
  # implict jump to bb76
bb76:
  BNE s4, zero, bb131
  # implict jump to bb77
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  BNE s4, zero, bb130
  # implict jump to bb79
bb79:
  ADD s4, zero, zero
  # implict jump to bb80
bb80:
  BNE s4, zero, bb129
  # implict jump to bb81
bb81:
  ADD s4, zero, zero
  # implict jump to bb82
bb82:
  BNE s4, zero, bb128
  # implict jump to bb83
bb83:
  ADD s4, zero, zero
  # implict jump to bb84
bb84:
  BNE s4, zero, bb127
  # implict jump to bb85
bb85:
  XORI s4, s3, 35
  BNE s4, zero, bb95
  # implict jump to bb86
bb86:
  CALL getch
  ADD s5, a0, zero
  XORI s5, s5, 105
  BNE s5, zero, bb94
  # implict jump to bb87
bb87:
  CALL getint
  ADD s5, a0, zero
  LA s6, input_length
  SW s5, 0(s6)
  CALL getch
  LA s5, input_length
  LW s5, 0(s5)
  BLT zero, s5, bb89
  # implict jump to bb88
bb88:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb89:
  # implict jump to bb90
bb90:
  ADD s5, zero, zero
  # implict jump to bb91
bb91:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  LA s8, input
  ADD s7, s8, s7
  CALL getch
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW s0, s6, 1
  # implict jump to bb92
bb92:
  LA s6, input_length
  LW s6, 0(s6)
  BLT s0, s6, bb93
  JAL zero, bb88
bb93:
  ADD s5, s0, zero
  JAL zero, bb91
bb94:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb95:
  # implict jump to bb96
bb96:
  # implict jump to bb97
bb97:
  ADD s4, s3, zero
  LA s5, program_length
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, program
  ADD s5, s6, s5
  SW s4, 0(s5)
  CALL getch
  ADD s4, a0, zero
  # implict jump to bb98
bb98:
  ADD s1, s4, zero
  XORI s5, s1, 62
  BNE s5, zero, bb126
  # implict jump to bb99
bb99:
  ADD s5, zero, zero
  # implict jump to bb100
bb100:
  BNE s5, zero, bb125
  # implict jump to bb101
bb101:
  ADD s5, zero, zero
  # implict jump to bb102
bb102:
  BNE s5, zero, bb124
  # implict jump to bb103
bb103:
  ADD s5, zero, zero
  # implict jump to bb104
bb104:
  BNE s5, zero, bb123
  # implict jump to bb105
bb105:
  ADD s5, zero, zero
  # implict jump to bb106
bb106:
  BNE s5, zero, bb122
  # implict jump to bb107
bb107:
  ADD s5, zero, zero
  # implict jump to bb108
bb108:
  BNE s5, zero, bb121
  # implict jump to bb109
bb109:
  ADD s5, zero, zero
  # implict jump to bb110
bb110:
  BNE s5, zero, bb120
  # implict jump to bb111
bb111:
  ADD s5, zero, zero
  # implict jump to bb112
bb112:
  BNE s5, zero, bb119
  # implict jump to bb113
bb113:
  ADD s5, zero, zero
  # implict jump to bb114
bb114:
  BNE s5, zero, bb118
  # implict jump to bb115
bb115:
  LA s5, program_length
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, program_length
  SW s5, 0(s6)
  # implict jump to bb116
bb116:
  XORI s5, s1, 35
  BNE s5, zero, bb117
  JAL zero, bb86
bb117:
  ADD s3, s1, zero
  JAL zero, bb97
bb118:
  CALL getch
  ADD s0, a0, zero
  ADD s4, s0, zero
  JAL zero, bb98
bb119:
  XORI s6, s1, 35
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb114
bb120:
  XORI s6, s1, 44
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb112
bb121:
  XORI s6, s1, 46
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb110
bb122:
  XORI s6, s1, 93
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb108
bb123:
  XORI s6, s1, 91
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb106
bb124:
  XORI s6, s1, 45
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb104
bb125:
  XORI s6, s1, 43
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb102
bb126:
  XORI s6, s1, 60
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb100
bb127:
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb68
bb128:
  XORI s5, s3, 35
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb84
bb129:
  XORI s5, s3, 44
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb82
bb130:
  XORI s5, s3, 46
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb80
bb131:
  XORI s5, s3, 93
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb78
bb132:
  XORI s5, s3, 91
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb76
bb133:
  XORI s5, s3, 45
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb74
bb134:
  XORI s5, s3, 43
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb72
bb135:
  XORI s5, s3, 60
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb70
main:
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
  ADD s3, a0, zero
  # implict jump to bb137
bb137:
  ADD s4, s3, zero
  XORI s5, s4, 62
  BNE s5, zero, bb209
  # implict jump to bb138
bb138:
  ADD s5, zero, zero
  # implict jump to bb139
bb139:
  BNE s5, zero, bb208
  # implict jump to bb140
bb140:
  ADD s5, zero, zero
  # implict jump to bb141
bb141:
  BNE s5, zero, bb207
  # implict jump to bb142
bb142:
  ADD s5, zero, zero
  # implict jump to bb143
bb143:
  BNE s5, zero, bb206
  # implict jump to bb144
bb144:
  ADD s5, zero, zero
  # implict jump to bb145
bb145:
  BNE s5, zero, bb205
  # implict jump to bb146
bb146:
  ADD s5, zero, zero
  # implict jump to bb147
bb147:
  BNE s5, zero, bb204
  # implict jump to bb148
bb148:
  ADD s5, zero, zero
  # implict jump to bb149
bb149:
  BNE s5, zero, bb203
  # implict jump to bb150
bb150:
  ADD s5, zero, zero
  # implict jump to bb151
bb151:
  BNE s5, zero, bb202
  # implict jump to bb152
bb152:
  ADD s5, zero, zero
  # implict jump to bb153
bb153:
  BNE s5, zero, bb201
  # implict jump to bb154
bb154:
  XORI s5, s4, 35
  BNE s5, zero, bb169
  # implict jump to bb155
bb155:
  CALL getch
  ADD s6, a0, zero
  XORI s6, s6, 105
  BNE s6, zero, bb157
  # implict jump to bb156
bb156:
  CALL getint
  ADD s6, a0, zero
  LA s7, input_length
  SW s6, 0(s7)
  CALL getch
  LA s6, input_length
  LW s6, 0(s6)
  BLT zero, s6, bb164
  # implict jump to bb157
bb157:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LA s2, output_length
  LW s2, 0(s2)
  BLT zero, s2, bb159
  # implict jump to bb158
bb158:
  ADD a0, zero, zero
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
bb159:
  # implict jump to bb160
bb160:
  ADD s2, zero, zero
  # implict jump to bb161
bb161:
  ADD s6, s2, zero
  SLLIW s7, s6, 2
  LA s8, output
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putch
  ADDIW s0, s6, 1
  # implict jump to bb162
bb162:
  LA s6, output_length
  LW s6, 0(s6)
  BLT s0, s6, bb163
  JAL zero, bb158
bb163:
  ADD s2, s0, zero
  JAL zero, bb161
bb164:
  # implict jump to bb165
bb165:
  ADD s6, zero, zero
  # implict jump to bb166
bb166:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, input
  ADD s8, s9, s8
  CALL getch
  ADD s9, a0, zero
  SW s9, 0(s8)
  ADDIW s2, s7, 1
  # implict jump to bb167
bb167:
  LA s7, input_length
  LW s7, 0(s7)
  BLT s2, s7, bb168
  JAL zero, bb157
bb168:
  ADD s6, s2, zero
  JAL zero, bb166
bb169:
  # implict jump to bb170
bb170:
  # implict jump to bb171
bb171:
  ADD s5, s4, zero
  LA s6, program_length
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, program
  ADD s6, s7, s6
  SW s5, 0(s6)
  CALL getch
  ADD s5, a0, zero
  # implict jump to bb172
bb172:
  ADD s1, s5, zero
  XORI s6, s1, 62
  BNE s6, zero, bb200
  # implict jump to bb173
bb173:
  ADD s6, zero, zero
  # implict jump to bb174
bb174:
  BNE s6, zero, bb199
  # implict jump to bb175
bb175:
  ADD s6, zero, zero
  # implict jump to bb176
bb176:
  BNE s6, zero, bb198
  # implict jump to bb177
bb177:
  ADD s6, zero, zero
  # implict jump to bb178
bb178:
  BNE s6, zero, bb197
  # implict jump to bb179
bb179:
  ADD s6, zero, zero
  # implict jump to bb180
bb180:
  BNE s6, zero, bb196
  # implict jump to bb181
bb181:
  ADD s6, zero, zero
  # implict jump to bb182
bb182:
  BNE s6, zero, bb195
  # implict jump to bb183
bb183:
  ADD s6, zero, zero
  # implict jump to bb184
bb184:
  BNE s6, zero, bb194
  # implict jump to bb185
bb185:
  ADD s6, zero, zero
  # implict jump to bb186
bb186:
  BNE s6, zero, bb193
  # implict jump to bb187
bb187:
  ADD s6, zero, zero
  # implict jump to bb188
bb188:
  BNE s6, zero, bb192
  # implict jump to bb189
bb189:
  LA s6, program_length
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, program_length
  SW s6, 0(s7)
  # implict jump to bb190
bb190:
  XORI s6, s1, 35
  BNE s6, zero, bb191
  JAL zero, bb155
bb191:
  ADD s4, s1, zero
  JAL zero, bb171
bb192:
  CALL getch
  ADD s0, a0, zero
  ADD s5, s0, zero
  JAL zero, bb172
bb193:
  XORI s7, s1, 35
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb188
bb194:
  XORI s7, s1, 44
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb186
bb195:
  XORI s7, s1, 46
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb184
bb196:
  XORI s7, s1, 93
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb182
bb197:
  XORI s7, s1, 91
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb180
bb198:
  XORI s7, s1, 45
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb178
bb199:
  XORI s7, s1, 43
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb176
bb200:
  XORI s7, s1, 60
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb174
bb201:
  CALL getch
  ADD s3, a0, zero
  JAL zero, bb137
bb202:
  XORI s6, s4, 35
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb153
bb203:
  XORI s6, s4, 44
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb151
bb204:
  XORI s6, s4, 46
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb149
bb205:
  XORI s6, s4, 93
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb147
bb206:
  XORI s6, s4, 91
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb145
bb207:
  XORI s6, s4, 45
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb143
bb208:
  XORI s6, s4, 43
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb141
bb209:
  XORI s6, s4, 60
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb139
get_bf_char:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb211
bb211:
  ADD s1, s0, zero
  XORI s2, s1, 62
  BNE s2, zero, bb237
  # implict jump to bb212
bb212:
  ADD s2, zero, zero
  # implict jump to bb213
bb213:
  BNE s2, zero, bb236
  # implict jump to bb214
bb214:
  ADD s2, zero, zero
  # implict jump to bb215
bb215:
  BNE s2, zero, bb235
  # implict jump to bb216
bb216:
  ADD s2, zero, zero
  # implict jump to bb217
bb217:
  BNE s2, zero, bb234
  # implict jump to bb218
bb218:
  ADD s2, zero, zero
  # implict jump to bb219
bb219:
  BNE s2, zero, bb233
  # implict jump to bb220
bb220:
  ADD s2, zero, zero
  # implict jump to bb221
bb221:
  BNE s2, zero, bb232
  # implict jump to bb222
bb222:
  ADD s2, zero, zero
  # implict jump to bb223
bb223:
  BNE s2, zero, bb231
  # implict jump to bb224
bb224:
  ADD s2, zero, zero
  # implict jump to bb225
bb225:
  BNE s2, zero, bb230
  # implict jump to bb226
bb226:
  ADD s2, zero, zero
  # implict jump to bb227
bb227:
  BNE s2, zero, bb229
  # implict jump to bb228
bb228:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb229:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb211
bb230:
  XORI s3, s1, 35
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb227
bb231:
  XORI s3, s1, 44
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb225
bb232:
  XORI s3, s1, 46
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb223
bb233:
  XORI s3, s1, 93
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb221
bb234:
  XORI s3, s1, 91
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb219
bb235:
  XORI s3, s1, 45
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb217
bb236:
  XORI s3, s1, 43
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb215
bb237:
  XORI s3, s1, 60
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb213
