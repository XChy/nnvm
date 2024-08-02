.global run_program
.global main
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
run_program:
  LUI t0, 1048575
  ADDIW t0, t0, 2032
  ADD sp, sp, t0
  LUI t0, 1
  ADDIW t0, t0, -2048
  ADD t0, t0, sp
  SD ra, 0(t0)
  ADDI t0, zero, 512
  # implict jump to bb1
bb1:
  ADDI t1, zero, 1
  SUBW t0, t0, t1
  SLLIW t1, t0, 2
  ADDI t2, sp, 0
  ADD t1, t2, t1
  ADDI t2, zero, 0
  SW t2, 0(t1)
  BNE t0, zero, bb49
  # implict jump to bb2
bb2:
  LA t0, output_length
  SW zero, 0(t0)
  LA t0, program_length
  LW t0, 0(t0)
  BLT zero, t0, bb4
  # implict jump to bb3
bb3:
  LUI ra, 1
  ADDIW ra, ra, -2048
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t0, 1
  ADDIW t0, t0, -2032
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:
  ADD a4, zero, zero
  ADD a5, zero, zero
  ADD a6, zero, zero
  ADD a0, zero, zero
  ADD t2, zero, zero
  ADD t1, zero, zero
  ADD t0, zero, zero
  # implict jump to bb5
bb5:
  ADD a3, t0, zero
  ADD a2, t1, zero
  ADD a1, t2, zero
  ADD t2, a6, zero
  ADD t1, a5, zero
  ADD t0, a4, zero
  SLLIW a4, t0, 2
  LA a5, program
  ADD a4, a5, a4
  LW a4, 0(a4)
  XORI a5, a4, 62
  SLTIU a5, a5, 1
  BNE a5, zero, bb48
  # implict jump to bb6
bb6:
  XORI a5, a4, 60
  SLTIU a5, a5, 1
  BNE a5, zero, bb47
  # implict jump to bb7
bb7:
  XORI a5, a4, 43
  SLTIU a5, a5, 1
  BNE a5, zero, bb46
  # implict jump to bb8
bb8:
  XORI a5, a4, 45
  SLTIU a5, a5, 1
  BNE a5, zero, bb45
  # implict jump to bb9
bb9:
  XORI a5, a4, 91
  SLTIU a5, a5, 1
  BNE a5, zero, bb32
  # implict jump to bb10
bb10:
  XORI a5, a4, 93
  SLTIU a5, a5, 1
  BNE a5, zero, bb28
  # implict jump to bb11
bb11:
  XORI a5, a4, 46
  SLTIU a5, a5, 1
  BNE a5, zero, bb27
  # implict jump to bb12
bb12:
  XORI a4, a4, 44
  SLTIU a4, a4, 1
  BNE a4, zero, bb23
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD a4, a3, zero
  ADD a5, a0, zero
  ADD a0, t2, zero
  # implict jump to bb16
bb16:
  ADD a3, t0, zero
  ADD t2, a5, zero
  ADD t0, a4, zero
  ADD a4, t0, zero
  ADD t0, a2, zero
  ADD a5, a1, zero
  ADD a1, t2, zero
  ADD t2, a0, zero
  ADD a0, a3, zero
  # implict jump to bb17
bb17:
  ADD a3, a0, zero
  ADD a2, t2, zero
  ADD a0, a5, zero
  ADD t2, t0, zero
  ADD t0, a4, zero
  ADD a4, t0, zero
  ADD a5, t2, zero
  ADD a6, a0, zero
  ADD a0, a1, zero
  ADD t2, a2, zero
  ADD t0, a3, zero
  # implict jump to bb18
bb18:
  ADD a3, t0, zero
  ADD a2, t2, zero
  ADD a1, a0, zero
  ADD a0, a6, zero
  ADD t2, a5, zero
  ADD t0, a4, zero
  ADD a4, t0, zero
  ADD a5, t2, zero
  ADD a6, a0, zero
  ADD a0, a1, zero
  ADD t2, a2, zero
  ADD t0, a3, zero
  # implict jump to bb19
bb19:
  ADD a3, t0, zero
  ADD a2, t2, zero
  ADD a1, a0, zero
  ADD a0, a6, zero
  ADD t2, a5, zero
  ADD t0, a4, zero
  ADD a4, t0, zero
  ADD a5, t2, zero
  ADD a6, a0, zero
  ADD a0, a1, zero
  ADD t2, a2, zero
  ADD t0, a3, zero
  # implict jump to bb20
bb20:
  ADD a3, t0, zero
  ADD a2, t1, zero
  ADD a1, t2, zero
  ADD t2, a6, zero
  ADD t1, a5, zero
  ADD t0, a4, zero
  ADD a4, t0, zero
  ADD a5, t1, zero
  ADD a6, t2, zero
  ADD t2, a1, zero
  ADD t1, a2, zero
  ADD t0, a3, zero
  # implict jump to bb21
bb21:
  ADD a3, t0, zero
  ADD a2, t1, zero
  ADD a1, t2, zero
  ADD t2, a6, zero
  ADD t1, a5, zero
  ADD t0, a4, zero
  ADDIW a3, a3, 1
  LA a4, program_length
  LW a4, 0(a4)
  BLT a3, a4, bb22
  JAL zero, bb3
bb22:
  ADD a4, a3, zero
  ADD a5, a2, zero
  ADD a6, a1, zero
  JAL zero, bb5
bb23:
  LA a4, input_length
  LW a4, 0(a4)
  SLT a4, a0, a4
  XORI a4, a4, 1
  BNE a4, zero, bb26
  # implict jump to bb24
bb24:
  SLLIW a4, t1, 2
  LA a5, tape
  ADD a4, a5, a4
  SLLIW a5, a0, 2
  LA a6, input
  ADD a5, a6, a5
  LW a5, 0(a5)
  SW a5, 0(a4)
  ADDIW a0, a0, 1
  # implict jump to bb25
bb25:
  JAL zero, bb14
bb26:
  SLLIW a4, t1, 2
  LA a5, tape
  ADD a4, a5, a4
  SW zero, 0(a4)
  JAL zero, bb25
bb27:
  LA a4, output_length
  LW a4, 0(a4)
  SLLIW a4, a4, 2
  LA a5, output
  ADD a4, a5, a4
  SLLIW a5, t1, 2
  LA a6, tape
  ADD a5, a6, a5
  LW a5, 0(a5)
  SW a5, 0(a4)
  LA a4, output_length
  LW a4, 0(a4)
  ADDIW a4, a4, 1
  LA a5, output_length
  SW a4, 0(a5)
  JAL zero, bb15
bb28:
  SLLIW a3, t1, 2
  LA a4, tape
  ADD a3, a4, a3
  LW a3, 0(a3)
  SLTIU a4, a3, 1
  BNE a4, zero, bb31
  # implict jump to bb29
bb29:
  ADDI t0, zero, 1
  SUBW t0, t2, t0
  SLLIW t0, t0, 2
  ADDI a4, sp, 0
  ADD t0, a4, t0
  LW t0, 0(t0)
  ADD a4, t2, zero
  # implict jump to bb30
bb30:
  ADD t2, t0, zero
  ADD t0, a4, zero
  ADD a4, a3, zero
  ADD a5, a0, zero
  ADD a0, t0, zero
  ADD t0, t2, zero
  JAL zero, bb16
bb31:
  ADDI a4, zero, 1
  SUBW t2, t2, a4
  ADD a4, t2, zero
  JAL zero, bb30
bb32:
  SLLIW a1, t1, 2
  LA a4, tape
  ADD a1, a4, a1
  LW a1, 0(a1)
  BNE a1, zero, bb44
  # implict jump to bb33
bb33:
  ADDI a2, zero, 1
  # implict jump to bb34
bb34:
  ADDIW t0, t0, 1
  SLLIW a4, t0, 2
  LA a5, program
  ADD a4, a5, a4
  LW a4, 0(a4)
  XORI a5, a4, 93
  SLTIU a5, a5, 1
  BNE a5, zero, bb43
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  XORI a4, a4, 91
  SLTIU a4, a4, 1
  BNE a4, zero, bb42
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  BLT zero, a2, bb41
  # implict jump to bb39
bb39:
  ADD a4, a2, zero
  # implict jump to bb40
bb40:
  ADD a2, t0, zero
  ADD t0, a4, zero
  ADD a4, a3, zero
  ADD a5, a1, zero
  ADD a1, a0, zero
  ADD a0, a2, zero
  JAL zero, bb17
bb41:
  JAL zero, bb34
bb42:
  ADDIW a2, a2, 1
  JAL zero, bb38
bb43:
  ADDI a5, zero, 1
  SUBW a2, a2, a5
  JAL zero, bb36
bb44:
  SLLIW a4, t2, 2
  ADDI t5, sp, 0
  ADD a4, t5, a4
  SW t0, 0(a4)
  ADDIW t2, t2, 1
  ADD a4, a2, zero
  JAL zero, bb40
bb45:
  SLLIW a4, t1, 2
  LA a5, tape
  ADD a4, a5, a4
  LW a5, 0(a4)
  ADDI a6, zero, 1
  SUBW a5, a5, a6
  SW a5, 0(a4)
  ADD a4, a3, zero
  ADD a5, a2, zero
  ADD a6, a1, zero
  JAL zero, bb18
bb46:
  SLLIW a4, t1, 2
  LA a5, tape
  ADD a4, a5, a4
  LW a5, 0(a4)
  ADDIW a5, a5, 1
  SW a5, 0(a4)
  ADD a4, a3, zero
  ADD a5, a2, zero
  ADD a6, a1, zero
  JAL zero, bb19
bb47:
  ADDI a4, zero, 1
  SUBW t1, t1, a4
  ADD a4, a3, zero
  ADD a5, a2, zero
  ADD a6, a1, zero
  JAL zero, bb20
bb48:
  ADDIW t1, t1, 1
  ADD a4, a3, zero
  ADD a5, a2, zero
  ADD a6, a1, zero
  JAL zero, bb21
bb49:
  JAL zero, bb1
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb51
bb51:
  XORI s1, s0, 62
  BNE s1, zero, bb117
  # implict jump to bb52
bb52:
  ADD s1, zero, zero
  # implict jump to bb53
bb53:
  BNE s1, zero, bb116
  # implict jump to bb54
bb54:
  ADD s1, zero, zero
  # implict jump to bb55
bb55:
  BNE s1, zero, bb115
  # implict jump to bb56
bb56:
  ADD s1, zero, zero
  # implict jump to bb57
bb57:
  BNE s1, zero, bb114
  # implict jump to bb58
bb58:
  ADD s1, zero, zero
  # implict jump to bb59
bb59:
  BNE s1, zero, bb113
  # implict jump to bb60
bb60:
  ADD s1, zero, zero
  # implict jump to bb61
bb61:
  BNE s1, zero, bb112
  # implict jump to bb62
bb62:
  ADD s1, zero, zero
  # implict jump to bb63
bb63:
  BNE s1, zero, bb111
  # implict jump to bb64
bb64:
  ADD s1, zero, zero
  # implict jump to bb65
bb65:
  BNE s1, zero, bb110
  # implict jump to bb66
bb66:
  ADD s1, zero, zero
  # implict jump to bb67
bb67:
  BNE s1, zero, bb109
  # implict jump to bb68
bb68:
  XORI s1, s0, 35
  BNE s1, zero, bb79
  # implict jump to bb69
bb69:
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 105
  BNE s0, zero, bb71
  # implict jump to bb70
bb70:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  LA s0, input_length
  LW s0, 0(s0)
  BLT zero, s0, bb76
  # implict jump to bb71
bb71:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LA a0, output_length
  LW a0, 0(a0)
  BLT zero, a0, bb73
  # implict jump to bb72
bb72:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb73:
  ADD a0, zero, zero
  # implict jump to bb74
bb74:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  LA s1, output
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putch
  ADDIW a0, s0, 1
  LA s0, output_length
  LW s0, 0(s0)
  BLT a0, s0, bb75
  JAL zero, bb72
bb75:
  JAL zero, bb74
bb76:
  ADD s0, zero, zero
  # implict jump to bb77
bb77:
  SLLIW s1, s0, 2
  LA s2, input
  ADD s1, s2, s1
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s1)
  ADDIW s0, s0, 1
  LA s1, input_length
  LW s1, 0(s1)
  BLT s0, s1, bb78
  JAL zero, bb71
bb78:
  JAL zero, bb77
bb79:
  # implict jump to bb80
bb80:
  LA s1, program_length
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  LA s2, program
  ADD s1, s2, s1
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb81
bb81:
  XORI s1, s0, 62
  BNE s1, zero, bb108
  # implict jump to bb82
bb82:
  ADD s1, zero, zero
  # implict jump to bb83
bb83:
  BNE s1, zero, bb107
  # implict jump to bb84
bb84:
  ADD s1, zero, zero
  # implict jump to bb85
bb85:
  BNE s1, zero, bb106
  # implict jump to bb86
bb86:
  ADD s1, zero, zero
  # implict jump to bb87
bb87:
  BNE s1, zero, bb105
  # implict jump to bb88
bb88:
  ADD s1, zero, zero
  # implict jump to bb89
bb89:
  BNE s1, zero, bb104
  # implict jump to bb90
bb90:
  ADD s1, zero, zero
  # implict jump to bb91
bb91:
  BNE s1, zero, bb103
  # implict jump to bb92
bb92:
  ADD s1, zero, zero
  # implict jump to bb93
bb93:
  BNE s1, zero, bb102
  # implict jump to bb94
bb94:
  ADD s1, zero, zero
  # implict jump to bb95
bb95:
  BNE s1, zero, bb101
  # implict jump to bb96
bb96:
  ADD s1, zero, zero
  # implict jump to bb97
bb97:
  BNE s1, zero, bb100
  # implict jump to bb98
bb98:
  LA s1, program_length
  LW s1, 0(s1)
  ADDIW s1, s1, 1
  LA s2, program_length
  SW s1, 0(s2)
  XORI s1, s0, 35
  BNE s1, zero, bb99
  JAL zero, bb69
bb99:
  JAL zero, bb80
bb100:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb81
bb101:
  XORI s1, s0, 35
  SLTU s1, zero, s1
  JAL zero, bb97
bb102:
  XORI s1, s0, 44
  SLTU s1, zero, s1
  JAL zero, bb95
bb103:
  XORI s1, s0, 46
  SLTU s1, zero, s1
  JAL zero, bb93
bb104:
  XORI s1, s0, 93
  SLTU s1, zero, s1
  JAL zero, bb91
bb105:
  XORI s1, s0, 91
  SLTU s1, zero, s1
  JAL zero, bb89
bb106:
  XORI s1, s0, 45
  SLTU s1, zero, s1
  JAL zero, bb87
bb107:
  XORI s1, s0, 43
  SLTU s1, zero, s1
  JAL zero, bb85
bb108:
  XORI s1, s0, 60
  SLTU s1, zero, s1
  JAL zero, bb83
bb109:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb51
bb110:
  XORI s1, s0, 35
  SLTU s1, zero, s1
  JAL zero, bb67
bb111:
  XORI s1, s0, 44
  SLTU s1, zero, s1
  JAL zero, bb65
bb112:
  XORI s1, s0, 46
  SLTU s1, zero, s1
  JAL zero, bb63
bb113:
  XORI s1, s0, 93
  SLTU s1, zero, s1
  JAL zero, bb61
bb114:
  XORI s1, s0, 91
  SLTU s1, zero, s1
  JAL zero, bb59
bb115:
  XORI s1, s0, 45
  SLTU s1, zero, s1
  JAL zero, bb57
bb116:
  XORI s1, s0, 43
  SLTU s1, zero, s1
  JAL zero, bb55
bb117:
  XORI s1, s0, 60
  SLTU s1, zero, s1
  JAL zero, bb53
