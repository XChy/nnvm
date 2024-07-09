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
  ADDIW t0, t0, 1648
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1680
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  SD s9, 0(t5)
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
  JAL zero, bb9
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
  JAL zero, bb8
bb8:
  ADDI a0, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1680
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1648
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb9:
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
  JAL zero, bb97
bb10:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb11
bb11:
  LUI t3, 1
  ADDIW t3, t3, -1936
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1960
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SW t4, 0(t6)
  LA s1, cur_token
  LW s2, 0(s1)
  XORI s1, s2, 1
  SLTIU s2, s1, 1
  BNE s2, zero, bb12
  JAL zero, bb14
bb12:
  LA s1, other
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU t4, s1, 1
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SB t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LB t4, 0(t4)
  BNE t4, zero, bb58
  JAL zero, bb59
bb13:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s5, s6, zero
  SLTU s6, zero, s5
  XORI s5, s6, 1
  ADD s6, s5, zero
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb15
  JAL zero, bb16
bb14:
  JAL zero, bb184
bb15:
  JAL zero, bb14
bb16:
  JAL zero, bb126
bb17:
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  JAL zero, bb18
bb18:
  ADD t4, s9, zero
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s8, zero
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s7, zero
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SW t4, 0(t5)
  LW s1, 0(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb23
  JAL zero, bb26
bb19:
  LW s0, 0(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t6, sp, 0
  ADD s0, t6, s11
  LW s10, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s2, s0, s11
  SW s2, 0(sp)
  LW s0, 1024(sp)
  ADDI s2, zero, 4
  MULW s11, s0, s2
  ADDI t5, sp, 1024
  ADD s0, t5, s11
  LW s2, 0(s0)
  LW s0, 1024(sp)
  ADDI s11, zero, 1
  SUBW s1, s0, s11
  SW s1, 1024(sp)
  LW s0, 1024(sp)
  ADDI s1, zero, 4
  MULW s11, s0, s1
  ADDI t6, sp, 1024
  ADD s0, t6, s11
  LW s1, 0(s0)
  LW s0, 1024(sp)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 1024(sp)
  XORI s0, s10, 43
  SLTIU s4, s0, 1
  BNE s4, zero, bb38
  JAL zero, bb39
bb20:
  ADD s0, s4, zero
  LW s11, 1024(sp)
  ADDIW s3, s11, 1
  SW s3, 1024(sp)
  ADDI s11, zero, 4
  MULW s6, s3, s11
  ADDI t5, sp, 1024
  ADD s3, t5, s6
  SW s0, 0(s3)
  JAL zero, bb21
bb21:
  ADD s7, s2, zero
  ADD s8, s1, zero
  ADD s9, s10, zero
  JAL zero, bb18
bb22:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t6, sp, 0
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
  BNE s1, zero, bb28
  JAL zero, bb30
bb23:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW t4, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, -1800
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb71
  JAL zero, bb72
bb24:
  LUI t3, 1
  ADDIW t3, t3, -1784
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LB t4, 0(t4)
  BNE t4, zero, bb84
  JAL zero, bb85
bb25:
  ADD s0, s5, zero
  LUI t4, 1
  ADDIW t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s11, t4, s0
  XORI s0, s11, 1
  ADD t4, s0, zero
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb27
bb26:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb27
bb27:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  BNE s0, zero, bb19
  JAL zero, bb22
bb28:
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
  JAL zero, bb29
bb29:
  ADDI a0, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1680
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1648
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb30:
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
  JAL zero, bb155
bb31:
  LUI t3, 1
  ADDIW t3, t3, -1832
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1920
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1824
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1928
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1816
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb11
bb32:
  LW s3, 0(sp)
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb33
  JAL zero, bb36
bb33:
  LW s3, 0(sp)
  ADDI s9, zero, 4
  MULW s11, s3, s9
  ADDI t6, sp, 0
  ADD s3, t6, s11
  LW s9, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s8, s3, s11
  SW s8, 0(sp)
  LW s3, 1024(sp)
  ADDI s8, zero, 4
  MULW s11, s3, s8
  ADDI t5, sp, 1024
  ADD s3, t5, s11
  LW s8, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s7, s3, s11
  SW s7, 1024(sp)
  LW s3, 1024(sp)
  ADDI s7, zero, 4
  MULW s11, s3, s7
  ADDI t6, sp, 1024
  ADD s3, t6, s11
  LW s7, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s4, s3, s11
  SW s4, 1024(sp)
  XORI s3, s9, 43
  SLTIU s4, s3, 1
  BNE s4, zero, bb48
  JAL zero, bb49
bb34:
  ADD s3, s4, zero
  LW s11, 1024(sp)
  ADDIW s6, s11, 1
  SW s6, 1024(sp)
  ADDI s11, zero, 4
  MULW s5, s6, s11
  ADDI t5, sp, 1024
  ADD s6, t5, s5
  SW s3, 0(s6)
  JAL zero, bb35
bb35:
  JAL zero, bb32
bb36:
  LW s3, 1024(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 1024
  ADD s3, t6, s5
  LW s4, 0(s3)
  JAL zero, bb37
bb37:
  ADD a0, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1680
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1672
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, -1648
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb38:
  ADDW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb20
bb39:
  XORI s0, s10, 45
  SLTIU s3, s0, 1
  BNE s3, zero, bb40
  JAL zero, bb41
bb40:
  SUBW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb20
bb41:
  XORI s0, s10, 42
  SLTIU s3, s0, 1
  BNE s3, zero, bb42
  JAL zero, bb43
bb42:
  MULW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb20
bb43:
  XORI s0, s10, 47
  SLTIU s3, s0, 1
  BNE s3, zero, bb44
  JAL zero, bb45
bb44:
  DIVW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb20
bb45:
  XORI s0, s10, 37
  SLTIU s3, s0, 1
  BNE s3, zero, bb46
  JAL zero, bb47
bb46:
  REMW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb20
bb47:
  ADD s4, zero, zero
  JAL zero, bb20
bb48:
  ADDW s3, s7, s8
  ADD s4, s3, zero
  JAL zero, bb34
bb49:
  XORI s3, s9, 45
  SLTIU s5, s3, 1
  BNE s5, zero, bb50
  JAL zero, bb51
bb50:
  SUBW s3, s7, s8
  ADD s4, s3, zero
  JAL zero, bb34
bb51:
  XORI s3, s9, 42
  SLTIU s5, s3, 1
  BNE s5, zero, bb52
  JAL zero, bb53
bb52:
  MULW s3, s7, s8
  ADD s4, s3, zero
  JAL zero, bb34
bb53:
  XORI s3, s9, 47
  SLTIU s5, s3, 1
  BNE s5, zero, bb54
  JAL zero, bb55
bb54:
  DIVW s3, s7, s8
  ADD s4, s3, zero
  JAL zero, bb34
bb55:
  XORI s3, s9, 37
  SLTIU s5, s3, 1
  BNE s5, zero, bb56
  JAL zero, bb57
bb56:
  REMW s3, s7, s8
  ADD s4, s3, zero
  JAL zero, bb34
bb57:
  ADD s4, zero, zero
  JAL zero, bb34
bb58:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb60
bb59:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb60
bb60:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb61
  JAL zero, bb62
bb61:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb62:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb63
  JAL zero, bb64
bb63:
  ADDI s0, zero, 1
  JAL zero, bb65
bb64:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb65
bb65:
  ADD s1, s0, zero
  BNE s1, zero, bb66
  JAL zero, bb67
bb66:
  ADDI s1, zero, 1
  JAL zero, bb68
bb67:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb68
bb68:
  ADD s2, s1, zero
  BNE s2, zero, bb69
  JAL zero, bb70
bb69:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb13
bb70:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb71:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb73
bb72:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb73
bb73:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb74
  JAL zero, bb75
bb74:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb24
bb75:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb76
  JAL zero, bb77
bb76:
  ADDI s0, zero, 1
  JAL zero, bb78
bb77:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb78
bb78:
  ADD s1, s0, zero
  BNE s1, zero, bb79
  JAL zero, bb80
bb79:
  ADDI s1, zero, 1
  JAL zero, bb81
bb80:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb81
bb81:
  ADD s2, s1, zero
  BNE s2, zero, bb82
  JAL zero, bb83
bb82:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb24
bb83:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb24
bb84:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb86
bb85:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb86
bb86:
  LUI t4, 1
  ADDIW t4, t4, -1768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb87
  JAL zero, bb88
bb87:
  ADDI s5, zero, 10
  JAL zero, bb25
bb88:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb89
  JAL zero, bb90
bb89:
  ADDI s0, zero, 1
  JAL zero, bb91
bb90:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb91
bb91:
  ADD s1, s0, zero
  BNE s1, zero, bb92
  JAL zero, bb93
bb92:
  ADDI s1, zero, 1
  JAL zero, bb94
bb93:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb94
bb94:
  ADD s2, s1, zero
  BNE s2, zero, bb95
  JAL zero, bb96
bb95:
  ADDI s5, zero, 20
  JAL zero, bb25
bb96:
  ADD s5, zero, zero
  JAL zero, bb25
bb97:
  JAL zero, bb98
bb98:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb121
  JAL zero, bb122
bb99:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb100
  JAL zero, bb102
bb100:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb101
bb101:
  JAL zero, bb98
bb102:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb111
  JAL zero, bb112
bb103:
  LUI t4, 1
  ADDIW t4, t4, -2016
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
  JAL zero, bb10
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
  ADDIW t4, t4, -2000
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
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb113
bb112:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb113
bb113:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb114
  JAL zero, bb115
bb114:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb103
bb115:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb103
bb116:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb118
bb117:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb118
bb118:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb119
  JAL zero, bb120
bb119:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb108
bb120:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb108
bb121:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb123
bb122:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -2048
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb123
bb123:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb124
  JAL zero, bb125
bb124:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb99
bb125:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb99
bb126:
  JAL zero, bb127
bb127:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb150
  JAL zero, bb151
bb128:
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb129
  JAL zero, bb131
bb129:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb130
bb130:
  JAL zero, bb127
bb131:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb140
  JAL zero, bb141
bb132:
  LUI t4, 1
  ADDIW t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb133
  JAL zero, bb135
bb133:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb136
bb134:
  JAL zero, bb17
bb135:
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
  JAL zero, bb134
bb136:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb145
  JAL zero, bb146
bb137:
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb138
  JAL zero, bb139
bb138:
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
  JAL zero, bb136
bb139:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb134
bb140:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb142
bb141:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb142
bb142:
  LUI t4, 1
  ADDIW t4, t4, -1864
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb143
  JAL zero, bb144
bb143:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb132
bb144:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb132
bb145:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb147
bb146:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb147
bb147:
  LUI t4, 1
  ADDIW t4, t4, -1848
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb148
  JAL zero, bb149
bb148:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb137
bb149:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb137
bb150:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb152
bb151:
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb152
bb152:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb153
  JAL zero, bb154
bb153:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb128
bb154:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb128
bb155:
  JAL zero, bb156
bb156:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb179
  JAL zero, bb180
bb157:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb158
  JAL zero, bb160
bb158:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb159
bb159:
  JAL zero, bb156
bb160:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s6, s3, 1
  BNE s6, zero, bb169
  JAL zero, bb170
bb161:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb162
  JAL zero, bb164
bb162:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb165
bb163:
  JAL zero, bb31
bb164:
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
  JAL zero, bb163
bb165:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb174
  JAL zero, bb175
bb166:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb167
  JAL zero, bb168
bb167:
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
  JAL zero, bb165
bb168:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb163
bb169:
  ADDI s3, zero, 57
  SLT s6, s3, s4
  XORI s3, s6, 1
  ADD s4, s3, zero
  JAL zero, bb171
bb170:
  ADD s4, zero, zero
  JAL zero, bb171
bb171:
  ADD s3, s4, zero
  BNE s3, zero, bb172
  JAL zero, bb173
bb172:
  ADDI s3, zero, 1
  JAL zero, bb161
bb173:
  ADD s3, zero, zero
  JAL zero, bb161
bb174:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb176
bb175:
  ADD s7, zero, zero
  JAL zero, bb176
bb176:
  ADD s6, s7, zero
  BNE s6, zero, bb177
  JAL zero, bb178
bb177:
  ADDI s6, zero, 1
  JAL zero, bb166
bb178:
  ADD s6, zero, zero
  JAL zero, bb166
bb179:
  ADDI s0, zero, 1
  JAL zero, bb181
bb180:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb181
bb181:
  ADD s2, s0, zero
  BNE s2, zero, bb182
  JAL zero, bb183
bb182:
  ADDI s2, zero, 1
  JAL zero, bb157
bb183:
  ADD s2, zero, zero
  JAL zero, bb157
bb184:
  JAL zero, bb185
bb185:
  LA s5, last_char
  LW t4, 0(s5)
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s5, t4, 32
  SLTIU s4, s5, 1
  BNE s4, zero, bb208
  JAL zero, bb209
bb186:
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb187
  JAL zero, bb189
bb187:
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  JAL zero, bb188
bb188:
  JAL zero, bb185
bb189:
  LA s0, last_char
  LW s2, 0(s0)
  SLTI s0, s2, 48
  XORI s11, s0, 1
  BNE s11, zero, bb198
  JAL zero, bb199
bb190:
  ADD s11, s0, zero
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb191
  JAL zero, bb193
bb191:
  LA s10, last_char
  LW s11, 0(s10)
  ADDI s10, zero, 48
  SUBW s1, s11, s10
  LA s10, num
  SW s1, 0(s10)
  JAL zero, bb194
bb192:
  JAL zero, bb32
bb193:
  LA s1, last_char
  LW s3, 0(s1)
  LA s1, other
  SW s3, 0(s1)
  CALL getch
  ADD s1, a0, zero
  LA s3, last_char
  SW s1, 0(s3)
  LA s1, cur_token
  ADDI s3, zero, 1
  SW s3, 0(s1)
  JAL zero, bb192
bb194:
  CALL getch
  ADD s1, a0, zero
  LA s10, last_char
  SW s1, 0(s10)
  SLTI s10, s1, 48
  XORI s11, s10, 1
  BNE s11, zero, bb203
  JAL zero, bb204
bb195:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb196
  JAL zero, bb197
bb196:
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
  JAL zero, bb194
bb197:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb192
bb198:
  ADDI s0, zero, 57
  SLT s11, s0, s2
  XORI s0, s11, 1
  ADD s2, s0, zero
  JAL zero, bb200
bb199:
  ADD s2, zero, zero
  JAL zero, bb200
bb200:
  ADD s0, s2, zero
  BNE s0, zero, bb201
  JAL zero, bb202
bb201:
  ADDI s0, zero, 1
  JAL zero, bb190
bb202:
  ADD s0, zero, zero
  JAL zero, bb190
bb203:
  ADDI s10, zero, 57
  SLT s11, s10, s1
  XORI s1, s11, 1
  ADD s10, s1, zero
  JAL zero, bb205
bb204:
  ADD s10, zero, zero
  JAL zero, bb205
bb205:
  ADD s1, s10, zero
  BNE s1, zero, bb206
  JAL zero, bb207
bb206:
  ADDI s1, zero, 1
  JAL zero, bb195
bb207:
  ADD s1, zero, zero
  JAL zero, bb195
bb208:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb210
bb209:
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb210
bb210:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb211
  JAL zero, bb212
bb211:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb186
bb212:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb186
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
  BNE s4, zero, bb214
  JAL zero, bb215
bb214:
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
bb215:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb216
  JAL zero, bb217
bb216:
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
bb217:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb218
  JAL zero, bb219
bb218:
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
bb219:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb220
  JAL zero, bb221
bb220:
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
bb221:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb222
  JAL zero, bb223
bb222:
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
bb223:
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
  BNE s2, zero, bb228
  JAL zero, bb229
bb228:
  ADDI s1, zero, 1
  JAL zero, bb230
bb229:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb230
bb230:
  ADD s2, s1, zero
  BNE s2, zero, bb231
  JAL zero, bb232
bb231:
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
bb232:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb233
  JAL zero, bb234
bb233:
  ADDI s2, zero, 1
  JAL zero, bb235
bb234:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb235
bb235:
  ADD s3, s2, zero
  BNE s3, zero, bb236
  JAL zero, bb237
bb236:
  ADDI s3, zero, 1
  JAL zero, bb238
bb237:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb238
bb238:
  ADD s4, s3, zero
  BNE s4, zero, bb239
  JAL zero, bb240
bb239:
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
bb240:
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
  BNE s2, zero, bb243
  JAL zero, bb244
bb243:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb245
bb244:
  ADD s1, zero, zero
  JAL zero, bb245
bb245:
  ADD s0, s1, zero
  BNE s0, zero, bb246
  JAL zero, bb247
bb246:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb247:
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
  BNE s2, zero, bb249
  JAL zero, bb250
bb249:
  ADDI s1, zero, 1
  JAL zero, bb251
bb250:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb251
bb251:
  ADD s2, s1, zero
  BNE s2, zero, bb252
  JAL zero, bb253
bb252:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb253:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1568
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1680
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1648
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1640
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1632
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1624
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1616
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1600
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1592
  ADD t4, t4, sp
  SD s4, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -1584
  ADD t4, t4, sp
  SD s2, 0(t4)
  CALL getint
  ADD t4, a0, zero
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb357
bb255:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb256
bb256:
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1984
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s10, t4, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb257
  JAL zero, bb259
bb257:
  JAL zero, bb260
bb258:
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  SUBW s10, t4, s1
  ADD s8, s10, zero
  JAL zero, bb256
bb259:
  ADD a0, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1672
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1656
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1640
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1624
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1616
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1608
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1600
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1592
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1584
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1568
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb260:
  ADDI s10, zero, 256
  JAL zero, bb261
bb261:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb262
  JAL zero, bb263
bb262:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  ADDI s0, zero, 4
  MULW s11, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s11
  SW zero, 0(s0)
  ADD s10, s1, zero
  JAL zero, bb261
bb263:
  ADDI s0, zero, 256
  JAL zero, bb264
bb264:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb265
  JAL zero, bb266
bb265:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  ADDI s1, zero, 4
  MULW s10, s11, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s10
  SW zero, 0(s1)
  ADD s0, s11, zero
  JAL zero, bb264
bb266:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb267
  JAL zero, bb269
bb267:
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
  JAL zero, bb268
bb268:
  ADDI t4, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb258
bb269:
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
  JAL zero, bb386
bb270:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb271
bb271:
  LUI t3, 1
  ADDIW t3, t3, -1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1888
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1904
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s10, cur_token
  LW s3, 0(s10)
  XORI s10, s3, 1
  SLTIU s3, s10, 1
  BNE s3, zero, bb272
  JAL zero, bb274
bb272:
  LA s3, other
  LW t4, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s3, t4, 43
  SLTIU t4, s3, 1
  LUI t5, 1
  ADDIW t5, t5, -1920
  ADD t5, t5, sp
  SB t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LB t4, 0(t4)
  BNE t4, zero, bb318
  JAL zero, bb319
bb273:
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s2, s4, zero
  SLTU s4, zero, s2
  XORI s2, s4, 1
  ADD s4, s2, zero
  XOR s2, s4, zero
  SLTU s4, zero, s2
  BNE s4, zero, bb275
  JAL zero, bb276
bb274:
  JAL zero, bb415
bb275:
  JAL zero, bb274
bb276:
  JAL zero, bb444
bb277:
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  JAL zero, bb278
bb278:
  ADD t4, s9, zero
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  SW t4, 0(t6)
  ADD t4, s8, zero
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  SW t4, 0(t5)
  ADD t4, s7, zero
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  SW t4, 0(t6)
  LW s1, 1024(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb283
  JAL zero, bb286
bb279:
  LW s0, 1024(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t5, sp, 1024
  ADD s0, t5, s11
  LW s10, 0(s0)
  LW s0, 1024(sp)
  ADDI s11, zero, 1
  SUBW s2, s0, s11
  SW s2, 1024(sp)
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s11, s0, s2
  ADDI t6, sp, 0
  ADD s0, t6, s11
  LW s2, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s1, s0, s11
  SW s1, 0(sp)
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s11, s0, s1
  ADDI t5, sp, 0
  ADD s0, t5, s11
  LW s1, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 0(sp)
  XORI s0, s10, 43
  SLTIU s4, s0, 1
  BNE s4, zero, bb298
  JAL zero, bb299
bb280:
  ADD s0, s4, zero
  LW s11, 0(sp)
  ADDIW s3, s11, 1
  SW s3, 0(sp)
  ADDI s11, zero, 4
  MULW s6, s3, s11
  ADDI t6, sp, 0
  ADD s3, t6, s6
  SW s0, 0(s3)
  JAL zero, bb281
bb281:
  ADD s7, s2, zero
  ADD s8, s1, zero
  ADD s9, s10, zero
  JAL zero, bb278
bb282:
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 1024
  ADD s0, t5, s2
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb288
  JAL zero, bb290
bb283:
  LW s1, 1024(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t6, sp, 1024
  ADD s1, t6, s4
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb331
  JAL zero, bb332
bb284:
  LUI t3, 1
  ADDIW t3, t3, -1704
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LB t4, 0(t4)
  BNE t4, zero, bb344
  JAL zero, bb345
bb285:
  ADD s0, s5, zero
  LUI t4, 1
  ADDIW t4, t4, -1696
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s11, t4, s0
  XORI s0, s11, 1
  ADD t4, s0, zero
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb287
bb286:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb287
bb287:
  LUI t4, 1
  ADDIW t4, t4, -1728
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  BNE s0, zero, bb279
  JAL zero, bb282
bb288:
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
  JAL zero, bb289
bb289:
  ADDI t4, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb258
bb290:
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
  JAL zero, bb473
bb291:
  LUI t3, 1
  ADDIW t3, t3, -1752
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1848
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1744
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1736
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb271
bb292:
  LW s7, 1024(sp)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb293
  JAL zero, bb296
bb293:
  LW s7, 1024(sp)
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADDI t6, sp, 1024
  ADD s7, t6, s11
  LW s9, 0(s7)
  LW s7, 1024(sp)
  ADDI s11, zero, 1
  SUBW s6, s7, s11
  SW s6, 1024(sp)
  LW s6, 0(sp)
  ADDI s7, zero, 4
  MULW s11, s6, s7
  ADDI t5, sp, 0
  ADD s6, t5, s11
  LW s7, 0(s6)
  LW s6, 0(sp)
  ADDI s11, zero, 1
  SUBW s0, s6, s11
  SW s0, 0(sp)
  LW s0, 0(sp)
  ADDI s6, zero, 4
  MULW s11, s0, s6
  ADDI t6, sp, 0
  ADD s0, t6, s11
  LW s6, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s2, s0, s11
  SW s2, 0(sp)
  XORI s0, s9, 43
  SLTIU s2, s0, 1
  BNE s2, zero, bb308
  JAL zero, bb309
bb294:
  ADD s0, s2, zero
  LW s11, 0(sp)
  ADDIW s4, s11, 1
  SW s4, 0(sp)
  ADDI s11, zero, 4
  MULW s10, s4, s11
  ADDI t5, sp, 0
  ADD s4, t5, s10
  SW s0, 0(s4)
  JAL zero, bb295
bb295:
  JAL zero, bb292
bb296:
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  ADDI t6, sp, 0
  ADD s0, t6, s4
  LW s2, 0(s0)
  JAL zero, bb297
bb297:
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb258
bb298:
  ADDW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb280
bb299:
  XORI s0, s10, 45
  SLTIU s3, s0, 1
  BNE s3, zero, bb300
  JAL zero, bb301
bb300:
  SUBW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb280
bb301:
  XORI s0, s10, 42
  SLTIU s3, s0, 1
  BNE s3, zero, bb302
  JAL zero, bb303
bb302:
  MULW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb280
bb303:
  XORI s0, s10, 47
  SLTIU s3, s0, 1
  BNE s3, zero, bb304
  JAL zero, bb305
bb304:
  DIVW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb280
bb305:
  XORI s0, s10, 37
  SLTIU s3, s0, 1
  BNE s3, zero, bb306
  JAL zero, bb307
bb306:
  REMW s0, s1, s2
  ADD s4, s0, zero
  JAL zero, bb280
bb307:
  ADD s4, zero, zero
  JAL zero, bb280
bb308:
  ADDW s0, s6, s7
  ADD s2, s0, zero
  JAL zero, bb294
bb309:
  XORI s0, s9, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb310
  JAL zero, bb311
bb310:
  SUBW s0, s6, s7
  ADD s2, s0, zero
  JAL zero, bb294
bb311:
  XORI s0, s9, 42
  SLTIU s4, s0, 1
  BNE s4, zero, bb312
  JAL zero, bb313
bb312:
  MULW s0, s6, s7
  ADD s2, s0, zero
  JAL zero, bb294
bb313:
  XORI s0, s9, 47
  SLTIU s4, s0, 1
  BNE s4, zero, bb314
  JAL zero, bb315
bb314:
  DIVW s0, s6, s7
  ADD s2, s0, zero
  JAL zero, bb294
bb315:
  XORI s0, s9, 37
  SLTIU s4, s0, 1
  BNE s4, zero, bb316
  JAL zero, bb317
bb316:
  REMW s0, s6, s7
  ADD s2, s0, zero
  JAL zero, bb294
bb317:
  ADD s2, zero, zero
  JAL zero, bb294
bb318:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb320
bb319:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb320
bb320:
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb321
  JAL zero, bb322
bb321:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb273
bb322:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb323
  JAL zero, bb324
bb323:
  ADDI s0, zero, 1
  JAL zero, bb325
bb324:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb325
bb325:
  ADD s1, s0, zero
  BNE s1, zero, bb326
  JAL zero, bb327
bb326:
  ADDI s1, zero, 1
  JAL zero, bb328
bb327:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb328
bb328:
  ADD s2, s1, zero
  BNE s2, zero, bb329
  JAL zero, bb330
bb329:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb273
bb330:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb273
bb331:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb333
bb332:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb333
bb333:
  LUI t4, 1
  ADDIW t4, t4, -1712
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb334
  JAL zero, bb335
bb334:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb284
bb335:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb336
  JAL zero, bb337
bb336:
  ADDI s0, zero, 1
  JAL zero, bb338
bb337:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb338
bb338:
  ADD s1, s0, zero
  BNE s1, zero, bb339
  JAL zero, bb340
bb339:
  ADDI s1, zero, 1
  JAL zero, bb341
bb340:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb341
bb341:
  ADD s2, s1, zero
  BNE s2, zero, bb342
  JAL zero, bb343
bb342:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb284
bb343:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb284
bb344:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb346
bb345:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb346
bb346:
  LUI t4, 1
  ADDIW t4, t4, -1688
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb347
  JAL zero, bb348
bb347:
  ADDI s5, zero, 10
  JAL zero, bb285
bb348:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb349
  JAL zero, bb350
bb349:
  ADDI s0, zero, 1
  JAL zero, bb351
bb350:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb351
bb351:
  ADD s1, s0, zero
  BNE s1, zero, bb352
  JAL zero, bb353
bb352:
  ADDI s1, zero, 1
  JAL zero, bb354
bb353:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb354
bb354:
  ADD s2, s1, zero
  BNE s2, zero, bb355
  JAL zero, bb356
bb355:
  ADDI s5, zero, 20
  JAL zero, bb285
bb356:
  ADD s5, zero, zero
  JAL zero, bb285
bb357:
  JAL zero, bb358
bb358:
  LA s1, last_char
  LW t4, 0(s1)
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 32
  SLTIU s3, s1, 1
  BNE s3, zero, bb381
  JAL zero, bb382
bb359:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb360
  JAL zero, bb362
bb360:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb361
bb361:
  JAL zero, bb358
bb362:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb371
  JAL zero, bb372
bb363:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb364
  JAL zero, bb366
bb364:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb367
bb365:
  JAL zero, bb255
bb366:
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
  JAL zero, bb365
bb367:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb376
  JAL zero, bb377
bb368:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb369
  JAL zero, bb370
bb369:
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
  JAL zero, bb367
bb370:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb365
bb371:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb373
bb372:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb373
bb373:
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb374
  JAL zero, bb375
bb374:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb363
bb375:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb363
bb376:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb378
bb377:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb378
bb378:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb379
  JAL zero, bb380
bb379:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb368
bb380:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb368
bb381:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb383
bb382:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -2040
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb383
bb383:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb384
  JAL zero, bb385
bb384:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb359
bb385:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb359
bb386:
  JAL zero, bb387
bb387:
  LA s1, last_char
  LW t4, 0(s1)
  LUI t5, 1
  ADDIW t5, t5, -1968
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 32
  SLTIU s10, s1, 1
  BNE s10, zero, bb410
  JAL zero, bb411
bb388:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb389
  JAL zero, bb391
bb389:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb390
bb390:
  JAL zero, bb387
bb391:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb400
  JAL zero, bb401
bb392:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb393
  JAL zero, bb395
bb393:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  JAL zero, bb396
bb394:
  JAL zero, bb270
bb395:
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
  JAL zero, bb394
bb396:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb405
  JAL zero, bb406
bb397:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb398
  JAL zero, bb399
bb398:
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
  JAL zero, bb396
bb399:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb394
bb400:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb402
bb401:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb402
bb402:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb403
  JAL zero, bb404
bb403:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb392
bb404:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb392
bb405:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb407
bb406:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb407
bb407:
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb408
  JAL zero, bb409
bb408:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb397
bb409:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb397
bb410:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb412
bb411:
  LUI t4, 1
  ADDIW t4, t4, -1968
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1976
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb412
bb412:
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb413
  JAL zero, bb414
bb413:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb388
bb414:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb388
bb415:
  JAL zero, bb416
bb416:
  LA s2, last_char
  LW t4, 0(s2)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 32
  SLTIU s10, s2, 1
  BNE s10, zero, bb439
  JAL zero, bb440
bb417:
  LUI t4, 1
  ADDIW t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s1, s8, zero
  SLTU s8, zero, s1
  BNE s8, zero, bb418
  JAL zero, bb420
bb418:
  CALL getch
  ADD s1, a0, zero
  LA s8, last_char
  SW s1, 0(s8)
  JAL zero, bb419
bb419:
  JAL zero, bb416
bb420:
  LA s1, last_char
  LW s8, 0(s1)
  SLTI s1, s8, 48
  XORI s9, s1, 1
  BNE s9, zero, bb429
  JAL zero, bb430
bb421:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb422
  JAL zero, bb424
bb422:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  JAL zero, bb425
bb423:
  JAL zero, bb292
bb424:
  LA s0, last_char
  LW s2, 0(s0)
  LA s0, other
  SW s2, 0(s0)
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  LA s0, cur_token
  ADDI s2, zero, 1
  SW s2, 0(s0)
  JAL zero, bb423
bb425:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb434
  JAL zero, bb435
bb426:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb427
  JAL zero, bb428
bb427:
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
  JAL zero, bb425
bb428:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb423
bb429:
  ADDI s1, zero, 57
  SLT s9, s1, s8
  XORI s1, s9, 1
  ADD s8, s1, zero
  JAL zero, bb431
bb430:
  ADD s8, zero, zero
  JAL zero, bb431
bb431:
  ADD s1, s8, zero
  BNE s1, zero, bb432
  JAL zero, bb433
bb432:
  ADDI s1, zero, 1
  JAL zero, bb421
bb433:
  ADD s1, zero, zero
  JAL zero, bb421
bb434:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb436
bb435:
  ADD s5, zero, zero
  JAL zero, bb436
bb436:
  ADD s3, s5, zero
  BNE s3, zero, bb437
  JAL zero, bb438
bb437:
  ADDI s3, zero, 1
  JAL zero, bb426
bb438:
  ADD s3, zero, zero
  JAL zero, bb426
bb439:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb441
bb440:
  LUI t4, 1
  ADDIW t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1832
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb441
bb441:
  LUI t4, 1
  ADDIW t4, t4, -1832
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb442
  JAL zero, bb443
bb442:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb417
bb443:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb417
bb444:
  JAL zero, bb445
bb445:
  LA s0, last_char
  LW t4, 0(s0)
  LUI t5, 1
  ADDIW t5, t5, -1800
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb468
  JAL zero, bb469
bb446:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb447
  JAL zero, bb449
bb447:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb448
bb448:
  JAL zero, bb445
bb449:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb458
  JAL zero, bb459
bb450:
  LUI t4, 1
  ADDIW t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb451
  JAL zero, bb453
bb451:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb454
bb452:
  JAL zero, bb277
bb453:
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
  JAL zero, bb452
bb454:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb463
  JAL zero, bb464
bb455:
  LUI t4, 1
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb456
  JAL zero, bb457
bb456:
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
  JAL zero, bb454
bb457:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb452
bb458:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb460
bb459:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb460
bb460:
  LUI t4, 1
  ADDIW t4, t4, -1784
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb461
  JAL zero, bb462
bb461:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb450
bb462:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb450
bb463:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb465
bb464:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb465
bb465:
  LUI t4, 1
  ADDIW t4, t4, -1768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb466
  JAL zero, bb467
bb466:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb455
bb467:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb455
bb468:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb470
bb469:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 10
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb470
bb470:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb471
  JAL zero, bb472
bb471:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb446
bb472:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb446
bb473:
  JAL zero, bb474
bb474:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb497
  JAL zero, bb498
bb475:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb476
  JAL zero, bb478
bb476:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb477
bb477:
  JAL zero, bb474
bb478:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s6, s3, 1
  BNE s6, zero, bb487
  JAL zero, bb488
bb479:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb480
  JAL zero, bb482
bb480:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb483
bb481:
  JAL zero, bb291
bb482:
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
  JAL zero, bb481
bb483:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb492
  JAL zero, bb493
bb484:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb485
  JAL zero, bb486
bb485:
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
  JAL zero, bb483
bb486:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb481
bb487:
  ADDI s3, zero, 57
  SLT s6, s3, s4
  XORI s3, s6, 1
  ADD s4, s3, zero
  JAL zero, bb489
bb488:
  ADD s4, zero, zero
  JAL zero, bb489
bb489:
  ADD s3, s4, zero
  BNE s3, zero, bb490
  JAL zero, bb491
bb490:
  ADDI s3, zero, 1
  JAL zero, bb479
bb491:
  ADD s3, zero, zero
  JAL zero, bb479
bb492:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb494
bb493:
  ADD s7, zero, zero
  JAL zero, bb494
bb494:
  ADD s6, s7, zero
  BNE s6, zero, bb495
  JAL zero, bb496
bb495:
  ADDI s6, zero, 1
  JAL zero, bb484
bb496:
  ADD s6, zero, zero
  JAL zero, bb484
bb497:
  ADDI s0, zero, 1
  JAL zero, bb499
bb498:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb499
bb499:
  ADD s2, s0, zero
  BNE s2, zero, bb500
  JAL zero, bb501
bb500:
  ADDI s2, zero, 1
  JAL zero, bb475
bb501:
  ADD s2, zero, zero
  JAL zero, bb475
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
  JAL zero, bb504
bb504:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb527
  JAL zero, bb528
bb505:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb506
  JAL zero, bb508
bb506:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb507
bb507:
  JAL zero, bb504
bb508:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb517
  JAL zero, bb518
bb509:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb510
  JAL zero, bb512
bb510:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb513
bb511:
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
bb512:
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
  JAL zero, bb511
bb513:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb522
  JAL zero, bb523
bb514:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb515
  JAL zero, bb516
bb515:
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
  JAL zero, bb513
bb516:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb511
bb517:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb519
bb518:
  ADD s4, zero, zero
  JAL zero, bb519
bb519:
  ADD s3, s4, zero
  BNE s3, zero, bb520
  JAL zero, bb521
bb520:
  ADDI s3, zero, 1
  JAL zero, bb509
bb521:
  ADD s3, zero, zero
  JAL zero, bb509
bb522:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb524
bb523:
  ADD s6, zero, zero
  JAL zero, bb524
bb524:
  ADD s5, s6, zero
  BNE s5, zero, bb525
  JAL zero, bb526
bb525:
  ADDI s5, zero, 1
  JAL zero, bb514
bb526:
  ADD s5, zero, zero
  JAL zero, bb514
bb527:
  ADDI s0, zero, 1
  JAL zero, bb529
bb528:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb529
bb529:
  ADD s2, s0, zero
  BNE s2, zero, bb530
  JAL zero, bb531
bb530:
  ADDI s2, zero, 1
  JAL zero, bb505
bb531:
  ADD s2, zero, zero
  JAL zero, bb505
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
