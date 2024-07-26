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
  ADD s1, zero, zero
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LA s4, output
  ADD s3, s4, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putch
  ADDIW s0, s2, 1
  # implict jump to bb4
bb4:
  LA s2, output_length
  LW s2, 0(s2)
  BLT s0, s2, bb5
  JAL zero, bb1
bb5:
  ADD s1, s0, zero
  JAL zero, bb3
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
  BNE s10, zero, bb59
  # implict jump to bb7
bb7:
  LA s11, output_length
  SW zero, 0(s11)
  LA s11, program_length
  LW s11, 0(s11)
  BLT zero, s11, bb9
  # implict jump to bb8
bb8:
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
bb9:
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
  # implict jump to bb10
bb10:
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
  SLLIW s1, t6, 2
  LA a2, program
  ADD s1, a2, s1
  LW s1, 0(s1)
  XORI a2, s1, 62
  SLTIU a2, a2, 1
  BNE a2, zero, bb58
  # implict jump to bb11
bb11:
  XORI a2, s1, 60
  SLTIU a2, a2, 1
  BNE a2, zero, bb57
  # implict jump to bb12
bb12:
  XORI a2, s1, 43
  SLTIU a2, a2, 1
  BNE a2, zero, bb56
  # implict jump to bb13
bb13:
  XORI a2, s1, 45
  SLTIU a2, a2, 1
  BNE a2, zero, bb55
  # implict jump to bb14
bb14:
  XORI a2, s1, 91
  SLTIU a2, a2, 1
  BNE a2, zero, bb38
  # implict jump to bb15
bb15:
  XORI a2, s1, 93
  SLTIU a2, a2, 1
  BNE a2, zero, bb34
  # implict jump to bb16
bb16:
  XORI a2, s1, 46
  SLTIU a2, a2, 1
  BNE a2, zero, bb33
  # implict jump to bb17
bb17:
  XORI s1, s1, 44
  SLTIU s1, s1, 1
  BNE s1, zero, bb29
  # implict jump to bb18
bb18:
  ADD s1, a6, zero
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  ADD s8, a3, zero
  ADD a1, a7, zero
  ADD a2, t6, zero
  # implict jump to bb21
bb21:
  ADD s0, s8, zero
  ADD s4, a4, zero
  ADD s8, a5, zero
  ADD t2, a1, zero
  ADD a0, a2, zero
  # implict jump to bb22
bb22:
  ADD s2, s4, zero
  ADD s3, s8, zero
  ADD s4, t2, zero
  ADD s5, a0, zero
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  ADD s6, s10, zero
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADD t4, s6, zero
  SW t4, 60(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 24(sp)
  ADD t4, s3, zero
  SW t4, 32(sp)
  ADD t4, s2, zero
  SW t4, 36(sp)
  ADD t4, s0, zero
  SW t4, 44(sp)
  ADDIW t4, s5, 1
  SW t4, 8(sp)
  # implict jump to bb27
bb27:
  LA s0, program_length
  LW s0, 0(s0)
  LW t4, 8(sp)
  BLT t4, s0, bb28
  JAL zero, bb8
bb28:
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
  JAL zero, bb10
bb29:
  LA a2, input_length
  LW a2, 0(a2)
  SLT a2, a6, a2
  XORI a2, a2, 1
  BNE a2, zero, bb32
  # implict jump to bb30
bb30:
  SLLIW a2, s10, 2
  LA s8, tape
  ADD s8, s8, a2
  SLLIW a2, a6, 2
  LA a1, input
  ADD a1, a1, a2
  LW a1, 0(a1)
  SW a1, 0(s8)
  ADDIW s8, a6, 1
  # implict jump to bb31
bb31:
  ADD s1, s8, zero
  JAL zero, bb19
bb32:
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  SW zero, 0(a1)
  ADD s8, a6, zero
  JAL zero, bb31
bb33:
  LA s8, output_length
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA a1, output
  ADD s8, a1, s8
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a1, 0(a1)
  SW a1, 0(s8)
  LA s8, output_length
  LW s8, 0(s8)
  ADDIW s8, s8, 1
  LA a1, output_length
  SW s8, 0(a1)
  ADD s1, a6, zero
  JAL zero, bb20
bb34:
  SLLIW s4, s10, 2
  LA a0, tape
  ADD s4, a0, s4
  LW s4, 0(s4)
  SLTIU a0, s4, 1
  BNE a0, zero, bb37
  # implict jump to bb35
bb35:
  ADDI a0, zero, 1
  SUBW a0, a7, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 168
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADD s0, a7, zero
  # implict jump to bb36
bb36:
  ADD s8, s4, zero
  ADD s1, a6, zero
  ADD a1, s0, zero
  ADD a2, a0, zero
  JAL zero, bb21
bb37:
  ADDI t2, zero, 1
  SUBW t2, a7, t2
  ADD s0, t2, zero
  ADD a0, t6, zero
  JAL zero, bb36
bb38:
  SLLIW a1, s10, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a1, 0(a1)
  BNE a1, zero, bb54
  # implict jump to bb39
bb39:
  SLTI a2, zero, 1
  BNE a2, zero, bb43
  # implict jump to bb40
bb40:
  ADD a2, t6, zero
  ADDI s5, zero, 1
  # implict jump to bb41
bb41:
  ADD s6, a7, zero
  ADD s7, a2, zero
  # implict jump to bb42
bb42:
  ADD s0, a3, zero
  ADD s4, s5, zero
  ADD s8, a1, zero
  ADD s1, a6, zero
  ADD t2, s6, zero
  ADD a0, s7, zero
  JAL zero, bb22
bb43:
  ADD t1, t6, zero
  ADDI s3, zero, 1
  # implict jump to bb44
bb44:
  ADD t0, s3, zero
  ADD s6, t1, zero
  ADDIW s9, s6, 1
  SLLIW s6, s9, 2
  LA s11, program
  ADD s6, s11, s6
  LW s6, 0(s6)
  XORI s11, s6, 93
  SLTIU s11, s11, 1
  BNE s11, zero, bb53
  # implict jump to bb45
bb45:
  ADD s11, t0, zero
  # implict jump to bb46
bb46:
  XORI s6, s6, 91
  SLTIU s6, s6, 1
  BNE s6, zero, bb52
  # implict jump to bb47
bb47:
  ADD s6, s11, zero
  # implict jump to bb48
bb48:
  ADD s2, s6, zero
  # implict jump to bb49
bb49:
  BLT zero, s2, bb51
  # implict jump to bb50
bb50:
  ADD a2, s9, zero
  ADD s5, s2, zero
  JAL zero, bb41
bb51:
  ADD t1, s9, zero
  ADD s3, s2, zero
  JAL zero, bb44
bb52:
  ADDIW s7, s11, 1
  ADD s6, s7, zero
  JAL zero, bb48
bb53:
  ADDI s7, zero, 1
  SUBW s7, t0, s7
  ADD s11, s7, zero
  JAL zero, bb46
bb54:
  SLLIW s2, a7, 2
  ADDI t5, sp, 168
  ADD s2, t5, s2
  SW t6, 0(s2)
  ADDIW s2, a7, 1
  ADD s5, a4, zero
  ADD s6, s2, zero
  ADD s7, t6, zero
  JAL zero, bb42
bb55:
  SLLIW s6, s10, 2
  LA s7, tape
  ADD s6, s7, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s7, s7, s8
  SW s7, 0(s6)
  ADD s0, a3, zero
  ADD s2, a4, zero
  ADD s3, a5, zero
  ADD s1, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  JAL zero, bb23
bb56:
  SLLIW s6, s10, 2
  LA s7, tape
  ADD s6, s7, s6
  LW s7, 0(s6)
  ADDIW s7, s7, 1
  SW s7, 0(s6)
  ADD s0, a3, zero
  ADD s2, a4, zero
  ADD s3, a5, zero
  ADD s1, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  JAL zero, bb24
bb57:
  ADDI s7, zero, 1
  SUBW s7, s10, s7
  ADD s0, a3, zero
  ADD s2, a4, zero
  ADD s3, a5, zero
  ADD s1, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  ADD s6, s7, zero
  JAL zero, bb25
bb58:
  ADDIW s7, s10, 1
  ADD s0, a3, zero
  ADD s2, a4, zero
  ADD s3, a5, zero
  ADD s1, a6, zero
  ADD s4, a7, zero
  ADD s5, t6, zero
  ADD s6, s7, zero
  JAL zero, bb26
bb59:
  ADDI t4, zero, 512
  SW t4, 56(sp)
  # implict jump to bb60
bb60:
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
  # implict jump to bb61
bb61:
  LW t4, 52(sp)
  BNE t4, zero, bb62
  JAL zero, bb7
bb62:
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 56(sp)
  JAL zero, bb60
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
  # implict jump to bb64
bb64:
  ADD s3, s2, zero
  XORI s4, s3, 62
  BNE s4, zero, bb129
  # implict jump to bb65
bb65:
  ADD s4, zero, zero
  # implict jump to bb66
bb66:
  BNE s4, zero, bb128
  # implict jump to bb67
bb67:
  ADD s4, zero, zero
  # implict jump to bb68
bb68:
  BNE s4, zero, bb127
  # implict jump to bb69
bb69:
  ADD s4, zero, zero
  # implict jump to bb70
bb70:
  BNE s4, zero, bb126
  # implict jump to bb71
bb71:
  ADD s4, zero, zero
  # implict jump to bb72
bb72:
  BNE s4, zero, bb125
  # implict jump to bb73
bb73:
  ADD s4, zero, zero
  # implict jump to bb74
bb74:
  BNE s4, zero, bb124
  # implict jump to bb75
bb75:
  ADD s4, zero, zero
  # implict jump to bb76
bb76:
  BNE s4, zero, bb123
  # implict jump to bb77
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  BNE s4, zero, bb122
  # implict jump to bb79
bb79:
  ADD s4, zero, zero
  # implict jump to bb80
bb80:
  BNE s4, zero, bb121
  # implict jump to bb81
bb81:
  XORI s4, s3, 35
  BNE s4, zero, bb90
  # implict jump to bb82
bb82:
  CALL getch
  ADD s5, a0, zero
  XORI s5, s5, 105
  BNE s5, zero, bb89
  # implict jump to bb83
bb83:
  CALL getint
  ADD s5, a0, zero
  LA s6, input_length
  SW s5, 0(s6)
  CALL getch
  LA s5, input_length
  LW s5, 0(s5)
  BLT zero, s5, bb85
  # implict jump to bb84
bb84:
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
bb85:
  ADD s5, zero, zero
  # implict jump to bb86
bb86:
  ADD s6, s5, zero
  SLLIW s7, s6, 2
  LA s8, input
  ADD s7, s8, s7
  CALL getch
  ADD s8, a0, zero
  SW s8, 0(s7)
  ADDIW s0, s6, 1
  # implict jump to bb87
bb87:
  LA s6, input_length
  LW s6, 0(s6)
  BLT s0, s6, bb88
  JAL zero, bb84
bb88:
  ADD s5, s0, zero
  JAL zero, bb86
bb89:
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
bb90:
  # implict jump to bb91
bb91:
  ADD s4, s3, zero
  LA s5, program_length
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s6, program
  ADD s5, s6, s5
  SW s4, 0(s5)
  CALL getch
  ADD s4, a0, zero
  # implict jump to bb92
bb92:
  ADD s1, s4, zero
  XORI s5, s1, 62
  BNE s5, zero, bb120
  # implict jump to bb93
bb93:
  ADD s5, zero, zero
  # implict jump to bb94
bb94:
  BNE s5, zero, bb119
  # implict jump to bb95
bb95:
  ADD s5, zero, zero
  # implict jump to bb96
bb96:
  BNE s5, zero, bb118
  # implict jump to bb97
bb97:
  ADD s5, zero, zero
  # implict jump to bb98
bb98:
  BNE s5, zero, bb117
  # implict jump to bb99
bb99:
  ADD s5, zero, zero
  # implict jump to bb100
bb100:
  BNE s5, zero, bb116
  # implict jump to bb101
bb101:
  ADD s5, zero, zero
  # implict jump to bb102
bb102:
  BNE s5, zero, bb115
  # implict jump to bb103
bb103:
  ADD s5, zero, zero
  # implict jump to bb104
bb104:
  BNE s5, zero, bb114
  # implict jump to bb105
bb105:
  ADD s5, zero, zero
  # implict jump to bb106
bb106:
  BNE s5, zero, bb113
  # implict jump to bb107
bb107:
  ADD s5, zero, zero
  # implict jump to bb108
bb108:
  BNE s5, zero, bb112
  # implict jump to bb109
bb109:
  LA s5, program_length
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s6, program_length
  SW s5, 0(s6)
  # implict jump to bb110
bb110:
  XORI s5, s1, 35
  BNE s5, zero, bb111
  JAL zero, bb82
bb111:
  ADD s3, s1, zero
  JAL zero, bb91
bb112:
  CALL getch
  ADD s0, a0, zero
  ADD s4, s0, zero
  JAL zero, bb92
bb113:
  XORI s6, s1, 35
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb108
bb114:
  XORI s6, s1, 44
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb106
bb115:
  XORI s6, s1, 46
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb104
bb116:
  XORI s6, s1, 93
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb102
bb117:
  XORI s6, s1, 91
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb100
bb118:
  XORI s6, s1, 45
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb98
bb119:
  XORI s6, s1, 43
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb96
bb120:
  XORI s6, s1, 60
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb94
bb121:
  CALL getch
  ADD s2, a0, zero
  JAL zero, bb64
bb122:
  XORI s5, s3, 35
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb80
bb123:
  XORI s5, s3, 44
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb78
bb124:
  XORI s5, s3, 46
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb76
bb125:
  XORI s5, s3, 93
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb74
bb126:
  XORI s5, s3, 91
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb72
bb127:
  XORI s5, s3, 45
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb70
bb128:
  XORI s5, s3, 43
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb68
bb129:
  XORI s5, s3, 60
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb66
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
  # implict jump to bb131
bb131:
  ADD s4, s3, zero
  XORI s5, s4, 62
  BNE s5, zero, bb200
  # implict jump to bb132
bb132:
  ADD s5, zero, zero
  # implict jump to bb133
bb133:
  BNE s5, zero, bb199
  # implict jump to bb134
bb134:
  ADD s5, zero, zero
  # implict jump to bb135
bb135:
  BNE s5, zero, bb198
  # implict jump to bb136
bb136:
  ADD s5, zero, zero
  # implict jump to bb137
bb137:
  BNE s5, zero, bb197
  # implict jump to bb138
bb138:
  ADD s5, zero, zero
  # implict jump to bb139
bb139:
  BNE s5, zero, bb196
  # implict jump to bb140
bb140:
  ADD s5, zero, zero
  # implict jump to bb141
bb141:
  BNE s5, zero, bb195
  # implict jump to bb142
bb142:
  ADD s5, zero, zero
  # implict jump to bb143
bb143:
  BNE s5, zero, bb194
  # implict jump to bb144
bb144:
  ADD s5, zero, zero
  # implict jump to bb145
bb145:
  BNE s5, zero, bb193
  # implict jump to bb146
bb146:
  ADD s5, zero, zero
  # implict jump to bb147
bb147:
  BNE s5, zero, bb192
  # implict jump to bb148
bb148:
  XORI s5, s4, 35
  BNE s5, zero, bb161
  # implict jump to bb149
bb149:
  CALL getch
  ADD s6, a0, zero
  XORI s6, s6, 105
  BNE s6, zero, bb151
  # implict jump to bb150
bb150:
  CALL getint
  ADD s6, a0, zero
  LA s7, input_length
  SW s6, 0(s7)
  CALL getch
  LA s6, input_length
  LW s6, 0(s6)
  BLT zero, s6, bb157
  # implict jump to bb151
bb151:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LA s1, output_length
  LW s1, 0(s1)
  BLT zero, s1, bb153
  # implict jump to bb152
bb152:
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
bb153:
  ADD s1, zero, zero
  # implict jump to bb154
bb154:
  ADD s6, s1, zero
  SLLIW s7, s6, 2
  LA s8, output
  ADD s7, s8, s7
  LW s7, 0(s7)
  ADD a0, s7, zero
  CALL putch
  ADDIW s2, s6, 1
  # implict jump to bb155
bb155:
  LA s6, output_length
  LW s6, 0(s6)
  BLT s2, s6, bb156
  JAL zero, bb152
bb156:
  ADD s1, s2, zero
  JAL zero, bb154
bb157:
  ADD s6, zero, zero
  # implict jump to bb158
bb158:
  ADD s7, s6, zero
  SLLIW s8, s7, 2
  LA s9, input
  ADD s8, s9, s8
  CALL getch
  ADD s9, a0, zero
  SW s9, 0(s8)
  ADDIW s1, s7, 1
  # implict jump to bb159
bb159:
  LA s7, input_length
  LW s7, 0(s7)
  BLT s1, s7, bb160
  JAL zero, bb151
bb160:
  ADD s6, s1, zero
  JAL zero, bb158
bb161:
  # implict jump to bb162
bb162:
  ADD s5, s4, zero
  LA s6, program_length
  LW s6, 0(s6)
  SLLIW s6, s6, 2
  LA s7, program
  ADD s6, s7, s6
  SW s5, 0(s6)
  CALL getch
  ADD s5, a0, zero
  # implict jump to bb163
bb163:
  ADD s0, s5, zero
  XORI s6, s0, 62
  BNE s6, zero, bb191
  # implict jump to bb164
bb164:
  ADD s6, zero, zero
  # implict jump to bb165
bb165:
  BNE s6, zero, bb190
  # implict jump to bb166
bb166:
  ADD s6, zero, zero
  # implict jump to bb167
bb167:
  BNE s6, zero, bb189
  # implict jump to bb168
bb168:
  ADD s6, zero, zero
  # implict jump to bb169
bb169:
  BNE s6, zero, bb188
  # implict jump to bb170
bb170:
  ADD s6, zero, zero
  # implict jump to bb171
bb171:
  BNE s6, zero, bb187
  # implict jump to bb172
bb172:
  ADD s6, zero, zero
  # implict jump to bb173
bb173:
  BNE s6, zero, bb186
  # implict jump to bb174
bb174:
  ADD s6, zero, zero
  # implict jump to bb175
bb175:
  BNE s6, zero, bb185
  # implict jump to bb176
bb176:
  ADD s6, zero, zero
  # implict jump to bb177
bb177:
  BNE s6, zero, bb184
  # implict jump to bb178
bb178:
  ADD s6, zero, zero
  # implict jump to bb179
bb179:
  BNE s6, zero, bb183
  # implict jump to bb180
bb180:
  LA s6, program_length
  LW s6, 0(s6)
  ADDIW s6, s6, 1
  LA s7, program_length
  SW s6, 0(s7)
  # implict jump to bb181
bb181:
  XORI s6, s0, 35
  BNE s6, zero, bb182
  JAL zero, bb149
bb182:
  ADD s4, s0, zero
  JAL zero, bb162
bb183:
  CALL getch
  ADD s0, a0, zero
  ADD s5, s0, zero
  JAL zero, bb163
bb184:
  XORI s7, s0, 35
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb179
bb185:
  XORI s7, s0, 44
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb177
bb186:
  XORI s7, s0, 46
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb175
bb187:
  XORI s7, s0, 93
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb173
bb188:
  XORI s7, s0, 91
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb171
bb189:
  XORI s7, s0, 45
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb169
bb190:
  XORI s7, s0, 43
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb167
bb191:
  XORI s7, s0, 60
  SLTU s7, zero, s7
  ADD s6, s7, zero
  JAL zero, bb165
bb192:
  CALL getch
  ADD s3, a0, zero
  JAL zero, bb131
bb193:
  XORI s6, s4, 35
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb147
bb194:
  XORI s6, s4, 44
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb145
bb195:
  XORI s6, s4, 46
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb143
bb196:
  XORI s6, s4, 93
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb141
bb197:
  XORI s6, s4, 91
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb139
bb198:
  XORI s6, s4, 45
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb137
bb199:
  XORI s6, s4, 43
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb135
bb200:
  XORI s6, s4, 60
  SLTU s6, zero, s6
  ADD s5, s6, zero
  JAL zero, bb133
get_bf_char:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb202
bb202:
  ADD s1, s0, zero
  XORI s2, s1, 62
  BNE s2, zero, bb228
  # implict jump to bb203
bb203:
  ADD s2, zero, zero
  # implict jump to bb204
bb204:
  BNE s2, zero, bb227
  # implict jump to bb205
bb205:
  ADD s2, zero, zero
  # implict jump to bb206
bb206:
  BNE s2, zero, bb226
  # implict jump to bb207
bb207:
  ADD s2, zero, zero
  # implict jump to bb208
bb208:
  BNE s2, zero, bb225
  # implict jump to bb209
bb209:
  ADD s2, zero, zero
  # implict jump to bb210
bb210:
  BNE s2, zero, bb224
  # implict jump to bb211
bb211:
  ADD s2, zero, zero
  # implict jump to bb212
bb212:
  BNE s2, zero, bb223
  # implict jump to bb213
bb213:
  ADD s2, zero, zero
  # implict jump to bb214
bb214:
  BNE s2, zero, bb222
  # implict jump to bb215
bb215:
  ADD s2, zero, zero
  # implict jump to bb216
bb216:
  BNE s2, zero, bb221
  # implict jump to bb217
bb217:
  ADD s2, zero, zero
  # implict jump to bb218
bb218:
  BNE s2, zero, bb220
  # implict jump to bb219
bb219:
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb220:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb202
bb221:
  XORI s3, s1, 35
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb218
bb222:
  XORI s3, s1, 44
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb216
bb223:
  XORI s3, s1, 46
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb214
bb224:
  XORI s3, s1, 93
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb212
bb225:
  XORI s3, s1, 91
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb210
bb226:
  XORI s3, s1, 45
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb208
bb227:
  XORI s3, s1, 43
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb206
bb228:
  XORI s3, s1, 60
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb204
