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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, output
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
run_program:
  LUI t0, 1048575
  ADDIW t0, t0, 1920
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SD s9, 0(t5)
  ADDI s0, zero, 512
  # implict jump to bb5
bb5:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb52
  # implict jump to bb6
bb6:
  LA s0, output_length
  SW zero, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  # implict jump to bb7
bb7:
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD s9, s4, zero
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t2, 1
  ADDIW t2, t2, -2044
  ADD t2, t2, sp
  SW t4, 0(t2)
  ADD t4, s0, zero
  LUI t2, 1
  ADDIW t2, t2, -2048
  ADD t2, t2, sp
  SW t4, 0(t2)
  LA t2, program_length
  LW a0, 0(t2)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT t2, t4, a0
  BNE t2, zero, bb9
  # implict jump to bb8
bb8:
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1992
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1920
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
  ADDI t2, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t2
  LA t2, program
  ADD a1, t2, a0
  LW t2, 0(a1)
  XORI a0, t2, 62
  SLTIU a1, a0, 1
  BNE a1, zero, bb51
  # implict jump to bb10
bb10:
  XORI s0, t2, 60
  SLTIU s1, s0, 1
  BNE s1, zero, bb50
  # implict jump to bb11
bb11:
  XORI s1, t2, 43
  SLTIU s8, s1, 1
  BNE s8, zero, bb49
  # implict jump to bb12
bb12:
  XORI s0, t2, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb48
  # implict jump to bb13
bb13:
  XORI s1, t2, 91
  SLTIU s7, s1, 1
  BNE s7, zero, bb35
  # implict jump to bb14
bb14:
  XORI s0, t2, 93
  SLTIU s1, s0, 1
  BNE s1, zero, bb31
  # implict jump to bb15
bb15:
  XORI s0, t2, 46
  SLTIU s1, s0, 1
  BNE s1, zero, bb30
  # implict jump to bb16
bb16:
  XORI s1, t2, 44
  SLTIU s2, s1, 1
  BNE s2, zero, bb26
  # implict jump to bb17
bb17:
  ADD s3, s9, zero
  # implict jump to bb18
bb18:
  ADD s2, s3, zero
  ADD s0, s2, zero
  # implict jump to bb19
bb19:
  ADD s1, s0, zero
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  ADD s4, s1, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  # implict jump to bb20
bb20:
  ADD s3, s7, zero
  ADD s8, s4, zero
  ADD s10, s6, zero
  ADD s11, s5, zero
  ADD a0, s11, zero
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  ADD t1, s10, zero
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t0, t4, zero
  ADD a2, s8, zero
  ADD a3, s3, zero
  # implict jump to bb21
bb21:
  ADD s11, a3, zero
  ADD a4, a2, zero
  ADD a5, t0, zero
  ADD a6, t1, zero
  ADD a7, a1, zero
  ADD t6, a0, zero
  ADD s0, t6, zero
  ADD s2, a7, zero
  ADD s3, a6, zero
  ADD s4, a5, zero
  ADD s5, a4, zero
  ADD s6, s11, zero
  # implict jump to bb22
bb22:
  ADD s7, s6, zero
  ADD a0, s5, zero
  ADD a1, s4, zero
  ADD a2, s3, zero
  ADD a3, s2, zero
  ADD a4, s0, zero
  ADD s1, a4, zero
  ADD s8, a3, zero
  ADD s10, a2, zero
  ADD s11, a1, zero
  ADD t0, a0, zero
  ADD t1, s7, zero
  # implict jump to bb23
bb23:
  ADD a0, t1, zero
  ADD a1, t0, zero
  ADD a2, s11, zero
  ADD a3, s10, zero
  ADD a4, s8, zero
  ADD a5, s1, zero
  ADD s0, a5, zero
  ADD s2, a4, zero
  ADD s3, a3, zero
  ADD s4, a2, zero
  ADD s5, a1, zero
  ADD s6, a0, zero
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  # implict jump to bb24
bb24:
  ADD s1, s7, zero
  ADD s8, s6, zero
  ADD s10, s5, zero
  ADD s11, s4, zero
  ADD t0, s3, zero
  ADD t1, s2, zero
  ADD a0, s0, zero
  ADD a1, a0, zero
  ADD a2, t1, zero
  ADD a3, t0, zero
  ADD a4, s11, zero
  ADD a5, s10, zero
  ADD a6, s8, zero
  ADD a7, s1, zero
  # implict jump to bb25
bb25:
  ADD a0, a7, zero
  ADD t6, a6, zero
  ADD t1, a5, zero
  ADD t0, a4, zero
  ADD s11, a3, zero
  ADD s10, a2, zero
  ADD s8, a1, zero
  ADDIW s7, t6, 1
  ADD s0, s8, zero
  ADD s1, s10, zero
  ADD s2, s11, zero
  ADD s3, t0, zero
  ADD s4, t1, zero
  ADD s5, s7, zero
  ADD s6, a0, zero
  JAL zero, bb7
bb26:
  LA s1, input_length
  LW s2, 0(s1)
  SLT s1, s9, s2
  XORI s2, s1, 1
  BNE s2, zero, bb29
  # implict jump to bb27
bb27:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s0
  LA s0, tape
  ADD s4, s0, s2
  ADDI s0, zero, 4
  MULW s2, s9, s0
  LA s0, input
  ADD s5, s0, s2
  LW s0, 0(s5)
  SW s0, 0(s4)
  ADDIW s0, s9, 1
  ADD s1, s0, zero
  # implict jump to bb28
bb28:
  ADD s2, s1, zero
  ADD s3, s2, zero
  JAL zero, bb18
bb29:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, tape
  ADD s3, s1, s2
  SW zero, 0(s3)
  ADD s1, s9, zero
  JAL zero, bb28
bb30:
  LA s0, output_length
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, output
  ADD s1, s0, s2
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s0
  LA s0, tape
  ADD s3, s0, s2
  LW s0, 0(s3)
  SW s0, 0(s1)
  LA s0, output_length
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LA s1, output_length
  SW s0, 0(s1)
  ADD s0, s9, zero
  JAL zero, bb19
bb31:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, tape
  ADD s2, s0, s1
  LW s0, 0(s2)
  XOR s1, s0, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb34
  # implict jump to bb32
bb32:
  ADDI s3, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s8, t4, s3
  ADDI s3, zero, 4
  MULW s10, s8, s3
  ADDI t5, sp, 0
  ADD s3, t5, s10
  LW s8, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s2, s8, zero
  # implict jump to bb33
bb33:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s4, zero
  ADD s4, s9, zero
  ADD s7, s3, zero
  JAL zero, bb20
bb34:
  ADDI s1, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s2, t4, s1
  ADD s1, s2, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb33
bb35:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s7, t4, s1
  LA s1, tape
  ADD s8, s1, s7
  LW s1, 0(s8)
  XOR s7, s1, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb47
  # implict jump to bb36
bb36:
  ADDI s0, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  # implict jump to bb37
bb37:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLT s5, zero, s4
  BNE s5, zero, bb40
  # implict jump to bb38
bb38:
  ADD s8, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  ADD s7, s3, zero
  # implict jump to bb39
bb39:
  ADD s11, s7, zero
  ADD t0, s10, zero
  ADD t1, s8, zero
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  ADD a1, t1, zero
  ADD t1, t0, zero
  ADD t0, s1, zero
  ADD a2, s9, zero
  ADD a3, s11, zero
  JAL zero, bb21
bb40:
  ADDIW s5, s3, 1
  ADDI s6, zero, 4
  MULW s11, s5, s6
  LA s6, program
  ADD a4, s6, s11
  LW s6, 0(a4)
  XORI s11, s6, 93
  SLTIU s6, s11, 1
  BNE s6, zero, bb46
  # implict jump to bb41
bb41:
  ADD s6, s4, zero
  # implict jump to bb42
bb42:
  ADD s11, s6, zero
  LW a5, 0(a4)
  XORI a6, a5, 91
  SLTIU a5, a6, 1
  BNE a5, zero, bb45
  # implict jump to bb43
bb43:
  ADD a6, s11, zero
  # implict jump to bb44
bb44:
  ADD a5, a6, zero
  ADD s0, a5, zero
  ADD s2, s5, zero
  JAL zero, bb37
bb45:
  ADDIW a5, s11, 1
  ADD a6, a5, zero
  JAL zero, bb44
bb46:
  ADDI s6, zero, 1
  SUBW s11, s4, s6
  ADD s6, s11, zero
  JAL zero, bb42
bb47:
  ADDI s7, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s7
  ADDI t5, sp, 0
  ADD s7, t5, s8
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s7, t4, 1
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s10, s7, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb39
bb48:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s0
  LA s0, tape
  ADD s3, s0, s2
  LW s0, 0(s3)
  ADDI s2, zero, 1
  SUBW s4, s0, s2
  SW s4, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  ADD s5, s9, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  JAL zero, bb22
bb49:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s1
  LA s1, tape
  ADD s10, s1, s8
  LW s1, 0(s10)
  ADDIW s8, s1, 1
  SW s8, 0(s10)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  ADD t0, s9, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  JAL zero, bb23
bb50:
  ADDI s0, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s1, t4, s0
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  ADD s5, s9, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  ADD s7, s1, zero
  JAL zero, bb24
bb51:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a0, t4, 1
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  ADD a5, s9, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  ADD a7, a0, zero
  JAL zero, bb25
bb52:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb5
read_program:
  ADDI sp, sp, -128
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s7, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s10, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s11, 80(sp)
  SD ra, 88(sp)
  SD s2, 96(sp)
  SD s3, 104(sp)
  SD s4, 112(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  # implict jump to bb54
bb54:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s2, t4, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb115
  # implict jump to bb55
bb55:
  ADD t4, zero, zero
  SB t4, 4(sp)
  # implict jump to bb56
bb56:
  LB t4, 4(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb114
  # implict jump to bb57
bb57:
  ADD t4, zero, zero
  SB t4, 5(sp)
  # implict jump to bb58
bb58:
  LB t4, 5(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb113
  # implict jump to bb59
bb59:
  ADD t4, zero, zero
  SB t4, 6(sp)
  # implict jump to bb60
bb60:
  LB t4, 6(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb112
  # implict jump to bb61
bb61:
  ADD t4, zero, zero
  SB t4, 7(sp)
  # implict jump to bb62
bb62:
  LB t4, 7(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb111
  # implict jump to bb63
bb63:
  ADD t4, zero, zero
  SB t4, 8(sp)
  # implict jump to bb64
bb64:
  LB t4, 8(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb110
  # implict jump to bb65
bb65:
  ADD t4, zero, zero
  SB t4, 9(sp)
  # implict jump to bb66
bb66:
  LB t4, 9(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb109
  # implict jump to bb67
bb67:
  ADD t4, zero, zero
  SB t4, 10(sp)
  # implict jump to bb68
bb68:
  LB t4, 10(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb108
  # implict jump to bb69
bb69:
  ADD t4, zero, zero
  SB t4, 11(sp)
  # implict jump to bb70
bb70:
  LB t4, 11(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb107
  # implict jump to bb71
bb71:
  LW t4, 0(sp)
  ADD s1, t4, zero
  # implict jump to bb72
bb72:
  ADD s10, s1, zero
  XORI s11, s10, 35
  SLTU s0, zero, s11
  BNE s0, zero, bb79
  # implict jump to bb73
bb73:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb78
  # implict jump to bb74
bb74:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s0, zero, zero
  # implict jump to bb75
bb75:
  ADD s1, s0, zero
  LA s2, input_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb77
  # implict jump to bb76
bb76:
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s10, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s11, 80(sp)
  LD ra, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb77:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, input
  ADD s4, s2, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb75
bb78:
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s10, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s11, 80(sp)
  LD ra, 88(sp)
  LD s2, 96(sp)
  LD s3, 104(sp)
  LD s4, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb79:
  LA s0, program_length
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s11, s0
  LA s0, program
  ADD s11, s0, s2
  SW s10, 0(s11)
  CALL getch
  ADD s0, a0, zero
  ADD s2, s0, zero
  # implict jump to bb80
bb80:
  ADD s0, s2, zero
  XORI s10, s0, 62
  SLTU s11, zero, s10
  BNE s11, zero, bb106
  # implict jump to bb81
bb81:
  ADD s10, zero, zero
  # implict jump to bb82
bb82:
  ADD s11, s10, zero
  BNE s11, zero, bb105
  # implict jump to bb83
bb83:
  ADD s11, zero, zero
  # implict jump to bb84
bb84:
  ADD s3, s11, zero
  BNE s3, zero, bb104
  # implict jump to bb85
bb85:
  ADD s3, zero, zero
  # implict jump to bb86
bb86:
  ADD s4, s3, zero
  BNE s4, zero, bb103
  # implict jump to bb87
bb87:
  ADD s4, zero, zero
  # implict jump to bb88
bb88:
  ADD s5, s4, zero
  BNE s5, zero, bb102
  # implict jump to bb89
bb89:
  ADD s5, zero, zero
  # implict jump to bb90
bb90:
  ADD s6, s5, zero
  BNE s6, zero, bb101
  # implict jump to bb91
bb91:
  ADD s6, zero, zero
  # implict jump to bb92
bb92:
  ADD s7, s6, zero
  BNE s7, zero, bb100
  # implict jump to bb93
bb93:
  ADD s7, zero, zero
  # implict jump to bb94
bb94:
  ADD s8, s7, zero
  BNE s8, zero, bb99
  # implict jump to bb95
bb95:
  ADD s8, zero, zero
  # implict jump to bb96
bb96:
  ADD s9, s8, zero
  BNE s9, zero, bb98
  # implict jump to bb97
bb97:
  LA s2, program_length
  LW s9, 0(s2)
  ADDIW s2, s9, 1
  LA s9, program_length
  SW s2, 0(s9)
  ADD s1, s0, zero
  JAL zero, bb72
bb98:
  CALL getch
  ADD s9, a0, zero
  ADD s2, s9, zero
  JAL zero, bb80
bb99:
  XORI s8, s0, 35
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb96
bb100:
  XORI s7, s0, 44
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb94
bb101:
  XORI s6, s0, 46
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb92
bb102:
  XORI s5, s0, 93
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb90
bb103:
  XORI s4, s0, 91
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb88
bb104:
  XORI s3, s0, 45
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb86
bb105:
  XORI s11, s0, 43
  SLTU s3, zero, s11
  ADD s11, s3, zero
  JAL zero, bb84
bb106:
  XORI s10, s0, 60
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb82
bb107:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb54
bb108:
  LW t4, 0(sp)
  XORI s9, t4, 35
  SLTU s10, zero, s9
  ADD t4, s10, zero
  SB t4, 11(sp)
  JAL zero, bb70
bb109:
  LW t4, 0(sp)
  XORI s8, t4, 44
  SLTU s9, zero, s8
  ADD t4, s9, zero
  SB t4, 10(sp)
  JAL zero, bb68
bb110:
  LW t4, 0(sp)
  XORI s7, t4, 46
  SLTU s8, zero, s7
  ADD t4, s8, zero
  SB t4, 9(sp)
  JAL zero, bb66
bb111:
  LW t4, 0(sp)
  XORI s6, t4, 93
  SLTU s7, zero, s6
  ADD t4, s7, zero
  SB t4, 8(sp)
  JAL zero, bb64
bb112:
  LW t4, 0(sp)
  XORI s5, t4, 91
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 7(sp)
  JAL zero, bb62
bb113:
  LW t4, 0(sp)
  XORI s4, t4, 45
  SLTU s5, zero, s4
  ADD t4, s5, zero
  SB t4, 6(sp)
  JAL zero, bb60
bb114:
  LW t4, 0(sp)
  XORI s3, t4, 43
  SLTU s4, zero, s3
  ADD t4, s4, zero
  SB t4, 5(sp)
  JAL zero, bb58
bb115:
  LW t4, 0(sp)
  XORI s2, t4, 60
  SLTU s3, zero, s2
  ADD t4, s3, zero
  SB t4, 4(sp)
  JAL zero, bb56
main:
  ADDI sp, sp, -128
  SD s9, 16(sp)
  SD s8, 24(sp)
  SD s7, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s10, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD ra, 104(sp)
  SD s11, 112(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  # implict jump to bb117
bb117:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s2, t4, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb180
  # implict jump to bb118
bb118:
  ADD t4, zero, zero
  SB t4, 4(sp)
  # implict jump to bb119
bb119:
  LB t4, 4(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb179
  # implict jump to bb120
bb120:
  ADD t4, zero, zero
  SB t4, 5(sp)
  # implict jump to bb121
bb121:
  LB t4, 5(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb178
  # implict jump to bb122
bb122:
  ADD t4, zero, zero
  SB t4, 6(sp)
  # implict jump to bb123
bb123:
  LB t4, 6(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb177
  # implict jump to bb124
bb124:
  ADD t4, zero, zero
  SB t4, 7(sp)
  # implict jump to bb125
bb125:
  LB t4, 7(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb176
  # implict jump to bb126
bb126:
  ADD t4, zero, zero
  SB t4, 8(sp)
  # implict jump to bb127
bb127:
  LB t4, 8(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb175
  # implict jump to bb128
bb128:
  ADD t4, zero, zero
  SB t4, 9(sp)
  # implict jump to bb129
bb129:
  LB t4, 9(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb174
  # implict jump to bb130
bb130:
  ADD t4, zero, zero
  SB t4, 10(sp)
  # implict jump to bb131
bb131:
  LB t4, 10(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb173
  # implict jump to bb132
bb132:
  ADD t4, zero, zero
  SB t4, 11(sp)
  # implict jump to bb133
bb133:
  LB t4, 11(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb172
  # implict jump to bb134
bb134:
  LW t4, 0(sp)
  ADD s1, t4, zero
  # implict jump to bb135
bb135:
  ADD s10, s1, zero
  XORI s11, s10, 35
  SLTU s0, zero, s11
  BNE s0, zero, bb144
  # implict jump to bb136
bb136:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb139
  # implict jump to bb137
bb137:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s0, zero, zero
  # implict jump to bb138
bb138:
  ADD s1, s0, zero
  LA s2, input_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb143
  # implict jump to bb139
bb139:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  ADD s0, zero, zero
  # implict jump to bb140
bb140:
  ADD s1, s0, zero
  LA s2, output_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb142
  # implict jump to bb141
bb141:
  ADD a0, zero, zero
  LD s9, 16(sp)
  LD s8, 24(sp)
  LD s7, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s10, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD ra, 104(sp)
  LD s11, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb142:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, output
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb140
bb143:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, input
  ADD s4, s2, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb138
bb144:
  LA s0, program_length
  LW s11, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s11, s0
  LA s0, program
  ADD s11, s0, s2
  SW s10, 0(s11)
  CALL getch
  ADD s0, a0, zero
  ADD s2, s0, zero
  # implict jump to bb145
bb145:
  ADD s0, s2, zero
  XORI s10, s0, 62
  SLTU s11, zero, s10
  BNE s11, zero, bb171
  # implict jump to bb146
bb146:
  ADD s10, zero, zero
  # implict jump to bb147
bb147:
  ADD s11, s10, zero
  BNE s11, zero, bb170
  # implict jump to bb148
bb148:
  ADD s11, zero, zero
  # implict jump to bb149
bb149:
  ADD s3, s11, zero
  BNE s3, zero, bb169
  # implict jump to bb150
bb150:
  ADD s3, zero, zero
  # implict jump to bb151
bb151:
  ADD s4, s3, zero
  BNE s4, zero, bb168
  # implict jump to bb152
bb152:
  ADD s4, zero, zero
  # implict jump to bb153
bb153:
  ADD s5, s4, zero
  BNE s5, zero, bb167
  # implict jump to bb154
bb154:
  ADD s5, zero, zero
  # implict jump to bb155
bb155:
  ADD s6, s5, zero
  BNE s6, zero, bb166
  # implict jump to bb156
bb156:
  ADD s6, zero, zero
  # implict jump to bb157
bb157:
  ADD s7, s6, zero
  BNE s7, zero, bb165
  # implict jump to bb158
bb158:
  ADD s7, zero, zero
  # implict jump to bb159
bb159:
  ADD s8, s7, zero
  BNE s8, zero, bb164
  # implict jump to bb160
bb160:
  ADD s8, zero, zero
  # implict jump to bb161
bb161:
  ADD s9, s8, zero
  BNE s9, zero, bb163
  # implict jump to bb162
bb162:
  LA s2, program_length
  LW s9, 0(s2)
  ADDIW s2, s9, 1
  LA s9, program_length
  SW s2, 0(s9)
  ADD s1, s0, zero
  JAL zero, bb135
bb163:
  CALL getch
  ADD s9, a0, zero
  ADD s2, s9, zero
  JAL zero, bb145
bb164:
  XORI s8, s0, 35
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb161
bb165:
  XORI s7, s0, 44
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb159
bb166:
  XORI s6, s0, 46
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb157
bb167:
  XORI s5, s0, 93
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb155
bb168:
  XORI s4, s0, 91
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb153
bb169:
  XORI s3, s0, 45
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb151
bb170:
  XORI s11, s0, 43
  SLTU s3, zero, s11
  ADD s11, s3, zero
  JAL zero, bb149
bb171:
  XORI s10, s0, 60
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb147
bb172:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb117
bb173:
  LW t4, 0(sp)
  XORI s9, t4, 35
  SLTU s10, zero, s9
  ADD t4, s10, zero
  SB t4, 11(sp)
  JAL zero, bb133
bb174:
  LW t4, 0(sp)
  XORI s8, t4, 44
  SLTU s9, zero, s8
  ADD t4, s9, zero
  SB t4, 10(sp)
  JAL zero, bb131
bb175:
  LW t4, 0(sp)
  XORI s7, t4, 46
  SLTU s8, zero, s7
  ADD t4, s8, zero
  SB t4, 9(sp)
  JAL zero, bb129
bb176:
  LW t4, 0(sp)
  XORI s6, t4, 93
  SLTU s7, zero, s6
  ADD t4, s7, zero
  SB t4, 8(sp)
  JAL zero, bb127
bb177:
  LW t4, 0(sp)
  XORI s5, t4, 91
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 7(sp)
  JAL zero, bb125
bb178:
  LW t4, 0(sp)
  XORI s4, t4, 45
  SLTU s5, zero, s4
  ADD t4, s5, zero
  SB t4, 6(sp)
  JAL zero, bb123
bb179:
  LW t4, 0(sp)
  XORI s3, t4, 43
  SLTU s4, zero, s3
  ADD t4, s4, zero
  SB t4, 5(sp)
  JAL zero, bb121
bb180:
  LW t4, 0(sp)
  XORI s2, t4, 60
  SLTU s3, zero, s2
  ADD t4, s3, zero
  SB t4, 4(sp)
  JAL zero, bb119
get_bf_char:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s10, 32(sp)
  SD s1, 40(sp)
  SD s6, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD ra, 72(sp)
  SD s4, 80(sp)
  SD s8, 88(sp)
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
  ADD s3, zero, zero
  # implict jump to bb186
bb186:
  ADD s4, s3, zero
  BNE s4, zero, bb206
  # implict jump to bb187
bb187:
  ADD s4, zero, zero
  # implict jump to bb188
bb188:
  ADD s5, s4, zero
  BNE s5, zero, bb205
  # implict jump to bb189
bb189:
  ADD s5, zero, zero
  # implict jump to bb190
bb190:
  ADD s6, s5, zero
  BNE s6, zero, bb204
  # implict jump to bb191
bb191:
  ADD s6, zero, zero
  # implict jump to bb192
bb192:
  ADD s7, s6, zero
  BNE s7, zero, bb203
  # implict jump to bb193
bb193:
  ADD s7, zero, zero
  # implict jump to bb194
bb194:
  ADD s8, s7, zero
  BNE s8, zero, bb202
  # implict jump to bb195
bb195:
  ADD s8, zero, zero
  # implict jump to bb196
bb196:
  ADD s9, s8, zero
  BNE s9, zero, bb201
  # implict jump to bb197
bb197:
  ADD s9, zero, zero
  # implict jump to bb198
bb198:
  ADD s10, s9, zero
  BNE s10, zero, bb200
  # implict jump to bb199
bb199:
  ADD a0, s0, zero
  LD s9, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s10, 32(sp)
  LD s1, 40(sp)
  LD s6, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD ra, 72(sp)
  LD s4, 80(sp)
  LD s8, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb200:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb182
bb201:
  XORI s9, s0, 35
  SLTU s10, zero, s9
  ADD s9, s10, zero
  JAL zero, bb198
bb202:
  XORI s8, s0, 44
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb196
bb203:
  XORI s7, s0, 46
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb194
bb204:
  XORI s6, s0, 93
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb192
bb205:
  XORI s5, s0, 91
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb190
bb206:
  XORI s4, s0, 45
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb188
bb207:
  XORI s3, s0, 43
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb186
bb208:
  XORI s2, s0, 60
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb184
