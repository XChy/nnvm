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
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  LA s1, output_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, output
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL putch
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
bb3:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
run_program:
  LUI t0, 1048575
  ADDI t0, t0, 1936
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -1976
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1968
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  SD s0, 0(t5)
  ADDI s0, zero, 0
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  SW s0, 0(t6)
  ADDI s0, zero, 0
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  SW s0, 0(t5)
  ADDI s0, zero, 0
  LUI t6, 1
  ADDI t6, t6, -2000
  ADD t6, t6, sp
  SW s0, 0(t6)
  ADDI s0, zero, 512
  SW s0, 40(sp)
  JAL zero, bb5
bb5:
  LW s0, 40(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb6
  JAL zero, bb7
bb6:
  LW s0, 40(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 40(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t5, sp, 48
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb5
bb7:
  SW zero, 32(sp)
  LA s0, output_length
  SW zero, 0(s0)
  JAL zero, bb8
bb8:
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  LW s0, 0(t6)
  LA s1, program_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  JAL zero, bb10
bb9:
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, program
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 24(sp)
  LW s0, 24(sp)
  XORI s1, s0, 62
  SLTIU s0, s1, 1
  BNE s0, zero, bb11
  JAL zero, bb13
bb10:
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI ra, 1
  ADDI ra, ra, -1968
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDIW s1, s0, 1
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  SW s1, 0(t5)
  JAL zero, bb12
bb12:
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDIW s1, s0, 1
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  SW s1, 0(t5)
  JAL zero, bb8
bb13:
  LW s0, 24(sp)
  XORI s1, s0, 60
  SLTIU s0, s1, 1
  BNE s0, zero, bb14
  JAL zero, bb16
bb14:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  SW s2, 0(t5)
  JAL zero, bb15
bb15:
  JAL zero, bb12
bb16:
  LW s0, 24(sp)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb19
bb17:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, tape
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  SW s2, 0(s1)
  JAL zero, bb18
bb18:
  JAL zero, bb15
bb19:
  LW s0, 24(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb20
  JAL zero, bb22
bb20:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, tape
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  JAL zero, bb21
bb21:
  JAL zero, bb18
bb22:
  LW s0, 24(sp)
  XORI s1, s0, 91
  SLTIU s0, s1, 1
  BNE s0, zero, bb23
  JAL zero, bb25
bb23:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 16(sp)
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb26
  JAL zero, bb28
bb24:
  JAL zero, bb21
bb25:
  LW s0, 24(sp)
  XORI s1, s0, 93
  SLTIU s0, s1, 1
  BNE s0, zero, bb36
  JAL zero, bb38
bb26:
  LW s0, 32(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 48
  ADD s0, t5, s2
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  LW s1, 0(t6)
  SW s1, 0(s0)
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb27
bb27:
  JAL zero, bb24
bb28:
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb29
bb29:
  LW s0, 8(sp)
  SLT s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb30
  JAL zero, bb31
bb30:
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDIW s1, s0, 1
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  SW s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, program
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 93
  SLTIU s0, s1, 1
  BNE s0, zero, bb32
  JAL zero, bb33
bb31:
  JAL zero, bb27
bb32:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  JAL zero, bb33
bb33:
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, program
  ADD s1, s0, s2
  LW s0, 0(s1)
  XORI s1, s0, 91
  SLTIU s0, s1, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb35
bb35:
  JAL zero, bb29
bb36:
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  LW s0, 0(s1)
  SW s0, 0(sp)
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb39
  JAL zero, bb41
bb37:
  JAL zero, bb24
bb38:
  LW s0, 24(sp)
  XORI s1, s0, 46
  SLTIU s0, s1, 1
  BNE s0, zero, bb42
  JAL zero, bb44
bb39:
  LW s0, 32(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 32(sp)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  LW s0, 32(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDI t6, sp, 48
  ADD s0, t6, s1
  LW s1, 0(s0)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  SW s1, 0(t5)
  JAL zero, bb40
bb42:
  LA s0, output_length
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, output
  ADD s1, s0, s2
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, tape
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LA s0, output_length
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, output_length
  SW s0, 0(s1)
  JAL zero, bb43
bb43:
  JAL zero, bb37
bb44:
  LW s0, 24(sp)
  XORI s1, s0, 44
  SLTIU s0, s1, 1
  BNE s0, zero, bb45
  JAL zero, bb46
bb45:
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LW s0, 0(t5)
  LA s1, input_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XORI s0, s1, 1
  BNE s0, zero, bb47
  JAL zero, bb49
bb46:
  JAL zero, bb43
bb47:
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  SW zero, 0(s1)
  JAL zero, bb48
bb48:
  JAL zero, bb46
bb49:
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, tape
  ADD s1, s0, s2
  LUI t6, 1
  ADDI t6, t6, -2000
  ADD t6, t6, sp
  LW s0, 0(t6)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  LA s0, input
  ADD s2, s0, s3
  LW s0, 0(s2)
  SW s0, 0(s1)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LW s0, 0(t5)
  ADDIW s1, s0, 1
  LUI t6, 1
  ADDI t6, t6, -2000
  ADD t6, t6, sp
  SW s1, 0(t6)
  JAL zero, bb48
read_program:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  CALL get_bf_char
  ADD s0, a0, zero
  SW s0, 16(sp)
  JAL zero, bb51
bb51:
  LW s0, 16(sp)
  XORI s1, s0, 35
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb52
  JAL zero, bb53
bb52:
  LA s0, program_length
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, program
  ADD s1, s0, s2
  LW s0, 16(sp)
  SW s0, 0(s1)
  CALL get_bf_char
  ADD s0, a0, zero
  SW s0, 16(sp)
  LA s0, program_length
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, program_length
  SW s0, 0(s1)
  JAL zero, bb51
bb53:
  CALL getch
  ADD s0, a0, zero
  SW s0, 8(sp)
  LW s0, 8(sp)
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb54
  JAL zero, bb55
bb54:
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb55:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  SW zero, 0(sp)
  JAL zero, bb56
bb56:
  LW s0, 0(sp)
  LA s1, input_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb57
  JAL zero, bb58
bb57:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, input
  ADD s1, s0, s2
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb56
bb58:
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL read_program
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_starttime
  CALL output_
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
get_bf_char:
  ADDI sp, sp, -96
  SD ra, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 64(sp)
  JAL zero, bb61
bb61:
  LW s0, 64(sp)
  XORI s1, s0, 62
  SLTU s0, zero, s1
  BNE s0, zero, bb64
  JAL zero, bb65
bb62:
  CALL getch
  ADD s0, a0, zero
  SW s0, 64(sp)
  JAL zero, bb61
bb63:
  LW s0, 64(sp)
  ADD a0, s0, zero
  LD ra, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb64:
  LW s0, 64(sp)
  XORI s1, s0, 60
  SLTU s0, zero, s1
  SB s0, 56(sp)
  JAL zero, bb66
bb65:
  SB zero, 56(sp)
  JAL zero, bb66
bb66:
  LB s0, 56(sp)
  BNE s0, zero, bb67
  JAL zero, bb68
bb67:
  LW s0, 64(sp)
  XORI s1, s0, 43
  SLTU s0, zero, s1
  SB s0, 48(sp)
  JAL zero, bb69
bb68:
  SB zero, 48(sp)
  JAL zero, bb69
bb69:
  LB s0, 48(sp)
  BNE s0, zero, bb70
  JAL zero, bb71
bb70:
  LW s0, 64(sp)
  XORI s1, s0, 45
  SLTU s0, zero, s1
  SB s0, 40(sp)
  JAL zero, bb72
bb71:
  SB zero, 40(sp)
  JAL zero, bb72
bb72:
  LB s0, 40(sp)
  BNE s0, zero, bb73
  JAL zero, bb74
bb73:
  LW s0, 64(sp)
  XORI s1, s0, 91
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb75
bb74:
  SB zero, 32(sp)
  JAL zero, bb75
bb75:
  LB s0, 32(sp)
  BNE s0, zero, bb76
  JAL zero, bb77
bb76:
  LW s0, 64(sp)
  XORI s1, s0, 93
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb78
bb77:
  SB zero, 24(sp)
  JAL zero, bb78
bb78:
  LB s0, 24(sp)
  BNE s0, zero, bb79
  JAL zero, bb80
bb79:
  LW s0, 64(sp)
  XORI s1, s0, 46
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb81
bb80:
  SB zero, 16(sp)
  JAL zero, bb81
bb81:
  LB s0, 16(sp)
  BNE s0, zero, bb82
  JAL zero, bb83
bb82:
  LW s0, 64(sp)
  XORI s1, s0, 44
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb84
bb83:
  SB zero, 8(sp)
  JAL zero, bb84
bb84:
  LB s0, 8(sp)
  BNE s0, zero, bb85
  JAL zero, bb86
bb85:
  LW s0, 64(sp)
  XORI s1, s0, 35
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb87
bb86:
  SB zero, 0(sp)
  JAL zero, bb87
bb87:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb62
  JAL zero, bb63
