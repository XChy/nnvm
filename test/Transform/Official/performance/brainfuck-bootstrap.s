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
run_program:   # loop depth 0
  LUI t0, 1048575
  ADDIW t0, t0, 2032
  ADD sp, sp, t0
  LUI t0, 1
  ADDIW t0, t0, -2048
  ADD t0, t0, sp
  SD ra, 0(t0)
  ADDI t0, zero, 512
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDI t2, sp, 0
  ADD t1, t2, t1
  ADDI t2, zero, 0
  SW t2, 0(t1)
  BNE t0, zero, bb49
  # implict jump to bb2
bb2:   # loop depth 0
  LA t0, output_length
  SW zero, 0(t0)
  LA t0, program_length
  LW a5, 0(t0)
  BLT zero, a5, bb4
  # implict jump to bb3
bb3:   # loop depth 0
  LUI ra, 1
  ADDIW ra, ra, -2048
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t0, 1
  ADDIW t0, t0, -2032
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:   # loop depth 0
  ADD a1, zero, zero
  ADD a2, zero, zero
  ADD a3, zero, zero
  ADD t0, zero, zero
  ADD t1, zero, zero
  ADD t2, zero, zero
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  SLLIW a4, a1, 2
  LA a6, program
  ADD a4, a6, a4
  LW a4, 0(a4)
  XORI a6, a4, 62
  SLTIU a6, a6, 1
  BNE a6, zero, bb48
  # implict jump to bb6
bb6:   # loop depth 1
  XORI a6, a4, 60
  SLTIU a6, a6, 1
  BNE a6, zero, bb47
  # implict jump to bb7
bb7:   # loop depth 1
  XORI a6, a4, 43
  SLTIU a6, a6, 1
  SLLIW a7, a2, 2
  BNE a6, zero, bb46
  # implict jump to bb8
bb8:   # loop depth 1
  XORI a6, a4, 45
  SLTIU a6, a6, 1
  BNE a6, zero, bb45
  # implict jump to bb9
bb9:   # loop depth 1
  XORI a6, a4, 91
  SLTIU a6, a6, 1
  BNE a6, zero, bb32
  # implict jump to bb10
bb10:   # loop depth 1
  XORI a6, a4, 93
  SLTIU a6, a6, 1
  BNE a6, zero, bb28
  # implict jump to bb11
bb11:   # loop depth 1
  XORI a6, a4, 46
  SLTIU a6, a6, 1
  BNE a6, zero, bb27
  # implict jump to bb12
bb12:   # loop depth 1
  XORI a4, a4, 44
  SLTIU a4, a4, 1
  BNE a4, zero, bb23
  # implict jump to bb13
bb13:   # loop depth 1
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  # implict jump to bb16
bb16:   # loop depth 1
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 1
  ADDIW a1, a1, 1
  BLT a1, a5, bb22
  JAL zero, bb3
bb22:   # loop depth 1
  JAL zero, bb5
bb23:   # loop depth 1
  LA a4, input_length
  LW a4, 0(a4)
  SLT a4, t0, a4
  XORI a4, a4, 1
  BNE a4, zero, bb26
  # implict jump to bb24
bb24:   # loop depth 1
  LA a4, tape
  ADD a4, a4, a7
  SLLIW a6, t0, 2
  LA a7, input
  ADD a6, a7, a6
  LW a6, 0(a6)
  SW a6, 0(a4)
  ADDIW t0, t0, 1
  # implict jump to bb25
bb25:   # loop depth 1
  JAL zero, bb14
bb26:   # loop depth 1
  LA a4, tape
  ADD a4, a4, a7
  SW zero, 0(a4)
  JAL zero, bb25
bb27:   # loop depth 1
  LA a4, output_length
  LW a4, 0(a4)
  SLLIW a4, a4, 2
  LA a6, output
  ADD a4, a6, a4
  LA a6, tape
  ADD a6, a6, a7
  LW a6, 0(a6)
  SW a6, 0(a4)
  LA a4, output_length
  LW a4, 0(a4)
  ADDIW a4, a4, 1
  LA a6, output_length
  SW a4, 0(a6)
  JAL zero, bb15
bb28:   # loop depth 1
  LA a0, tape
  ADD a0, a0, a7
  LW a0, 0(a0)
  SLTIU a6, a0, 1
  ADDIW a4, a3, -1
  BNE a6, zero, bb31
  # implict jump to bb29
bb29:   # loop depth 1
  SLLIW a1, a4, 2
  ADDI t6, sp, 0
  ADD a1, t6, a1
  LW a1, 0(a1)
  # implict jump to bb30
bb30:   # loop depth 1
  JAL zero, bb16
bb31:   # loop depth 1
  ADD a3, a4, zero
  JAL zero, bb30
bb32:   # loop depth 1
  LA t1, tape
  ADD t1, t1, a7
  LW t1, 0(t1)
  BNE t1, zero, bb44
  # implict jump to bb33
bb33:   # loop depth 1
  ADDI t2, zero, 1
  # implict jump to bb34
bb34:   # loop depth 2
  ADDIW a1, a1, 1
  SLLIW a4, a1, 2
  LA a6, program
  ADD a4, a6, a4
  LW a4, 0(a4)
  XORI a6, a4, 93
  SLTIU a6, a6, 1
  BNE a6, zero, bb43
  # implict jump to bb35
bb35:   # loop depth 2
  # implict jump to bb36
bb36:   # loop depth 2
  XORI a4, a4, 91
  SLTIU a4, a4, 1
  BNE a4, zero, bb42
  # implict jump to bb37
bb37:   # loop depth 2
  # implict jump to bb38
bb38:   # loop depth 2
  BLT zero, t2, bb41
  # implict jump to bb39
bb39:   # loop depth 1
  # implict jump to bb40
bb40:   # loop depth 1
  JAL zero, bb17
bb41:   # loop depth 2
  JAL zero, bb34
bb42:   # loop depth 2
  ADDIW t2, t2, 1
  JAL zero, bb38
bb43:   # loop depth 2
  ADDIW t2, t2, -1
  JAL zero, bb36
bb44:   # loop depth 1
  SLLIW a4, a3, 2
  ADDI t6, sp, 0
  ADD a4, t6, a4
  SW a1, 0(a4)
  ADDIW a3, a3, 1
  JAL zero, bb40
bb45:   # loop depth 1
  LA a4, tape
  ADD a4, a4, a7
  LW a6, 0(a4)
  ADDIW a6, a6, -1
  SW a6, 0(a4)
  JAL zero, bb18
bb46:   # loop depth 1
  LA a4, tape
  ADD a4, a4, a7
  LW a6, 0(a4)
  ADDIW a6, a6, 1
  SW a6, 0(a4)
  JAL zero, bb19
bb47:   # loop depth 1
  ADDIW a2, a2, -1
  JAL zero, bb20
bb48:   # loop depth 1
  ADDIW a2, a2, 1
  JAL zero, bb21
bb49:   # loop depth 1
  JAL zero, bb1
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb51
bb51:   # loop depth 1
  XORI s0, s1, 62
  BNE s0, zero, bb117
  # implict jump to bb52
bb52:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb53
bb53:   # loop depth 1
  BNE s0, zero, bb116
  # implict jump to bb54
bb54:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb55
bb55:   # loop depth 1
  BNE s0, zero, bb115
  # implict jump to bb56
bb56:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb57
bb57:   # loop depth 1
  BNE s0, zero, bb114
  # implict jump to bb58
bb58:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb59
bb59:   # loop depth 1
  BNE s0, zero, bb113
  # implict jump to bb60
bb60:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb61
bb61:   # loop depth 1
  BNE s0, zero, bb112
  # implict jump to bb62
bb62:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb63
bb63:   # loop depth 1
  BNE s0, zero, bb111
  # implict jump to bb64
bb64:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb65
bb65:   # loop depth 1
  BNE s0, zero, bb110
  # implict jump to bb66
bb66:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb67
bb67:   # loop depth 1
  BNE s0, zero, bb109
  # implict jump to bb68
bb68:   # loop depth 0
  XORI s0, s1, 35
  BNE s0, zero, bb79
  # implict jump to bb69
bb69:   # loop depth 0
  CALL getch
  ADD s0, a0, zero
  XORI s0, s0, 105
  BNE s0, zero, bb71
  # implict jump to bb70
bb70:   # loop depth 0
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  LA s0, input_length
  LW s0, 0(s0)
  BLT zero, s0, bb76
  # implict jump to bb71
bb71:   # loop depth 0
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LA a0, output_length
  LW a0, 0(a0)
  BLT zero, a0, bb73
  # implict jump to bb72
bb72:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb73:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb74
bb74:   # loop depth 1
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
bb75:   # loop depth 1
  JAL zero, bb74
bb76:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb77
bb77:   # loop depth 1
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
bb78:   # loop depth 1
  JAL zero, bb77
bb79:   # loop depth 0
  # implict jump to bb80
bb80:   # loop depth 1
  LA s0, program_length
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s2, program
  ADD s0, s2, s0
  SW s1, 0(s0)
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb81
bb81:   # loop depth 2
  XORI s0, s1, 62
  BNE s0, zero, bb108
  # implict jump to bb82
bb82:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb83
bb83:   # loop depth 2
  BNE s0, zero, bb107
  # implict jump to bb84
bb84:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb85
bb85:   # loop depth 2
  BNE s0, zero, bb106
  # implict jump to bb86
bb86:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb87
bb87:   # loop depth 2
  BNE s0, zero, bb105
  # implict jump to bb88
bb88:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb89
bb89:   # loop depth 2
  BNE s0, zero, bb104
  # implict jump to bb90
bb90:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb91
bb91:   # loop depth 2
  BNE s0, zero, bb103
  # implict jump to bb92
bb92:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb93
bb93:   # loop depth 2
  BNE s0, zero, bb102
  # implict jump to bb94
bb94:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb95
bb95:   # loop depth 2
  BNE s0, zero, bb101
  # implict jump to bb96
bb96:   # loop depth 2
  ADD s0, zero, zero
  # implict jump to bb97
bb97:   # loop depth 2
  BNE s0, zero, bb100
  # implict jump to bb98
bb98:   # loop depth 1
  LA s0, program_length
  LW s0, 0(s0)
  ADDIW s0, s0, 1
  LA s2, program_length
  SW s0, 0(s2)
  XORI s0, s1, 35
  BNE s0, zero, bb99
  JAL zero, bb69
bb99:   # loop depth 1
  JAL zero, bb80
bb100:   # loop depth 2
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb81
bb101:   # loop depth 2
  XORI s0, s1, 35
  SLTU s0, zero, s0
  JAL zero, bb97
bb102:   # loop depth 2
  XORI s0, s1, 44
  SLTU s0, zero, s0
  JAL zero, bb95
bb103:   # loop depth 2
  XORI s0, s1, 46
  SLTU s0, zero, s0
  JAL zero, bb93
bb104:   # loop depth 2
  XORI s0, s1, 93
  SLTU s0, zero, s0
  JAL zero, bb91
bb105:   # loop depth 2
  XORI s0, s1, 91
  SLTU s0, zero, s0
  JAL zero, bb89
bb106:   # loop depth 2
  XORI s0, s1, 45
  SLTU s0, zero, s0
  JAL zero, bb87
bb107:   # loop depth 2
  XORI s0, s1, 43
  SLTU s0, zero, s0
  JAL zero, bb85
bb108:   # loop depth 2
  XORI s0, s1, 60
  SLTU s0, zero, s0
  JAL zero, bb83
bb109:   # loop depth 1
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb51
bb110:   # loop depth 1
  XORI s0, s1, 35
  SLTU s0, zero, s0
  JAL zero, bb67
bb111:   # loop depth 1
  XORI s0, s1, 44
  SLTU s0, zero, s0
  JAL zero, bb65
bb112:   # loop depth 1
  XORI s0, s1, 46
  SLTU s0, zero, s0
  JAL zero, bb63
bb113:   # loop depth 1
  XORI s0, s1, 93
  SLTU s0, zero, s0
  JAL zero, bb61
bb114:   # loop depth 1
  XORI s0, s1, 91
  SLTU s0, zero, s0
  JAL zero, bb59
bb115:   # loop depth 1
  XORI s0, s1, 45
  SLTU s0, zero, s0
  JAL zero, bb57
bb116:   # loop depth 1
  XORI s0, s1, 43
  SLTU s0, zero, s0
  JAL zero, bb55
bb117:   # loop depth 1
  XORI s0, s1, 60
  SLTU s0, zero, s0
  JAL zero, bb53
