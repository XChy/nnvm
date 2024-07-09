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
  JAL zero, bb106
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
  BNE t4, zero, bb67
  JAL zero, bb68
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
  JAL zero, bb196
bb15:
  JAL zero, bb14
bb16:
  JAL zero, bb136
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
  ADD s2, s1, zero
  JAL zero, bb19
bb19:
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb27
  JAL zero, bb31
bb20:
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
  ADD s0, s10, zero
  JAL zero, bb21
bb21:
  ADD s2, s0, zero
  LW s0, 1024(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t5, sp, 1024
  ADD s0, t5, s11
  LW s10, 0(s0)
  LW s0, 1024(sp)
  ADDI s11, zero, 1
  SUBW s1, s0, s11
  SW s1, 1024(sp)
  ADD s0, s10, zero
  JAL zero, bb22
bb22:
  ADD s1, s0, zero
  LW s0, 1024(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t6, sp, 1024
  ADD s0, t6, s11
  LW s10, 0(s0)
  LW s0, 1024(sp)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 1024(sp)
  ADD s0, s10, zero
  JAL zero, bb23
bb23:
  ADD s4, s0, zero
  XORI s0, s2, 43
  SLTIU s10, s0, 1
  BNE s10, zero, bb47
  JAL zero, bb48
bb24:
  ADD s0, s10, zero
  LW s11, 1024(sp)
  ADDIW s3, s11, 1
  SW s3, 1024(sp)
  ADDI s11, zero, 4
  MULW s6, s3, s11
  ADDI t5, sp, 1024
  ADD s3, t5, s6
  SW s0, 0(s3)
  JAL zero, bb25
bb25:
  ADD s7, s1, zero
  ADD s8, s4, zero
  ADD s9, s2, zero
  JAL zero, bb18
bb26:
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
  BNE s1, zero, bb33
  JAL zero, bb35
bb27:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t5, sp, 0
  ADD s1, t5, s4
  LW s2, 0(s1)
  ADD s1, s2, zero
  JAL zero, bb28
bb28:
  ADD t4, s1, zero
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
  BNE s4, zero, bb80
  JAL zero, bb81
bb29:
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
  BNE t4, zero, bb93
  JAL zero, bb94
bb30:
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
  JAL zero, bb32
bb31:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb32
bb32:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  BNE s0, zero, bb20
  JAL zero, bb26
bb33:
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
  JAL zero, bb34
bb34:
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
bb35:
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
  JAL zero, bb166
bb36:
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
bb37:
  LW s3, 0(sp)
  ADD s9, s3, zero
  JAL zero, bb38
bb38:
  ADD s3, s9, zero
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb39
  JAL zero, bb45
bb39:
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
  ADD s3, s9, zero
  JAL zero, bb40
bb40:
  ADD s8, s3, zero
  LW s3, 1024(sp)
  ADDI s9, zero, 4
  MULW s11, s3, s9
  ADDI t5, sp, 1024
  ADD s3, t5, s11
  LW s9, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s7, s3, s11
  SW s7, 1024(sp)
  ADD s3, s9, zero
  JAL zero, bb41
bb41:
  ADD s7, s3, zero
  LW s3, 1024(sp)
  ADDI s9, zero, 4
  MULW s11, s3, s9
  ADDI t6, sp, 1024
  ADD s3, t6, s11
  LW s9, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s4, s3, s11
  SW s4, 1024(sp)
  ADD s3, s9, zero
  JAL zero, bb42
bb42:
  ADD s4, s3, zero
  XORI s3, s8, 43
  SLTIU s9, s3, 1
  BNE s9, zero, bb57
  JAL zero, bb58
bb43:
  ADD s3, s9, zero
  LW s11, 1024(sp)
  ADDIW s6, s11, 1
  SW s6, 1024(sp)
  ADDI s11, zero, 4
  MULW s5, s6, s11
  ADDI t5, sp, 1024
  ADD s6, t5, s5
  SW s3, 0(s6)
  JAL zero, bb44
bb44:
  JAL zero, bb37
bb45:
  LW s3, 1024(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADDI t6, sp, 1024
  ADD s3, t6, s5
  LW s4, 0(s3)
  ADD s3, s4, zero
  JAL zero, bb46
bb46:
  ADD s4, s3, zero
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
bb47:
  ADDW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb24
bb48:
  XORI s0, s2, 45
  SLTIU s3, s0, 1
  BNE s3, zero, bb49
  JAL zero, bb50
bb49:
  SUBW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb24
bb50:
  XORI s0, s2, 42
  SLTIU s3, s0, 1
  BNE s3, zero, bb51
  JAL zero, bb52
bb51:
  MULW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb24
bb52:
  XORI s0, s2, 47
  SLTIU s3, s0, 1
  BNE s3, zero, bb53
  JAL zero, bb54
bb53:
  DIVW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb24
bb54:
  XORI s0, s2, 37
  SLTIU s3, s0, 1
  BNE s3, zero, bb55
  JAL zero, bb56
bb55:
  REMW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb24
bb56:
  ADD s10, zero, zero
  JAL zero, bb24
bb57:
  ADDW s3, s4, s7
  ADD s9, s3, zero
  JAL zero, bb43
bb58:
  XORI s3, s8, 45
  SLTIU s5, s3, 1
  BNE s5, zero, bb59
  JAL zero, bb60
bb59:
  SUBW s3, s4, s7
  ADD s9, s3, zero
  JAL zero, bb43
bb60:
  XORI s3, s8, 42
  SLTIU s5, s3, 1
  BNE s5, zero, bb61
  JAL zero, bb62
bb61:
  MULW s3, s4, s7
  ADD s9, s3, zero
  JAL zero, bb43
bb62:
  XORI s3, s8, 47
  SLTIU s5, s3, 1
  BNE s5, zero, bb63
  JAL zero, bb64
bb63:
  DIVW s3, s4, s7
  ADD s9, s3, zero
  JAL zero, bb43
bb64:
  XORI s3, s8, 37
  SLTIU s5, s3, 1
  BNE s5, zero, bb65
  JAL zero, bb66
bb65:
  REMW s3, s4, s7
  ADD s9, s3, zero
  JAL zero, bb43
bb66:
  ADD s9, zero, zero
  JAL zero, bb43
bb67:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb69
bb68:
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
  JAL zero, bb69
bb69:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb70
  JAL zero, bb71
bb70:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb71:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb72
  JAL zero, bb73
bb72:
  ADDI s0, zero, 1
  JAL zero, bb74
bb73:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb74
bb74:
  ADD s1, s0, zero
  BNE s1, zero, bb75
  JAL zero, bb76
bb75:
  ADDI s1, zero, 1
  JAL zero, bb77
bb76:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb77
bb77:
  ADD s2, s1, zero
  BNE s2, zero, bb78
  JAL zero, bb79
bb78:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb13
bb79:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb80:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb82
bb81:
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
  JAL zero, bb82
bb82:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb83
  JAL zero, bb84
bb83:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb29
bb84:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb85
  JAL zero, bb86
bb85:
  ADDI s0, zero, 1
  JAL zero, bb87
bb86:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb87
bb87:
  ADD s1, s0, zero
  BNE s1, zero, bb88
  JAL zero, bb89
bb88:
  ADDI s1, zero, 1
  JAL zero, bb90
bb89:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb90
bb90:
  ADD s2, s1, zero
  BNE s2, zero, bb91
  JAL zero, bb92
bb91:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb29
bb92:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb29
bb93:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb95
bb94:
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
  JAL zero, bb95
bb95:
  LUI t4, 1
  ADDIW t4, t4, -1768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb96
  JAL zero, bb97
bb96:
  ADDI s5, zero, 10
  JAL zero, bb30
bb97:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb98
  JAL zero, bb99
bb98:
  ADDI s0, zero, 1
  JAL zero, bb100
bb99:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb100
bb100:
  ADD s1, s0, zero
  BNE s1, zero, bb101
  JAL zero, bb102
bb101:
  ADDI s1, zero, 1
  JAL zero, bb103
bb102:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb103
bb103:
  ADD s2, s1, zero
  BNE s2, zero, bb104
  JAL zero, bb105
bb104:
  ADDI s5, zero, 20
  JAL zero, bb30
bb105:
  ADD s5, zero, zero
  JAL zero, bb30
bb106:
  JAL zero, bb107
bb107:
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
  BNE s2, zero, bb131
  JAL zero, bb132
bb108:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb109
  JAL zero, bb111
bb109:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb110
bb110:
  JAL zero, bb107
bb111:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb121
  JAL zero, bb122
bb112:
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb113
  JAL zero, bb115
bb113:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb116
bb114:
  JAL zero, bb10
bb115:
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
  JAL zero, bb114
bb116:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb117
bb117:
  ADD s5, s6, zero
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb126
  JAL zero, bb127
bb118:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb119
  JAL zero, bb120
bb119:
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
  JAL zero, bb116
bb120:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb114
bb121:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb123
bb122:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb123
bb123:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb124
  JAL zero, bb125
bb124:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb112
bb125:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb112
bb126:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb128
bb127:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb128
bb128:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb129
  JAL zero, bb130
bb129:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb118
bb130:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb118
bb131:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb133
bb132:
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
  JAL zero, bb133
bb133:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb134
  JAL zero, bb135
bb134:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb108
bb135:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb108
bb136:
  JAL zero, bb137
bb137:
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
  BNE s2, zero, bb161
  JAL zero, bb162
bb138:
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb139
  JAL zero, bb141
bb139:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb140
bb140:
  JAL zero, bb137
bb141:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb151
  JAL zero, bb152
bb142:
  LUI t4, 1
  ADDIW t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb143
  JAL zero, bb145
bb143:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb146
bb144:
  JAL zero, bb17
bb145:
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
  JAL zero, bb144
bb146:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb147
bb147:
  ADD s5, s6, zero
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb156
  JAL zero, bb157
bb148:
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb149
  JAL zero, bb150
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
  JAL zero, bb146
bb150:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb144
bb151:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb153
bb152:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb153
bb153:
  LUI t4, 1
  ADDIW t4, t4, -1864
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb154
  JAL zero, bb155
bb154:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb142
bb155:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb142
bb156:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb158
bb157:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb158
bb158:
  LUI t4, 1
  ADDIW t4, t4, -1848
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb159
  JAL zero, bb160
bb159:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb148
bb160:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb148
bb161:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb163
bb162:
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
  JAL zero, bb163
bb163:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb164
  JAL zero, bb165
bb164:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb138
bb165:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb138
bb166:
  JAL zero, bb167
bb167:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb191
  JAL zero, bb192
bb168:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb169
  JAL zero, bb171
bb169:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb170
bb170:
  JAL zero, bb167
bb171:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s6, s3, 1
  BNE s6, zero, bb181
  JAL zero, bb182
bb172:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb173
  JAL zero, bb175
bb173:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb176
bb174:
  JAL zero, bb36
bb175:
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
  JAL zero, bb174
bb176:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb177
bb177:
  ADD s6, s7, zero
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb186
  JAL zero, bb187
bb178:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb179
  JAL zero, bb180
bb179:
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
  JAL zero, bb176
bb180:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb174
bb181:
  ADDI s3, zero, 57
  SLT s6, s3, s4
  XORI s3, s6, 1
  ADD s4, s3, zero
  JAL zero, bb183
bb182:
  ADD s4, zero, zero
  JAL zero, bb183
bb183:
  ADD s3, s4, zero
  BNE s3, zero, bb184
  JAL zero, bb185
bb184:
  ADDI s3, zero, 1
  JAL zero, bb172
bb185:
  ADD s3, zero, zero
  JAL zero, bb172
bb186:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb188
bb187:
  ADD s7, zero, zero
  JAL zero, bb188
bb188:
  ADD s6, s7, zero
  BNE s6, zero, bb189
  JAL zero, bb190
bb189:
  ADDI s6, zero, 1
  JAL zero, bb178
bb190:
  ADD s6, zero, zero
  JAL zero, bb178
bb191:
  ADDI s0, zero, 1
  JAL zero, bb193
bb192:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb193
bb193:
  ADD s2, s0, zero
  BNE s2, zero, bb194
  JAL zero, bb195
bb194:
  ADDI s2, zero, 1
  JAL zero, bb168
bb195:
  ADD s2, zero, zero
  JAL zero, bb168
bb196:
  JAL zero, bb197
bb197:
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
  BNE s4, zero, bb221
  JAL zero, bb222
bb198:
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  XOR s0, s2, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb199
  JAL zero, bb201
bb199:
  CALL getch
  ADD s0, a0, zero
  LA s2, last_char
  SW s0, 0(s2)
  JAL zero, bb200
bb200:
  JAL zero, bb197
bb201:
  LA s0, last_char
  LW s2, 0(s0)
  SLTI s0, s2, 48
  XORI s11, s0, 1
  BNE s11, zero, bb211
  JAL zero, bb212
bb202:
  ADD s11, s0, zero
  XOR s10, s11, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb203
  JAL zero, bb205
bb203:
  LA s10, last_char
  LW s11, 0(s10)
  ADDI s10, zero, 48
  SUBW s1, s11, s10
  LA s10, num
  SW s1, 0(s10)
  JAL zero, bb206
bb204:
  JAL zero, bb37
bb205:
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
  JAL zero, bb204
bb206:
  CALL getch
  ADD s1, a0, zero
  LA s10, last_char
  SW s1, 0(s10)
  ADD s10, s1, zero
  JAL zero, bb207
bb207:
  ADD s1, s10, zero
  SLTI s10, s1, 48
  XORI s11, s10, 1
  BNE s11, zero, bb216
  JAL zero, bb217
bb208:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb209
  JAL zero, bb210
bb209:
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
  JAL zero, bb206
bb210:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb204
bb211:
  ADDI s0, zero, 57
  SLT s11, s0, s2
  XORI s0, s11, 1
  ADD s2, s0, zero
  JAL zero, bb213
bb212:
  ADD s2, zero, zero
  JAL zero, bb213
bb213:
  ADD s0, s2, zero
  BNE s0, zero, bb214
  JAL zero, bb215
bb214:
  ADDI s0, zero, 1
  JAL zero, bb202
bb215:
  ADD s0, zero, zero
  JAL zero, bb202
bb216:
  ADDI s10, zero, 57
  SLT s11, s10, s1
  XORI s1, s11, 1
  ADD s10, s1, zero
  JAL zero, bb218
bb217:
  ADD s10, zero, zero
  JAL zero, bb218
bb218:
  ADD s1, s10, zero
  BNE s1, zero, bb219
  JAL zero, bb220
bb219:
  ADDI s1, zero, 1
  JAL zero, bb208
bb220:
  ADD s1, zero, zero
  JAL zero, bb208
bb221:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb223
bb222:
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
  JAL zero, bb223
bb223:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb224
  JAL zero, bb225
bb224:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb198
bb225:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb198
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
  BNE s4, zero, bb227
  JAL zero, bb228
bb227:
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
bb228:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb229
  JAL zero, bb230
bb229:
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
bb230:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb231
  JAL zero, bb232
bb231:
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
bb232:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb233
  JAL zero, bb234
bb233:
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
bb234:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb235
  JAL zero, bb236
bb235:
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
bb236:
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
  BNE s2, zero, bb241
  JAL zero, bb242
bb241:
  ADDI s1, zero, 1
  JAL zero, bb243
bb242:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb243
bb243:
  ADD s2, s1, zero
  BNE s2, zero, bb244
  JAL zero, bb245
bb244:
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
bb245:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb246
  JAL zero, bb247
bb246:
  ADDI s2, zero, 1
  JAL zero, bb248
bb247:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb248
bb248:
  ADD s3, s2, zero
  BNE s3, zero, bb249
  JAL zero, bb250
bb249:
  ADDI s3, zero, 1
  JAL zero, bb251
bb250:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb251
bb251:
  ADD s4, s3, zero
  BNE s4, zero, bb252
  JAL zero, bb253
bb252:
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
bb253:
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
  BNE s2, zero, bb256
  JAL zero, bb257
bb256:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb258
bb257:
  ADD s1, zero, zero
  JAL zero, bb258
bb258:
  ADD s0, s1, zero
  BNE s0, zero, bb259
  JAL zero, bb260
bb259:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb260:
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
  BNE s2, zero, bb262
  JAL zero, bb263
bb262:
  ADDI s1, zero, 1
  JAL zero, bb264
bb263:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb264
bb264:
  ADD s2, s1, zero
  BNE s2, zero, bb265
  JAL zero, bb266
bb265:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb266:
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
  JAL zero, bb379
bb268:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb269
bb269:
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
  BNE s11, zero, bb270
  JAL zero, bb272
bb270:
  JAL zero, bb273
bb271:
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
  JAL zero, bb269
bb272:
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
bb273:
  ADDI s10, zero, 256
  JAL zero, bb274
bb274:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb275
  JAL zero, bb276
bb275:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  ADDI s0, zero, 4
  MULW s11, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s11
  SW zero, 0(s0)
  ADD s10, s1, zero
  JAL zero, bb274
bb276:
  ADDI s0, zero, 256
  JAL zero, bb277
bb277:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb278
  JAL zero, bb279
bb278:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  ADDI s1, zero, 4
  MULW s10, s11, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s10
  SW zero, 0(s1)
  ADD s0, s11, zero
  JAL zero, bb277
bb279:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb280
  JAL zero, bb282
bb280:
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
  JAL zero, bb281
bb281:
  ADDI t4, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb271
bb282:
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
  JAL zero, bb409
bb283:
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
  JAL zero, bb284
bb284:
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
  BNE s3, zero, bb285
  JAL zero, bb287
bb285:
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
  BNE t4, zero, bb340
  JAL zero, bb341
bb286:
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
  BNE s4, zero, bb288
  JAL zero, bb289
bb287:
  JAL zero, bb439
bb288:
  JAL zero, bb287
bb289:
  JAL zero, bb469
bb290:
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
  JAL zero, bb291
bb291:
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
  ADD s2, s1, zero
  JAL zero, bb292
bb292:
  ADD s1, s2, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb300
  JAL zero, bb304
bb293:
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
  ADD s0, s10, zero
  JAL zero, bb294
bb294:
  ADD s2, s0, zero
  LW s0, 0(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t6, sp, 0
  ADD s0, t6, s11
  LW s10, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s1, s0, s11
  SW s1, 0(sp)
  ADD s0, s10, zero
  JAL zero, bb295
bb295:
  ADD s1, s0, zero
  LW s0, 0(sp)
  ADDI s10, zero, 4
  MULW s11, s0, s10
  ADDI t5, sp, 0
  ADD s0, t5, s11
  LW s10, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s4, s0, s11
  SW s4, 0(sp)
  ADD s0, s10, zero
  JAL zero, bb296
bb296:
  ADD s4, s0, zero
  XORI s0, s2, 43
  SLTIU s10, s0, 1
  BNE s10, zero, bb320
  JAL zero, bb321
bb297:
  ADD s0, s10, zero
  LW s11, 0(sp)
  ADDIW s3, s11, 1
  SW s3, 0(sp)
  ADDI s11, zero, 4
  MULW s6, s3, s11
  ADDI t6, sp, 0
  ADD s3, t6, s6
  SW s0, 0(s3)
  JAL zero, bb298
bb298:
  ADD s7, s1, zero
  ADD s8, s4, zero
  ADD s9, s2, zero
  JAL zero, bb291
bb299:
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
  BNE s1, zero, bb306
  JAL zero, bb308
bb300:
  LW s1, 1024(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADDI t6, sp, 1024
  ADD s1, t6, s4
  LW s2, 0(s1)
  ADD s1, s2, zero
  JAL zero, bb301
bb301:
  ADD t4, s1, zero
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
  BNE s4, zero, bb353
  JAL zero, bb354
bb302:
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
  BNE t4, zero, bb366
  JAL zero, bb367
bb303:
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
  JAL zero, bb305
bb304:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb305
bb305:
  LUI t4, 1
  ADDIW t4, t4, -1728
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s0, t4, zero
  BNE s0, zero, bb293
  JAL zero, bb299
bb306:
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
  JAL zero, bb307
bb307:
  ADDI t4, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb271
bb308:
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
  JAL zero, bb499
bb309:
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
  JAL zero, bb284
bb310:
  LW s7, 1024(sp)
  ADD s9, s7, zero
  JAL zero, bb311
bb311:
  ADD s7, s9, zero
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb312
  JAL zero, bb318
bb312:
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
  ADD s6, s9, zero
  JAL zero, bb313
bb313:
  ADD s7, s6, zero
  LW s6, 0(sp)
  ADDI s9, zero, 4
  MULW s11, s6, s9
  ADDI t5, sp, 0
  ADD s6, t5, s11
  LW s9, 0(s6)
  LW s6, 0(sp)
  ADDI s11, zero, 1
  SUBW s0, s6, s11
  SW s0, 0(sp)
  ADD s0, s9, zero
  JAL zero, bb314
bb314:
  ADD s6, s0, zero
  LW s0, 0(sp)
  ADDI s9, zero, 4
  MULW s11, s0, s9
  ADDI t6, sp, 0
  ADD s0, t6, s11
  LW s9, 0(s0)
  LW s0, 0(sp)
  ADDI s11, zero, 1
  SUBW s2, s0, s11
  SW s2, 0(sp)
  ADD s0, s9, zero
  JAL zero, bb315
bb315:
  ADD s2, s0, zero
  XORI s0, s7, 43
  SLTIU s9, s0, 1
  BNE s9, zero, bb330
  JAL zero, bb331
bb316:
  ADD s0, s9, zero
  LW s11, 0(sp)
  ADDIW s4, s11, 1
  SW s4, 0(sp)
  ADDI s11, zero, 4
  MULW s10, s4, s11
  ADDI t5, sp, 0
  ADD s4, t5, s10
  SW s0, 0(s4)
  JAL zero, bb317
bb317:
  JAL zero, bb310
bb318:
  LW s0, 0(sp)
  ADDI s2, zero, 4
  MULW s4, s0, s2
  ADDI t6, sp, 0
  ADD s0, t6, s4
  LW s2, 0(s0)
  ADD s0, s2, zero
  JAL zero, bb319
bb319:
  ADD s2, s0, zero
  ADD t4, s2, zero
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb271
bb320:
  ADDW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb297
bb321:
  XORI s0, s2, 45
  SLTIU s3, s0, 1
  BNE s3, zero, bb322
  JAL zero, bb323
bb322:
  SUBW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb297
bb323:
  XORI s0, s2, 42
  SLTIU s3, s0, 1
  BNE s3, zero, bb324
  JAL zero, bb325
bb324:
  MULW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb297
bb325:
  XORI s0, s2, 47
  SLTIU s3, s0, 1
  BNE s3, zero, bb326
  JAL zero, bb327
bb326:
  DIVW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb297
bb327:
  XORI s0, s2, 37
  SLTIU s3, s0, 1
  BNE s3, zero, bb328
  JAL zero, bb329
bb328:
  REMW s0, s4, s1
  ADD s10, s0, zero
  JAL zero, bb297
bb329:
  ADD s10, zero, zero
  JAL zero, bb297
bb330:
  ADDW s0, s2, s6
  ADD s9, s0, zero
  JAL zero, bb316
bb331:
  XORI s0, s7, 45
  SLTIU s4, s0, 1
  BNE s4, zero, bb332
  JAL zero, bb333
bb332:
  SUBW s0, s2, s6
  ADD s9, s0, zero
  JAL zero, bb316
bb333:
  XORI s0, s7, 42
  SLTIU s4, s0, 1
  BNE s4, zero, bb334
  JAL zero, bb335
bb334:
  MULW s0, s2, s6
  ADD s9, s0, zero
  JAL zero, bb316
bb335:
  XORI s0, s7, 47
  SLTIU s4, s0, 1
  BNE s4, zero, bb336
  JAL zero, bb337
bb336:
  DIVW s0, s2, s6
  ADD s9, s0, zero
  JAL zero, bb316
bb337:
  XORI s0, s7, 37
  SLTIU s4, s0, 1
  BNE s4, zero, bb338
  JAL zero, bb339
bb338:
  REMW s0, s2, s6
  ADD s9, s0, zero
  JAL zero, bb316
bb339:
  ADD s9, zero, zero
  JAL zero, bb316
bb340:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb342
bb341:
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
  JAL zero, bb342
bb342:
  LUI t4, 1
  ADDIW t4, t4, -1880
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb343
  JAL zero, bb344
bb343:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb286
bb344:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb345
  JAL zero, bb346
bb345:
  ADDI s0, zero, 1
  JAL zero, bb347
bb346:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb347
bb347:
  ADD s1, s0, zero
  BNE s1, zero, bb348
  JAL zero, bb349
bb348:
  ADDI s1, zero, 1
  JAL zero, bb350
bb349:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb350
bb350:
  ADD s2, s1, zero
  BNE s2, zero, bb351
  JAL zero, bb352
bb351:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb286
bb352:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb286
bb353:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb355
bb354:
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
  JAL zero, bb355
bb355:
  LUI t4, 1
  ADDIW t4, t4, -1712
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb356
  JAL zero, bb357
bb356:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb302
bb357:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb358
  JAL zero, bb359
bb358:
  ADDI s0, zero, 1
  JAL zero, bb360
bb359:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb360
bb360:
  ADD s1, s0, zero
  BNE s1, zero, bb361
  JAL zero, bb362
bb361:
  ADDI s1, zero, 1
  JAL zero, bb363
bb362:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb363
bb363:
  ADD s2, s1, zero
  BNE s2, zero, bb364
  JAL zero, bb365
bb364:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb302
bb365:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb302
bb366:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb368
bb367:
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
  JAL zero, bb368
bb368:
  LUI t4, 1
  ADDIW t4, t4, -1688
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb369
  JAL zero, bb370
bb369:
  ADDI s5, zero, 10
  JAL zero, bb303
bb370:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb371
  JAL zero, bb372
bb371:
  ADDI s0, zero, 1
  JAL zero, bb373
bb372:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb373
bb373:
  ADD s1, s0, zero
  BNE s1, zero, bb374
  JAL zero, bb375
bb374:
  ADDI s1, zero, 1
  JAL zero, bb376
bb375:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb376
bb376:
  ADD s2, s1, zero
  BNE s2, zero, bb377
  JAL zero, bb378
bb377:
  ADDI s5, zero, 20
  JAL zero, bb303
bb378:
  ADD s5, zero, zero
  JAL zero, bb303
bb379:
  JAL zero, bb380
bb380:
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
  BNE s3, zero, bb404
  JAL zero, bb405
bb381:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb382
  JAL zero, bb384
bb382:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb383
bb383:
  JAL zero, bb380
bb384:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb394
  JAL zero, bb395
bb385:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb386
  JAL zero, bb388
bb386:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb389
bb387:
  JAL zero, bb268
bb388:
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
  JAL zero, bb387
bb389:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb390
bb390:
  ADD s6, s7, zero
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb399
  JAL zero, bb400
bb391:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb392
  JAL zero, bb393
bb392:
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
  JAL zero, bb389
bb393:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb387
bb394:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb396
bb395:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb396
bb396:
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb397
  JAL zero, bb398
bb397:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb385
bb398:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb385
bb399:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb401
bb400:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb401
bb401:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb402
  JAL zero, bb403
bb402:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb391
bb403:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb391
bb404:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb406
bb405:
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
  JAL zero, bb406
bb406:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb407
  JAL zero, bb408
bb407:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb381
bb408:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb381
bb409:
  JAL zero, bb410
bb410:
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
  BNE s10, zero, bb434
  JAL zero, bb435
bb411:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb412
  JAL zero, bb414
bb412:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb413
bb413:
  JAL zero, bb410
bb414:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb424
  JAL zero, bb425
bb415:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb416
  JAL zero, bb418
bb416:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  JAL zero, bb419
bb417:
  JAL zero, bb283
bb418:
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
  JAL zero, bb417
bb419:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  ADD s5, s4, zero
  JAL zero, bb420
bb420:
  ADD s4, s5, zero
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb429
  JAL zero, bb430
bb421:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb422
  JAL zero, bb423
bb422:
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
  JAL zero, bb419
bb423:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb417
bb424:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb426
bb425:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb426
bb426:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb427
  JAL zero, bb428
bb427:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb415
bb428:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb415
bb429:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb431
bb430:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb431
bb431:
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb432
  JAL zero, bb433
bb432:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb421
bb433:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb421
bb434:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb436
bb435:
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
  JAL zero, bb436
bb436:
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb437
  JAL zero, bb438
bb437:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb411
bb438:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb411
bb439:
  JAL zero, bb440
bb440:
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
  BNE s10, zero, bb464
  JAL zero, bb465
bb441:
  LUI t4, 1
  ADDIW t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s1, s8, zero
  SLTU s8, zero, s1
  BNE s8, zero, bb442
  JAL zero, bb444
bb442:
  CALL getch
  ADD s1, a0, zero
  LA s8, last_char
  SW s1, 0(s8)
  JAL zero, bb443
bb443:
  JAL zero, bb440
bb444:
  LA s1, last_char
  LW s8, 0(s1)
  SLTI s1, s8, 48
  XORI s9, s1, 1
  BNE s9, zero, bb454
  JAL zero, bb455
bb445:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb446
  JAL zero, bb448
bb446:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  JAL zero, bb449
bb447:
  JAL zero, bb310
bb448:
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
  JAL zero, bb447
bb449:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  ADD s5, s3, zero
  JAL zero, bb450
bb450:
  ADD s3, s5, zero
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb459
  JAL zero, bb460
bb451:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb452
  JAL zero, bb453
bb452:
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
  JAL zero, bb449
bb453:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb447
bb454:
  ADDI s1, zero, 57
  SLT s9, s1, s8
  XORI s1, s9, 1
  ADD s8, s1, zero
  JAL zero, bb456
bb455:
  ADD s8, zero, zero
  JAL zero, bb456
bb456:
  ADD s1, s8, zero
  BNE s1, zero, bb457
  JAL zero, bb458
bb457:
  ADDI s1, zero, 1
  JAL zero, bb445
bb458:
  ADD s1, zero, zero
  JAL zero, bb445
bb459:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb461
bb460:
  ADD s5, zero, zero
  JAL zero, bb461
bb461:
  ADD s3, s5, zero
  BNE s3, zero, bb462
  JAL zero, bb463
bb462:
  ADDI s3, zero, 1
  JAL zero, bb451
bb463:
  ADD s3, zero, zero
  JAL zero, bb451
bb464:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb466
bb465:
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
  JAL zero, bb466
bb466:
  LUI t4, 1
  ADDIW t4, t4, -1832
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb467
  JAL zero, bb468
bb467:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb441
bb468:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb441
bb469:
  JAL zero, bb470
bb470:
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
  BNE s2, zero, bb494
  JAL zero, bb495
bb471:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb472
  JAL zero, bb474
bb472:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb473
bb473:
  JAL zero, bb470
bb474:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb484
  JAL zero, bb485
bb475:
  LUI t4, 1
  ADDIW t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb476
  JAL zero, bb478
bb476:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb479
bb477:
  JAL zero, bb290
bb478:
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
  JAL zero, bb477
bb479:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb480
bb480:
  ADD s5, s6, zero
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb489
  JAL zero, bb490
bb481:
  LUI t4, 1
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb482
  JAL zero, bb483
bb482:
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
  JAL zero, bb479
bb483:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb477
bb484:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb486
bb485:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb486
bb486:
  LUI t4, 1
  ADDIW t4, t4, -1784
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb487
  JAL zero, bb488
bb487:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb475
bb488:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb475
bb489:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb491
bb490:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb491
bb491:
  LUI t4, 1
  ADDIW t4, t4, -1768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb492
  JAL zero, bb493
bb492:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb481
bb493:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb481
bb494:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb496
bb495:
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
  JAL zero, bb496
bb496:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb497
  JAL zero, bb498
bb497:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb471
bb498:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb471
bb499:
  JAL zero, bb500
bb500:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb524
  JAL zero, bb525
bb501:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb502
  JAL zero, bb504
bb502:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb503
bb503:
  JAL zero, bb500
bb504:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s6, s3, 1
  BNE s6, zero, bb514
  JAL zero, bb515
bb505:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb506
  JAL zero, bb508
bb506:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb509
bb507:
  JAL zero, bb309
bb508:
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
  JAL zero, bb507
bb509:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  ADD s7, s6, zero
  JAL zero, bb510
bb510:
  ADD s6, s7, zero
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb519
  JAL zero, bb520
bb511:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb512
  JAL zero, bb513
bb512:
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
  JAL zero, bb509
bb513:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb507
bb514:
  ADDI s3, zero, 57
  SLT s6, s3, s4
  XORI s3, s6, 1
  ADD s4, s3, zero
  JAL zero, bb516
bb515:
  ADD s4, zero, zero
  JAL zero, bb516
bb516:
  ADD s3, s4, zero
  BNE s3, zero, bb517
  JAL zero, bb518
bb517:
  ADDI s3, zero, 1
  JAL zero, bb505
bb518:
  ADD s3, zero, zero
  JAL zero, bb505
bb519:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb521
bb520:
  ADD s7, zero, zero
  JAL zero, bb521
bb521:
  ADD s6, s7, zero
  BNE s6, zero, bb522
  JAL zero, bb523
bb522:
  ADDI s6, zero, 1
  JAL zero, bb511
bb523:
  ADD s6, zero, zero
  JAL zero, bb511
bb524:
  ADDI s0, zero, 1
  JAL zero, bb526
bb525:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb526
bb526:
  ADD s2, s0, zero
  BNE s2, zero, bb527
  JAL zero, bb528
bb527:
  ADDI s2, zero, 1
  JAL zero, bb501
bb528:
  ADD s2, zero, zero
  JAL zero, bb501
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
  JAL zero, bb531
bb531:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb555
  JAL zero, bb556
bb532:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb533
  JAL zero, bb535
bb533:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb534
bb534:
  JAL zero, bb531
bb535:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb545
  JAL zero, bb546
bb536:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb537
  JAL zero, bb539
bb537:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb540
bb538:
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
bb539:
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
  JAL zero, bb538
bb540:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  ADD s6, s5, zero
  JAL zero, bb541
bb541:
  ADD s5, s6, zero
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb550
  JAL zero, bb551
bb542:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb543
  JAL zero, bb544
bb543:
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
  JAL zero, bb540
bb544:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb538
bb545:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb547
bb546:
  ADD s4, zero, zero
  JAL zero, bb547
bb547:
  ADD s3, s4, zero
  BNE s3, zero, bb548
  JAL zero, bb549
bb548:
  ADDI s3, zero, 1
  JAL zero, bb536
bb549:
  ADD s3, zero, zero
  JAL zero, bb536
bb550:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb552
bb551:
  ADD s6, zero, zero
  JAL zero, bb552
bb552:
  ADD s5, s6, zero
  BNE s5, zero, bb553
  JAL zero, bb554
bb553:
  ADDI s5, zero, 1
  JAL zero, bb542
bb554:
  ADD s5, zero, zero
  JAL zero, bb542
bb555:
  ADDI s0, zero, 1
  JAL zero, bb557
bb556:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb557
bb557:
  ADD s2, s0, zero
  BNE s2, zero, bb558
  JAL zero, bb559
bb558:
  ADDI s2, zero, 1
  JAL zero, bb532
bb559:
  ADD s2, zero, zero
  JAL zero, bb532
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
