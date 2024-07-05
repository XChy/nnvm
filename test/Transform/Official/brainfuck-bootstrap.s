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
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, zero, zero
  JAL zero, bb1
bb1:
  LA s1, output_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, output
  ADD s3, s1, s2
  LW s1, 0(s3)
  ADD a0, s1, zero
  CALL putch
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
bb3:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
run_program:
  LUI t0, 1048575
  ADDI t0, t0, 1920
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1936
  ADD t5, t5, sp
  SD s11, 0(t5)
  ADDI s0, zero, 512
  JAL zero, bb5
bb5:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, zero, s3
  ADDI t6, sp, 0
  ADD s3, t6, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb5
bb7:
  LA s0, output_length
  SW zero, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD t4, zero, zero
  LUI t5, 1
  ADDI t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDI t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb8
bb8:
  LA s7, program_length
  LW s8, 0(s7)
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s7, t4, s8
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s7, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s7
  LA s7, program
  ADD s9, s7, s8
  LW s7, 0(s9)
  XORI s8, s7, 62
  SLTIU s9, s8, 1
  BNE s9, zero, bb11
  JAL zero, bb13
bb10:
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI ra, 1
  ADDI ra, ra, -1944
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1936
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t0, 1
  ADDI t0, t0, -1920
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s8, t4, 1
  ADD s9, s0, zero
  ADD s10, s1, zero
  ADD s11, s2, zero
  ADD t0, s3, zero
  ADD t1, s4, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  ADD a0, s8, zero
  JAL zero, bb12
bb12:
  ADDIW s8, t2, 1
  ADD s0, s9, zero
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s3, t0, zero
  ADD s4, t1, zero
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, a0, zero
  LUI t6, 1
  ADDI t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb8
bb13:
  XORI s8, s7, 60
  SLTIU a1, s8, 1
  BNE a1, zero, bb14
  JAL zero, bb16
bb14:
  ADDI s8, zero, 1
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW a1, t4, s8
  ADD s8, s0, zero
  ADD a2, s1, zero
  ADD a3, s2, zero
  ADD a4, s3, zero
  ADD a5, s4, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  ADD a7, a1, zero
  JAL zero, bb15
bb15:
  ADD s9, s8, zero
  ADD s10, a2, zero
  ADD s11, a3, zero
  ADD t0, a4, zero
  ADD t1, a5, zero
  ADD t2, a6, zero
  ADD a0, a7, zero
  JAL zero, bb12
bb16:
  XORI s9, s7, 43
  SLTIU s10, s9, 1
  BNE s10, zero, bb17
  JAL zero, bb19
bb17:
  ADDI s9, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s9
  LA s9, tape
  ADD s11, s9, s10
  ADDI s9, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s9
  LA s9, tape
  ADD t0, s9, s10
  LW s9, 0(t0)
  ADDIW s10, s9, 1
  SW s10, 0(s11)
  ADD s9, s0, zero
  ADD s10, s1, zero
  ADD s11, s2, zero
  ADD t0, s3, zero
  ADD t1, s4, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t2, t4, zero
  JAL zero, bb18
bb18:
  ADD s8, s9, zero
  ADD a2, s10, zero
  ADD a3, s11, zero
  ADD a4, t0, zero
  ADD a5, t1, zero
  ADD a6, t2, zero
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a7, t4, zero
  JAL zero, bb15
bb19:
  XORI s8, s7, 45
  SLTIU a0, s8, 1
  BNE a0, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s8
  LA s8, tape
  ADD a1, s8, a0
  ADDI s8, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, s8
  LA s8, tape
  ADD a2, s8, a0
  LW s8, 0(a2)
  ADDI a0, zero, 1
  SUBW a2, s8, a0
  SW a2, 0(a1)
  ADD s8, s0, zero
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  JAL zero, bb21
bb21:
  ADD s9, s8, zero
  ADD s10, a0, zero
  ADD s11, a1, zero
  ADD t0, a2, zero
  ADD t1, a3, zero
  ADD t2, a4, zero
  JAL zero, bb18
bb22:
  XORI s9, s7, 91
  SLTIU s10, s9, 1
  BNE s10, zero, bb23
  JAL zero, bb25
bb23:
  ADDI s9, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s10, t4, s9
  LA s9, tape
  ADD s11, s9, s10
  LW s9, 0(s11)
  XOR s10, s9, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb26
  JAL zero, bb28
bb24:
  ADD s8, t1, zero
  ADD a0, t2, zero
  ADD a1, a5, zero
  ADD a2, a6, zero
  ADD a3, a7, zero
  ADD a4, s6, zero
  JAL zero, bb21
bb25:
  XORI s5, s7, 93
  SLTIU s8, s5, 1
  BNE s8, zero, bb36
  JAL zero, bb38
bb26:
  ADDI s10, zero, 4
  MULW s11, s2, s10
  ADDI t5, sp, 0
  ADD s10, t5, s11
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s10)
  ADDIW s10, s2, 1
  ADD s11, s1, zero
  ADD t0, s10, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  JAL zero, bb27
bb27:
  ADD t1, s0, zero
  ADD t2, s11, zero
  ADD a5, t0, zero
  ADD a6, s9, zero
  ADD a7, s4, zero
  ADD s6, s10, zero
  JAL zero, bb24
bb28:
  ADDI s8, zero, 1
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  JAL zero, bb29
bb29:
  SLT a1, zero, s8
  XOR a2, a1, zero
  SLTU a1, zero, a2
  BNE a1, zero, bb30
  JAL zero, bb31
bb30:
  ADDIW a1, a0, 1
  ADDI a2, zero, 4
  MULW a3, a1, a2
  LA a2, program
  ADD a4, a2, a3
  LW a2, 0(a4)
  XORI a3, a2, 93
  SLTIU a2, a3, 1
  BNE a2, zero, bb32
  JAL zero, bb50
bb31:
  ADD s11, s8, zero
  ADD t0, s2, zero
  ADD s10, a0, zero
  JAL zero, bb27
bb32:
  ADDI a2, zero, 1
  SUBW a3, s8, a2
  ADD a2, a3, zero
  JAL zero, bb33
bb33:
  ADDI a3, zero, 4
  MULW a4, a1, a3
  LA a3, program
  ADD s5, a3, a4
  LW a3, 0(s5)
  XORI s5, a3, 91
  SLTIU a3, s5, 1
  BNE a3, zero, bb34
  JAL zero, bb51
bb34:
  ADDIW s5, a2, 1
  ADD a3, s5, zero
  JAL zero, bb35
bb35:
  ADD s8, a3, zero
  ADD a0, a1, zero
  JAL zero, bb29
bb36:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, tape
  ADD s9, s5, s8
  LW s5, 0(s9)
  XOR s8, s5, zero
  SLTIU s9, s8, 1
  BNE s9, zero, bb39
  JAL zero, bb41
bb37:
  ADD t1, s10, zero
  ADD t2, s1, zero
  ADD a5, s11, zero
  ADD a6, s3, zero
  ADD a7, t0, zero
  ADD s6, a0, zero
  JAL zero, bb24
bb38:
  XORI s5, s7, 46
  SLTIU s6, s5, 1
  BNE s6, zero, bb42
  JAL zero, bb44
bb39:
  ADDI s8, zero, 1
  SUBW s9, s2, s8
  ADD s8, s9, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  JAL zero, bb40
bb40:
  ADD s10, s5, zero
  ADD s11, s8, zero
  ADD t0, s4, zero
  ADD a0, s9, zero
  JAL zero, bb37
bb41:
  ADDI s6, zero, 1
  SUBW t1, s2, s6
  ADDI s6, zero, 4
  MULW t2, t1, s6
  ADDI t6, sp, 0
  ADD s6, t6, t2
  LW t1, 0(s6)
  ADD s8, s2, zero
  ADD s9, t1, zero
  JAL zero, bb40
bb42:
  LA s5, output_length
  LW s6, 0(s5)
  ADDI s5, zero, 4
  MULW s8, s6, s5
  LA s5, output
  ADD s6, s5, s8
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, tape
  ADD s9, s5, s8
  LW s5, 0(s9)
  SW s5, 0(s6)
  LA s5, output_length
  LW s6, 0(s5)
  ADDIW s5, s6, 1
  LA s6, output_length
  SW s5, 0(s6)
  ADD s5, s4, zero
  JAL zero, bb43
bb43:
  ADD s10, s0, zero
  ADD s11, s2, zero
  ADD t0, s5, zero
  LUI t4, 1
  ADDI t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  JAL zero, bb37
bb44:
  XORI s6, s7, 44
  SLTIU s7, s6, 1
  BNE s7, zero, bb45
  JAL zero, bb52
bb45:
  LA s6, input_length
  LW s7, 0(s6)
  SLT s6, s4, s7
  XORI s7, s6, 1
  BNE s7, zero, bb47
  JAL zero, bb49
bb46:
  ADD s5, s7, zero
  JAL zero, bb43
bb47:
  ADDI s6, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s7, t4, s6
  LA s6, tape
  ADD s8, s6, s7
  SW zero, 0(s8)
  ADD s6, s4, zero
  JAL zero, bb48
bb48:
  ADD s7, s6, zero
  JAL zero, bb46
bb49:
  ADDI s5, zero, 4
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s5
  LA s5, tape
  ADD s9, s5, s8
  ADDI s5, zero, 4
  MULW s8, s4, s5
  LA s5, input
  ADD s10, s5, s8
  LW s5, 0(s10)
  SW s5, 0(s9)
  ADDIW s5, s4, 1
  ADD s6, s5, zero
  JAL zero, bb48
bb50:
  ADD a2, s8, zero
  JAL zero, bb33
bb51:
  ADD a3, a2, zero
  JAL zero, bb35
bb52:
  ADD s7, s4, zero
  JAL zero, bb46
read_program:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL get_bf_char
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb54
bb54:
  XORI s0, s1, 35
  SLTU s2, zero, s0
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  LA s0, program_length
  LW s2, 0(s0)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, program
  ADD s2, s0, s3
  SW s1, 0(s2)
  CALL get_bf_char
  ADD s0, a0, zero
  LA s2, program_length
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  LA s3, program_length
  SW s2, 0(s3)
  ADD s1, s0, zero
  JAL zero, bb54
bb56:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb57
  JAL zero, bb58
bb57:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb58:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb59
bb59:
  LA s1, input_length
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, input
  ADD s3, s1, s2
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb59
bb61:
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  CALL read_program
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  CALL output_
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
get_bf_char:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s9, 56(sp)
  SD ra, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb64
bb64:
  XORI s0, s1, 62
  SLTU s2, zero, s0
  BNE s2, zero, bb67
  JAL zero, bb68
bb65:
  CALL getch
  ADD s9, a0, zero
  ADD s1, s9, zero
  JAL zero, bb64
bb66:
  ADD a0, s1, zero
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s9, 56(sp)
  LD ra, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb67:
  XORI s0, s1, 60
  SLTU s2, zero, s0
  ADD s0, s2, zero
  JAL zero, bb69
bb68:
  ADD s0, zero, zero
  JAL zero, bb69
bb69:
  BNE s0, zero, bb70
  JAL zero, bb71
bb70:
  XORI s2, s1, 43
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb72
bb71:
  ADD s2, zero, zero
  JAL zero, bb72
bb72:
  BNE s2, zero, bb73
  JAL zero, bb74
bb73:
  XORI s3, s1, 45
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb75
bb74:
  ADD s3, zero, zero
  JAL zero, bb75
bb75:
  BNE s3, zero, bb76
  JAL zero, bb77
bb76:
  XORI s4, s1, 91
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb78
bb77:
  ADD s4, zero, zero
  JAL zero, bb78
bb78:
  BNE s4, zero, bb79
  JAL zero, bb80
bb79:
  XORI s5, s1, 93
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb81
bb80:
  ADD s5, zero, zero
  JAL zero, bb81
bb81:
  BNE s5, zero, bb82
  JAL zero, bb83
bb82:
  XORI s6, s1, 46
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb84
bb83:
  ADD s6, zero, zero
  JAL zero, bb84
bb84:
  BNE s6, zero, bb85
  JAL zero, bb86
bb85:
  XORI s7, s1, 44
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb87
bb86:
  ADD s7, zero, zero
  JAL zero, bb87
bb87:
  BNE s7, zero, bb88
  JAL zero, bb89
bb88:
  XORI s8, s1, 35
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb90
bb89:
  ADD s8, zero, zero
  JAL zero, bb90
bb90:
  XOR s9, s8, zero
  SLTU s10, zero, s9
  BNE s10, zero, bb65
  JAL zero, bb66
