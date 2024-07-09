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
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SD s8, 0(t5)
  ADDI s0, zero, 256
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t6, sp, 1024
  ADD s1, t6, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb1
bb3:
  ADDI s0, zero, 256
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDI t5, sp, 0
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb4
bb6:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
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
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb8:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t6, sp, 1024
  ADD s0, t6, s3
  SW s1, 0(s0)
  JAL zero, bb72
bb9:
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
  BNE s2, zero, bb10
  JAL zero, bb153
bb10:
  LA s1, other
  LW t4, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb46
  JAL zero, bb47
bb11:
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
  BNE s6, zero, bb153
  JAL zero, bb99
bb12:
  ADD t4, s9, zero
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  SW t4, 0(t6)
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb16
  JAL zero, bb18
bb13:
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t5, sp, 0
  ADD s3, t5, s0
  LW s0, 0(s3)
  LW s3, 0(sp)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 0(sp)
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t6, sp, 1024
  ADD s3, t6, s11
  LW s5, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s10, s3, s11
  SW s10, 1024(sp)
  LW s3, 1024(sp)
  ADDI s10, zero, 4
  MULW s11, s3, s10
  ADDI t5, sp, 1024
  ADD s3, t5, s11
  LW s10, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s6, s3, s11
  SW s6, 1024(sp)
  XORI s3, s0, 43
  SLTIU s6, s3, 1
  BNE s6, zero, bb26
  JAL zero, bb27
bb14:
  ADD s3, s6, zero
  LW s11, 1024(sp)
  ADDIW s2, s11, 1
  SW s2, 1024(sp)
  ADDI s11, zero, 4
  MULW s1, s2, s11
  ADDI t6, sp, 1024
  ADD s2, t6, s1
  SW s3, 0(s2)
  ADD s7, s5, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
  JAL zero, bb12
bb15:
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
  BNE s1, zero, bb20
  JAL zero, bb21
bb16:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t6, sp, 0
  ADD s1, t6, s4
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
  BNE s4, zero, bb59
  JAL zero, bb60
bb17:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb19
bb18:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb19
bb19:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb13
  JAL zero, bb15
bb20:
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
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDIW s2, s0, 1
  SW s2, 1024(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t6, sp, 1024
  ADD s0, t6, s3
  SW s1, 0(s0)
  JAL zero, bb126
bb22:
  LW s3, 0(sp)
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb23
  JAL zero, bb25
bb23:
  LW s3, 0(sp)
  ADDI s9, zero, 4
  MULW s11, s3, s9
  ADDI t5, sp, 0
  ADD s3, t5, s11
  LW s9, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s8, s3, s11
  SW s8, 0(sp)
  LW s3, 1024(sp)
  ADDI s8, zero, 4
  MULW s11, s3, s8
  ADDI t6, sp, 1024
  ADD s3, t6, s11
  LW s8, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s7, s3, s11
  SW s7, 1024(sp)
  LW s3, 1024(sp)
  ADDI s7, zero, 4
  MULW s11, s3, s7
  ADDI t5, sp, 1024
  ADD s3, t5, s11
  LW s7, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s2, s3, s11
  SW s2, 1024(sp)
  XORI s2, s9, 43
  SLTIU s3, s2, 1
  BNE s3, zero, bb36
  JAL zero, bb37
bb24:
  ADD s2, s3, zero
  LW s11, 1024(sp)
  ADDIW s6, s11, 1
  SW s6, 1024(sp)
  ADDI s11, zero, 4
  MULW s5, s6, s11
  ADDI t6, sp, 1024
  ADD s6, t6, s5
  SW s2, 0(s6)
  JAL zero, bb22
bb25:
  LW s2, 1024(sp)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADDI t5, sp, 1024
  ADD s2, t5, s5
  LW s3, 0(s2)
  ADD a0, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1840
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1808
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb26:
  ADDW s3, s10, s5
  ADD s6, s3, zero
  JAL zero, bb14
bb27:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  SUBW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb14
bb29:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb30
  JAL zero, bb31
bb30:
  MULW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb14
bb31:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb32
  JAL zero, bb33
bb32:
  DIVW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb14
bb33:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb34
  JAL zero, bb35
bb34:
  REMW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb14
bb35:
  ADD s6, zero, zero
  JAL zero, bb14
bb36:
  ADDW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb24
bb37:
  XORI s2, s9, 45
  SLTIU s5, s2, 1
  BNE s5, zero, bb38
  JAL zero, bb39
bb38:
  SUBW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb24
bb39:
  XORI s2, s9, 42
  SLTIU s5, s2, 1
  BNE s5, zero, bb40
  JAL zero, bb41
bb40:
  MULW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb24
bb41:
  XORI s2, s9, 47
  SLTIU s5, s2, 1
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
  DIVW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb24
bb43:
  XORI s2, s9, 37
  SLTIU s5, s2, 1
  BNE s5, zero, bb44
  JAL zero, bb45
bb44:
  REMW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb24
bb45:
  ADD s3, zero, zero
  JAL zero, bb24
bb46:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb48
bb47:
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
  JAL zero, bb48
bb48:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb49
  JAL zero, bb50
bb49:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb11
bb50:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s0, zero, 1
  JAL zero, bb53
bb52:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb53
bb53:
  ADD s1, s0, zero
  BNE s1, zero, bb54
  JAL zero, bb55
bb54:
  ADDI s1, zero, 1
  JAL zero, bb56
bb55:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb56
bb56:
  ADD s2, s1, zero
  BNE s2, zero, bb57
  JAL zero, bb58
bb57:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb11
bb58:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb11
bb59:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb61
bb60:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb61
bb61:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s4, zero, 10
  JAL zero, bb17
bb63:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb64
  JAL zero, bb65
bb64:
  ADDI s0, zero, 1
  JAL zero, bb66
bb65:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb66
bb66:
  ADD s1, s0, zero
  BNE s1, zero, bb67
  JAL zero, bb68
bb67:
  ADDI s1, zero, 1
  JAL zero, bb69
bb68:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb69
bb69:
  ADD s2, s1, zero
  BNE s2, zero, bb70
  JAL zero, bb71
bb70:
  ADDI s4, zero, 20
  JAL zero, bb17
bb71:
  ADD s4, zero, zero
  JAL zero, bb17
bb72:
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
  BNE s2, zero, bb94
  JAL zero, bb95
bb73:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb74
  JAL zero, bb75
bb74:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb72
bb75:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb84
  JAL zero, bb85
bb76:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb77
  JAL zero, bb79
bb77:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb80
bb78:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1984
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb9
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
  JAL zero, bb78
bb80:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb89
  JAL zero, bb90
bb81:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb82
  JAL zero, bb83
bb82:
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
  JAL zero, bb80
bb83:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb78
bb84:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb86
bb85:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb86
bb86:
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb87
  JAL zero, bb88
bb87:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb76
bb88:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb76
bb89:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb91
bb90:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb91
bb91:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb92
  JAL zero, bb93
bb92:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb81
bb93:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb81
bb94:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb96
bb95:
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb96
bb96:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb97
  JAL zero, bb98
bb97:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb73
bb98:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb73
bb99:
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
  BNE s2, zero, bb121
  JAL zero, bb122
bb100:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb101
  JAL zero, bb102
bb101:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb99
bb102:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb111
  JAL zero, bb112
bb103:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb104
  JAL zero, bb106
bb104:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb107
bb105:
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
  JAL zero, bb12
bb106:
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
  JAL zero, bb105
bb107:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb116
  JAL zero, bb117
bb108:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb109
  JAL zero, bb110
bb109:
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
  JAL zero, bb107
bb110:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb105
bb111:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb113
bb112:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1956
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb113
bb113:
  LUI t4, 1
  ADDIW t4, t4, -1956
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb114
  JAL zero, bb115
bb114:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb103
bb115:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb103
bb116:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb118
bb117:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1948
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb118
bb118:
  LUI t4, 1
  ADDIW t4, t4, -1948
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb119
  JAL zero, bb120
bb119:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb108
bb120:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb108
bb121:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb123
bb122:
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
  JAL zero, bb123
bb123:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb124
  JAL zero, bb125
bb124:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb100
bb125:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb100
bb126:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb148
  JAL zero, bb149
bb127:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb128
  JAL zero, bb129
bb128:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb126
bb129:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb138
  JAL zero, bb139
bb130:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb131
  JAL zero, bb133
bb131:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb134
bb132:
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
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb9
bb133:
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
  JAL zero, bb132
bb134:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb143
  JAL zero, bb144
bb135:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb136
  JAL zero, bb137
bb136:
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
  JAL zero, bb134
bb137:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb132
bb138:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb140
bb139:
  ADD s5, zero, zero
  JAL zero, bb140
bb140:
  ADD s3, s5, zero
  BNE s3, zero, bb141
  JAL zero, bb142
bb141:
  ADDI s3, zero, 1
  JAL zero, bb130
bb142:
  ADD s3, zero, zero
  JAL zero, bb130
bb143:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb145
bb144:
  ADD s7, zero, zero
  JAL zero, bb145
bb145:
  ADD s6, s7, zero
  BNE s6, zero, bb146
  JAL zero, bb147
bb146:
  ADDI s6, zero, 1
  JAL zero, bb135
bb147:
  ADD s6, zero, zero
  JAL zero, bb135
bb148:
  ADDI s0, zero, 1
  JAL zero, bb150
bb149:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb150
bb150:
  ADD s2, s0, zero
  BNE s2, zero, bb151
  JAL zero, bb152
bb151:
  ADDI s2, zero, 1
  JAL zero, bb127
bb152:
  ADD s2, zero, zero
  JAL zero, bb127
bb153:
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
  BNE s2, zero, bb174
  JAL zero, bb175
bb154:
  LUI t4, 1
  ADDIW t4, t4, -1972
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  XOR s11, s0, zero
  SLTU s0, zero, s11
  BNE s0, zero, bb155
  JAL zero, bb156
bb155:
  CALL getch
  ADD s0, a0, zero
  LA s11, last_char
  SW s0, 0(s11)
  JAL zero, bb153
bb156:
  LA s0, last_char
  LW s11, 0(s0)
  SLTI s0, s11, 48
  XORI s10, s0, 1
  BNE s10, zero, bb164
  JAL zero, bb165
bb157:
  ADD s11, s0, zero
  XOR s1, s11, zero
  SLTU s11, zero, s1
  BNE s11, zero, bb158
  JAL zero, bb159
bb158:
  LA s1, last_char
  LW s11, 0(s1)
  ADDI s1, zero, 48
  SUBW s4, s11, s1
  LA s1, num
  SW s4, 0(s1)
  JAL zero, bb160
bb159:
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
  JAL zero, bb22
bb160:
  CALL getch
  ADD s1, a0, zero
  LA s4, last_char
  SW s1, 0(s4)
  SLTI s4, s1, 48
  XORI s11, s4, 1
  BNE s11, zero, bb169
  JAL zero, bb170
bb161:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb162
  JAL zero, bb163
bb162:
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
  JAL zero, bb160
bb163:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb22
bb164:
  ADDI s0, zero, 57
  SLT s10, s0, s11
  XORI s0, s10, 1
  ADD s10, s0, zero
  JAL zero, bb166
bb165:
  ADD s10, zero, zero
  JAL zero, bb166
bb166:
  ADD s0, s10, zero
  BNE s0, zero, bb167
  JAL zero, bb168
bb167:
  ADDI s0, zero, 1
  JAL zero, bb157
bb168:
  ADD s0, zero, zero
  JAL zero, bb157
bb169:
  ADDI s4, zero, 57
  SLT s11, s4, s1
  XORI s1, s11, 1
  ADD s4, s1, zero
  JAL zero, bb171
bb170:
  ADD s4, zero, zero
  JAL zero, bb171
bb171:
  ADD s1, s4, zero
  BNE s1, zero, bb172
  JAL zero, bb173
bb172:
  ADDI s1, zero, 1
  JAL zero, bb161
bb173:
  ADD s1, zero, zero
  JAL zero, bb161
bb174:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb176
bb175:
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
  JAL zero, bb176
bb176:
  LUI t4, 1
  ADDIW t4, t4, -1980
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb177
  JAL zero, bb178
bb177:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1972
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb154
bb178:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1972
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb154
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
  BNE s4, zero, bb180
  JAL zero, bb181
bb180:
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
bb181:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb182
  JAL zero, bb183
bb182:
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
bb183:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb184
  JAL zero, bb185
bb184:
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
bb185:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb186
  JAL zero, bb187
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
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb188
  JAL zero, bb189
bb188:
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
bb189:
  ADD a0, zero, zero
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
  ADD s1, s0, s3
  LW s2, 0(s1)
  LW s1, 0(s0)
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
  BNE s2, zero, bb194
  JAL zero, bb195
bb194:
  ADDI s1, zero, 1
  JAL zero, bb196
bb195:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb196
bb196:
  ADD s2, s1, zero
  BNE s2, zero, bb197
  JAL zero, bb198
bb197:
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
bb198:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb199
  JAL zero, bb200
bb199:
  ADDI s2, zero, 1
  JAL zero, bb201
bb200:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb201
bb201:
  ADD s3, s2, zero
  BNE s3, zero, bb202
  JAL zero, bb203
bb202:
  ADDI s3, zero, 1
  JAL zero, bb204
bb203:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb204
bb204:
  ADD s4, s3, zero
  BNE s4, zero, bb205
  JAL zero, bb206
bb205:
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
bb206:
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
  BNE s2, zero, bb209
  JAL zero, bb210
bb209:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb211
bb210:
  ADD s1, zero, zero
  JAL zero, bb211
bb211:
  ADD s0, s1, zero
  BNE s0, zero, bb212
  JAL zero, bb213
bb212:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb213:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
is_space:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  XORI s1, s0, 32
  SLTIU s2, s1, 1
  BNE s2, zero, bb215
  JAL zero, bb216
bb215:
  ADDI s1, zero, 1
  JAL zero, bb217
bb216:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb217
bb217:
  ADD s2, s1, zero
  BNE s2, zero, bb218
  JAL zero, bb219
bb218:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb219:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1760
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1824
  ADD t5, t5, sp
  SD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  SD s3, 0(t6)
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
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb296
bb221:
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
  BNE s11, zero, bb222
  JAL zero, bb224
bb222:
  ADDI s10, zero, 256
  JAL zero, bb225
bb223:
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
  JAL zero, bb221
bb224:
  ADD a0, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1816
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1760
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb225:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb226
  JAL zero, bb227
bb226:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  ADDI s0, zero, 4
  MULW s11, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s11
  SW zero, 0(s0)
  ADD s10, s1, zero
  JAL zero, bb225
bb227:
  ADDI s0, zero, 256
  JAL zero, bb228
bb228:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb229
  JAL zero, bb230
bb229:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  ADDI s1, zero, 4
  MULW s10, s11, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s10
  SW zero, 0(s1)
  ADD s0, s11, zero
  JAL zero, bb228
bb230:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb231
  JAL zero, bb232
bb231:
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
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb223
bb232:
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
  JAL zero, bb323
bb233:
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
  LUI t6, 1
  ADDIW t6, t6, -1980
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s10, cur_token
  LW s3, 0(s10)
  XORI s10, s3, 1
  SLTIU s3, s10, 1
  BNE s3, zero, bb234
  JAL zero, bb350
bb234:
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
  BNE s2, zero, bb270
  JAL zero, bb271
bb235:
  LUI t3, 1
  ADDIW t3, t3, -1964
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s4, t4, zero
  SLTU s10, zero, s4
  XORI s4, s10, 1
  XOR s10, s4, zero
  SLTU s4, zero, s10
  BNE s4, zero, bb350
  JAL zero, bb376
bb236:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1892
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1900
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 1024(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb240
  JAL zero, bb242
bb237:
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t6, sp, 1024
  ADD s3, t6, s0
  LW s0, 0(s3)
  LW s3, 1024(sp)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 1024(sp)
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t5, sp, 0
  ADD s3, t5, s11
  LW s5, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s10, s3, s11
  SW s10, 0(sp)
  LW s3, 0(sp)
  ADDI s10, zero, 4
  MULW s11, s3, s10
  ADDI t6, sp, 0
  ADD s3, t6, s11
  LW s10, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s6, s3, s11
  SW s6, 0(sp)
  XORI s3, s0, 43
  SLTIU s6, s3, 1
  BNE s6, zero, bb250
  JAL zero, bb251
bb238:
  ADD s3, s6, zero
  LW s11, 0(sp)
  ADDIW s2, s11, 1
  SW s2, 0(sp)
  ADDI s11, zero, 4
  MULW s1, s2, s11
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW s3, 0(s2)
  ADD s7, s5, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
  JAL zero, bb236
bb239:
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 1024
  ADD s0, t6, s2
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb244
  JAL zero, bb245
bb240:
  LW s1, 1024(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 1024
  ADD s1, t5, s4
  LW t4, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, -1884
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb283
  JAL zero, bb284
bb241:
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
  JAL zero, bb243
bb242:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb243
bb243:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb237
  JAL zero, bb239
bb244:
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
  JAL zero, bb223
bb245:
  LA s0, num
  LW s1, 0(s0)
  LW s0, 0(sp)
  ADDIW s2, s0, 1
  SW s2, 0(sp)
  ADDI s0, zero, 4
  MULW s3, s2, s0
  ADDI t6, sp, 0
  ADD s0, t6, s3
  SW s1, 0(s0)
  JAL zero, bb403
bb246:
  LW s7, 1024(sp)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb247
  JAL zero, bb249
bb247:
  LW s7, 1024(sp)
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADDI t5, sp, 1024
  ADD s7, t5, s11
  LW s9, 0(s7)
  LW s7, 1024(sp)
  ADDI s11, zero, 1
  SUBW s6, s7, s11
  SW s6, 1024(sp)
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s11, s6, s7
  ADDI t6, sp, 0
  ADD s6, t6, s11
  LW s7, 0(s6)
  LW s6, 0(sp)
  ADDI s11, zero, 1
  SUBW s0, s6, s11
  SW s0, 0(sp)
  LW s0, 0(sp)
  ADDI s6, zero, 4
  MULW s11, s0, s6
  ADDI t5, sp, 0
  ADD s0, t5, s11
  LW s6, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 0(sp)
  XORI s0, s9, 43
  SLTIU s4, s0, 1
  BNE s4, zero, bb260
  JAL zero, bb261
bb248:
  ADD s0, s4, zero
  LW s11, 0(sp)
  ADDIW s10, s11, 1
  SW s10, 0(sp)
  ADDI s11, zero, 4
  MULW s8, s10, s11
  ADDI t6, sp, 0
  ADD s10, t6, s8
  SW s0, 0(s10)
  JAL zero, bb246
bb249:
  LW s0, 0(sp)
  ADDI s4, zero, 4
  MULW s6, s0, s4
  ADDI t5, sp, 0
  ADD s0, t5, s6
  LW s4, 0(s0)
  ADD t4, s4, zero
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb223
bb250:
  ADDW s3, s10, s5
  ADD s6, s3, zero
  JAL zero, bb238
bb251:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb252
  JAL zero, bb253
bb252:
  SUBW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb238
bb253:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb254
  JAL zero, bb255
bb254:
  MULW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb238
bb255:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb256
  JAL zero, bb257
bb256:
  DIVW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb238
bb257:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb258
  JAL zero, bb259
bb258:
  REMW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb238
bb259:
  ADD s6, zero, zero
  JAL zero, bb238
bb260:
  ADDW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb248
bb261:
  XORI s0, s9, 45
  SLTIU s8, s0, 1
  BNE s8, zero, bb262
  JAL zero, bb263
bb262:
  SUBW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb248
bb263:
  XORI s0, s9, 42
  SLTIU s8, s0, 1
  BNE s8, zero, bb264
  JAL zero, bb265
bb264:
  MULW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb248
bb265:
  XORI s0, s9, 47
  SLTIU s8, s0, 1
  BNE s8, zero, bb266
  JAL zero, bb267
bb266:
  DIVW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb248
bb267:
  XORI s0, s9, 37
  SLTIU s8, s0, 1
  BNE s8, zero, bb268
  JAL zero, bb269
bb268:
  REMW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb248
bb269:
  ADD s4, zero, zero
  JAL zero, bb248
bb270:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb272
bb271:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1968
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb272
bb272:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb273
  JAL zero, bb274
bb273:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb235
bb274:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb275
  JAL zero, bb276
bb275:
  ADDI s0, zero, 1
  JAL zero, bb277
bb276:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb277
bb277:
  ADD s1, s0, zero
  BNE s1, zero, bb278
  JAL zero, bb279
bb278:
  ADDI s1, zero, 1
  JAL zero, bb280
bb279:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb280
bb280:
  ADD s2, s1, zero
  BNE s2, zero, bb281
  JAL zero, bb282
bb281:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1964
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb235
bb282:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1964
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb235
bb283:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb285
bb284:
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
  JAL zero, bb285
bb285:
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb286
  JAL zero, bb287
bb286:
  ADDI s4, zero, 10
  JAL zero, bb241
bb287:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb288
  JAL zero, bb289
bb288:
  ADDI s0, zero, 1
  JAL zero, bb290
bb289:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb290
bb290:
  ADD s1, s0, zero
  BNE s1, zero, bb291
  JAL zero, bb292
bb291:
  ADDI s1, zero, 1
  JAL zero, bb293
bb292:
  LUI t4, 1
  ADDIW t4, t4, -1884
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb293
bb293:
  ADD s2, s1, zero
  BNE s2, zero, bb294
  JAL zero, bb295
bb294:
  ADDI s4, zero, 20
  JAL zero, bb241
bb295:
  ADD s4, zero, zero
  JAL zero, bb241
bb296:
  LA s1, last_char
  LW t4, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 32
  SLTIU s3, s1, 1
  BNE s3, zero, bb318
  JAL zero, bb319
bb297:
  LUI t4, 1
  ADDIW t4, t4, -2036
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb298
  JAL zero, bb299
bb298:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb296
bb299:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb308
  JAL zero, bb309
bb300:
  LUI t4, 1
  ADDIW t4, t4, -2028
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb301
  JAL zero, bb303
bb301:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb304
bb302:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb221
bb303:
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
  JAL zero, bb302
bb304:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb313
  JAL zero, bb314
bb305:
  LUI t4, 1
  ADDIW t4, t4, -2020
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb306
  JAL zero, bb307
bb306:
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
  JAL zero, bb304
bb307:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb302
bb308:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb310
bb309:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb310
bb310:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb311
  JAL zero, bb312
bb311:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2028
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb300
bb312:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2028
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb300
bb313:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb315
bb314:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb315
bb315:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb316
  JAL zero, bb317
bb316:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2020
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb305
bb317:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2020
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb305
bb318:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2044
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb320
bb319:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -2044
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb320
bb320:
  LUI t4, 1
  ADDIW t4, t4, -2044
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb321
  JAL zero, bb322
bb321:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2036
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb297
bb322:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2036
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb297
bb323:
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
  BNE s10, zero, bb345
  JAL zero, bb346
bb324:
  LUI t4, 1
  ADDIW t4, t4, -2004
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb325
  JAL zero, bb326
bb325:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb323
bb326:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb335
  JAL zero, bb336
bb327:
  LUI t4, 1
  ADDIW t4, t4, -1996
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb328
  JAL zero, bb330
bb328:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  JAL zero, bb331
bb329:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1948
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1956
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb233
bb330:
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
  JAL zero, bb329
bb331:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb340
  JAL zero, bb341
bb332:
  LUI t4, 1
  ADDIW t4, t4, -1988
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb333
  JAL zero, bb334
bb333:
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
  JAL zero, bb331
bb334:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb329
bb335:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb337
bb336:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb337
bb337:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb338
  JAL zero, bb339
bb338:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1996
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb327
bb339:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1996
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb327
bb340:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb342
bb341:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb342
bb342:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb343
  JAL zero, bb344
bb343:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1988
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb332
bb344:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1988
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb332
bb345:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2012
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb347
bb346:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -2012
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb347
bb347:
  LUI t4, 1
  ADDIW t4, t4, -2012
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb348
  JAL zero, bb349
bb348:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2004
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb324
bb349:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2004
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb324
bb350:
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
  BNE s8, zero, bb371
  JAL zero, bb372
bb351:
  LUI t4, 1
  ADDIW t4, t4, -1932
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  BNE s1, zero, bb352
  JAL zero, bb353
bb352:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  JAL zero, bb350
bb353:
  LA s1, last_char
  LW s9, 0(s1)
  SLTI s1, s9, 48
  XORI s2, s1, 1
  BNE s2, zero, bb361
  JAL zero, bb362
bb354:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb355
  JAL zero, bb356
bb355:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  JAL zero, bb357
bb356:
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
  JAL zero, bb246
bb357:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb366
  JAL zero, bb367
bb358:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb359
  JAL zero, bb360
bb359:
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
  JAL zero, bb357
bb360:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb246
bb361:
  ADDI s1, zero, 57
  SLT s2, s1, s9
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb363
bb362:
  ADD s2, zero, zero
  JAL zero, bb363
bb363:
  ADD s1, s2, zero
  BNE s1, zero, bb364
  JAL zero, bb365
bb364:
  ADDI s1, zero, 1
  JAL zero, bb354
bb365:
  ADD s1, zero, zero
  JAL zero, bb354
bb366:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb368
bb367:
  ADD s5, zero, zero
  JAL zero, bb368
bb368:
  ADD s3, s5, zero
  BNE s3, zero, bb369
  JAL zero, bb370
bb369:
  ADDI s3, zero, 1
  JAL zero, bb358
bb370:
  ADD s3, zero, zero
  JAL zero, bb358
bb371:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1940
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb373
bb372:
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
  JAL zero, bb373
bb373:
  LUI t4, 1
  ADDIW t4, t4, -1940
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s8, t4, zero
  BNE s8, zero, bb374
  JAL zero, bb375
bb374:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1932
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb351
bb375:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1932
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb351
bb376:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1924
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb398
  JAL zero, bb399
bb377:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb378
  JAL zero, bb379
bb378:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb376
bb379:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb388
  JAL zero, bb389
bb380:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb381
  JAL zero, bb383
bb381:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb384
bb382:
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
  JAL zero, bb236
bb383:
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
  JAL zero, bb382
bb384:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb393
  JAL zero, bb394
bb385:
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb386
  JAL zero, bb387
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
  JAL zero, bb384
bb387:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb382
bb388:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1916
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb390
bb389:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1916
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb390
bb390:
  LUI t4, 1
  ADDIW t4, t4, -1916
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb391
  JAL zero, bb392
bb391:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb380
bb392:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb380
bb393:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1908
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb395
bb394:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1908
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb395
bb395:
  LUI t4, 1
  ADDIW t4, t4, -1908
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb396
  JAL zero, bb397
bb396:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb385
bb397:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1904
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb385
bb398:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb400
bb399:
  LUI t4, 1
  ADDIW t4, t4, -1924
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb400
bb400:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb401
  JAL zero, bb402
bb401:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb377
bb402:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb377
bb403:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb425
  JAL zero, bb426
bb404:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb405
  JAL zero, bb406
bb405:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb403
bb406:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb415
  JAL zero, bb416
bb407:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb408
  JAL zero, bb410
bb408:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb411
bb409:
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
  JAL zero, bb233
bb410:
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
  JAL zero, bb409
bb411:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb420
  JAL zero, bb421
bb412:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb413
  JAL zero, bb414
bb413:
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
  JAL zero, bb411
bb414:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb409
bb415:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb417
bb416:
  ADD s5, zero, zero
  JAL zero, bb417
bb417:
  ADD s3, s5, zero
  BNE s3, zero, bb418
  JAL zero, bb419
bb418:
  ADDI s3, zero, 1
  JAL zero, bb407
bb419:
  ADD s3, zero, zero
  JAL zero, bb407
bb420:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb422
bb421:
  ADD s7, zero, zero
  JAL zero, bb422
bb422:
  ADD s6, s7, zero
  BNE s6, zero, bb423
  JAL zero, bb424
bb423:
  ADDI s6, zero, 1
  JAL zero, bb412
bb424:
  ADD s6, zero, zero
  JAL zero, bb412
bb425:
  ADDI s0, zero, 1
  JAL zero, bb427
bb426:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb427
bb427:
  ADD s2, s0, zero
  BNE s2, zero, bb428
  JAL zero, bb429
bb428:
  ADDI s2, zero, 1
  JAL zero, bb404
bb429:
  ADD s2, zero, zero
  JAL zero, bb404
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
  JAL zero, bb432
bb432:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb454
  JAL zero, bb455
bb433:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb434
  JAL zero, bb435
bb434:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb432
bb435:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb444
  JAL zero, bb445
bb436:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb437
  JAL zero, bb439
bb437:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb440
bb438:
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
bb439:
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
  JAL zero, bb438
bb440:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb449
  JAL zero, bb450
bb441:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb442
  JAL zero, bb443
bb442:
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
  JAL zero, bb440
bb443:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb438
bb444:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb446
bb445:
  ADD s4, zero, zero
  JAL zero, bb446
bb446:
  ADD s3, s4, zero
  BNE s3, zero, bb447
  JAL zero, bb448
bb447:
  ADDI s3, zero, 1
  JAL zero, bb436
bb448:
  ADD s3, zero, zero
  JAL zero, bb436
bb449:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb451
bb450:
  ADD s6, zero, zero
  JAL zero, bb451
bb451:
  ADD s5, s6, zero
  BNE s5, zero, bb452
  JAL zero, bb453
bb452:
  ADDI s5, zero, 1
  JAL zero, bb441
bb453:
  ADD s5, zero, zero
  JAL zero, bb441
bb454:
  ADDI s0, zero, 1
  JAL zero, bb456
bb455:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb456
bb456:
  ADD s2, s0, zero
  BNE s2, zero, bb457
  JAL zero, bb458
bb457:
  ADDI s2, zero, 1
  JAL zero, bb433
bb458:
  ADD s2, zero, zero
  JAL zero, bb433
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
