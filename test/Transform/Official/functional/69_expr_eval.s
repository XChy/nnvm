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
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD s8, 0(t5)
  ADDI s0, zero, 256
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb178
  # implict jump to bb2
bb2:
  ADDI s0, zero, 256
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb177
  # implict jump to bb4
bb4:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb176
  # implict jump to bb5
bb5:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t5, sp, 1024
  ADD s0, t5, s3
  SW s1, 0(s0)
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
  BNE s2, zero, bb175
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
  BNE s2, zero, bb174
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
  BNE s3, zero, bb173
  # implict jump to bb11
bb11:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb172
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
  BNE s3, zero, bb171
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
  BNE s5, zero, bb161
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
  BNE s2, zero, bb59
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
  BNE s2, zero, bb58
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
  BNE s5, zero, bb57
  # implict jump to bb22
bb22:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1972
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb23
bb23:
  LUI t4, 1
  ADDIW t4, t4, -1972
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  XOR s11, s0, zero
  SLTU s0, zero, s11
  BNE s0, zero, bb56
  # implict jump to bb24
bb24:
  LA s0, last_char
  LW s11, 0(s0)
  SLTI s0, s11, 48
  XORI s10, s0, 1
  BNE s10, zero, bb55
  # implict jump to bb25
bb25:
  ADD s10, zero, zero
  # implict jump to bb26
bb26:
  ADD s0, s10, zero
  BNE s0, zero, bb54
  # implict jump to bb27
bb27:
  ADD s0, zero, zero
  # implict jump to bb28
bb28:
  ADD s11, s0, zero
  XOR s1, s11, zero
  SLTU s11, zero, s1
  BNE s11, zero, bb44
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
  LW s3, 0(sp)
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb32
  # implict jump to bb31
bb31:
  LW s2, 1024(sp)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADDI t5, sp, 1024
  ADD s2, t5, s5
  LW s3, 0(s2)
  ADD a0, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb32:
  LW s3, 0(sp)
  ADDI s9, zero, 4
  MULW s11, s3, s9
  ADDI t5, sp, 0
  ADD s9, t5, s11
  LW s11, 0(s9)
  ADDI s9, zero, 1
  SUBW s8, s3, s9
  SW s8, 0(sp)
  LW s3, 1024(sp)
  ADDI s8, zero, 4
  MULW s9, s3, s8
  ADDI t5, sp, 1024
  ADD s8, t5, s9
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s7, s3, s8
  SW s7, 1024(sp)
  LW s3, 1024(sp)
  ADDI s7, zero, 4
  MULW s8, s3, s7
  ADDI t5, sp, 1024
  ADD s7, t5, s8
  LW s8, 0(s7)
  ADDI s7, zero, 1
  SUBW s2, s3, s7
  SW s2, 1024(sp)
  XORI s2, s11, 43
  SLTIU s3, s2, 1
  BNE s3, zero, bb43
  # implict jump to bb33
bb33:
  XORI s2, s11, 45
  SLTIU s5, s2, 1
  BNE s5, zero, bb42
  # implict jump to bb34
bb34:
  XORI s2, s11, 42
  SLTIU s5, s2, 1
  BNE s5, zero, bb41
  # implict jump to bb35
bb35:
  XORI s2, s11, 47
  SLTIU s5, s2, 1
  BNE s5, zero, bb40
  # implict jump to bb36
bb36:
  XORI s2, s11, 37
  SLTIU s5, s2, 1
  BNE s5, zero, bb39
  # implict jump to bb37
bb37:
  ADD s3, zero, zero
  # implict jump to bb38
bb38:
  ADD s2, s3, zero
  LW s7, 1024(sp)
  ADDIW s6, s7, 1
  SW s6, 1024(sp)
  ADDI s7, zero, 4
  MULW s5, s6, s7
  ADDI t5, sp, 1024
  ADD s6, t5, s5
  SW s2, 0(s6)
  JAL zero, bb30
bb39:
  REMW s2, s8, s9
  ADD s3, s2, zero
  JAL zero, bb38
bb40:
  DIVW s2, s8, s9
  ADD s3, s2, zero
  JAL zero, bb38
bb41:
  MULW s2, s8, s9
  ADD s3, s2, zero
  JAL zero, bb38
bb42:
  SUBW s2, s8, s9
  ADD s3, s2, zero
  JAL zero, bb38
bb43:
  ADDW s2, s8, s9
  ADD s3, s2, zero
  JAL zero, bb38
bb44:
  LA s1, last_char
  LW s11, 0(s1)
  ADDI s1, zero, 48
  SUBW s4, s11, s1
  LA s1, num
  SW s4, 0(s1)
  # implict jump to bb45
bb45:
  CALL getch
  ADD s1, a0, zero
  LA s4, last_char
  SW s1, 0(s4)
  SLTI s4, s1, 48
  XORI s11, s4, 1
  BNE s11, zero, bb53
  # implict jump to bb46
bb46:
  ADD s4, zero, zero
  # implict jump to bb47
bb47:
  ADD s1, s4, zero
  BNE s1, zero, bb52
  # implict jump to bb48
bb48:
  ADD s1, zero, zero
  # implict jump to bb49
bb49:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb51
  # implict jump to bb50
bb50:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb30
bb51:
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
  JAL zero, bb45
bb52:
  ADDI s1, zero, 1
  JAL zero, bb49
bb53:
  ADDI s4, zero, 57
  SLT s11, s4, s1
  XORI s1, s11, 1
  ADD s4, s1, zero
  JAL zero, bb47
bb54:
  ADDI s0, zero, 1
  JAL zero, bb28
bb55:
  ADDI s0, zero, 57
  SLT s10, s0, s11
  XORI s0, s10, 1
  ADD s10, s0, zero
  JAL zero, bb26
bb56:
  CALL getch
  ADD s0, a0, zero
  LA s11, last_char
  SW s0, 0(s11)
  JAL zero, bb19
bb57:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1972
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb23
bb58:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1980
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb21
bb59:
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
  BNE s4, zero, bb160
  # implict jump to bb60
bb60:
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
  # implict jump to bb61
bb61:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb159
  # implict jump to bb62
bb62:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb158
  # implict jump to bb63
bb63:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb64
bb64:
  ADD s1, s0, zero
  BNE s1, zero, bb157
  # implict jump to bb65
bb65:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb66
bb66:
  ADD s2, s1, zero
  BNE s2, zero, bb156
  # implict jump to bb67
bb67:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb68
bb68:
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
  # implict jump to bb69
bb69:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1964
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb155
  # implict jump to bb70
bb70:
  LUI t4, 1
  ADDIW t4, t4, -1964
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb71
bb71:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb154
  # implict jump to bb72
bb72:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb73
bb73:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb153
  # implict jump to bb74
bb74:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb152
  # implict jump to bb75
bb75:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb76
bb76:
  LUI t4, 1
  ADDIW t4, t4, -1956
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb151
  # implict jump to bb77
bb77:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb78
bb78:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb141
  # implict jump to bb79
bb79:
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
  # implict jump to bb80
bb80:
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
  # implict jump to bb81
bb81:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1940
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb126
  # implict jump to bb82
bb82:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb83
bb83:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb114
  # implict jump to bb84
bb84:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s2
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb113
  # implict jump to bb85
bb85:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t5, sp, 1024
  ADD s0, t5, s3
  SW s1, 0(s0)
  # implict jump to bb86
bb86:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb112
  # implict jump to bb87
bb87:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  # implict jump to bb88
bb88:
  ADD s2, s0, zero
  BNE s2, zero, bb111
  # implict jump to bb89
bb89:
  ADD s2, zero, zero
  # implict jump to bb90
bb90:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb110
  # implict jump to bb91
bb91:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb109
  # implict jump to bb92
bb92:
  ADD s5, zero, zero
  # implict jump to bb93
bb93:
  ADD s3, s5, zero
  BNE s3, zero, bb108
  # implict jump to bb94
bb94:
  ADD s3, zero, zero
  # implict jump to bb95
bb95:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb98
  # implict jump to bb96
bb96:
  LA s6, last_char
  LW s7, 0(s6)
  LA s6, other
  SW s7, 0(s6)
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  LA s6, cur_token
  ADDI s7, zero, 1
  SW s7, 0(s6)
  # implict jump to bb97
bb97:
  LUI t3, 1
  ADDIW t3, t3, -1940
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1984
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1988
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1932
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb18
bb98:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  # implict jump to bb99
bb99:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb107
  # implict jump to bb100
bb100:
  ADD s7, zero, zero
  # implict jump to bb101
bb101:
  ADD s6, s7, zero
  BNE s6, zero, bb106
  # implict jump to bb102
bb102:
  ADD s6, zero, zero
  # implict jump to bb103
bb103:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb105
  # implict jump to bb104
bb104:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb97
bb105:
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
  JAL zero, bb99
bb106:
  ADDI s6, zero, 1
  JAL zero, bb103
bb107:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb101
bb108:
  ADDI s3, zero, 1
  JAL zero, bb95
bb109:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb93
bb110:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb86
bb111:
  ADDI s2, zero, 1
  JAL zero, bb90
bb112:
  ADDI s0, zero, 1
  JAL zero, bb88
bb113:
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
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb114:
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s0
  LW s0, 0(s5)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 0(sp)
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t5, sp, 1024
  ADD s5, t5, s11
  LW s11, 0(s5)
  ADDI s5, zero, 1
  SUBW s10, s3, s5
  SW s10, 1024(sp)
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s10, s3, s5
  ADDI t5, sp, 1024
  ADD s5, t5, s10
  LW s10, 0(s5)
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  SW s6, 1024(sp)
  XORI s3, s0, 43
  SLTIU s5, s3, 1
  BNE s5, zero, bb125
  # implict jump to bb115
bb115:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb124
  # implict jump to bb116
bb116:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb123
  # implict jump to bb117
bb117:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb122
  # implict jump to bb118
bb118:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb121
  # implict jump to bb119
bb119:
  ADD s5, zero, zero
  # implict jump to bb120
bb120:
  ADD s3, s5, zero
  LW s6, 1024(sp)
  ADDIW s2, s6, 1
  SW s2, 1024(sp)
  ADDI s6, zero, 4
  MULW s1, s2, s6
  ADDI t5, sp, 1024
  ADD s2, t5, s1
  SW s3, 0(s2)
  ADD s7, s11, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
  JAL zero, bb81
bb121:
  REMW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb120
bb122:
  DIVW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb120
bb123:
  MULW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb120
bb124:
  SUBW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb120
bb125:
  ADDW s3, s10, s11
  ADD s5, s3, zero
  JAL zero, bb120
bb126:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1924
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb140
  # implict jump to bb127
bb127:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb128
bb128:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb139
  # implict jump to bb129
bb129:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb138
  # implict jump to bb130
bb130:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb131
bb131:
  ADD s1, s0, zero
  BNE s1, zero, bb137
  # implict jump to bb132
bb132:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb133
bb133:
  ADD s2, s1, zero
  BNE s2, zero, bb136
  # implict jump to bb134
bb134:
  ADD s4, zero, zero
  # implict jump to bb135
bb135:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb83
bb136:
  ADDI s4, zero, 20
  JAL zero, bb135
bb137:
  ADDI s1, zero, 1
  JAL zero, bb133
bb138:
  ADDI s0, zero, 1
  JAL zero, bb131
bb139:
  ADDI s4, zero, 10
  JAL zero, bb135
bb140:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb128
bb141:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb142
bb142:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb150
  # implict jump to bb143
bb143:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb144
bb144:
  LUI t4, 1
  ADDIW t4, t4, -1948
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb149
  # implict jump to bb145
bb145:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb146
bb146:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb148
  # implict jump to bb147
bb147:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb80
bb148:
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
  JAL zero, bb142
bb149:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb146
bb150:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb144
bb151:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb78
bb152:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb76
bb153:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb69
bb154:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb73
bb155:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb71
bb156:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb68
bb157:
  ADDI s1, zero, 1
  JAL zero, bb66
bb158:
  ADDI s0, zero, 1
  JAL zero, bb64
bb159:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb68
bb160:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb61
bb161:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb162
bb162:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb170
  # implict jump to bb163
bb163:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb164
bb164:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb169
  # implict jump to bb165
bb165:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb166
bb166:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb168
  # implict jump to bb167
bb167:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb17
bb168:
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
  JAL zero, bb162
bb169:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb166
bb170:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb164
bb171:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb15
bb172:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb13
bb173:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb6
bb174:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb10
bb175:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb8
bb176:
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
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb177:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb3
bb178:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s2
  SW zero, 0(s1)
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
  BNE s4, zero, bb189
  # implict jump to bb180
bb180:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb188
  # implict jump to bb181
bb181:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb187
  # implict jump to bb182
bb182:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb186
  # implict jump to bb183
bb183:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb185
  # implict jump to bb184
bb184:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb185:
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
bb186:
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
bb187:
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
bb188:
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
bb189:
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
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  LW s1, 0(s0)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
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
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDI s2, zero, 1
  SUBW s4, s1, s2
  SW s4, 0(s0)
  ADD a0, s3, zero
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
  BNE s2, zero, bb206
  # implict jump to bb194
bb194:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb195
bb195:
  ADD s2, s1, zero
  BNE s2, zero, bb205
  # implict jump to bb196
bb196:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb204
  # implict jump to bb197
bb197:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  # implict jump to bb198
bb198:
  ADD s3, s2, zero
  BNE s3, zero, bb203
  # implict jump to bb199
bb199:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  # implict jump to bb200
bb200:
  ADD s4, s3, zero
  BNE s4, zero, bb202
  # implict jump to bb201
bb201:
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
bb202:
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
bb203:
  ADDI s3, zero, 1
  JAL zero, bb200
bb204:
  ADDI s2, zero, 1
  JAL zero, bb198
bb205:
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
bb206:
  ADDI s1, zero, 1
  JAL zero, bb195
stack_push:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  LW s2, 0(s0)
  ADDIW s3, s2, 1
  SW s3, 0(s0)
  ADDI s2, zero, 4
  MULW s4, s3, s2
  ADD s2, s0, s4
  SW s1, 0(s2)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
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
  BNE s2, zero, bb213
  # implict jump to bb209
bb209:
  ADD s1, zero, zero
  # implict jump to bb210
bb210:
  ADD s0, s1, zero
  BNE s0, zero, bb212
  # implict jump to bb211
bb211:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb212:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb210
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s2, s1, 1
  BNE s2, zero, bb219
  # implict jump to bb215
bb215:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  # implict jump to bb216
bb216:
  ADD s2, s1, zero
  BNE s2, zero, bb218
  # implict jump to bb217
bb217:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb218:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  ADDI s1, zero, 1
  JAL zero, bb216
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1760
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1784
  ADD t4, t4, sp
  SD s4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -1776
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
  # implict jump to bb221
bb221:
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
  BNE s3, zero, bb429
  # implict jump to bb222
bb222:
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
  # implict jump to bb223
bb223:
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb428
  # implict jump to bb224
bb224:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb225
bb225:
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb427
  # implict jump to bb226
bb226:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb426
  # implict jump to bb227
bb227:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb228
bb228:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb425
  # implict jump to bb229
bb229:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb230
bb230:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb415
  # implict jump to bb231
bb231:
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
  # implict jump to bb232
bb232:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  # implict jump to bb233
bb233:
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
  BNE s11, zero, bb235
  # implict jump to bb234
bb234:
  ADD a0, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1816
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1760
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb235:
  ADDI s10, zero, 256
  # implict jump to bb236
bb236:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb414
  # implict jump to bb237
bb237:
  ADDI s0, zero, 256
  # implict jump to bb238
bb238:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb413
  # implict jump to bb239
bb239:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb412
  # implict jump to bb240
bb240:
  LA s1, num
  LW s8, 0(s1)
  LW s1, 0(sp)
  ADDIW s10, s1, 1
  SW s10, 0(sp)
  ADDI s1, zero, 4
  MULW s11, s10, s1
  ADDI t5, sp, 0
  ADD s1, t5, s11
  SW s8, 0(s1)
  # implict jump to bb241
bb241:
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
  BNE s10, zero, bb411
  # implict jump to bb242
bb242:
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
  # implict jump to bb243
bb243:
  LUI t4, 1
  ADDIW t4, t4, -2012
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb410
  # implict jump to bb244
bb244:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb245
bb245:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb409
  # implict jump to bb246
bb246:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb408
  # implict jump to bb247
bb247:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb248
bb248:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb407
  # implict jump to bb249
bb249:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb250
bb250:
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb397
  # implict jump to bb251
bb251:
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
  # implict jump to bb252
bb252:
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
  # implict jump to bb253
bb253:
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
  BNE s3, zero, bb295
  # implict jump to bb254
bb254:
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
  BNE s8, zero, bb294
  # implict jump to bb255
bb255:
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
  # implict jump to bb256
bb256:
  LUI t4, 1
  ADDIW t4, t4, -1940
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s8, t4, zero
  BNE s8, zero, bb293
  # implict jump to bb257
bb257:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb258
bb258:
  LUI t4, 1
  ADDIW t4, t4, -1932
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  BNE s1, zero, bb292
  # implict jump to bb259
bb259:
  LA s1, last_char
  LW s9, 0(s1)
  SLTI s1, s9, 48
  XORI s2, s1, 1
  BNE s2, zero, bb291
  # implict jump to bb260
bb260:
  ADD s2, zero, zero
  # implict jump to bb261
bb261:
  ADD s1, s2, zero
  BNE s1, zero, bb290
  # implict jump to bb262
bb262:
  ADD s1, zero, zero
  # implict jump to bb263
bb263:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb280
  # implict jump to bb264
bb264:
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
  # implict jump to bb265
bb265:
  LW s7, 1024(sp)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb268
  # implict jump to bb266
bb266:
  LW s0, 0(sp)
  ADDI s4, zero, 4
  MULW s6, s0, s4
  ADDI t5, sp, 0
  ADD s0, t5, s6
  LW s4, 0(s0)
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb267
bb267:
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
  JAL zero, bb233
bb268:
  LW s7, 1024(sp)
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADDI t5, sp, 1024
  ADD s9, t5, s11
  LW s11, 0(s9)
  ADDI s9, zero, 1
  SUBW s6, s7, s9
  SW s6, 1024(sp)
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s9, s6, s7
  ADDI t5, sp, 0
  ADD s7, t5, s9
  LW s9, 0(s7)
  ADDI s7, zero, 1
  SUBW s0, s6, s7
  SW s0, 0(sp)
  LW s0, 0(sp)
  ADDI s6, zero, 4
  MULW s7, s0, s6
  ADDI t5, sp, 0
  ADD s6, t5, s7
  LW s7, 0(s6)
  ADDI s6, zero, 1
  SUBW s4, s0, s6
  SW s4, 0(sp)
  XORI s0, s11, 43
  SLTIU s4, s0, 1
  BNE s4, zero, bb279
  # implict jump to bb269
bb269:
  XORI s0, s11, 45
  SLTIU s6, s0, 1
  BNE s6, zero, bb278
  # implict jump to bb270
bb270:
  XORI s0, s11, 42
  SLTIU s6, s0, 1
  BNE s6, zero, bb277
  # implict jump to bb271
bb271:
  XORI s0, s11, 47
  SLTIU s6, s0, 1
  BNE s6, zero, bb276
  # implict jump to bb272
bb272:
  XORI s0, s11, 37
  SLTIU s6, s0, 1
  BNE s6, zero, bb275
  # implict jump to bb273
bb273:
  ADD s4, zero, zero
  # implict jump to bb274
bb274:
  ADD s0, s4, zero
  LW s6, 0(sp)
  ADDIW s10, s6, 1
  SW s10, 0(sp)
  ADDI s6, zero, 4
  MULW s8, s10, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  SW s0, 0(s6)
  JAL zero, bb265
bb275:
  REMW s0, s7, s9
  ADD s4, s0, zero
  JAL zero, bb274
bb276:
  DIVW s0, s7, s9
  ADD s4, s0, zero
  JAL zero, bb274
bb277:
  MULW s0, s7, s9
  ADD s4, s0, zero
  JAL zero, bb274
bb278:
  SUBW s0, s7, s9
  ADD s4, s0, zero
  JAL zero, bb274
bb279:
  ADDW s0, s7, s9
  ADD s4, s0, zero
  JAL zero, bb274
bb280:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  # implict jump to bb281
bb281:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb289
  # implict jump to bb282
bb282:
  ADD s5, zero, zero
  # implict jump to bb283
bb283:
  ADD s3, s5, zero
  BNE s3, zero, bb288
  # implict jump to bb284
bb284:
  ADD s3, zero, zero
  # implict jump to bb285
bb285:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb287
  # implict jump to bb286
bb286:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb265
bb287:
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
  JAL zero, bb281
bb288:
  ADDI s3, zero, 1
  JAL zero, bb285
bb289:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb283
bb290:
  ADDI s1, zero, 1
  JAL zero, bb263
bb291:
  ADDI s1, zero, 57
  SLT s2, s1, s9
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb261
bb292:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  JAL zero, bb254
bb293:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb258
bb294:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1940
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb256
bb295:
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
  BNE s2, zero, bb396
  # implict jump to bb296
bb296:
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
  # implict jump to bb297
bb297:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb395
  # implict jump to bb298
bb298:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb394
  # implict jump to bb299
bb299:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb300
bb300:
  ADD s1, s0, zero
  BNE s1, zero, bb393
  # implict jump to bb301
bb301:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb302
bb302:
  ADD s2, s1, zero
  BNE s2, zero, bb392
  # implict jump to bb303
bb303:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb304
bb304:
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
  BNE s4, zero, bb254
  # implict jump to bb305
bb305:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1924
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb391
  # implict jump to bb306
bb306:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb307
bb307:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb390
  # implict jump to bb308
bb308:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb309
bb309:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb389
  # implict jump to bb310
bb310:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb388
  # implict jump to bb311
bb311:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1916
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb312
bb312:
  LUI t4, 1
  ADDIW t4, t4, -1916
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb387
  # implict jump to bb313
bb313:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb314
bb314:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb377
  # implict jump to bb315
bb315:
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
  # implict jump to bb316
bb316:
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
  # implict jump to bb317
bb317:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1892
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1900
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 1024(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb362
  # implict jump to bb318
bb318:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb319
bb319:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb350
  # implict jump to bb320
bb320:
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 1024
  ADD s0, t5, s2
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb349
  # implict jump to bb321
bb321:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t5, sp, 0
  ADD s0, t5, s3
  SW s1, 0(s0)
  # implict jump to bb322
bb322:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb348
  # implict jump to bb323
bb323:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  # implict jump to bb324
bb324:
  ADD s2, s0, zero
  BNE s2, zero, bb347
  # implict jump to bb325
bb325:
  ADD s2, zero, zero
  # implict jump to bb326
bb326:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb346
  # implict jump to bb327
bb327:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb345
  # implict jump to bb328
bb328:
  ADD s5, zero, zero
  # implict jump to bb329
bb329:
  ADD s3, s5, zero
  BNE s3, zero, bb344
  # implict jump to bb330
bb330:
  ADD s3, zero, zero
  # implict jump to bb331
bb331:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb334
  # implict jump to bb332
bb332:
  LA s6, last_char
  LW s7, 0(s6)
  LA s6, other
  SW s7, 0(s6)
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  LA s6, cur_token
  ADDI s7, zero, 1
  SW s7, 0(s6)
  # implict jump to bb333
bb333:
  LUI t3, 1
  ADDIW t3, t3, -1900
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1948
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1892
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb253
bb334:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  # implict jump to bb335
bb335:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb343
  # implict jump to bb336
bb336:
  ADD s7, zero, zero
  # implict jump to bb337
bb337:
  ADD s6, s7, zero
  BNE s6, zero, bb342
  # implict jump to bb338
bb338:
  ADD s6, zero, zero
  # implict jump to bb339
bb339:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb341
  # implict jump to bb340
bb340:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb333
bb341:
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
  JAL zero, bb335
bb342:
  ADDI s6, zero, 1
  JAL zero, bb339
bb343:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb337
bb344:
  ADDI s3, zero, 1
  JAL zero, bb331
bb345:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb329
bb346:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb322
bb347:
  ADDI s2, zero, 1
  JAL zero, bb326
bb348:
  ADDI s0, zero, 1
  JAL zero, bb324
bb349:
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
  JAL zero, bb267
bb350:
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t5, sp, 1024
  ADD s5, t5, s0
  LW s0, 0(s5)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 1024(sp)
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s11
  LW s11, 0(s5)
  ADDI s5, zero, 1
  SUBW s10, s3, s5
  SW s10, 0(sp)
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s10, s3, s5
  ADDI t5, sp, 0
  ADD s5, t5, s10
  LW s10, 0(s5)
  ADDI s5, zero, 1
  SUBW s6, s3, s5
  SW s6, 0(sp)
  XORI s3, s0, 43
  SLTIU s5, s3, 1
  BNE s5, zero, bb361
  # implict jump to bb351
bb351:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb360
  # implict jump to bb352
bb352:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb359
  # implict jump to bb353
bb353:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb358
  # implict jump to bb354
bb354:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb357
  # implict jump to bb355
bb355:
  ADD s5, zero, zero
  # implict jump to bb356
bb356:
  ADD s3, s5, zero
  LW s6, 0(sp)
  ADDIW s2, s6, 1
  SW s2, 0(sp)
  ADDI s6, zero, 4
  MULW s1, s2, s6
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW s3, 0(s2)
  ADD s7, s11, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
  JAL zero, bb317
bb357:
  REMW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb356
bb358:
  DIVW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb356
bb359:
  MULW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb356
bb360:
  SUBW s1, s10, s11
  ADD s5, s1, zero
  JAL zero, bb356
bb361:
  ADDW s3, s10, s11
  ADD s5, s3, zero
  JAL zero, bb356
bb362:
  LW s1, 1024(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 1024
  ADD s1, t5, s4
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1884
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb376
  # implict jump to bb363
bb363:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb364
bb364:
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb375
  # implict jump to bb365
bb365:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb374
  # implict jump to bb366
bb366:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb367
bb367:
  ADD s1, s0, zero
  BNE s1, zero, bb373
  # implict jump to bb368
bb368:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  # implict jump to bb369
bb369:
  ADD s2, s1, zero
  BNE s2, zero, bb372
  # implict jump to bb370
bb370:
  ADD s4, zero, zero
  # implict jump to bb371
bb371:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb319
bb372:
  ADDI s4, zero, 20
  JAL zero, bb371
bb373:
  ADDI s1, zero, 1
  JAL zero, bb369
bb374:
  ADDI s0, zero, 1
  JAL zero, bb367
bb375:
  ADDI s4, zero, 10
  JAL zero, bb371
bb376:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb364
bb377:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb378
bb378:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb386
  # implict jump to bb379
bb379:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1908
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb380
bb380:
  LUI t4, 1
  ADDIW t4, t4, -1908
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb385
  # implict jump to bb381
bb381:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb382
bb382:
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb384
  # implict jump to bb383
bb383:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb316
bb384:
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
  JAL zero, bb378
bb385:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb382
bb386:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1908
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb380
bb387:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb314
bb388:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1916
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb312
bb389:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb305
bb390:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb309
bb391:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb307
bb392:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb304
bb393:
  ADDI s1, zero, 1
  JAL zero, bb302
bb394:
  ADDI s0, zero, 1
  JAL zero, bb300
bb395:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb304
bb396:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb297
bb397:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  # implict jump to bb398
bb398:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb406
  # implict jump to bb399
bb399:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb400
bb400:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb405
  # implict jump to bb401
bb401:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb402
bb402:
  LUI t4, 1
  ADDIW t4, t4, -1988
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb404
  # implict jump to bb403
bb403:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb252
bb404:
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
  JAL zero, bb398
bb405:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb402
bb406:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb400
bb407:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb250
bb408:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb248
bb409:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb241
bb410:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb245
bb411:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2012
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb243
bb412:
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
  JAL zero, bb267
bb413:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  ADDI s1, zero, 4
  MULW s10, s11, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s10
  SW zero, 0(s1)
  ADD s0, s11, zero
  JAL zero, bb238
bb414:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  ADDI s0, zero, 4
  MULW s11, s1, s0
  ADDI t5, sp, 0
  ADD s0, t5, s11
  SW zero, 0(s0)
  ADD s10, s1, zero
  JAL zero, bb236
bb415:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  # implict jump to bb416
bb416:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb424
  # implict jump to bb417
bb417:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  # implict jump to bb418
bb418:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb423
  # implict jump to bb419
bb419:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  # implict jump to bb420
bb420:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb422
  # implict jump to bb421
bb421:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb232
bb422:
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
  JAL zero, bb416
bb423:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb420
bb424:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb418
bb425:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb230
bb426:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb228
bb427:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb221
bb428:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb225
bb429:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb223
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
  # implict jump to bb432
bb432:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb458
  # implict jump to bb433
bb433:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  # implict jump to bb434
bb434:
  ADD s2, s0, zero
  BNE s2, zero, bb457
  # implict jump to bb435
bb435:
  ADD s2, zero, zero
  # implict jump to bb436
bb436:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb456
  # implict jump to bb437
bb437:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb455
  # implict jump to bb438
bb438:
  ADD s4, zero, zero
  # implict jump to bb439
bb439:
  ADD s3, s4, zero
  BNE s3, zero, bb454
  # implict jump to bb440
bb440:
  ADD s3, zero, zero
  # implict jump to bb441
bb441:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb444
  # implict jump to bb442
bb442:
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
  # implict jump to bb443
bb443:
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
bb444:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  # implict jump to bb445
bb445:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb453
  # implict jump to bb446
bb446:
  ADD s6, zero, zero
  # implict jump to bb447
bb447:
  ADD s5, s6, zero
  BNE s5, zero, bb452
  # implict jump to bb448
bb448:
  ADD s5, zero, zero
  # implict jump to bb449
bb449:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb451
  # implict jump to bb450
bb450:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb443
bb451:
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
  JAL zero, bb445
bb452:
  ADDI s5, zero, 1
  JAL zero, bb449
bb453:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb447
bb454:
  ADDI s3, zero, 1
  JAL zero, bb441
bb455:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb439
bb456:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb432
bb457:
  ADDI s2, zero, 1
  JAL zero, bb436
bb458:
  ADDI s0, zero, 1
  JAL zero, bb434
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
