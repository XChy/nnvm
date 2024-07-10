.global eval
.global eval_op
.global stack_size
.global stack_peek
.global stack_pop
.global get_op_prec
.global stack_push
.global is_num
.global is_space
.global main
.global panic
.global next_token
.global next_char
.section .bss






.section .data
cur_token:
.word 0x00000000
other:
.word 0x00000000
num:
.word 0x00000000
last_char:
.word 0x00000020
TOKEN_OTHER:
.word 0x00000001
TOKEN_NUM:
.word 0x00000000
.section .text
eval:
  LUI t0, 1048575
  ADDIW t0, t0, 1808
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  SD s8, 0(t5)
  ADDI s0, zero, 256
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb179
  # implict jump to bb2
bb2:
  ADDI s0, zero, 256
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb178
  # implict jump to bb4
bb4:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb177
  # implict jump to bb5
bb5:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  SLLIW s0, s2, 2
  ADDI t5, sp, 1024
  ADD s2, t5, s0
  SW s1, 0(s2)
  # implict jump to bb6
bb6:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb176
  # implict jump to bb7
bb7:
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb8
bb8:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb175
  # implict jump to bb9
bb9:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb10
bb10:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb174
  # implict jump to bb11
bb11:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb173
  # implict jump to bb12
bb12:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb13
bb13:
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb172
  # implict jump to bb14
bb14:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb15
bb15:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb162
  # implict jump to bb16
bb16:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb17
bb17:
  LA s7, cur_token
  LW s8, 0(s7)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb18
bb18:
  LUI t3, 1
  ADDIW t3, t3, -1992
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2008
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1988
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -2012
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s1, cur_token
  LW s2, 0(s1)
  XORI s1, s2, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb60
  # implict jump to bb19
bb19:
  LA s5, last_char
  LW t4, 0(s5)
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s5, t4, 32
  SLTIU s2, s5, 1
  BNE s2, zero, bb59
  # implict jump to bb20
bb20:
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1980
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb21
bb21:
  LUI t4, 1
  ADDIW t4, t4, -1980
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb58
  # implict jump to bb22
bb22:
  ADD s5, zero, zero
  # implict jump to bb23
bb23:
  ADD s0, s5, zero
  XOR s11, s0, zero
  SLTU s0, zero, s11
  BNE s0, zero, bb57
  # implict jump to bb24
bb24:
  LA s0, last_char
  LW s11, 0(s0)
  SLTI s0, s11, 48
  XORI s10, s0, 1
  BNE s10, zero, bb56
  # implict jump to bb25
bb25:
  ADD s10, zero, zero
  # implict jump to bb26
bb26:
  ADD s0, s10, zero
  BNE s0, zero, bb55
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  ADD s11, s0, zero
  XOR s1, s11, zero
  SLTU s11, zero, s1
  BNE s11, zero, bb45
  # implict jump to bb29
bb29:
  LA s1, last_char
  LW s2, 0(s1)
  LA s1, other
  SW s2, 0(s1)
  CALL getch
  ADD s1, a0, zero
  LA s2, last_char
  SW s1, 0(s2)
  LA s1, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s1)
  # implict jump to bb30
bb30:
  LA s3, cur_token
  LW s9, 0(s3)
  # implict jump to bb31
bb31:
  LW s3, 0(sp)
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb33
  # implict jump to bb32
bb32:
  LW s2, 1024(sp)
  SLLIW s3, s2, 2
  ADDI t5, sp, 1024
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1848
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb33:
  LW s3, 0(sp)
  SLLIW s9, s3, 2
  ADDI t5, sp, 0
  ADD s11, t5, s9
  LW s9, 0(s11)
  ADDI s11, zero, 1
  SUBW s8, s3, s11
  SW s8, 0(sp)
  LW s3, 1024(sp)
  SLLIW s8, s3, 2
  ADDI t5, sp, 1024
  ADD s11, t5, s8
  LW s8, 0(s11)
  ADDI s11, zero, 1
  SUBW s7, s3, s11
  SW s7, 1024(sp)
  LW s3, 1024(sp)
  SLLIW s7, s3, 2
  ADDI t5, sp, 1024
  ADD s11, t5, s7
  LW s7, 0(s11)
  ADDI s11, zero, 1
  SUBW s2, s3, s11
  SW s2, 1024(sp)
  XORI s2, s9, 43
  SLTIU s3, s2, 1
  BNE s3, zero, bb44
  # implict jump to bb34
bb34:
  XORI s2, s9, 45
  SLTIU s6, s2, 1
  BNE s6, zero, bb43
  # implict jump to bb35
bb35:
  XORI s2, s9, 42
  SLTIU s6, s2, 1
  BNE s6, zero, bb42
  # implict jump to bb36
bb36:
  XORI s2, s9, 47
  SLTIU s6, s2, 1
  BNE s6, zero, bb41
  # implict jump to bb37
bb37:
  XORI s2, s9, 37
  SLTIU s6, s2, 1
  BNE s6, zero, bb40
  # implict jump to bb38
bb38:
  ADD s3, zero, zero
  # implict jump to bb39
bb39:
  ADD s2, s3, zero
  LW s11, 1024(sp)
  ADDIW s6, s11, 1
  SW s6, 1024(sp)
  SLLIW s11, s6, 2
  ADDI t5, sp, 1024
  ADD s6, t5, s11
  SW s2, 0(s6)
  JAL zero, bb31
bb40:
  REMW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb39
bb41:
  DIVW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb39
bb42:
  MULW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb39
bb43:
  SUBW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb39
bb44:
  ADDW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb39
bb45:
  LA s1, last_char
  LW s11, 0(s1)
  ADDI s1, zero, 48
  SUBW s4, s11, s1
  LA s1, num
  SW s4, 0(s1)
  # implict jump to bb46
bb46:
  CALL getch
  ADD s1, a0, zero
  LA s4, last_char
  SW s1, 0(s4)
  SLTI s4, s1, 48
  XORI s11, s4, 1
  BNE s11, zero, bb54
  # implict jump to bb47
bb47:
  ADD s4, zero, zero
  # implict jump to bb48
bb48:
  ADD s1, s4, zero
  BNE s1, zero, bb53
  # implict jump to bb49
bb49:
  ADD s1, zero, zero
  # implict jump to bb50
bb50:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb52
  # implict jump to bb51
bb51:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb30
bb52:
  LA s3, num
  LW s11, 0(s3)
  ADDI s3, zero, 10
  MULW s9, s11, s3
  LA s3, last_char
  LW s11, 0(s3)
  ADDW s3, s9, s11
  ADDI s9, zero, 48
  SUBW s11, s3, s9
  LA s3, num
  SW s11, 0(s3)
  JAL zero, bb46
bb53:
  ADDI s1, zero, 1
  JAL zero, bb50
bb54:
  ADDI s4, zero, 57
  SLT s11, s4, s1
  XORI s1, s11, 1
  ADD s4, s1, zero
  JAL zero, bb48
bb55:
  ADDI s0, zero, 1
  JAL zero, bb28
bb56:
  ADDI s0, zero, 57
  SLT s10, s0, s11
  XORI s0, s10, 1
  ADD s10, s0, zero
  JAL zero, bb26
bb57:
  CALL getch
  ADD s0, a0, zero
  LA s11, last_char
  SW s0, 0(s11)
  JAL zero, bb19
bb58:
  ADDI s5, zero, 1
  JAL zero, bb23
bb59:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1980
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb21
bb60:
  LA s1, other
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb161
  # implict jump to bb61
bb61:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb62
bb62:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb160
  # implict jump to bb63
bb63:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb159
  # implict jump to bb64
bb64:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb65
bb65:
  ADD s1, s0, zero
  BNE s1, zero, bb158
  # implict jump to bb66
bb66:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb67
bb67:
  ADD s2, s1, zero
  BNE s2, zero, bb157
  # implict jump to bb68
bb68:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb69
bb69:
  LUI t3, 1
  ADDIW t3, t3, -2000
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s5, zero, s6
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb19
  # implict jump to bb70
bb70:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb156
  # implict jump to bb71
bb71:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1972
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb72
bb72:
  LUI t4, 1
  ADDIW t4, t4, -1972
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb155
  # implict jump to bb73
bb73:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb74
bb74:
  LUI t4, 1
  ADDIW t4, t4, -1964
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb154
  # implict jump to bb75
bb75:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb153
  # implict jump to bb76
bb76:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb77
bb77:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb152
  # implict jump to bb78
bb78:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb79
bb79:
  LUI t4, 1
  ADDIW t4, t4, -1956
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb142
  # implict jump to bb80
bb80:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb81
bb81:
  LA s7, cur_token
  LW s8, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2012
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  # implict jump to bb82
bb82:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1940
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb127
  # implict jump to bb83
bb83:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb84
bb84:
  LUI t4, 1
  ADDIW t4, t4, -1932
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb115
  # implict jump to bb85
bb85:
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  SLLIW s0, s2, 2
  ADDI t5, sp, 0
  ADD s2, t5, s0
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s2)
  LA s0, cur_token
  LW s2, 0(s0)
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb114
  # implict jump to bb86
bb86:
  LA s0, num
  LW s2, 0(s0)
  LW s0, 1024(sp)
  ADDIW s3, s0, 1
  SW s3, 1024(sp)
  SLLIW s0, s3, 2
  ADDI t5, sp, 1024
  ADD s3, t5, s0
  SW s2, 0(s3)
  # implict jump to bb87
bb87:
  LA s0, last_char
  LW s2, 0(s0)
  XORI s0, s2, 32
  SLTIU s3, s0, 1
  BNE s3, zero, bb113
  # implict jump to bb88
bb88:
  XORI s3, s2, 10
  SLTIU s2, s3, 1
  ADD s0, s2, zero
  # implict jump to bb89
bb89:
  ADD s3, s0, zero
  BNE s3, zero, bb112
  # implict jump to bb90
bb90:
  ADD s3, zero, zero
  # implict jump to bb91
bb91:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb111
  # implict jump to bb92
bb92:
  LA s5, last_char
  LW s6, 0(s5)
  SLTI s5, s6, 48
  XORI s7, s5, 1
  BNE s7, zero, bb110
  # implict jump to bb93
bb93:
  ADD s6, zero, zero
  # implict jump to bb94
bb94:
  ADD s5, s6, zero
  BNE s5, zero, bb109
  # implict jump to bb95
bb95:
  ADD s5, zero, zero
  # implict jump to bb96
bb96:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb99
  # implict jump to bb97
bb97:
  LA s7, last_char
  LW s8, 0(s7)
  LA s7, other
  SW s8, 0(s7)
  CALL getch
  ADD s7, a0, zero
  LA s8, last_char
  SW s7, 0(s8)
  LA s7, cur_token
  ADDI s8, zero, 1
  SW s8, 0(s7)
  # implict jump to bb98
bb98:
  LA s9, cur_token
  LW s10, 0(s9)
  LUI t3, 1
  ADDIW t3, t3, -1944
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1940
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1988
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb18
bb99:
  LA s7, last_char
  LW s8, 0(s7)
  ADDI s7, zero, 48
  SUBW s9, s8, s7
  LA s7, num
  SW s9, 0(s7)
  # implict jump to bb100
bb100:
  CALL getch
  ADD s7, a0, zero
  LA s8, last_char
  SW s7, 0(s8)
  SLTI s8, s7, 48
  XORI s9, s8, 1
  BNE s9, zero, bb108
  # implict jump to bb101
bb101:
  ADD s8, zero, zero
  # implict jump to bb102
bb102:
  ADD s7, s8, zero
  BNE s7, zero, bb107
  # implict jump to bb103
bb103:
  ADD s7, zero, zero
  # implict jump to bb104
bb104:
  ADD s9, s7, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb106
  # implict jump to bb105
bb105:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb98
bb106:
  LA s9, num
  LW s10, 0(s9)
  ADDI s9, zero, 10
  MULW s11, s10, s9
  LA s9, last_char
  LW s10, 0(s9)
  ADDW s9, s11, s10
  ADDI s10, zero, 48
  SUBW s11, s9, s10
  LA s9, num
  SW s11, 0(s9)
  JAL zero, bb100
bb107:
  ADDI s7, zero, 1
  JAL zero, bb104
bb108:
  ADDI s8, zero, 57
  SLT s9, s8, s7
  XORI s7, s9, 1
  ADD s8, s7, zero
  JAL zero, bb102
bb109:
  ADDI s5, zero, 1
  JAL zero, bb96
bb110:
  ADDI s5, zero, 57
  SLT s7, s5, s6
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb94
bb111:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  JAL zero, bb87
bb112:
  ADDI s3, zero, 1
  JAL zero, bb91
bb113:
  ADDI s0, zero, 1
  JAL zero, bb89
bb114:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1848
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb115:
  LW s3, 0(sp)
  SLLIW s5, s3, 2
  ADDI t5, sp, 0
  ADD s0, t5, s5
  LW s5, 0(s0)
  ADDI s0, zero, 1
  SUBW s11, s3, s0
  SW s11, 0(sp)
  LW s0, 1024(sp)
  SLLIW s3, s0, 2
  ADDI t5, sp, 1024
  ADD s11, t5, s3
  LW s3, 0(s11)
  ADDI s11, zero, 1
  SUBW s10, s0, s11
  SW s10, 1024(sp)
  LW s0, 1024(sp)
  SLLIW s10, s0, 2
  ADDI t5, sp, 1024
  ADD s11, t5, s10
  LW s10, 0(s11)
  ADDI s11, zero, 1
  SUBW s6, s0, s11
  SW s6, 1024(sp)
  XORI s0, s5, 43
  SLTIU s6, s0, 1
  BNE s6, zero, bb126
  # implict jump to bb116
bb116:
  XORI s0, s5, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb125
  # implict jump to bb117
bb117:
  XORI s0, s5, 42
  SLTIU s2, s0, 1
  BNE s2, zero, bb124
  # implict jump to bb118
bb118:
  XORI s0, s5, 47
  SLTIU s2, s0, 1
  BNE s2, zero, bb123
  # implict jump to bb119
bb119:
  XORI s0, s5, 37
  SLTIU s2, s0, 1
  BNE s2, zero, bb122
  # implict jump to bb120
bb120:
  ADD s6, zero, zero
  # implict jump to bb121
bb121:
  ADD s0, s6, zero
  LW s11, 1024(sp)
  ADDIW s2, s11, 1
  SW s2, 1024(sp)
  SLLIW s11, s2, 2
  ADDI t5, sp, 1024
  ADD s2, t5, s11
  SW s0, 0(s2)
  ADD s7, s3, zero
  ADD s8, s10, zero
  ADD s9, s5, zero
  JAL zero, bb82
bb122:
  REMW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb121
bb123:
  DIVW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb121
bb124:
  MULW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb121
bb125:
  SUBW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb121
bb126:
  ADDW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb121
bb127:
  LW s1, 0(sp)
  SLLIW s2, s1, 2
  ADDI t5, sp, 0
  ADD s1, t5, s2
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb141
  # implict jump to bb128
bb128:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s2, s0, 1
  ADD s1, s2, zero
  # implict jump to bb129
bb129:
  ADD s4, s1, zero
  BNE s4, zero, bb140
  # implict jump to bb130
bb130:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s2, s0, 1
  BNE s2, zero, bb139
  # implict jump to bb131
bb131:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 47
  SLTIU s3, s2, 1
  ADD s0, s3, zero
  # implict jump to bb132
bb132:
  ADD s2, s0, zero
  BNE s2, zero, bb138
  # implict jump to bb133
bb133:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s3, t4, 37
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  # implict jump to bb134
bb134:
  ADD s3, s2, zero
  BNE s3, zero, bb137
  # implict jump to bb135
bb135:
  ADD s4, zero, zero
  # implict jump to bb136
bb136:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb84
bb137:
  ADDI s4, zero, 20
  JAL zero, bb136
bb138:
  ADDI s2, zero, 1
  JAL zero, bb134
bb139:
  ADDI s0, zero, 1
  JAL zero, bb132
bb140:
  ADDI s4, zero, 10
  JAL zero, bb136
bb141:
  ADDI s1, zero, 1
  JAL zero, bb129
bb142:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb143
bb143:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb151
  # implict jump to bb144
bb144:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb145
bb145:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb150
  # implict jump to bb146
bb146:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb147
bb147:
  LUI t4, 1
  ADDIW t4, t4, -1948
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb149
  # implict jump to bb148
bb148:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb81
bb149:
  LA s7, num
  LW s8, 0(s7)
  ADDI s7, zero, 10
  MULW s9, s8, s7
  LA s7, last_char
  LW s8, 0(s7)
  ADDW s7, s9, s8
  ADDI s8, zero, 48
  SUBW s9, s7, s8
  LA s7, num
  SW s9, 0(s7)
  JAL zero, bb143
bb150:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb147
bb151:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb145
bb152:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb79
bb153:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb77
bb154:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb70
bb155:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb74
bb156:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1972
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb72
bb157:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb69
bb158:
  ADDI s1, zero, 1
  JAL zero, bb67
bb159:
  ADDI s0, zero, 1
  JAL zero, bb65
bb160:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb69
bb161:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb62
bb162:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb163
bb163:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb171
  # implict jump to bb164
bb164:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb165
bb165:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb170
  # implict jump to bb166
bb166:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb167
bb167:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb169
  # implict jump to bb168
bb168:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb17
bb169:
  LA s7, num
  LW s8, 0(s7)
  ADDI s7, zero, 10
  MULW s9, s8, s7
  LA s7, last_char
  LW s8, 0(s7)
  ADDW s7, s9, s8
  ADDI s8, zero, 48
  SUBW s9, s7, s8
  LA s7, num
  SW s9, 0(s7)
  JAL zero, bb163
bb170:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb167
bb171:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb165
bb172:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb15
bb173:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb13
bb174:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb6
bb175:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb10
bb176:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb8
bb177:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1848
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb178:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb3
bb179:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDI t5, sp, 1024
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb1
eval_op:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  XORI s3, s0, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb190
  # implict jump to bb181
bb181:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb189
  # implict jump to bb182
bb182:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb188
  # implict jump to bb183
bb183:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb187
  # implict jump to bb184
bb184:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb186
  # implict jump to bb185
bb185:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb186:
  REMW s0, s1, s2
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb187:
  DIVW s3, s1, s2
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb188:
  MULW s3, s1, s2
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb189:
  SUBW s3, s1, s2
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb190:
  ADDW s3, s1, s2
  ADD a0, s3, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
stack_size:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
stack_peek:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
stack_pop:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  SLLIW s2, s1, 2
  ADD s3, s0, s2
  LW s2, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SW s4, 0(s0)
  ADD a0, s2, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
get_op_prec:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  XORI s1, s0, 43
  SLTIU s2, s1, 1
  BNE s2, zero, bb207
  # implict jump to bb195
bb195:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb196
bb196:
  ADD s2, s1, zero
  BNE s2, zero, bb206
  # implict jump to bb197
bb197:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb205
  # implict jump to bb198
bb198:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  # implict jump to bb199
bb199:
  ADD s3, s2, zero
  BNE s3, zero, bb204
  # implict jump to bb200
bb200:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  # implict jump to bb201
bb201:
  ADD s4, s3, zero
  BNE s4, zero, bb203
  # implict jump to bb202
bb202:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb203:
  ADDI a0, zero, 20
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb204:
  ADDI s3, zero, 1
  JAL zero, bb201
bb205:
  ADDI s2, zero, 1
  JAL zero, bb199
bb206:
  ADDI a0, zero, 10
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb207:
  ADDI s1, zero, 1
  JAL zero, bb196
stack_push:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LW s2, 0(s0)
  ADDIW s3, s2, 1
  SW s3, 0(s0)
  SLLIW s2, s3, 2
  ADD s3, s0, s2
  SW s1, 0(s3)
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
is_num:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SLTI s1, s0, 48
  XORI s2, s1, 1
  BNE s2, zero, bb214
  # implict jump to bb210
bb210:
  ADD s1, zero, zero
  # implict jump to bb211
bb211:
  ADD s0, s1, zero
  BNE s0, zero, bb213
  # implict jump to bb212
bb212:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb214:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb211
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s2, s1, 1
  BNE s2, zero, bb220
  # implict jump to bb216
bb216:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  # implict jump to bb217
bb217:
  ADD s2, s1, zero
  BNE s2, zero, bb219
  # implict jump to bb218
bb218:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb220:
  ADDI s1, zero, 1
  JAL zero, bb217
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1776
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  SD s4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -1784
  ADD t4, t4, sp
  SD s9, 0(t4)
  CALL getint
  ADD t4, a0, zero
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SW t4, 0(t5)
  CALL getch
  ADD s1, a0, zero
  # implict jump to bb222
bb222:
  LA s1, last_char
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 32
  SLTIU s3, s1, 1
  BNE s3, zero, bb431
  # implict jump to bb223
bb223:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb224
bb224:
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb430
  # implict jump to bb225
bb225:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb226
bb226:
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb429
  # implict jump to bb227
bb227:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb428
  # implict jump to bb228
bb228:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb229
bb229:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb427
  # implict jump to bb230
bb230:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb231
bb231:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb417
  # implict jump to bb232
bb232:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb233
bb233:
  LA s8, cur_token
  LW s9, 0(s8)
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  # implict jump to bb234
bb234:
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb236
  # implict jump to bb235
bb235:
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1824
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1776
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb236:
  ADDI s10, zero, 256
  # implict jump to bb237
bb237:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb416
  # implict jump to bb238
bb238:
  ADDI s0, zero, 256
  # implict jump to bb239
bb239:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb415
  # implict jump to bb240
bb240:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb414
  # implict jump to bb241
bb241:
  LA s1, num
  LW s8, 0(s1)
  LW s1, 0(sp)
  ADDIW s10, s1, 1
  SW s10, 0(sp)
  SLLIW s1, s10, 2
  ADDI t5, sp, 0
  ADD s10, t5, s1
  SW s8, 0(s10)
  # implict jump to bb242
bb242:
  LA s1, last_char
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 32
  SLTIU s10, s1, 1
  BNE s10, zero, bb413
  # implict jump to bb243
bb243:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -2012
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb244
bb244:
  LUI t4, 1
  ADDIW t4, t4, -2012
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb412
  # implict jump to bb245
bb245:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb246
bb246:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb411
  # implict jump to bb247
bb247:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb410
  # implict jump to bb248
bb248:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb249
bb249:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb409
  # implict jump to bb250
bb250:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb251
bb251:
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb399
  # implict jump to bb252
bb252:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb253
bb253:
  LA s6, cur_token
  LW s7, 0(s6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb254
bb254:
  LUI t3, 1
  ADDIW t3, t3, -1956
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1972
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1948
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1980
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s10, cur_token
  LW s3, 0(s10)
  XORI s10, s3, 1
  SLTIU s3, s10, 1
  BNE s3, zero, bb297
  # implict jump to bb255
bb255:
  LA s4, last_char
  LW t4, 0(s4)
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s4, t4, 32
  SLTIU s8, s4, 1
  BNE s8, zero, bb296
  # implict jump to bb256
bb256:
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1940
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb257
bb257:
  LUI t4, 1
  ADDIW t4, t4, -1940
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s8, t4, zero
  BNE s8, zero, bb295
  # implict jump to bb258
bb258:
  ADD s8, zero, zero
  # implict jump to bb259
bb259:
  ADD s1, s8, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  BNE s1, zero, bb294
  # implict jump to bb260
bb260:
  LA s1, last_char
  LW s9, 0(s1)
  SLTI s1, s9, 48
  XORI s2, s1, 1
  BNE s2, zero, bb293
  # implict jump to bb261
bb261:
  ADD s2, zero, zero
  # implict jump to bb262
bb262:
  ADD s1, s2, zero
  BNE s1, zero, bb292
  # implict jump to bb263
bb263:
  ADD s1, zero, zero
  # implict jump to bb264
bb264:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb282
  # implict jump to bb265
bb265:
  LA s0, last_char
  LW s3, 0(s0)
  LA s0, other
  SW s3, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s3, last_char
  SW s0, 0(s3)
  LA s0, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s0)
  # implict jump to bb266
bb266:
  LA s7, cur_token
  LW s9, 0(s7)
  # implict jump to bb267
bb267:
  LW s7, 1024(sp)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb270
  # implict jump to bb268
bb268:
  LW s0, 0(sp)
  SLLIW s4, s0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s4
  LW s4, 0(s0)
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb269
bb269:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s10, t4, s1
  ADD s8, s10, zero
  JAL zero, bb234
bb270:
  LW s7, 1024(sp)
  SLLIW s9, s7, 2
  ADDI t5, sp, 1024
  ADD s11, t5, s9
  LW s9, 0(s11)
  ADDI s11, zero, 1
  SUBW s6, s7, s11
  SW s6, 1024(sp)
  LW s6, 0(sp)
  SLLIW s7, s6, 2
  ADDI t5, sp, 0
  ADD s11, t5, s7
  LW s7, 0(s11)
  ADDI s11, zero, 1
  SUBW s0, s6, s11
  SW s0, 0(sp)
  LW s0, 0(sp)
  SLLIW s6, s0, 2
  ADDI t5, sp, 0
  ADD s11, t5, s6
  LW s6, 0(s11)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 0(sp)
  XORI s0, s9, 43
  SLTIU s4, s0, 1
  BNE s4, zero, bb281
  # implict jump to bb271
bb271:
  XORI s0, s9, 45
  SLTIU s10, s0, 1
  BNE s10, zero, bb280
  # implict jump to bb272
bb272:
  XORI s0, s9, 42
  SLTIU s10, s0, 1
  BNE s10, zero, bb279
  # implict jump to bb273
bb273:
  XORI s0, s9, 47
  SLTIU s10, s0, 1
  BNE s10, zero, bb278
  # implict jump to bb274
bb274:
  XORI s0, s9, 37
  SLTIU s9, s0, 1
  BNE s9, zero, bb277
  # implict jump to bb275
bb275:
  ADD s4, zero, zero
  # implict jump to bb276
bb276:
  ADD s0, s4, zero
  LW s11, 0(sp)
  ADDIW s10, s11, 1
  SW s10, 0(sp)
  SLLIW s11, s10, 2
  ADDI t5, sp, 0
  ADD s10, t5, s11
  SW s0, 0(s10)
  JAL zero, bb267
bb277:
  REMW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb276
bb278:
  DIVW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb276
bb279:
  MULW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb276
bb280:
  SUBW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb276
bb281:
  ADDW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb276
bb282:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  # implict jump to bb283
bb283:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb291
  # implict jump to bb284
bb284:
  ADD s5, zero, zero
  # implict jump to bb285
bb285:
  ADD s3, s5, zero
  BNE s3, zero, bb290
  # implict jump to bb286
bb286:
  ADD s3, zero, zero
  # implict jump to bb287
bb287:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb289
  # implict jump to bb288
bb288:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb266
bb289:
  LA s9, num
  LW s11, 0(s9)
  ADDI s9, zero, 10
  MULW s7, s11, s9
  LA s9, last_char
  LW s11, 0(s9)
  ADDW s9, s7, s11
  ADDI s7, zero, 48
  SUBW s11, s9, s7
  LA s7, num
  SW s11, 0(s7)
  JAL zero, bb283
bb290:
  ADDI s3, zero, 1
  JAL zero, bb287
bb291:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb285
bb292:
  ADDI s1, zero, 1
  JAL zero, bb264
bb293:
  ADDI s1, zero, 57
  SLT s2, s1, s9
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb262
bb294:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  JAL zero, bb255
bb295:
  ADDI s8, zero, 1
  JAL zero, bb259
bb296:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1940
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb257
bb297:
  LA s3, other
  LW t4, 0(s3)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s3, t4, 43
  SLTIU s2, s3, 1
  BNE s2, zero, bb398
  # implict jump to bb298
bb298:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb299
bb299:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb397
  # implict jump to bb300
bb300:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb396
  # implict jump to bb301
bb301:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb302
bb302:
  ADD s1, s0, zero
  BNE s1, zero, bb395
  # implict jump to bb303
bb303:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb304
bb304:
  ADD s2, s1, zero
  BNE s2, zero, bb394
  # implict jump to bb305
bb305:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb306
bb306:
  LUI t3, 1
  ADDIW t3, t3, -1964
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s4, t4, zero
  SLTU s10, zero, s4
  XORI s4, s10, 1
  XOR s10, s4, zero
  SLTU s4, zero, s10
  BNE s4, zero, bb255
  # implict jump to bb307
bb307:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb393
  # implict jump to bb308
bb308:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb309
bb309:
  LUI t4, 1
  ADDIW t4, t4, -1932
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb392
  # implict jump to bb310
bb310:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1924
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb311
bb311:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb391
  # implict jump to bb312
bb312:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb390
  # implict jump to bb313
bb313:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb314
bb314:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb389
  # implict jump to bb315
bb315:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1916
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb316
bb316:
  LUI t4, 1
  ADDIW t4, t4, -1916
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb379
  # implict jump to bb317
bb317:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  LA s0, cur_token
  ADDI s1, zero, 1
  SW s1, 0(s0)
  # implict jump to bb318
bb318:
  LA s7, cur_token
  LW s8, 0(s7)
  LUI t4, 1
  ADDIW t4, t4, -1980
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1972
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  # implict jump to bb319
bb319:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1900
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 1024(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb364
  # implict jump to bb320
bb320:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1892
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb321
bb321:
  LUI t4, 1
  ADDIW t4, t4, -1892
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb352
  # implict jump to bb322
bb322:
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  SLLIW s0, s2, 2
  ADDI t5, sp, 1024
  ADD s2, t5, s0
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s2)
  LA s0, cur_token
  LW s2, 0(s0)
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb351
  # implict jump to bb323
bb323:
  LA s0, num
  LW s2, 0(s0)
  LW s0, 0(sp)
  ADDIW s3, s0, 1
  SW s3, 0(sp)
  SLLIW s0, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s0
  SW s2, 0(s3)
  # implict jump to bb324
bb324:
  LA s0, last_char
  LW s2, 0(s0)
  XORI s0, s2, 32
  SLTIU s3, s0, 1
  BNE s3, zero, bb350
  # implict jump to bb325
bb325:
  XORI s3, s2, 10
  SLTIU s2, s3, 1
  ADD s0, s2, zero
  # implict jump to bb326
bb326:
  ADD s3, s0, zero
  BNE s3, zero, bb349
  # implict jump to bb327
bb327:
  ADD s3, zero, zero
  # implict jump to bb328
bb328:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb348
  # implict jump to bb329
bb329:
  LA s5, last_char
  LW s6, 0(s5)
  SLTI s5, s6, 48
  XORI s7, s5, 1
  BNE s7, zero, bb347
  # implict jump to bb330
bb330:
  ADD s6, zero, zero
  # implict jump to bb331
bb331:
  ADD s5, s6, zero
  BNE s5, zero, bb346
  # implict jump to bb332
bb332:
  ADD s5, zero, zero
  # implict jump to bb333
bb333:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb336
  # implict jump to bb334
bb334:
  LA s7, last_char
  LW s8, 0(s7)
  LA s7, other
  SW s8, 0(s7)
  CALL getch
  ADD s7, a0, zero
  LA s8, last_char
  SW s7, 0(s8)
  LA s7, cur_token
  ADDI s8, zero, 1
  SW s8, 0(s7)
  # implict jump to bb335
bb335:
  LA s9, cur_token
  LW s10, 0(s9)
  LUI t3, 1
  ADDIW t3, t3, -1904
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1948
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1900
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb254
bb336:
  LA s7, last_char
  LW s8, 0(s7)
  ADDI s7, zero, 48
  SUBW s9, s8, s7
  LA s7, num
  SW s9, 0(s7)
  # implict jump to bb337
bb337:
  CALL getch
  ADD s7, a0, zero
  LA s8, last_char
  SW s7, 0(s8)
  SLTI s8, s7, 48
  XORI s9, s8, 1
  BNE s9, zero, bb345
  # implict jump to bb338
bb338:
  ADD s8, zero, zero
  # implict jump to bb339
bb339:
  ADD s7, s8, zero
  BNE s7, zero, bb344
  # implict jump to bb340
bb340:
  ADD s7, zero, zero
  # implict jump to bb341
bb341:
  ADD s9, s7, zero
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb343
  # implict jump to bb342
bb342:
  LA s9, cur_token
  SW zero, 0(s9)
  JAL zero, bb335
bb343:
  LA s9, num
  LW s10, 0(s9)
  ADDI s9, zero, 10
  MULW s11, s10, s9
  LA s9, last_char
  LW s10, 0(s9)
  ADDW s9, s11, s10
  ADDI s10, zero, 48
  SUBW s11, s9, s10
  LA s9, num
  SW s11, 0(s9)
  JAL zero, bb337
bb344:
  ADDI s7, zero, 1
  JAL zero, bb341
bb345:
  ADDI s8, zero, 57
  SLT s9, s8, s7
  XORI s7, s9, 1
  ADD s8, s7, zero
  JAL zero, bb339
bb346:
  ADDI s5, zero, 1
  JAL zero, bb333
bb347:
  ADDI s5, zero, 57
  SLT s7, s5, s6
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb331
bb348:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  JAL zero, bb324
bb349:
  ADDI s3, zero, 1
  JAL zero, bb328
bb350:
  ADDI s0, zero, 1
  JAL zero, bb326
bb351:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb269
bb352:
  LW s3, 1024(sp)
  SLLIW s5, s3, 2
  ADDI t5, sp, 1024
  ADD s0, t5, s5
  LW s5, 0(s0)
  ADDI s0, zero, 1
  SUBW s11, s3, s0
  SW s11, 1024(sp)
  LW s0, 0(sp)
  SLLIW s3, s0, 2
  ADDI t5, sp, 0
  ADD s11, t5, s3
  LW s3, 0(s11)
  ADDI s11, zero, 1
  SUBW s10, s0, s11
  SW s10, 0(sp)
  LW s0, 0(sp)
  SLLIW s10, s0, 2
  ADDI t5, sp, 0
  ADD s11, t5, s10
  LW s10, 0(s11)
  ADDI s11, zero, 1
  SUBW s6, s0, s11
  SW s6, 0(sp)
  XORI s0, s5, 43
  SLTIU s6, s0, 1
  BNE s6, zero, bb363
  # implict jump to bb353
bb353:
  XORI s0, s5, 45
  SLTIU s2, s0, 1
  BNE s2, zero, bb362
  # implict jump to bb354
bb354:
  XORI s0, s5, 42
  SLTIU s2, s0, 1
  BNE s2, zero, bb361
  # implict jump to bb355
bb355:
  XORI s0, s5, 47
  SLTIU s2, s0, 1
  BNE s2, zero, bb360
  # implict jump to bb356
bb356:
  XORI s0, s5, 37
  SLTIU s2, s0, 1
  BNE s2, zero, bb359
  # implict jump to bb357
bb357:
  ADD s6, zero, zero
  # implict jump to bb358
bb358:
  ADD s0, s6, zero
  LW s11, 0(sp)
  ADDIW s2, s11, 1
  SW s2, 0(sp)
  SLLIW s11, s2, 2
  ADDI t5, sp, 0
  ADD s2, t5, s11
  SW s0, 0(s2)
  ADD s7, s3, zero
  ADD s8, s10, zero
  ADD s9, s5, zero
  JAL zero, bb319
bb359:
  REMW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb358
bb360:
  DIVW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb358
bb361:
  MULW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb358
bb362:
  SUBW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb358
bb363:
  ADDW s0, s10, s3
  ADD s6, s0, zero
  JAL zero, bb358
bb364:
  LW s1, 1024(sp)
  SLLIW s2, s1, 2
  ADDI t5, sp, 1024
  ADD s1, t5, s2
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb378
  # implict jump to bb365
bb365:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s2, s0, 1
  ADD s1, s2, zero
  # implict jump to bb366
bb366:
  ADD s4, s1, zero
  BNE s4, zero, bb377
  # implict jump to bb367
bb367:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s2, s0, 1
  BNE s2, zero, bb376
  # implict jump to bb368
bb368:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 47
  SLTIU s3, s2, 1
  ADD s0, s3, zero
  # implict jump to bb369
bb369:
  ADD s2, s0, zero
  BNE s2, zero, bb375
  # implict jump to bb370
bb370:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s3, t4, 37
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  # implict jump to bb371
bb371:
  ADD s3, s2, zero
  BNE s3, zero, bb374
  # implict jump to bb372
bb372:
  ADD s4, zero, zero
  # implict jump to bb373
bb373:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1892
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb321
bb374:
  ADDI s4, zero, 20
  JAL zero, bb373
bb375:
  ADDI s2, zero, 1
  JAL zero, bb371
bb376:
  ADDI s0, zero, 1
  JAL zero, bb369
bb377:
  ADDI s4, zero, 10
  JAL zero, bb373
bb378:
  ADDI s1, zero, 1
  JAL zero, bb366
bb379:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb380
bb380:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb388
  # implict jump to bb381
bb381:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb382
bb382:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb387
  # implict jump to bb383
bb383:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1908
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb384
bb384:
  LUI t4, 1
  ADDIW t4, t4, -1908
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb386
  # implict jump to bb385
bb385:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb318
bb386:
  LA s7, num
  LW s8, 0(s7)
  ADDI s7, zero, 10
  MULW s9, s8, s7
  LA s7, last_char
  LW s8, 0(s7)
  ADDW s7, s9, s8
  ADDI s8, zero, 48
  SUBW s9, s7, s8
  LA s7, num
  SW s9, 0(s7)
  JAL zero, bb380
bb387:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1908
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb384
bb388:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb382
bb389:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1916
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb316
bb390:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb314
bb391:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb307
bb392:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1924
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb311
bb393:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb309
bb394:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb306
bb395:
  ADDI s1, zero, 1
  JAL zero, bb304
bb396:
  ADDI s0, zero, 1
  JAL zero, bb302
bb397:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb306
bb398:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb299
bb399:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  # implict jump to bb400
bb400:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb408
  # implict jump to bb401
bb401:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb402
bb402:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb407
  # implict jump to bb403
bb403:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb404
bb404:
  LUI t4, 1
  ADDIW t4, t4, -1988
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb406
  # implict jump to bb405
bb405:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb253
bb406:
  LA s7, num
  LW s11, 0(s7)
  ADDI s7, zero, 10
  MULW s6, s11, s7
  LA s7, last_char
  LW s11, 0(s7)
  ADDW s7, s6, s11
  ADDI s6, zero, 48
  SUBW s11, s7, s6
  LA s6, num
  SW s11, 0(s6)
  JAL zero, bb400
bb407:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb404
bb408:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb402
bb409:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb251
bb410:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb249
bb411:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb242
bb412:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb246
bb413:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2012
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb244
bb414:
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI t4, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb269
bb415:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  SLLIW s1, s11, 2
  ADDI t5, sp, 1024
  ADD s10, t5, s1
  SW zero, 0(s10)
  ADD s0, s11, zero
  JAL zero, bb239
bb416:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  SLLIW s0, s1, 2
  ADDI t5, sp, 0
  ADD s11, t5, s0
  SW zero, 0(s11)
  ADD s10, s1, zero
  JAL zero, bb237
bb417:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  # implict jump to bb418
bb418:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb426
  # implict jump to bb419
bb419:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb420
bb420:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb425
  # implict jump to bb421
bb421:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb422
bb422:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb424
  # implict jump to bb423
bb423:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb233
bb424:
  LA s8, num
  LW s9, 0(s8)
  ADDI s8, zero, 10
  MULW s10, s9, s8
  LA s8, last_char
  LW s9, 0(s8)
  ADDW s8, s10, s9
  ADDI s9, zero, 48
  SUBW s10, s8, s9
  LA s8, num
  SW s10, 0(s8)
  JAL zero, bb418
bb425:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb422
bb426:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb420
bb427:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb231
bb428:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb229
bb429:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb222
bb430:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb226
bb431:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb224
panic:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 112
  CALL putch
  ADDI a0, zero, 97
  CALL putch
  ADDI a0, zero, 110
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 99
  CALL putch
  ADDI a0, zero, 33
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, -1
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
next_token:
  ADDI sp, sp, -96
  SD s9, 0(sp)
  SD ra, 8(sp)
  SD s8, 16(sp)
  SD s7, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s6, 56(sp)
  SD s1, 64(sp)
  SD s5, 72(sp)
  SD s0, 80(sp)
  # implict jump to bb434
bb434:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb460
  # implict jump to bb435
bb435:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  # implict jump to bb436
bb436:
  ADD s2, s0, zero
  BNE s2, zero, bb459
  # implict jump to bb437
bb437:
  ADD s2, zero, zero
  # implict jump to bb438
bb438:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb458
  # implict jump to bb439
bb439:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb457
  # implict jump to bb440
bb440:
  ADD s4, zero, zero
  # implict jump to bb441
bb441:
  ADD s3, s4, zero
  BNE s3, zero, bb456
  # implict jump to bb442
bb442:
  ADD s3, zero, zero
  # implict jump to bb443
bb443:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb446
  # implict jump to bb444
bb444:
  LA s5, last_char
  LW s6, 0(s5)
  LA s5, other
  SW s6, 0(s5)
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  LA s5, cur_token
  ADDI s6, zero, 1
  SW s6, 0(s5)
  # implict jump to bb445
bb445:
  LA s7, cur_token
  LW s8, 0(s7)
  ADD a0, s8, zero
  LD s9, 0(sp)
  LD ra, 8(sp)
  LD s8, 16(sp)
  LD s7, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s6, 56(sp)
  LD s1, 64(sp)
  LD s5, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb446:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb447
bb447:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb455
  # implict jump to bb448
bb448:
  ADD s6, zero, zero
  # implict jump to bb449
bb449:
  ADD s5, s6, zero
  BNE s5, zero, bb454
  # implict jump to bb450
bb450:
  ADD s5, zero, zero
  # implict jump to bb451
bb451:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb453
  # implict jump to bb452
bb452:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb445
bb453:
  LA s7, num
  LW s8, 0(s7)
  ADDI s7, zero, 10
  MULW s9, s8, s7
  LA s7, last_char
  LW s8, 0(s7)
  ADDW s7, s9, s8
  ADDI s8, zero, 48
  SUBW s9, s7, s8
  LA s7, num
  SW s9, 0(s7)
  JAL zero, bb447
bb454:
  ADDI s5, zero, 1
  JAL zero, bb451
bb455:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb449
bb456:
  ADDI s3, zero, 1
  JAL zero, bb443
bb457:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb441
bb458:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb434
bb459:
  ADDI s2, zero, 1
  JAL zero, bb438
bb460:
  ADDI s0, zero, 1
  JAL zero, bb436
next_char:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  CALL getch
  ADD s0, a0, zero
  LA s1, last_char
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
