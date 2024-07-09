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
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, output_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
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
bb3:
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
run_program:
  LUI t0, 1048575
  ADDIW t0, t0, 1888
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SD ra, 0(t5)
  ADDI s0, zero, 512
  JAL zero, bb5
bb5:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb5
bb7:
  LA s0, output_length
  SW zero, 0(s0)
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADD s4, zero, zero
  ADD s5, zero, zero
  ADD s6, zero, zero
  JAL zero, bb8
bb8:
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s1, zero
  LUI t2, 1
  ADDIW t2, t2, -2040
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
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT t2, t4, a0
  BNE t2, zero, bb9
  JAL zero, bb10
bb9:
  ADDI t2, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW a0, t4, t2
  LA t2, program
  ADD a1, t2, a0
  LW t2, 0(a1)
  XORI a0, t2, 62
  SLTIU a1, a0, 1
  BNE a1, zero, bb11
  JAL zero, bb13
bb10:
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1896
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t0, 1
  ADDIW t0, t0, -1888
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW a0, t4, 1
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a4, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a6, t4, zero
  ADD a7, a0, zero
  JAL zero, bb12
bb12:
  ADD a0, a7, zero
  ADD t1, a6, zero
  ADD t0, a5, zero
  ADD s11, a4, zero
  ADD s10, a3, zero
  ADD s8, a2, zero
  ADD s7, a1, zero
  ADDIW s9, t1, 1
  ADD s0, s7, zero
  ADD s1, s8, zero
  ADD s2, s10, zero
  ADD s3, s11, zero
  ADD s4, t0, zero
  ADD s5, s9, zero
  ADD s6, a0, zero
  JAL zero, bb8
bb13:
  XORI s0, t2, 60
  SLTIU s1, s0, 1
  BNE s1, zero, bb14
  JAL zero, bb16
bb14:
  ADDI s0, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s1, t4, s0
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  ADD s7, s1, zero
  JAL zero, bb15
bb15:
  ADD s1, s7, zero
  ADD s8, s6, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s0, zero
  ADD a1, t1, zero
  ADD a2, t0, zero
  ADD a3, s11, zero
  ADD a4, s10, zero
  ADD a5, s9, zero
  ADD a6, s8, zero
  ADD a7, s1, zero
  JAL zero, bb12
bb16:
  XORI s1, t2, 43
  SLTIU s8, s1, 1
  BNE s8, zero, bb17
  JAL zero, bb19
bb17:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s1
  LA s1, tape
  ADD s9, s1, s8
  LW s1, 0(s9)
  ADDIW s8, s1, 1
  SW s8, 0(s9)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s10, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t0, t4, zero
  JAL zero, bb18
bb18:
  ADD t1, t0, zero
  ADD a0, s11, zero
  ADD a1, s10, zero
  ADD a2, s9, zero
  ADD a3, s8, zero
  ADD a4, s1, zero
  ADD s0, a4, zero
  ADD s2, a3, zero
  ADD s3, a2, zero
  ADD s4, a1, zero
  ADD s5, a0, zero
  ADD s6, t1, zero
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb15
bb19:
  XORI s0, t2, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb20
  JAL zero, bb22
bb20:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
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
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  JAL zero, bb21
bb21:
  ADD s7, s6, zero
  ADD t1, s5, zero
  ADD a0, s4, zero
  ADD a1, s3, zero
  ADD a2, s2, zero
  ADD a3, s0, zero
  ADD s1, a3, zero
  ADD s8, a2, zero
  ADD s9, a1, zero
  ADD s10, a0, zero
  ADD s11, t1, zero
  ADD t0, s7, zero
  JAL zero, bb18
bb22:
  XORI s1, t2, 91
  SLTIU s7, s1, 1
  BNE s7, zero, bb23
  JAL zero, bb25
bb23:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s7, t4, s1
  LA s1, tape
  ADD s8, s1, s7
  LW s1, 0(s8)
  XOR s7, s1, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb26
  JAL zero, bb28
bb24:
  ADD s10, a2, zero
  ADD a3, a1, zero
  ADD a4, s11, zero
  ADD a5, t0, zero
  ADD a6, a0, zero
  ADD a7, t1, zero
  ADD s0, a7, zero
  ADD s2, a6, zero
  ADD s3, a5, zero
  ADD s4, a4, zero
  ADD s5, a3, zero
  ADD s6, s10, zero
  JAL zero, bb21
bb25:
  XORI s0, t2, 93
  SLTIU s1, s0, 1
  BNE s1, zero, bb36
  JAL zero, bb38
bb26:
  ADDI s7, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s8, t4, s7
  ADDI t6, sp, 0
  ADD s7, t6, s8
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s7, t4, 1
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  ADD s9, s7, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb27
bb27:
  ADD s10, s7, zero
  ADD s11, s9, zero
  ADD t0, s8, zero
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD t1, t4, zero
  ADD a0, t0, zero
  ADD t0, s11, zero
  ADD s11, s1, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a1, t4, zero
  ADD a2, s10, zero
  JAL zero, bb24
bb28:
  ADDI s0, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb29
bb29:
  ADD s3, s2, zero
  ADD s4, s0, zero
  SLT s5, zero, s4
  BNE s5, zero, bb30
  JAL zero, bb31
bb30:
  ADDIW s5, s3, 1
  ADDI s6, zero, 4
  MULW s10, s5, s6
  LA s6, program
  ADD a3, s6, s10
  LW s6, 0(a3)
  XORI s10, s6, 93
  SLTIU s6, s10, 1
  BNE s6, zero, bb32
  JAL zero, bb50
bb31:
  ADD s8, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  ADD s7, s3, zero
  JAL zero, bb27
bb32:
  ADDI s6, zero, 1
  SUBW s10, s4, s6
  ADD s6, s10, zero
  JAL zero, bb33
bb33:
  ADD s10, s6, zero
  LW a4, 0(a3)
  XORI a5, a4, 91
  SLTIU a4, a5, 1
  BNE a4, zero, bb34
  JAL zero, bb51
bb34:
  ADDIW a4, s10, 1
  ADD a5, a4, zero
  JAL zero, bb35
bb35:
  ADD a4, a5, zero
  ADD s0, a4, zero
  ADD s2, s5, zero
  JAL zero, bb29
bb36:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s1, t4, s0
  LA s0, tape
  ADD s2, s0, s1
  LW s0, 0(s2)
  XOR s1, s0, zero
  SLTIU s2, s1, 1
  BNE s2, zero, bb39
  JAL zero, bb41
bb37:
  ADD s3, s7, zero
  ADD s8, s4, zero
  ADD s9, s6, zero
  ADD s10, s5, zero
  ADD t1, s10, zero
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD a0, t4, zero
  ADD t0, s9, zero
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  ADD a1, s8, zero
  ADD a2, s3, zero
  JAL zero, bb24
bb38:
  XORI s0, t2, 46
  SLTIU s1, s0, 1
  BNE s1, zero, bb42
  JAL zero, bb44
bb39:
  ADDI s1, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s2, t4, s1
  ADD s1, s2, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  JAL zero, bb40
bb40:
  ADD s3, s2, zero
  ADD s4, s1, zero
  ADD s5, s0, zero
  ADD s6, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  ADD s7, s3, zero
  JAL zero, bb37
bb41:
  ADDI s3, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s8, t4, s3
  ADDI s3, zero, 4
  MULW s9, s8, s3
  ADDI t5, sp, 0
  ADD s3, t5, s9
  LW s8, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD s2, s8, zero
  JAL zero, bb40
bb42:
  LA s0, output_length
  LW s1, 0(s0)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, output
  ADD s1, s0, s2
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
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
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  JAL zero, bb43
bb43:
  ADD s1, s0, zero
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  ADD s4, s1, zero
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  JAL zero, bb37
bb44:
  XORI s1, t2, 44
  SLTIU s2, s1, 1
  BNE s2, zero, bb45
  JAL zero, bb52
bb45:
  LA s1, input_length
  LW s2, 0(s1)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s1, t4, s2
  XORI s2, s1, 1
  BNE s2, zero, bb47
  JAL zero, bb49
bb46:
  ADD s2, s3, zero
  ADD s0, s2, zero
  JAL zero, bb43
bb47:
  ADDI s1, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s1
  LA s1, tape
  ADD s3, s1, s2
  SW zero, 0(s3)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  JAL zero, bb48
bb48:
  ADD s2, s1, zero
  ADD s3, s2, zero
  JAL zero, bb46
bb49:
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s0
  LA s0, tape
  ADD s4, s0, s2
  ADDI s0, zero, 4
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  MULW s2, t4, s0
  LA s0, input
  ADD s5, s0, s2
  LW s0, 0(s5)
  SW s0, 0(s4)
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADDIW s0, t4, 1
  ADD s1, s0, zero
  JAL zero, bb48
bb50:
  ADD s6, s4, zero
  JAL zero, bb33
bb51:
  ADD a5, s10, zero
  JAL zero, bb35
bb52:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  JAL zero, bb46
read_program:
  ADDI sp, sp, -192
  SD s8, 80(sp)
  SD s7, 88(sp)
  SD s6, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD s10, 120(sp)
  SD s1, 128(sp)
  SD s11, 136(sp)
  SD ra, 144(sp)
  SD s2, 152(sp)
  SD s9, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb64
bb54:
  ADD s10, s1, zero
  ADD s1, s10, zero
  JAL zero, bb55
bb55:
  ADD s10, s1, zero
  XORI s11, s10, 35
  SLTU s0, zero, s11
  BNE s0, zero, bb56
  JAL zero, bb58
bb56:
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
  JAL zero, bb91
bb57:
  ADD s9, s2, zero
  LA s2, program_length
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  LA s0, program_length
  SW s2, 0(s0)
  ADD s1, s9, zero
  JAL zero, bb55
bb58:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb59
  JAL zero, bb60
bb59:
  LD s8, 80(sp)
  LD s7, 88(sp)
  LD s6, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s10, 120(sp)
  LD s1, 128(sp)
  LD s11, 136(sp)
  LD ra, 144(sp)
  LD s2, 152(sp)
  LD s9, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb60:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb61
bb61:
  ADD s1, s0, zero
  LA s2, input_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, input
  ADD s4, s2, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb61
bb63:
  LD s8, 80(sp)
  LD s7, 88(sp)
  LD s6, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s10, 120(sp)
  LD s1, 128(sp)
  LD s11, 136(sp)
  LD ra, 144(sp)
  LD s2, 152(sp)
  LD s9, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb64:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s2, t4, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb67
  JAL zero, bb68
bb65:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb64
bb66:
  LW t4, 0(sp)
  ADD s1, t4, zero
  JAL zero, bb54
bb67:
  LW t4, 0(sp)
  XORI s2, t4, 60
  SLTU s3, zero, s2
  ADD t4, s3, zero
  SB t4, 8(sp)
  JAL zero, bb69
bb68:
  ADD t4, zero, zero
  SB t4, 8(sp)
  JAL zero, bb69
bb69:
  LB t4, 8(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb70
  JAL zero, bb71
bb70:
  LW t4, 0(sp)
  XORI s3, t4, 43
  SLTU s4, zero, s3
  ADD t4, s4, zero
  SB t4, 16(sp)
  JAL zero, bb72
bb71:
  ADD t4, zero, zero
  SB t4, 16(sp)
  JAL zero, bb72
bb72:
  LB t4, 16(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb73
  JAL zero, bb74
bb73:
  LW t4, 0(sp)
  XORI s4, t4, 45
  SLTU s5, zero, s4
  ADD t4, s5, zero
  SB t4, 24(sp)
  JAL zero, bb75
bb74:
  ADD t4, zero, zero
  SB t4, 24(sp)
  JAL zero, bb75
bb75:
  LB t4, 24(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb76
  JAL zero, bb77
bb76:
  LW t4, 0(sp)
  XORI s5, t4, 91
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 32(sp)
  JAL zero, bb78
bb77:
  ADD t4, zero, zero
  SB t4, 32(sp)
  JAL zero, bb78
bb78:
  LB t4, 32(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb79
  JAL zero, bb80
bb79:
  LW t4, 0(sp)
  XORI s6, t4, 93
  SLTU s7, zero, s6
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb81
bb80:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb81
bb81:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb82
  JAL zero, bb83
bb82:
  LW t4, 0(sp)
  XORI s7, t4, 46
  SLTU s8, zero, s7
  ADD t4, s8, zero
  SB t4, 48(sp)
  JAL zero, bb84
bb83:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb84
bb84:
  LB t4, 48(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb85
  JAL zero, bb86
bb85:
  LW t4, 0(sp)
  XORI s8, t4, 44
  SLTU s9, zero, s8
  ADD t4, s9, zero
  SB t4, 56(sp)
  JAL zero, bb87
bb86:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb87
bb87:
  LB t4, 56(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb88
  JAL zero, bb89
bb88:
  LW t4, 0(sp)
  XORI s9, t4, 35
  SLTU s10, zero, s9
  ADD t4, s10, zero
  SB t4, 64(sp)
  JAL zero, bb90
bb89:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb90
bb90:
  LB t4, 64(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb65
  JAL zero, bb66
bb91:
  ADD t4, s2, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  XORI s10, t4, 62
  SLTU s11, zero, s10
  BNE s11, zero, bb94
  JAL zero, bb95
bb92:
  CALL getch
  ADD s9, a0, zero
  ADD s2, s9, zero
  JAL zero, bb91
bb93:
  LW t4, 72(sp)
  ADD s2, t4, zero
  JAL zero, bb57
bb94:
  LW t4, 72(sp)
  XORI s10, t4, 60
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb96
bb95:
  ADD s10, zero, zero
  JAL zero, bb96
bb96:
  ADD s11, s10, zero
  BNE s11, zero, bb97
  JAL zero, bb98
bb97:
  LW t4, 72(sp)
  XORI s11, t4, 43
  SLTU s3, zero, s11
  ADD s11, s3, zero
  JAL zero, bb99
bb98:
  ADD s11, zero, zero
  JAL zero, bb99
bb99:
  ADD s3, s11, zero
  BNE s3, zero, bb100
  JAL zero, bb101
bb100:
  LW t4, 72(sp)
  XORI s3, t4, 45
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb102
bb101:
  ADD s3, zero, zero
  JAL zero, bb102
bb102:
  ADD s4, s3, zero
  BNE s4, zero, bb103
  JAL zero, bb104
bb103:
  LW t4, 72(sp)
  XORI s4, t4, 91
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb105
bb104:
  ADD s4, zero, zero
  JAL zero, bb105
bb105:
  ADD s5, s4, zero
  BNE s5, zero, bb106
  JAL zero, bb107
bb106:
  LW t4, 72(sp)
  XORI s5, t4, 93
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb108
bb107:
  ADD s5, zero, zero
  JAL zero, bb108
bb108:
  ADD s6, s5, zero
  BNE s6, zero, bb109
  JAL zero, bb110
bb109:
  LW t4, 72(sp)
  XORI s6, t4, 46
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb111
bb110:
  ADD s6, zero, zero
  JAL zero, bb111
bb111:
  ADD s7, s6, zero
  BNE s7, zero, bb112
  JAL zero, bb113
bb112:
  LW t4, 72(sp)
  XORI s7, t4, 44
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb114
bb113:
  ADD s7, zero, zero
  JAL zero, bb114
bb114:
  ADD s8, s7, zero
  BNE s8, zero, bb115
  JAL zero, bb116
bb115:
  LW t4, 72(sp)
  XORI s8, t4, 35
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb117
bb116:
  ADD s8, zero, zero
  JAL zero, bb117
bb117:
  ADD s9, s8, zero
  BNE s9, zero, bb92
  JAL zero, bb93
main:
  ADDI sp, sp, -192
  SD s8, 80(sp)
  SD s7, 88(sp)
  SD s6, 96(sp)
  SD s0, 104(sp)
  SD s5, 112(sp)
  SD s10, 120(sp)
  SD s1, 128(sp)
  SD ra, 136(sp)
  SD s11, 144(sp)
  SD s2, 152(sp)
  SD s3, 160(sp)
  SD s4, 168(sp)
  SD s9, 176(sp)
  CALL getch
  ADD s0, a0, zero
  ADD s1, s0, zero
  JAL zero, bb135
bb119:
  ADDI a0, zero, 116
  CALL _sysy_starttime
  CALL run_program
  ADDI a0, zero, 118
  CALL _sysy_stoptime
  JAL zero, bb121
bb120:
  ADD a0, zero, zero
  LD s8, 80(sp)
  LD s7, 88(sp)
  LD s6, 96(sp)
  LD s0, 104(sp)
  LD s5, 112(sp)
  LD s10, 120(sp)
  LD s1, 128(sp)
  LD ra, 136(sp)
  LD s11, 144(sp)
  LD s2, 152(sp)
  LD s3, 160(sp)
  LD s4, 168(sp)
  LD s9, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb121:
  ADD s0, zero, zero
  JAL zero, bb122
bb122:
  ADD s1, s0, zero
  LA s2, output_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb123
  JAL zero, bb124
bb123:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, output
  ADD s4, s2, s3
  LW s2, 0(s4)
  ADD a0, s2, zero
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb122
bb124:
  JAL zero, bb120
bb125:
  ADD s10, s1, zero
  ADD s1, s10, zero
  JAL zero, bb126
bb126:
  ADD s10, s1, zero
  XORI s11, s10, 35
  SLTU s0, zero, s11
  BNE s0, zero, bb127
  JAL zero, bb129
bb127:
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
  JAL zero, bb162
bb128:
  ADD s9, s2, zero
  LA s2, program_length
  LW s0, 0(s2)
  ADDIW s2, s0, 1
  LA s0, program_length
  SW s2, 0(s0)
  ADD s1, s9, zero
  JAL zero, bb126
bb129:
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 105
  SLTU s0, zero, s1
  BNE s0, zero, bb130
  JAL zero, bb131
bb130:
  JAL zero, bb119
bb131:
  CALL getint
  ADD s0, a0, zero
  LA s1, input_length
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADD s0, zero, zero
  JAL zero, bb132
bb132:
  ADD s1, s0, zero
  LA s2, input_length
  LW s3, 0(s2)
  SLT s2, s1, s3
  BNE s2, zero, bb133
  JAL zero, bb134
bb133:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, input
  ADD s4, s2, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb132
bb134:
  JAL zero, bb119
bb135:
  ADD t4, s1, zero
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s2, t4, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb138
  JAL zero, bb139
bb136:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb135
bb137:
  LW t4, 0(sp)
  ADD s1, t4, zero
  JAL zero, bb125
bb138:
  LW t4, 0(sp)
  XORI s2, t4, 60
  SLTU s3, zero, s2
  ADD t4, s3, zero
  SB t4, 8(sp)
  JAL zero, bb140
bb139:
  ADD t4, zero, zero
  SB t4, 8(sp)
  JAL zero, bb140
bb140:
  LB t4, 8(sp)
  ADD s3, t4, zero
  BNE s3, zero, bb141
  JAL zero, bb142
bb141:
  LW t4, 0(sp)
  XORI s3, t4, 43
  SLTU s4, zero, s3
  ADD t4, s4, zero
  SB t4, 16(sp)
  JAL zero, bb143
bb142:
  ADD t4, zero, zero
  SB t4, 16(sp)
  JAL zero, bb143
bb143:
  LB t4, 16(sp)
  ADD s4, t4, zero
  BNE s4, zero, bb144
  JAL zero, bb145
bb144:
  LW t4, 0(sp)
  XORI s4, t4, 45
  SLTU s5, zero, s4
  ADD t4, s5, zero
  SB t4, 24(sp)
  JAL zero, bb146
bb145:
  ADD t4, zero, zero
  SB t4, 24(sp)
  JAL zero, bb146
bb146:
  LB t4, 24(sp)
  ADD s5, t4, zero
  BNE s5, zero, bb147
  JAL zero, bb148
bb147:
  LW t4, 0(sp)
  XORI s5, t4, 91
  SLTU s6, zero, s5
  ADD t4, s6, zero
  SB t4, 32(sp)
  JAL zero, bb149
bb148:
  ADD t4, zero, zero
  SB t4, 32(sp)
  JAL zero, bb149
bb149:
  LB t4, 32(sp)
  ADD s6, t4, zero
  BNE s6, zero, bb150
  JAL zero, bb151
bb150:
  LW t4, 0(sp)
  XORI s6, t4, 93
  SLTU s7, zero, s6
  ADD t4, s7, zero
  SB t4, 40(sp)
  JAL zero, bb152
bb151:
  ADD t4, zero, zero
  SB t4, 40(sp)
  JAL zero, bb152
bb152:
  LB t4, 40(sp)
  ADD s7, t4, zero
  BNE s7, zero, bb153
  JAL zero, bb154
bb153:
  LW t4, 0(sp)
  XORI s7, t4, 46
  SLTU s8, zero, s7
  ADD t4, s8, zero
  SB t4, 48(sp)
  JAL zero, bb155
bb154:
  ADD t4, zero, zero
  SB t4, 48(sp)
  JAL zero, bb155
bb155:
  LB t4, 48(sp)
  ADD s8, t4, zero
  BNE s8, zero, bb156
  JAL zero, bb157
bb156:
  LW t4, 0(sp)
  XORI s8, t4, 44
  SLTU s9, zero, s8
  ADD t4, s9, zero
  SB t4, 56(sp)
  JAL zero, bb158
bb157:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb158
bb158:
  LB t4, 56(sp)
  ADD s9, t4, zero
  BNE s9, zero, bb159
  JAL zero, bb160
bb159:
  LW t4, 0(sp)
  XORI s9, t4, 35
  SLTU s10, zero, s9
  ADD t4, s10, zero
  SB t4, 64(sp)
  JAL zero, bb161
bb160:
  ADD t4, zero, zero
  SB t4, 64(sp)
  JAL zero, bb161
bb161:
  LB t4, 64(sp)
  ADD s10, t4, zero
  BNE s10, zero, bb136
  JAL zero, bb137
bb162:
  ADD t4, s2, zero
  SW t4, 72(sp)
  LW t4, 72(sp)
  XORI s10, t4, 62
  SLTU s11, zero, s10
  BNE s11, zero, bb165
  JAL zero, bb166
bb163:
  CALL getch
  ADD s9, a0, zero
  ADD s2, s9, zero
  JAL zero, bb162
bb164:
  LW t4, 72(sp)
  ADD s2, t4, zero
  JAL zero, bb128
bb165:
  LW t4, 72(sp)
  XORI s10, t4, 60
  SLTU s11, zero, s10
  ADD s10, s11, zero
  JAL zero, bb167
bb166:
  ADD s10, zero, zero
  JAL zero, bb167
bb167:
  ADD s11, s10, zero
  BNE s11, zero, bb168
  JAL zero, bb169
bb168:
  LW t4, 72(sp)
  XORI s11, t4, 43
  SLTU s3, zero, s11
  ADD s11, s3, zero
  JAL zero, bb170
bb169:
  ADD s11, zero, zero
  JAL zero, bb170
bb170:
  ADD s3, s11, zero
  BNE s3, zero, bb171
  JAL zero, bb172
bb171:
  LW t4, 72(sp)
  XORI s3, t4, 45
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb173
bb172:
  ADD s3, zero, zero
  JAL zero, bb173
bb173:
  ADD s4, s3, zero
  BNE s4, zero, bb174
  JAL zero, bb175
bb174:
  LW t4, 72(sp)
  XORI s4, t4, 91
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb176
bb175:
  ADD s4, zero, zero
  JAL zero, bb176
bb176:
  ADD s5, s4, zero
  BNE s5, zero, bb177
  JAL zero, bb178
bb177:
  LW t4, 72(sp)
  XORI s5, t4, 93
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb179
bb178:
  ADD s5, zero, zero
  JAL zero, bb179
bb179:
  ADD s6, s5, zero
  BNE s6, zero, bb180
  JAL zero, bb181
bb180:
  LW t4, 72(sp)
  XORI s6, t4, 46
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb182
bb181:
  ADD s6, zero, zero
  JAL zero, bb182
bb182:
  ADD s7, s6, zero
  BNE s7, zero, bb183
  JAL zero, bb184
bb183:
  LW t4, 72(sp)
  XORI s7, t4, 44
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb185
bb184:
  ADD s7, zero, zero
  JAL zero, bb185
bb185:
  ADD s8, s7, zero
  BNE s8, zero, bb186
  JAL zero, bb187
bb186:
  LW t4, 72(sp)
  XORI s8, t4, 35
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb188
bb187:
  ADD s8, zero, zero
  JAL zero, bb188
bb188:
  ADD s9, s8, zero
  BNE s9, zero, bb163
  JAL zero, bb164
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
  JAL zero, bb190
bb190:
  ADD s0, s1, zero
  XORI s2, s0, 62
  SLTU s3, zero, s2
  BNE s3, zero, bb193
  JAL zero, bb194
bb191:
  CALL getch
  ADD s10, a0, zero
  ADD s1, s10, zero
  JAL zero, bb190
bb192:
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
bb193:
  XORI s2, s0, 60
  SLTU s3, zero, s2
  ADD s2, s3, zero
  JAL zero, bb195
bb194:
  ADD s2, zero, zero
  JAL zero, bb195
bb195:
  ADD s3, s2, zero
  BNE s3, zero, bb196
  JAL zero, bb197
bb196:
  XORI s3, s0, 43
  SLTU s4, zero, s3
  ADD s3, s4, zero
  JAL zero, bb198
bb197:
  ADD s3, zero, zero
  JAL zero, bb198
bb198:
  ADD s4, s3, zero
  BNE s4, zero, bb199
  JAL zero, bb200
bb199:
  XORI s4, s0, 45
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb201
bb200:
  ADD s4, zero, zero
  JAL zero, bb201
bb201:
  ADD s5, s4, zero
  BNE s5, zero, bb202
  JAL zero, bb203
bb202:
  XORI s5, s0, 91
  SLTU s6, zero, s5
  ADD s5, s6, zero
  JAL zero, bb204
bb203:
  ADD s5, zero, zero
  JAL zero, bb204
bb204:
  ADD s6, s5, zero
  BNE s6, zero, bb205
  JAL zero, bb206
bb205:
  XORI s6, s0, 93
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb207
bb206:
  ADD s6, zero, zero
  JAL zero, bb207
bb207:
  ADD s7, s6, zero
  BNE s7, zero, bb208
  JAL zero, bb209
bb208:
  XORI s7, s0, 46
  SLTU s8, zero, s7
  ADD s7, s8, zero
  JAL zero, bb210
bb209:
  ADD s7, zero, zero
  JAL zero, bb210
bb210:
  ADD s8, s7, zero
  BNE s8, zero, bb211
  JAL zero, bb212
bb211:
  XORI s8, s0, 44
  SLTU s9, zero, s8
  ADD s8, s9, zero
  JAL zero, bb213
bb212:
  ADD s8, zero, zero
  JAL zero, bb213
bb213:
  ADD s9, s8, zero
  BNE s9, zero, bb214
  JAL zero, bb215
bb214:
  XORI s9, s0, 35
  SLTU s10, zero, s9
  ADD s9, s10, zero
  JAL zero, bb216
bb215:
  ADD s9, zero, zero
  JAL zero, bb216
bb216:
  ADD s10, s9, zero
  BNE s10, zero, bb191
  JAL zero, bb192
