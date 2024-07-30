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
  ADDIW t0, t0, 1920
  ADD sp, sp, t0
  SD ra, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD s10, 112(sp)
  SD s11, 120(sp)
  ADDI t4, zero, 512
  SW t4, 0(sp)
  # implict jump to bb1
bb1:
  LW t4, 0(sp)
  ADD s1, t4, zero
  ADDI s2, zero, 1
  SUBW t4, s1, s2
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLLIW s2, t4, 2
  ADDI t5, sp, 128
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  LW t4, 4(sp)
  BNE t4, zero, bb50
  # implict jump to bb2
bb2:
  LA s2, output_length
  SW zero, 0(s2)
  LA s2, program_length
  LW s2, 0(s2)
  BLT zero, s2, bb4
  # implict jump to bb3
bb3:
  LD ra, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD s10, 112(sp)
  LD s11, 120(sp)
  LUI t0, 1
  ADDIW t0, t0, -1920
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb4:
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb5
bb5:
  LW t4, 8(sp)
  ADD s9, t4, zero
  LW t4, 12(sp)
  ADD s10, t4, zero
  LW t4, 16(sp)
  ADD s11, t4, zero
  LW t4, 20(sp)
  ADD t0, t4, zero
  ADD t1, s4, zero
  ADD t2, s3, zero
  ADD a0, s2, zero
  SLLIW a1, a0, 2
  LA a2, program
  ADD a1, a2, a1
  LW a1, 0(a1)
  XORI a2, a1, 62
  SLTIU a2, a2, 1
  BNE a2, zero, bb49
  # implict jump to bb6
bb6:
  XORI a2, a1, 60
  SLTIU a2, a2, 1
  BNE a2, zero, bb48
  # implict jump to bb7
bb7:
  XORI a2, a1, 43
  SLTIU a2, a2, 1
  BNE a2, zero, bb47
  # implict jump to bb8
bb8:
  XORI a2, a1, 45
  SLTIU a2, a2, 1
  BNE a2, zero, bb46
  # implict jump to bb9
bb9:
  XORI a2, a1, 91
  SLTIU a2, a2, 1
  BNE a2, zero, bb32
  # implict jump to bb10
bb10:
  XORI a2, a1, 93
  SLTIU a2, a2, 1
  BNE a2, zero, bb28
  # implict jump to bb11
bb11:
  XORI a2, a1, 46
  SLTIU a2, a2, 1
  BNE a2, zero, bb27
  # implict jump to bb12
bb12:
  XORI a1, a1, 44
  SLTIU a1, a1, 1
  BNE a1, zero, bb23
  # implict jump to bb13
bb13:
  ADD a1, t1, zero
  # implict jump to bb14
bb14:
  # implict jump to bb15
bb15:
  ADD a2, s9, zero
  ADD a3, s11, zero
  ADD a4, a0, zero
  # implict jump to bb16
bb16:
  ADD a5, s10, zero
  ADD a6, t0, zero
  # implict jump to bb17
bb17:
  ADD s0, a2, zero
  ADD s1, a5, zero
  ADD s5, a3, zero
  ADD s6, a6, zero
  ADD s7, a1, zero
  ADD s8, a4, zero
  # implict jump to bb18
bb18:
  # implict jump to bb19
bb19:
  ADD a1, t2, zero
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  ADDIW s8, s8, 1
  LA s9, program_length
  LW s9, 0(s9)
  BLT s8, s9, bb22
  JAL zero, bb3
bb22:
  ADD s2, s8, zero
  ADD s3, a1, zero
  ADD s4, s7, zero
  ADD t4, s6, zero
  SW t4, 20(sp)
  ADD t4, s5, zero
  SW t4, 16(sp)
  ADD t4, s1, zero
  SW t4, 12(sp)
  ADD t4, s0, zero
  SW t4, 8(sp)
  JAL zero, bb5
bb23:
  LA a2, input_length
  LW a2, 0(a2)
  SLT a2, t1, a2
  XORI a2, a2, 1
  BNE a2, zero, bb26
  # implict jump to bb24
bb24:
  SLLIW a2, t2, 2
  LA a3, tape
  ADD a2, a3, a2
  SLLIW a3, t1, 2
  LA a4, input
  ADD a3, a4, a3
  LW a3, 0(a3)
  SW a3, 0(a2)
  ADDIW a2, t1, 1
  # implict jump to bb25
bb25:
  ADD a1, a2, zero
  JAL zero, bb14
bb26:
  SLLIW a3, t2, 2
  LA a4, tape
  ADD a3, a4, a3
  SW zero, 0(a3)
  ADD a2, t1, zero
  JAL zero, bb25
bb27:
  LA a2, output_length
  LW a2, 0(a2)
  SLLIW a2, a2, 2
  LA a3, output
  ADD a2, a3, a2
  SLLIW a3, t2, 2
  LA a4, tape
  ADD a3, a4, a3
  LW a3, 0(a3)
  SW a3, 0(a2)
  LA a2, output_length
  LW a2, 0(a2)
  ADDIW a2, a2, 1
  LA a3, output_length
  SW a2, 0(a3)
  ADD a1, t1, zero
  JAL zero, bb15
bb28:
  SLLIW a5, t2, 2
  LA a6, tape
  ADD a5, a6, a5
  LW a5, 0(a5)
  SLTIU a6, a5, 1
  BNE a6, zero, bb31
  # implict jump to bb29
bb29:
  ADDI a6, zero, 1
  SUBW a6, s11, a6
  SLLIW a6, a6, 2
  ADDI a7, sp, 128
  ADD a6, a7, a6
  LW a6, 0(a6)
  ADD a7, s11, zero
  # implict jump to bb30
bb30:
  ADD a2, a5, zero
  ADD a3, a7, zero
  ADD a1, t1, zero
  ADD a4, a6, zero
  JAL zero, bb16
bb31:
  ADDI t6, zero, 1
  SUBW t6, s11, t6
  ADD a7, t6, zero
  ADD a6, a0, zero
  JAL zero, bb30
bb32:
  SLLIW a7, t2, 2
  LA t6, tape
  ADD a7, t6, a7
  LW a7, 0(a7)
  BNE a7, zero, bb45
  # implict jump to bb33
bb33:
  ADD t6, a0, zero
  ADDI s0, zero, 1
  # implict jump to bb34
bb34:
  ADD s1, s0, zero
  ADD s8, t6, zero
  ADDIW s8, s8, 1
  SLLIW s7, s8, 2
  LA s6, program
  ADD s6, s6, s7
  LW s6, 0(s6)
  XORI s7, s6, 93
  SLTIU s7, s7, 1
  BNE s7, zero, bb44
  # implict jump to bb35
bb35:
  ADD s7, s1, zero
  # implict jump to bb36
bb36:
  XORI s1, s6, 91
  SLTIU s1, s1, 1
  BNE s1, zero, bb43
  # implict jump to bb37
bb37:
  ADD s1, s7, zero
  # implict jump to bb38
bb38:
  BLT zero, s1, bb42
  # implict jump to bb39
bb39:
  # implict jump to bb40
bb40:
  ADD s5, s1, zero
  ADD s6, s11, zero
  ADD s7, s8, zero
  # implict jump to bb41
bb41:
  ADD a2, s9, zero
  ADD a5, s5, zero
  ADD a3, s6, zero
  ADD a6, a7, zero
  ADD a1, t1, zero
  ADD a4, s7, zero
  JAL zero, bb17
bb42:
  ADD t6, s8, zero
  ADD s0, s1, zero
  JAL zero, bb34
bb43:
  ADDIW s5, s7, 1
  ADD s1, s5, zero
  JAL zero, bb38
bb44:
  ADDI s5, zero, 1
  SUBW s1, s1, s5
  ADD s7, s1, zero
  JAL zero, bb36
bb45:
  SLLIW s0, s11, 2
  ADDI t5, sp, 128
  ADD s0, t5, s0
  SW a0, 0(s0)
  ADDIW s0, s11, 1
  ADD s5, s10, zero
  ADD s6, s0, zero
  ADD s7, a0, zero
  JAL zero, bb41
bb46:
  SLLIW a1, t2, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a2, 0(a1)
  ADDI a3, zero, 1
  SUBW a2, a2, a3
  SW a2, 0(a1)
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s5, s11, zero
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD s8, a0, zero
  JAL zero, bb18
bb47:
  SLLIW a1, t2, 2
  LA a2, tape
  ADD a1, a2, a1
  LW a2, 0(a1)
  ADDIW a2, a2, 1
  SW a2, 0(a1)
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s5, s11, zero
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD s8, a0, zero
  JAL zero, bb19
bb48:
  ADDI a2, zero, 1
  SUBW a2, t2, a2
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s5, s11, zero
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD a1, a2, zero
  ADD s8, a0, zero
  JAL zero, bb20
bb49:
  ADDIW t2, t2, 1
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s5, s11, zero
  ADD s6, t0, zero
  ADD s7, t1, zero
  ADD a1, t2, zero
  ADD s8, a0, zero
  JAL zero, bb21
bb50:
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  JAL zero, bb1
main:
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
  CALL getch
  ADD s0, a0, zero
  # implict jump to bb52
bb52:
  ADD s1, s0, zero
  XORI s2, s1, 62
  BNE s2, zero, bb118
  # implict jump to bb53
bb53:
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  BNE s2, zero, bb117
  # implict jump to bb55
bb55:
  ADD s2, zero, zero
  # implict jump to bb56
bb56:
  BNE s2, zero, bb116
  # implict jump to bb57
bb57:
  ADD s2, zero, zero
  # implict jump to bb58
bb58:
  BNE s2, zero, bb115
  # implict jump to bb59
bb59:
  ADD s2, zero, zero
  # implict jump to bb60
bb60:
  BNE s2, zero, bb114
  # implict jump to bb61
bb61:
  ADD s2, zero, zero
  # implict jump to bb62
bb62:
  BNE s2, zero, bb113
  # implict jump to bb63
bb63:
  ADD s2, zero, zero
  # implict jump to bb64
bb64:
  BNE s2, zero, bb112
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  BNE s2, zero, bb111
  # implict jump to bb67
bb67:
  ADD s2, zero, zero
  # implict jump to bb68
bb68:
  BNE s2, zero, bb110
  # implict jump to bb69
bb69:
  XORI s2, s1, 35
  BNE s2, zero, bb80
  # implict jump to bb70
bb70:
  CALL getch
  ADD s4, a0, zero
  XORI s4, s4, 105
  BNE s4, zero, bb72
  # implict jump to bb71
bb71:
  CALL getint
  ADD s4, a0, zero
  LA s5, input_length
  SW s4, 0(s5)
  CALL getch
  LA s4, input_length
  LW s4, 0(s4)
  BLT zero, s4, bb77
  # implict jump to bb72
bb72:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  LA s4, output_length
  LW s4, 0(s4)
  BLT zero, s4, bb74
  # implict jump to bb73
bb73:
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
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb74:
  ADD s4, zero, zero
  # implict jump to bb75
bb75:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  LA s7, output
  ADD s6, s7, s6
  LW s6, 0(s6)
  ADD a0, s6, zero
  CALL putch
  ADDIW s5, s5, 1
  LA s6, output_length
  LW s6, 0(s6)
  BLT s5, s6, bb76
  JAL zero, bb73
bb76:
  ADD s4, s5, zero
  JAL zero, bb75
bb77:
  ADD s4, zero, zero
  # implict jump to bb78
bb78:
  ADD s5, s4, zero
  SLLIW s6, s5, 2
  LA s7, input
  ADD s6, s7, s6
  CALL getch
  ADD s7, a0, zero
  SW s7, 0(s6)
  ADDIW s5, s5, 1
  LA s6, input_length
  LW s6, 0(s6)
  BLT s5, s6, bb79
  JAL zero, bb72
bb79:
  ADD s4, s5, zero
  JAL zero, bb78
bb80:
  # implict jump to bb81
bb81:
  ADD s2, s1, zero
  LA s3, program_length
  LW s3, 0(s3)
  SLLIW s3, s3, 2
  LA s4, program
  ADD s3, s4, s3
  SW s2, 0(s3)
  CALL getch
  ADD s2, a0, zero
  # implict jump to bb82
bb82:
  ADD s3, s2, zero
  XORI s4, s3, 62
  BNE s4, zero, bb109
  # implict jump to bb83
bb83:
  ADD s4, zero, zero
  # implict jump to bb84
bb84:
  BNE s4, zero, bb108
  # implict jump to bb85
bb85:
  ADD s4, zero, zero
  # implict jump to bb86
bb86:
  BNE s4, zero, bb107
  # implict jump to bb87
bb87:
  ADD s4, zero, zero
  # implict jump to bb88
bb88:
  BNE s4, zero, bb106
  # implict jump to bb89
bb89:
  ADD s4, zero, zero
  # implict jump to bb90
bb90:
  BNE s4, zero, bb105
  # implict jump to bb91
bb91:
  ADD s4, zero, zero
  # implict jump to bb92
bb92:
  BNE s4, zero, bb104
  # implict jump to bb93
bb93:
  ADD s4, zero, zero
  # implict jump to bb94
bb94:
  BNE s4, zero, bb103
  # implict jump to bb95
bb95:
  ADD s4, zero, zero
  # implict jump to bb96
bb96:
  BNE s4, zero, bb102
  # implict jump to bb97
bb97:
  ADD s4, zero, zero
  # implict jump to bb98
bb98:
  BNE s4, zero, bb101
  # implict jump to bb99
bb99:
  LA s4, program_length
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, program_length
  SW s4, 0(s5)
  XORI s4, s3, 35
  BNE s4, zero, bb100
  JAL zero, bb70
bb100:
  ADD s1, s3, zero
  JAL zero, bb81
bb101:
  CALL getch
  ADD s1, a0, zero
  ADD s2, s1, zero
  JAL zero, bb82
bb102:
  XORI s5, s3, 35
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb98
bb103:
  XORI s5, s3, 44
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb96
bb104:
  XORI s5, s3, 46
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb94
bb105:
  XORI s5, s3, 93
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb92
bb106:
  XORI s5, s3, 91
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb90
bb107:
  XORI s5, s3, 45
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb88
bb108:
  XORI s5, s3, 43
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb86
bb109:
  XORI s5, s3, 60
  SLTU s5, zero, s5
  ADD s4, s5, zero
  JAL zero, bb84
bb110:
  CALL getch
  ADD s0, a0, zero
  JAL zero, bb52
bb111:
  XORI s3, s1, 35
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb68
bb112:
  XORI s3, s1, 44
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb66
bb113:
  XORI s3, s1, 46
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb64
bb114:
  XORI s3, s1, 93
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb62
bb115:
  XORI s3, s1, 91
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb60
bb116:
  XORI s3, s1, 45
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb58
bb117:
  XORI s3, s1, 43
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb56
bb118:
  XORI s3, s1, 60
  SLTU s3, zero, s3
  ADD s2, s3, zero
  JAL zero, bb54
