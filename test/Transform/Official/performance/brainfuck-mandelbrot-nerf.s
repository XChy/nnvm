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
  LW a4, 0(t0)
  BLT zero, a4, bb4
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
  ADD t1, zero, zero
  ADD a3, zero, zero
  ADD t2, zero, zero
  ADD t0, zero, zero
  ADD a2, zero, zero
  ADD a1, zero, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  SLLIW a5, t1, 2
  LA a6, program
  ADD a5, a6, a5
  LW a5, 0(a5)
  XORI a6, a5, 62
  SLTIU a6, a6, 1
  BNE a6, zero, bb48
  # implict jump to bb6
bb6:
  XORI a6, a5, 60
  SLTIU a6, a6, 1
  BNE a6, zero, bb47
  # implict jump to bb7
bb7:
  XORI a6, a5, 43
  SLTIU a6, a6, 1
  BNE a6, zero, bb46
  # implict jump to bb8
bb8:
  XORI a6, a5, 45
  SLTIU a6, a6, 1
  BNE a6, zero, bb45
  # implict jump to bb9
bb9:
  XORI a6, a5, 91
  SLTIU a6, a6, 1
  BNE a6, zero, bb32
  # implict jump to bb10
bb10:
  XORI a6, a5, 93
  SLTIU a6, a6, 1
  BNE a6, zero, bb28
  # implict jump to bb11
bb11:
  XORI a6, a5, 46
  SLTIU a6, a6, 1
  BNE a6, zero, bb27
  # implict jump to bb12
bb12:
  XORI a5, a5, 44
  SLTIU a5, a5, 1
  BNE a5, zero, bb23
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  # implict jump to bb16
bb16:
  # implict jump to bb17
bb17:
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW t1, t1, 1
  BLT t1, a4, bb22
  JAL zero, bb3
bb22:
  JAL zero, bb5
bb23:
  LA a5, input_length
  LW a5, 0(a5)
  SLT a5, t0, a5
  XORI a5, a5, 1
  BNE a5, zero, bb26
  # implict jump to bb24
bb24:
  SLLIW a5, a3, 2
  LA a6, tape
  ADD a5, a6, a5
  SLLIW a6, t0, 2
  LA a7, input
  ADD a6, a7, a6
  LW a6, 0(a6)
  SW a6, 0(a5)
  ADDIW t0, t0, 1
  # implict jump to bb25
bb25:
  JAL zero, bb14
bb26:
  SLLIW a5, a3, 2
  LA a6, tape
  ADD a5, a6, a5
  SW zero, 0(a5)
  JAL zero, bb25
bb27:
  LA a5, output_length
  LW a5, 0(a5)
  SLLIW a5, a5, 2
  LA a6, output
  ADD a5, a6, a5
  SLLIW a6, a3, 2
  LA a7, tape
  ADD a6, a7, a6
  LW a6, 0(a6)
  SW a6, 0(a5)
  LA a5, output_length
  LW a5, 0(a5)
  ADDIW a5, a5, 1
  LA a6, output_length
  SW a5, 0(a6)
  JAL zero, bb15
bb28:
  SLLIW a0, a3, 2
  LA a5, tape
  ADD a0, a5, a0
  LW a0, 0(a0)
  SLTIU a5, a0, 1
  BNE a5, zero, bb31
  # implict jump to bb29
bb29:
  ADDI t1, zero, 1
  SUBW t1, t2, t1
  SLLIW t1, t1, 2
  ADDI t6, sp, 0
  ADD t1, t6, t1
  LW t1, 0(t1)
  # implict jump to bb30
bb30:
  JAL zero, bb16
bb31:
  ADDI a5, zero, 1
  SUBW t2, t2, a5
  JAL zero, bb30
bb32:
  SLLIW a2, a3, 2
  LA a5, tape
  ADD a2, a5, a2
  LW a2, 0(a2)
  BNE a2, zero, bb44
  # implict jump to bb33
bb33:
  ADDI a1, zero, 1
  # implict jump to bb34
bb34:
  ADDIW t1, t1, 1
  SLLIW a5, t1, 2
  LA a6, program
  ADD a5, a6, a5
  LW a5, 0(a5)
  XORI a6, a5, 93
  SLTIU a6, a6, 1
  BNE a6, zero, bb43
  # implict jump to bb35
bb35:
  # implict jump to bb36
bb36:
  XORI a5, a5, 91
  SLTIU a5, a5, 1
  BNE a5, zero, bb42
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  BLT zero, a1, bb41
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  JAL zero, bb17
bb41:
  JAL zero, bb34
bb42:
  ADDIW a1, a1, 1
  JAL zero, bb38
bb43:
  ADDI a6, zero, 1
  SUBW a1, a1, a6
  JAL zero, bb36
bb44:
  SLLIW a5, t2, 2
  ADDI t6, sp, 0
  ADD a5, t6, a5
  SW t1, 0(a5)
  ADDIW t2, t2, 1
  JAL zero, bb40
bb45:
  SLLIW a5, a3, 2
  LA a6, tape
  ADD a5, a6, a5
  LW a6, 0(a5)
  ADDI a7, zero, 1
  SUBW a6, a6, a7
  SW a6, 0(a5)
  JAL zero, bb18
bb46:
  SLLIW a5, a3, 2
  LA a6, tape
  ADD a5, a6, a5
  LW a6, 0(a5)
  ADDIW a6, a6, 1
  SW a6, 0(a5)
  JAL zero, bb19
bb47:
  ADDI a5, zero, 1
  SUBW a3, a3, a5
  JAL zero, bb20
bb48:
  ADDIW a3, a3, 1
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
  ADD s1, a0, zero
  # implict jump to bb51
bb51:
  XORI s0, s1, 62
  BNE s0, zero, bb117
  # implict jump to bb52
bb52:
  ADD s0, zero, zero
  # implict jump to bb53
bb53:
  BNE s0, zero, bb116
  # implict jump to bb54
bb54:
  ADD s0, zero, zero
  # implict jump to bb55
bb55:
  BNE s0, zero, bb115
  # implict jump to bb56
bb56:
  ADD s0, zero, zero
  # implict jump to bb57
bb57:
  BNE s0, zero, bb114
  # implict jump to bb58
bb58:
  ADD s0, zero, zero
  # implict jump to bb59
bb59:
  BNE s0, zero, bb113
  # implict jump to bb60
bb60:
  ADD s0, zero, zero
  # implict jump to bb61
bb61:
  BNE s0, zero, bb112
  # implict jump to bb62
bb62:
  ADD s0, zero, zero
  # implict jump to bb63
bb63:
  BNE s0, zero, bb111
  # implict jump to bb64
bb64:
  ADD s0, zero, zero
  # implict jump to bb65
bb65:
  BNE s0, zero, bb110
  # implict jump to bb66
bb66:
  ADD s0, zero, zero
  # implict jump to bb67
bb67:
  BNE s0, zero, bb109
  # implict jump to bb68
bb68:
  XORI s0, s1, 35
  BNE s0, zero, bb79
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
  ADD s0, zero, zero
  # implict jump to bb74
bb74:
  SLLIW a0, s0, 2
  LA s1, output
  ADD a0, s1, a0
  LW a0, 0(a0)
  CALL putch
  ADDIW s0, s0, 1
  LA a0, output_length
  LW a0, 0(a0)
  BLT s0, a0, bb75
  JAL zero, bb72
bb75:
  JAL zero, bb74
bb76:
  ADD s0, zero, zero
  # implict jump to bb77
bb77:
  SLLIW s1, s0, 2
  LA s2, input
  ADD s2, s2, s1
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s2)
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
  LA s0, program_length
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s2, program
  ADD s0, s2, s0
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb81
bb81:
  XORI s0, s1, 62
  BNE s0, zero, bb108
  # implict jump to bb82
bb82:
  ADD s0, zero, zero
  # implict jump to bb83
bb83:
  BNE s0, zero, bb107
  # implict jump to bb84
bb84:
  ADD s0, zero, zero
  # implict jump to bb85
bb85:
  BNE s0, zero, bb106
  # implict jump to bb86
bb86:
  ADD s0, zero, zero
  # implict jump to bb87
bb87:
  BNE s0, zero, bb105
  # implict jump to bb88
bb88:
  ADD s0, zero, zero
  # implict jump to bb89
bb89:
  BNE s0, zero, bb104
  # implict jump to bb90
bb90:
  ADD s0, zero, zero
  # implict jump to bb91
bb91:
  BNE s0, zero, bb103
  # implict jump to bb92
bb92:
  ADD s0, zero, zero
  # implict jump to bb93
bb93:
  BNE s0, zero, bb102
  # implict jump to bb94
bb94:
  ADD s0, zero, zero
  # implict jump to bb95
bb95:
  BNE s0, zero, bb101
  # implict jump to bb96
bb96:
  ADD s0, zero, zero
  # implict jump to bb97
bb97:
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:
  LA s0, program_length
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, program_length
  SW s0, 0(s2)
  XORI s0, s1, 35
  BNE s0, zero, bb99
  JAL zero, bb69
bb99:
  JAL zero, bb80
bb100:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb81
bb101:
  XORI s0, s1, 35
  SLTU s0, zero, s0
  JAL zero, bb97
bb102:
  XORI s0, s1, 44
  SLTU s0, zero, s0
  JAL zero, bb95
bb103:
  XORI s0, s1, 46
  SLTU s0, zero, s0
  JAL zero, bb93
bb104:
  XORI s0, s1, 93
  SLTU s0, zero, s0
  JAL zero, bb91
bb105:
  XORI s0, s1, 91
  SLTU s0, zero, s0
  JAL zero, bb89
bb106:
  XORI s0, s1, 45
  SLTU s0, zero, s0
  JAL zero, bb87
bb107:
  XORI s0, s1, 43
  SLTU s0, zero, s0
  JAL zero, bb85
bb108:
  XORI s0, s1, 60
  SLTU s0, zero, s0
  JAL zero, bb83
bb109:
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb51
bb110:
  XORI s0, s1, 35
  SLTU s0, zero, s0
  JAL zero, bb67
bb111:
  XORI s0, s1, 44
  SLTU s0, zero, s0
  JAL zero, bb65
bb112:
  XORI s0, s1, 46
  SLTU s0, zero, s0
  JAL zero, bb63
bb113:
  XORI s0, s1, 93
  SLTU s0, zero, s0
  JAL zero, bb61
bb114:
  XORI s0, s1, 91
  SLTU s0, zero, s0
  JAL zero, bb59
bb115:
  XORI s0, s1, 45
  SLTU s0, zero, s0
  JAL zero, bb57
bb116:
  XORI s0, s1, 43
  SLTU s0, zero, s0
  JAL zero, bb55
bb117:
  XORI s0, s1, 60
  SLTU s0, zero, s0
  JAL zero, bb53
