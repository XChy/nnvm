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
  ADD s0, zero, zero
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  LA s2, output_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  SLLIW s2, s1, 2
  LA s3, output
  ADD s4, s3, s2
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
run_program:
  LUI t0, 1048575
  ADDIW t0, t0, 1904
  ADD sp, sp, t0
  SD ra, 40(sp)
  SD s0, 48(sp)
  SD s1, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s7, 104(sp)
  SD s8, 112(sp)
  SD s9, 120(sp)
  SD s10, 128(sp)
  SD s11, 136(sp)
  ADDI t4, zero, 512
  SW t4, 0(sp)
  # implict jump to bb5
bb5:
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  XOR s2, t4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb52
  # implict jump to bb6
bb6:
  LA s2, output_length
  SW zero, 0(s2)
  ADD t4, zero, zero
  SW t4, 32(sp)
  ADD t4, zero, zero
  SW t4, 28(sp)
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, zero, zero
  SW t4, 20(sp)
  ADD t4, zero, zero
  SW t4, 16(sp)
  ADD t4, zero, zero
  SW t4, 12(sp)
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb7
bb7:
  LW t4, 8(sp)
  ADD s9, t4, zero
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 36(sp)
  LW t4, 16(sp)
  ADD s11, t4, zero
  LW t4, 20(sp)
  ADD t0, t4, zero
  LW t4, 24(sp)
  ADD t1, t4, zero
  LW t4, 28(sp)
  ADD t2, t4, zero
  LW t4, 32(sp)
  ADD a0, t4, zero
  LA a1, program_length
  LW a2, 0(a1)
  LW t4, 36(sp)
  SLT a1, t4, a2
  BNE a1, zero, bb9
  # implict jump to bb8
bb8:
  LD ra, 40(sp)
  LD s0, 48(sp)
  LD s1, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s7, 104(sp)
  LD s8, 112(sp)
  LD s9, 120(sp)
  LD s10, 128(sp)
  LD s11, 136(sp)
  LUI t0, 1
  ADDIW t0, t0, -1904
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  LW t4, 36(sp)
  SLLIW a1, t4, 2
  LA a2, program
  ADD a3, a2, a1
  LW a1, 0(a3)
  XORI a2, a1, 62
  SLTIU a3, a2, 1
  BNE a3, zero, bb51
  # implict jump to bb10
bb10:
  XORI a2, a1, 60
  SLTIU a3, a2, 1
  BNE a3, zero, bb50
  # implict jump to bb11
bb11:
  XORI a2, a1, 43
  SLTIU a3, a2, 1
  BNE a3, zero, bb49
  # implict jump to bb12
bb12:
  XORI a2, a1, 45
  SLTIU a3, a2, 1
  BNE a3, zero, bb48
  # implict jump to bb13
bb13:
  XORI a2, a1, 91
  SLTIU a3, a2, 1
  BNE a3, zero, bb35
  # implict jump to bb14
bb14:
  XORI a2, a1, 93
  SLTIU a3, a2, 1
  BNE a3, zero, bb31
  # implict jump to bb15
bb15:
  XORI a2, a1, 46
  SLTIU a3, a2, 1
  BNE a3, zero, bb30
  # implict jump to bb16
bb16:
  XORI a2, a1, 44
  SLTIU a1, a2, 1
  BNE a1, zero, bb26
  # implict jump to bb17
bb17:
  ADD a1, s11, zero
  # implict jump to bb18
bb18:
  ADD a2, a1, zero
  ADD a1, a2, zero
  # implict jump to bb19
bb19:
  ADD a2, a1, zero
  ADD a1, a0, zero
  ADD a3, t1, zero
  ADD a4, a2, zero
  LW t4, 36(sp)
  ADD a2, t4, zero
  # implict jump to bb20
bb20:
  ADD s0, a2, zero
  ADD a2, a4, zero
  ADD a4, a3, zero
  ADD a3, a1, zero
  ADD a1, a3, zero
  ADD a3, t2, zero
  ADD a5, a4, zero
  ADD a4, t0, zero
  ADD a6, a2, zero
  ADD a2, s0, zero
  # implict jump to bb21
bb21:
  ADD s0, a2, zero
  ADD s1, a6, zero
  ADD s2, a4, zero
  ADD s3, a5, zero
  ADD s4, a3, zero
  ADD s5, a1, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  # implict jump to bb22
bb22:
  ADD s0, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  # implict jump to bb23
bb23:
  ADD s0, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD s0, s9, zero
  # implict jump to bb24
bb24:
  ADD s7, s0, zero
  ADD s0, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADD s6, s5, zero
  ADD s5, s4, zero
  ADD s4, s3, zero
  ADD s3, s2, zero
  ADD s2, s1, zero
  ADD s1, s0, zero
  ADD s0, s7, zero
  # implict jump to bb25
bb25:
  ADD s7, s0, zero
  ADD s0, s1, zero
  ADD s1, s2, zero
  ADD s2, s3, zero
  ADD s3, s4, zero
  ADD s4, s5, zero
  ADD s5, s6, zero
  ADDIW s6, s0, 1
  ADD t4, s5, zero
  SW t4, 32(sp)
  ADD t4, s4, zero
  SW t4, 28(sp)
  ADD t4, s3, zero
  SW t4, 24(sp)
  ADD t4, s2, zero
  SW t4, 20(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 12(sp)
  ADD t4, s7, zero
  SW t4, 8(sp)
  JAL zero, bb7
bb26:
  LA a2, input_length
  LW a3, 0(a2)
  SLT a2, s11, a3
  XORI a3, a2, 1
  BNE a3, zero, bb29
  # implict jump to bb27
bb27:
  SLLIW a2, s9, 2
  LA a3, tape
  ADD a4, a3, a2
  SLLIW a2, s11, 2
  LA a3, input
  ADD a5, a3, a2
  LW a2, 0(a5)
  SW a2, 0(a4)
  ADDIW a2, s11, 1
  ADD a3, a2, zero
  # implict jump to bb28
bb28:
  ADD a2, a3, zero
  ADD a1, a2, zero
  JAL zero, bb18
bb29:
  SLLIW a2, s9, 2
  LA a4, tape
  ADD a5, a4, a2
  SW zero, 0(a5)
  ADD a3, s11, zero
  JAL zero, bb28
bb30:
  LA a2, output_length
  LW a3, 0(a2)
  SLLIW a2, a3, 2
  LA a3, output
  ADD a4, a3, a2
  SLLIW a2, s9, 2
  LA a3, tape
  ADD a5, a3, a2
  LW a2, 0(a5)
  SW a2, 0(a4)
  LA a2, output_length
  LW a3, 0(a2)
  ADDIW a2, a3, 1
  LA a3, output_length
  SW a2, 0(a3)
  ADD a1, s11, zero
  JAL zero, bb19
bb31:
  SLLIW a5, s9, 2
  LA a6, tape
  ADD a7, a6, a5
  LW a5, 0(a7)
  XOR a6, a5, zero
  SLTIU a7, a6, 1
  BNE a7, zero, bb34
  # implict jump to bb32
bb32:
  ADDI a6, zero, 1
  SUBW a7, t1, a6
  SLLIW a6, a7, 2
  ADDI a7, sp, 144
  ADD a7, a7, a6
  LW a6, 0(a7)
  ADD a7, t1, zero
  ADD t6, a6, zero
  # implict jump to bb33
bb33:
  ADD s0, t6, zero
  ADD a6, a7, zero
  ADD a1, a5, zero
  ADD a3, a6, zero
  ADD a4, s11, zero
  ADD a2, s0, zero
  JAL zero, bb20
bb34:
  ADDI a6, zero, 1
  SUBW s0, t1, a6
  ADD a7, s0, zero
  LW t4, 36(sp)
  ADD t6, t4, zero
  JAL zero, bb33
bb35:
  SLLIW s0, s9, 2
  LA a7, tape
  ADD t6, a7, s0
  LW s0, 0(t6)
  XOR a7, s0, zero
  SLTU t6, zero, a7
  BNE t6, zero, bb47
  # implict jump to bb36
bb36:
  ADDI a7, zero, 1
  LW t4, 36(sp)
  ADD t6, t4, zero
  # implict jump to bb37
bb37:
  ADD s1, t6, zero
  ADD s8, a7, zero
  SLT s7, zero, s8
  BNE s7, zero, bb40
  # implict jump to bb38
bb38:
  ADD s7, s8, zero
  ADD s6, t1, zero
  ADD s5, s1, zero
  # implict jump to bb39
bb39:
  ADD s1, s5, zero
  ADD s2, s6, zero
  ADD s3, s7, zero
  ADD a1, a0, zero
  ADD a3, s3, zero
  ADD a5, s2, zero
  ADD a4, s0, zero
  ADD a6, s11, zero
  ADD a2, s1, zero
  JAL zero, bb21
bb40:
  ADDIW s4, s1, 1
  SLLIW s1, s4, 2
  LA s3, program
  ADD s2, s3, s1
  LW s1, 0(s2)
  XORI s3, s1, 93
  SLTIU s1, s3, 1
  BNE s1, zero, bb46
  # implict jump to bb41
bb41:
  ADD s1, s8, zero
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  LW s1, 0(s2)
  XORI s2, s1, 91
  SLTIU s1, s2, 1
  BNE s1, zero, bb45
  # implict jump to bb43
bb43:
  ADD s1, s3, zero
  # implict jump to bb44
bb44:
  ADD s2, s1, zero
  ADD a7, s2, zero
  ADD t6, s4, zero
  JAL zero, bb37
bb45:
  ADDIW s2, s3, 1
  ADD s1, s2, zero
  JAL zero, bb44
bb46:
  ADDI s3, zero, 1
  SUBW s10, s8, s3
  ADD s1, s10, zero
  JAL zero, bb42
bb47:
  SLLIW s1, t1, 2
  ADDI t5, sp, 144
  ADD s2, t5, s1
  LW t4, 36(sp)
  SW t4, 0(s2)
  ADDIW s1, t1, 1
  ADD s7, t2, zero
  ADD s6, s1, zero
  LW t4, 36(sp)
  ADD s5, t4, zero
  JAL zero, bb39
bb48:
  SLLIW s0, s9, 2
  LA s7, tape
  ADD s8, s7, s0
  LW s0, 0(s8)
  ADDI s7, zero, 1
  SUBW s10, s0, s7
  SW s10, 0(s8)
  ADD s6, a0, zero
  ADD s5, t2, zero
  ADD s4, t1, zero
  ADD s3, t0, zero
  ADD s2, s11, zero
  LW t4, 36(sp)
  ADD s1, t4, zero
  JAL zero, bb22
bb49:
  SLLIW s0, s9, 2
  LA s7, tape
  ADD s8, s7, s0
  LW s0, 0(s8)
  ADDIW s7, s0, 1
  SW s7, 0(s8)
  ADD s6, a0, zero
  ADD s5, t2, zero
  ADD s4, t1, zero
  ADD s3, t0, zero
  ADD s2, s11, zero
  LW t4, 36(sp)
  ADD s1, t4, zero
  JAL zero, bb23
bb50:
  ADDI s7, zero, 1
  SUBW s8, s9, s7
  ADD s6, a0, zero
  ADD s5, t2, zero
  ADD s4, t1, zero
  ADD s3, t0, zero
  ADD s2, s11, zero
  LW t4, 36(sp)
  ADD s1, t4, zero
  ADD s0, s8, zero
  JAL zero, bb24
bb51:
  ADDIW s7, s9, 1
  ADD s6, a0, zero
  ADD s5, t2, zero
  ADD s4, t1, zero
  ADD s3, t0, zero
  ADD s2, s11, zero
  LW t4, 36(sp)
  ADD s1, t4, zero
  ADD s0, s7, zero
  JAL zero, bb25
bb52:
  ADDI s0, zero, 1
  LW t4, 4(sp)
  SUBW s1, t4, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 144
  ADD s2, t5, s0
  SW zero, 0(s2)
  ADD t4, s1, zero
  SW t4, 0(sp)
  JAL zero, bb5
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
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  # implict jump to bb54
bb54:
  ADD s0, s1, zero
  XORI s2, s0, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb115
  # implict jump to bb55
bb55:
  ADD s2, zero, zero
  # implict jump to bb56
bb56:
  ADD s3, s2, zero
  BNE s3, zero, bb114
  # implict jump to bb57
bb57:
  ADD s2, zero, zero
  # implict jump to bb58
bb58:
  ADD s3, s2, zero
  BNE s3, zero, bb113
  # implict jump to bb59
bb59:
  ADD s2, zero, zero
  # implict jump to bb60
bb60:
  ADD s3, s2, zero
  BNE s3, zero, bb112
  # implict jump to bb61
bb61:
  ADD s2, zero, zero
  # implict jump to bb62
bb62:
  ADD s3, s2, zero
  BNE s3, zero, bb111
  # implict jump to bb63
bb63:
  ADD s2, zero, zero
  # implict jump to bb64
bb64:
  ADD s3, s2, zero
  BNE s3, zero, bb110
  # implict jump to bb65
bb65:
  ADD s2, zero, zero
  # implict jump to bb66
bb66:
  ADD s3, s2, zero
  BNE s3, zero, bb109
  # implict jump to bb67
bb67:
  ADD s2, zero, zero
  # implict jump to bb68
bb68:
  ADD s3, s2, zero
  BNE s3, zero, bb108
  # implict jump to bb69
bb69:
  ADD s2, zero, zero
  # implict jump to bb70
bb70:
  ADD s3, s2, zero
  BNE s3, zero, bb107
  # implict jump to bb71
bb71:
  ADD s2, s0, zero
  # implict jump to bb72
bb72:
  ADD s0, s2, zero
  XORI s3, s0, 35
  SLTU s4, zero, s3
  BNE s4, zero, bb79
  # implict jump to bb73
bb73:
  CALL getch
  ADD s3, a0, zero
  XORI s4, s3, 105
  SLTU s3, zero, s4
  BNE s3, zero, bb78
  # implict jump to bb74
bb74:
  CALL getint
  ADD s3, a0, zero
  LA s4, input_length
  SW s3, 0(s4)
  CALL getch
  ADD s3, a0, zero
  ADD s3, zero, zero
  # implict jump to bb75
bb75:
  ADD s4, s3, zero
  LA s5, input_length
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb77
  # implict jump to bb76
bb76:
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
bb77:
  SLLIW s5, s4, 2
  LA s6, input
  ADD s7, s6, s5
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb75
bb78:
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
bb79:
  LA s3, program_length
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  LA s4, program
  ADD s5, s4, s3
  SW s0, 0(s5)
  CALL getch
  ADD s0, a0, zero
  ADD s3, s0, zero
  # implict jump to bb80
bb80:
  ADD s0, s3, zero
  XORI s4, s0, 62
  SLTU s5, zero, s4
  BNE s5, zero, bb106
  # implict jump to bb81
bb81:
  ADD s4, zero, zero
  # implict jump to bb82
bb82:
  ADD s5, s4, zero
  BNE s5, zero, bb105
  # implict jump to bb83
bb83:
  ADD s4, zero, zero
  # implict jump to bb84
bb84:
  ADD s5, s4, zero
  BNE s5, zero, bb104
  # implict jump to bb85
bb85:
  ADD s4, zero, zero
  # implict jump to bb86
bb86:
  ADD s5, s4, zero
  BNE s5, zero, bb103
  # implict jump to bb87
bb87:
  ADD s4, zero, zero
  # implict jump to bb88
bb88:
  ADD s5, s4, zero
  BNE s5, zero, bb102
  # implict jump to bb89
bb89:
  ADD s4, zero, zero
  # implict jump to bb90
bb90:
  ADD s5, s4, zero
  BNE s5, zero, bb101
  # implict jump to bb91
bb91:
  ADD s4, zero, zero
  # implict jump to bb92
bb92:
  ADD s5, s4, zero
  BNE s5, zero, bb100
  # implict jump to bb93
bb93:
  ADD s4, zero, zero
  # implict jump to bb94
bb94:
  ADD s5, s4, zero
  BNE s5, zero, bb99
  # implict jump to bb95
bb95:
  ADD s4, zero, zero
  # implict jump to bb96
bb96:
  ADD s5, s4, zero
  BNE s5, zero, bb98
  # implict jump to bb97
bb97:
  LA s4, program_length
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, program_length
  SW s4, 0(s5)
  ADD s2, s0, zero
  JAL zero, bb72
bb98:
  CALL getch
  ADD s0, a0, zero
  ADD s3, s0, zero
  JAL zero, bb80
bb99:
  XORI s5, s0, 35
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb96
bb100:
  XORI s5, s0, 44
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb94
bb101:
  XORI s5, s0, 46
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb92
bb102:
  XORI s5, s0, 93
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb90
bb103:
  XORI s5, s0, 91
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb88
bb104:
  XORI s5, s0, 45
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb86
bb105:
  XORI s5, s0, 43
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb84
bb106:
  XORI s5, s0, 60
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb82
bb107:
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb54
bb108:
  XORI s3, s0, 35
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb70
bb109:
  XORI s3, s0, 44
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb68
bb110:
  XORI s3, s0, 46
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb66
bb111:
  XORI s3, s0, 93
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb64
bb112:
  XORI s3, s0, 91
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb62
bb113:
  XORI s3, s0, 45
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb60
bb114:
  XORI s3, s0, 43
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb58
bb115:
  XORI s3, s0, 60
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb56
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
  ADD s1, s0, zero
  # implict jump to bb117
bb117:
  ADD s0, s1, zero
  XORI s2, s0, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb180
  # implict jump to bb118
bb118:
  ADD s2, zero, zero
  # implict jump to bb119
bb119:
  ADD s3, s2, zero
  BNE s3, zero, bb179
  # implict jump to bb120
bb120:
  ADD s2, zero, zero
  # implict jump to bb121
bb121:
  ADD s3, s2, zero
  BNE s3, zero, bb178
  # implict jump to bb122
bb122:
  ADD s2, zero, zero
  # implict jump to bb123
bb123:
  ADD s3, s2, zero
  BNE s3, zero, bb177
  # implict jump to bb124
bb124:
  ADD s2, zero, zero
  # implict jump to bb125
bb125:
  ADD s3, s2, zero
  BNE s3, zero, bb176
  # implict jump to bb126
bb126:
  ADD s2, zero, zero
  # implict jump to bb127
bb127:
  ADD s3, s2, zero
  BNE s3, zero, bb175
  # implict jump to bb128
bb128:
  ADD s2, zero, zero
  # implict jump to bb129
bb129:
  ADD s3, s2, zero
  BNE s3, zero, bb174
  # implict jump to bb130
bb130:
  ADD s2, zero, zero
  # implict jump to bb131
bb131:
  ADD s3, s2, zero
  BNE s3, zero, bb173
  # implict jump to bb132
bb132:
  ADD s2, zero, zero
  # implict jump to bb133
bb133:
  ADD s3, s2, zero
  BNE s3, zero, bb172
  # implict jump to bb134
bb134:
  ADD s2, s0, zero
  # implict jump to bb135
bb135:
  ADD s0, s2, zero
  XORI s3, s0, 35
  SLTU s4, zero, s3
  BNE s4, zero, bb144
  # implict jump to bb136
bb136:
  CALL getch
  ADD s3, a0, zero
  XORI s4, s3, 105
  SLTU s3, zero, s4
  BNE s3, zero, bb139
  # implict jump to bb137
bb137:
  CALL getint
  ADD s3, a0, zero
  LA s4, input_length
  SW s3, 0(s4)
  CALL getch
  ADD s3, a0, zero
  ADD s3, zero, zero
  # implict jump to bb138
bb138:
  ADD s4, s3, zero
  LA s5, input_length
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb143
  # implict jump to bb139
bb139:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  ADD s3, zero, zero
  # implict jump to bb140
bb140:
  ADD s4, s3, zero
  LA s5, output_length
  LW s6, 0(s5)
  SLT s5, s4, s6
  BNE s5, zero, bb142
  # implict jump to bb141
bb141:
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
bb142:
  SLLIW s5, s4, 2
  LA s6, output
  ADD s7, s6, s5
  LW s5, 0(s7)
  ADD a0, s5, zero
  CALL putch
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb140
bb143:
  SLLIW s5, s4, 2
  LA s6, input
  ADD s7, s6, s5
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s7)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb138
bb144:
  LA s3, program_length
  LW s4, 0(s3)
  SLLIW s3, s4, 2
  LA s4, program
  ADD s5, s4, s3
  SW s0, 0(s5)
  CALL getch
  ADD s0, a0, zero
  ADD s3, s0, zero
  # implict jump to bb145
bb145:
  ADD s0, s3, zero
  XORI s4, s0, 62
  SLTU s5, zero, s4
  BNE s5, zero, bb171
  # implict jump to bb146
bb146:
  ADD s4, zero, zero
  # implict jump to bb147
bb147:
  ADD s5, s4, zero
  BNE s5, zero, bb170
  # implict jump to bb148
bb148:
  ADD s4, zero, zero
  # implict jump to bb149
bb149:
  ADD s5, s4, zero
  BNE s5, zero, bb169
  # implict jump to bb150
bb150:
  ADD s4, zero, zero
  # implict jump to bb151
bb151:
  ADD s5, s4, zero
  BNE s5, zero, bb168
  # implict jump to bb152
bb152:
  ADD s4, zero, zero
  # implict jump to bb153
bb153:
  ADD s5, s4, zero
  BNE s5, zero, bb167
  # implict jump to bb154
bb154:
  ADD s4, zero, zero
  # implict jump to bb155
bb155:
  ADD s5, s4, zero
  BNE s5, zero, bb166
  # implict jump to bb156
bb156:
  ADD s4, zero, zero
  # implict jump to bb157
bb157:
  ADD s5, s4, zero
  BNE s5, zero, bb165
  # implict jump to bb158
bb158:
  ADD s4, zero, zero
  # implict jump to bb159
bb159:
  ADD s5, s4, zero
  BNE s5, zero, bb164
  # implict jump to bb160
bb160:
  ADD s4, zero, zero
  # implict jump to bb161
bb161:
  ADD s5, s4, zero
  BNE s5, zero, bb163
  # implict jump to bb162
bb162:
  LA s4, program_length
  LW s5, 0(s4)
  ADDIW s4, s5, 1
  LA s5, program_length
  SW s4, 0(s5)
  ADD s2, s0, zero
  JAL zero, bb135
bb163:
  CALL getch
  ADD s0, a0, zero
  ADD s3, s0, zero
  JAL zero, bb145
bb164:
  XORI s5, s0, 35
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb161
bb165:
  XORI s5, s0, 44
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb159
bb166:
  XORI s5, s0, 46
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb157
bb167:
  XORI s5, s0, 93
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb155
bb168:
  XORI s5, s0, 91
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb153
bb169:
  XORI s5, s0, 45
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb151
bb170:
  XORI s5, s0, 43
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb149
bb171:
  XORI s5, s0, 60
  SLTU s6, zero, s5
  ADD s4, s6, zero
  JAL zero, bb147
bb172:
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb117
bb173:
  XORI s3, s0, 35
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb133
bb174:
  XORI s3, s0, 44
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb131
bb175:
  XORI s3, s0, 46
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb129
bb176:
  XORI s3, s0, 93
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb127
bb177:
  XORI s3, s0, 91
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb125
bb178:
  XORI s3, s0, 45
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb123
bb179:
  XORI s3, s0, 43
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb121
bb180:
  XORI s3, s0, 60
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb119
get_bf_char:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  # implict jump to bb182
bb182:
  ADD s0, s1, zero
  XORI s2, s0, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb208
  # implict jump to bb183
bb183:
  ADD s2, zero, zero
  # implict jump to bb184
bb184:
  ADD s3, s2, zero
  BNE s3, zero, bb207
  # implict jump to bb185
bb185:
  ADD s2, zero, zero
  # implict jump to bb186
bb186:
  ADD s3, s2, zero
  BNE s3, zero, bb206
  # implict jump to bb187
bb187:
  ADD s2, zero, zero
  # implict jump to bb188
bb188:
  ADD s3, s2, zero
  BNE s3, zero, bb205
  # implict jump to bb189
bb189:
  ADD s2, zero, zero
  # implict jump to bb190
bb190:
  ADD s3, s2, zero
  BNE s3, zero, bb204
  # implict jump to bb191
bb191:
  ADD s2, zero, zero
  # implict jump to bb192
bb192:
  ADD s3, s2, zero
  BNE s3, zero, bb203
  # implict jump to bb193
bb193:
  ADD s2, zero, zero
  # implict jump to bb194
bb194:
  ADD s3, s2, zero
  BNE s3, zero, bb202
  # implict jump to bb195
bb195:
  ADD s2, zero, zero
  # implict jump to bb196
bb196:
  ADD s3, s2, zero
  BNE s3, zero, bb201
  # implict jump to bb197
bb197:
  ADD s2, zero, zero
  # implict jump to bb198
bb198:
  ADD s3, s2, zero
  BNE s3, zero, bb200
  # implict jump to bb199
bb199:
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb200:
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb182
bb201:
  XORI s3, s0, 35
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb198
bb202:
  XORI s3, s0, 44
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb196
bb203:
  XORI s3, s0, 46
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb194
bb204:
  XORI s3, s0, 93
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb192
bb205:
  XORI s3, s0, 91
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb190
bb206:
  XORI s3, s0, 45
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb188
bb207:
  XORI s3, s0, 43
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb186
bb208:
  XORI s3, s0, 60
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb184
