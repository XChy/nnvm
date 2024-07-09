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
  ADDIW t0, t0, 1680
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  SD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
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
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1680
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
  JAL zero, bb83
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
  ADDIW t3, t3, -1968
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1928
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1976
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1920
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDIW t6, t6, -1984
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
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 43
  SLTIU s4, s1, 1
  BNE s4, zero, bb57
  JAL zero, bb58
bb13:
  LUI t3, 1
  ADDIW t3, t3, -1952
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s6, t4, zero
  SLTU s5, zero, s6
  XORI s6, s5, 1
  ADD s5, s6, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb15
  JAL zero, bb16
bb14:
  JAL zero, bb170
bb15:
  JAL zero, bb14
bb16:
  JAL zero, bb112
bb17:
  LUI t4, 1
  ADDIW t4, t4, -1984
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1968
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
  JAL zero, bb25
bb19:
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t6, sp, 0
  ADD s3, t6, s0
  LW s0, 0(s3)
  LW s3, 0(sp)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 0(sp)
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t5, sp, 1024
  ADD s3, t5, s11
  LW s5, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s10, s3, s11
  SW s10, 1024(sp)
  LW s3, 1024(sp)
  ADDI s10, zero, 4
  MULW s11, s3, s10
  ADDI t6, sp, 1024
  ADD s3, t6, s11
  LW s10, 0(s3)
  LW s3, 1024(sp)
  ADDI s11, zero, 1
  SUBW s6, s3, s11
  SW s6, 1024(sp)
  XORI s3, s0, 43
  SLTIU s6, s3, 1
  BNE s6, zero, bb37
  JAL zero, bb38
bb20:
  ADD s3, s6, zero
  LW s11, 1024(sp)
  ADDIW s2, s11, 1
  SW s2, 1024(sp)
  ADDI s11, zero, 4
  MULW s1, s2, s11
  ADDI t5, sp, 1024
  ADD s2, t5, s1
  SW s3, 0(s2)
  JAL zero, bb21
bb21:
  ADD s7, s5, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
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
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb27
  JAL zero, bb29
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
  BNE s4, zero, bb70
  JAL zero, bb71
bb24:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1808
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb26
bb25:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb26
bb26:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb19
  JAL zero, bb22
bb27:
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
  JAL zero, bb28
bb28:
  ADDI a0, zero, -1
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  LD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  LD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1752
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1744
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1736
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1720
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI ra, 1
  ADDIW ra, ra, -1704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t0, 1
  ADDIW t0, t0, -1680
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb29:
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
  JAL zero, bb141
bb30:
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
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb11
bb31:
  LW s3, 0(sp)
  XOR s9, s3, zero
  SLTU s3, zero, s9
  BNE s3, zero, bb32
  JAL zero, bb35
bb32:
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
  BNE s3, zero, bb47
  JAL zero, bb48
bb33:
  ADD s2, s3, zero
  LW s11, 1024(sp)
  ADDIW s6, s11, 1
  SW s6, 1024(sp)
  ADDI s11, zero, 4
  MULW s5, s6, s11
  ADDI t6, sp, 1024
  ADD s6, t6, s5
  SW s2, 0(s6)
  JAL zero, bb34
bb34:
  JAL zero, bb31
bb35:
  LW s2, 1024(sp)
  ADDI s3, zero, 4
  MULW s5, s2, s3
  ADDI t5, sp, 1024
  ADD s2, t5, s5
  LW s3, 0(s2)
  JAL zero, bb36
bb36:
  ADD a0, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1752
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1744
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1736
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1720
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1704
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  LD s8, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1680
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb37:
  ADDW s3, s10, s5
  ADD s6, s3, zero
  JAL zero, bb20
bb38:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb39
  JAL zero, bb40
bb39:
  SUBW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb20
bb40:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb41
  JAL zero, bb42
bb41:
  MULW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb20
bb42:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb43
  JAL zero, bb44
bb43:
  DIVW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb20
bb44:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb45
  JAL zero, bb46
bb45:
  REMW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb20
bb46:
  ADD s6, zero, zero
  JAL zero, bb20
bb47:
  ADDW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb33
bb48:
  XORI s2, s9, 45
  SLTIU s5, s2, 1
  BNE s5, zero, bb49
  JAL zero, bb50
bb49:
  SUBW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb33
bb50:
  XORI s2, s9, 42
  SLTIU s5, s2, 1
  BNE s5, zero, bb51
  JAL zero, bb52
bb51:
  MULW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb33
bb52:
  XORI s2, s9, 47
  SLTIU s5, s2, 1
  BNE s5, zero, bb53
  JAL zero, bb54
bb53:
  DIVW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb33
bb54:
  XORI s2, s9, 37
  SLTIU s5, s2, 1
  BNE s5, zero, bb55
  JAL zero, bb56
bb55:
  REMW s2, s7, s8
  ADD s3, s2, zero
  JAL zero, bb33
bb56:
  ADD s3, zero, zero
  JAL zero, bb33
bb57:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb59
bb58:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb59
bb59:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb60
  JAL zero, bb61
bb60:
  ADDI t4, zero, 10
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb13
bb61:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s0, zero, 1
  JAL zero, bb64
bb63:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb64
bb64:
  ADD s1, s0, zero
  BNE s1, zero, bb65
  JAL zero, bb66
bb65:
  ADDI s1, zero, 1
  JAL zero, bb67
bb66:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb67
bb67:
  ADD s2, s1, zero
  BNE s2, zero, bb68
  JAL zero, bb69
bb68:
  ADDI t4, zero, 20
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb13
bb69:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb13
bb70:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb72
bb71:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb72
bb72:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb73
  JAL zero, bb74
bb73:
  ADDI s4, zero, 10
  JAL zero, bb24
bb74:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb75
  JAL zero, bb76
bb75:
  ADDI s0, zero, 1
  JAL zero, bb77
bb76:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb77
bb77:
  ADD s1, s0, zero
  BNE s1, zero, bb78
  JAL zero, bb79
bb78:
  ADDI s1, zero, 1
  JAL zero, bb80
bb79:
  LUI t4, 1
  ADDIW t4, t4, -1800
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb80
bb80:
  ADD s2, s1, zero
  BNE s2, zero, bb81
  JAL zero, bb82
bb81:
  ADDI s4, zero, 20
  JAL zero, bb24
bb82:
  ADD s4, zero, zero
  JAL zero, bb24
bb83:
  JAL zero, bb84
bb84:
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
  BNE s2, zero, bb107
  JAL zero, bb108
bb85:
  LUI t4, 1
  ADDIW t4, t4, -2032
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb86
  JAL zero, bb88
bb86:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb87
bb87:
  JAL zero, bb84
bb88:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb97
  JAL zero, bb98
bb89:
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb90
  JAL zero, bb92
bb90:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb93
bb91:
  JAL zero, bb10
bb92:
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
  JAL zero, bb91
bb93:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb102
  JAL zero, bb103
bb94:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb95
  JAL zero, bb96
bb95:
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
  JAL zero, bb93
bb96:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb91
bb97:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb99
bb98:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb99
bb99:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb100
  JAL zero, bb101
bb100:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb89
bb101:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb89
bb102:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb104
bb103:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb104
bb104:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb105
  JAL zero, bb106
bb105:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb94
bb106:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb94
bb107:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb109
bb108:
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
  JAL zero, bb109
bb109:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb110
  JAL zero, bb111
bb110:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -2032
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb85
bb111:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -2032
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb85
bb112:
  JAL zero, bb113
bb113:
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
  BNE s2, zero, bb136
  JAL zero, bb137
bb114:
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb115
  JAL zero, bb117
bb115:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb116
bb116:
  JAL zero, bb113
bb117:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb126
  JAL zero, bb127
bb118:
  LUI t4, 1
  ADDIW t4, t4, -1856
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb119
  JAL zero, bb121
bb119:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb122
bb120:
  JAL zero, bb17
bb121:
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
  JAL zero, bb120
bb122:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb131
  JAL zero, bb132
bb123:
  LUI t4, 1
  ADDIW t4, t4, -1840
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb124
  JAL zero, bb125
bb124:
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
  JAL zero, bb122
bb125:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb120
bb126:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t5, 1
  ADDIW t5, t5, -1864
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb128
bb127:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb128
bb128:
  LUI t4, 1
  ADDIW t4, t4, -1864
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb129
  JAL zero, bb130
bb129:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1856
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb118
bb130:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1856
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb118
bb131:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t5, 1
  ADDIW t5, t5, -1848
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb133
bb132:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1848
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb133
bb133:
  LUI t4, 1
  ADDIW t4, t4, -1848
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb134
  JAL zero, bb135
bb134:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1840
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb123
bb135:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb123
bb136:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb138
bb137:
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
  JAL zero, bb138
bb138:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb139
  JAL zero, bb140
bb139:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb114
bb140:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1872
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb114
bb141:
  JAL zero, bb142
bb142:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb165
  JAL zero, bb166
bb143:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb144
  JAL zero, bb146
bb144:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb145
bb145:
  JAL zero, bb142
bb146:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb155
  JAL zero, bb156
bb147:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb148
  JAL zero, bb150
bb148:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb151
bb149:
  JAL zero, bb30
bb150:
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
  JAL zero, bb149
bb151:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb160
  JAL zero, bb161
bb152:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb153
  JAL zero, bb154
bb153:
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
  JAL zero, bb151
bb154:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb149
bb155:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
  ADD s5, s3, zero
  JAL zero, bb157
bb156:
  ADD s5, zero, zero
  JAL zero, bb157
bb157:
  ADD s3, s5, zero
  BNE s3, zero, bb158
  JAL zero, bb159
bb158:
  ADDI s3, zero, 1
  JAL zero, bb147
bb159:
  ADD s3, zero, zero
  JAL zero, bb147
bb160:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb162
bb161:
  ADD s7, zero, zero
  JAL zero, bb162
bb162:
  ADD s6, s7, zero
  BNE s6, zero, bb163
  JAL zero, bb164
bb163:
  ADDI s6, zero, 1
  JAL zero, bb152
bb164:
  ADD s6, zero, zero
  JAL zero, bb152
bb165:
  ADDI s0, zero, 1
  JAL zero, bb167
bb166:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb167
bb167:
  ADD s2, s0, zero
  BNE s2, zero, bb168
  JAL zero, bb169
bb168:
  ADDI s2, zero, 1
  JAL zero, bb143
bb169:
  ADD s2, zero, zero
  JAL zero, bb143
bb170:
  JAL zero, bb171
bb171:
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
  SLTIU s2, s5, 1
  BNE s2, zero, bb194
  JAL zero, bb195
bb172:
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s0, t4, zero
  XOR s11, s0, zero
  SLTU s0, zero, s11
  BNE s0, zero, bb173
  JAL zero, bb175
bb173:
  CALL getch
  ADD s0, a0, zero
  LA s11, last_char
  SW s0, 0(s11)
  JAL zero, bb174
bb174:
  JAL zero, bb171
bb175:
  LA s0, last_char
  LW s11, 0(s0)
  SLTI s0, s11, 48
  XORI s10, s0, 1
  BNE s10, zero, bb184
  JAL zero, bb185
bb176:
  ADD s11, s0, zero
  XOR s1, s11, zero
  SLTU s11, zero, s1
  BNE s11, zero, bb177
  JAL zero, bb179
bb177:
  LA s1, last_char
  LW s11, 0(s1)
  ADDI s1, zero, 48
  SUBW s4, s11, s1
  LA s1, num
  SW s4, 0(s1)
  JAL zero, bb180
bb178:
  JAL zero, bb31
bb179:
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
  JAL zero, bb178
bb180:
  CALL getch
  ADD s1, a0, zero
  LA s4, last_char
  SW s1, 0(s4)
  SLTI s4, s1, 48
  XORI s11, s4, 1
  BNE s11, zero, bb189
  JAL zero, bb190
bb181:
  ADD s11, s1, zero
  XOR s3, s11, zero
  SLTU s11, zero, s3
  BNE s11, zero, bb182
  JAL zero, bb183
bb182:
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
  JAL zero, bb180
bb183:
  LA s3, cur_token
  SW zero, 0(s3)
  JAL zero, bb178
bb184:
  ADDI s0, zero, 57
  SLT s10, s0, s11
  XORI s0, s10, 1
  ADD s10, s0, zero
  JAL zero, bb186
bb185:
  ADD s10, zero, zero
  JAL zero, bb186
bb186:
  ADD s0, s10, zero
  BNE s0, zero, bb187
  JAL zero, bb188
bb187:
  ADDI s0, zero, 1
  JAL zero, bb176
bb188:
  ADD s0, zero, zero
  JAL zero, bb176
bb189:
  ADDI s4, zero, 57
  SLT s11, s4, s1
  XORI s1, s11, 1
  ADD s4, s1, zero
  JAL zero, bb191
bb190:
  ADD s4, zero, zero
  JAL zero, bb191
bb191:
  ADD s1, s4, zero
  BNE s1, zero, bb192
  JAL zero, bb193
bb192:
  ADDI s1, zero, 1
  JAL zero, bb181
bb193:
  ADD s1, zero, zero
  JAL zero, bb181
bb194:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1912
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb196
bb195:
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
  JAL zero, bb196
bb196:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb197
  JAL zero, bb198
bb197:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1896
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb172
bb198:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1896
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb172
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
  BNE s4, zero, bb200
  JAL zero, bb201
bb200:
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
bb201:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb202
  JAL zero, bb203
bb202:
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
bb203:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb204
  JAL zero, bb205
bb204:
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
bb205:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb206
  JAL zero, bb207
bb206:
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
bb207:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb208
  JAL zero, bb209
bb208:
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
bb209:
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
  BNE s2, zero, bb214
  JAL zero, bb215
bb214:
  ADDI s1, zero, 1
  JAL zero, bb216
bb215:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb216
bb216:
  ADD s2, s1, zero
  BNE s2, zero, bb217
  JAL zero, bb218
bb217:
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
bb218:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb219
  JAL zero, bb220
bb219:
  ADDI s2, zero, 1
  JAL zero, bb221
bb220:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb221
bb221:
  ADD s3, s2, zero
  BNE s3, zero, bb222
  JAL zero, bb223
bb222:
  ADDI s3, zero, 1
  JAL zero, bb224
bb223:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb224
bb224:
  ADD s4, s3, zero
  BNE s4, zero, bb225
  JAL zero, bb226
bb225:
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
bb226:
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
  BNE s2, zero, bb229
  JAL zero, bb230
bb229:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb231
bb230:
  ADD s1, zero, zero
  JAL zero, bb231
bb231:
  ADD s0, s1, zero
  BNE s0, zero, bb232
  JAL zero, bb233
bb232:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb233:
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
  BNE s2, zero, bb235
  JAL zero, bb236
bb235:
  ADDI s1, zero, 1
  JAL zero, bb237
bb236:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb237
bb237:
  ADD s2, s1, zero
  BNE s2, zero, bb238
  JAL zero, bb239
bb238:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb239:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  LUI t0, 1048575
  ADDIW t0, t0, 1600
  ADD sp, sp, t0
  LUI t5, 1
  ADDIW t5, t5, -1704
  ADD t5, t5, sp
  SD s6, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1696
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1688
  ADD t5, t5, sp
  SD s9, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1680
  ADD t6, t6, sp
  SD s7, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1672
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1664
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1656
  ADD t5, t5, sp
  SD s8, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1648
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1640
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1624
  ADD t5, t5, sp
  SD s3, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1616
  ADD t4, t4, sp
  SD s2, 0(t4)
  LUI t4, 1
  ADDIW t4, t4, -1608
  ADD t4, t4, sp
  SD s4, 0(t4)
  CALL getint
  ADD t4, a0, zero
  LUI t6, 1
  ADDIW t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  CALL getch
  ADD s1, a0, zero
  JAL zero, bb329
bb241:
  LUI t4, 1
  ADDIW t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  JAL zero, bb242
bb242:
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
  BNE s11, zero, bb243
  JAL zero, bb245
bb243:
  JAL zero, bb246
bb244:
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
  JAL zero, bb242
bb245:
  ADD a0, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1704
  ADD t6, t6, sp
  LD s6, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1696
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1688
  ADD t6, t6, sp
  LD s9, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1680
  ADD t5, t5, sp
  LD s7, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1672
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1664
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1656
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1648
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI ra, 1
  ADDIW ra, ra, -1640
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDIW t6, t6, -1632
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1624
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI t6, 1
  ADDIW t6, t6, -1616
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDIW t5, t5, -1608
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t0, 1
  ADDIW t0, t0, -1600
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb246:
  ADDI s10, zero, 256
  JAL zero, bb247
bb247:
  ADD s11, s10, zero
  XOR s0, s11, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb248
  JAL zero, bb249
bb248:
  ADDI s0, zero, 1
  SUBW s1, s11, s0
  ADDI s0, zero, 4
  MULW s11, s1, s0
  ADDI t6, sp, 0
  ADD s0, t6, s11
  SW zero, 0(s0)
  ADD s10, s1, zero
  JAL zero, bb247
bb249:
  ADDI s0, zero, 256
  JAL zero, bb250
bb250:
  ADD s1, s0, zero
  XOR s10, s1, zero
  SLTU s11, zero, s10
  BNE s11, zero, bb251
  JAL zero, bb252
bb251:
  ADDI s10, zero, 1
  SUBW s11, s1, s10
  ADDI s1, zero, 4
  MULW s10, s11, s1
  ADDI t5, sp, 1024
  ADD s1, t5, s10
  SW zero, 0(s1)
  ADD s0, s11, zero
  JAL zero, bb250
bb252:
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb253
  JAL zero, bb255
bb253:
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
  JAL zero, bb254
bb254:
  ADDI t4, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb244
bb255:
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
  JAL zero, bb358
bb256:
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
  JAL zero, bb257
bb257:
  LUI t3, 1
  ADDIW t3, t3, -1864
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1896
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1856
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t3, 1
  ADDIW t3, t3, -1904
  ADD t3, t3, sp
  SW t4, 0(t3)
  LUI t3, 1
  ADDIW t3, t3, -1848
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1912
  ADD t5, t5, sp
  SW t4, 0(t5)
  LA s10, cur_token
  LW s3, 0(s10)
  XORI s10, s3, 1
  SLTIU s3, s10, 1
  BNE s3, zero, bb258
  JAL zero, bb260
bb258:
  LA s3, other
  LW t4, 0(s3)
  LUI t6, 1
  ADDIW t6, t6, -1920
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s3, t4, 43
  SLTIU s2, s3, 1
  BNE s2, zero, bb303
  JAL zero, bb304
bb259:
  LUI t3, 1
  ADDIW t3, t3, -1880
  ADD t3, t3, sp
  LW t3, 0(t3)
  ADD t4, t3, zero
  LUI t5, 1
  ADDIW t5, t5, -1872
  ADD t5, t5, sp
  SW t4, 0(t5)
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  XOR s4, t4, zero
  SLTU s10, zero, s4
  XORI s4, s10, 1
  ADD s10, s4, zero
  XOR s4, s10, zero
  SLTU s10, zero, s4
  BNE s10, zero, bb261
  JAL zero, bb262
bb260:
  JAL zero, bb387
bb261:
  JAL zero, bb260
bb262:
  JAL zero, bb416
bb263:
  LUI t4, 1
  ADDIW t4, t4, -1912
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1904
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  LUI t4, 1
  ADDIW t4, t4, -1896
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s9, t4, zero
  JAL zero, bb264
bb264:
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
  BNE s1, zero, bb269
  JAL zero, bb271
bb265:
  LW s3, 1024(sp)
  ADDI s5, zero, 4
  MULW s0, s3, s5
  ADDI t5, sp, 1024
  ADD s3, t5, s0
  LW s0, 0(s3)
  LW s3, 1024(sp)
  ADDI s5, zero, 1
  SUBW s11, s3, s5
  SW s11, 1024(sp)
  LW s3, 0(sp)
  ADDI s5, zero, 4
  MULW s11, s3, s5
  ADDI t6, sp, 0
  ADD s3, t6, s11
  LW s5, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s10, s3, s11
  SW s10, 0(sp)
  LW s3, 0(sp)
  ADDI s10, zero, 4
  MULW s11, s3, s10
  ADDI t5, sp, 0
  ADD s3, t5, s11
  LW s10, 0(s3)
  LW s3, 0(sp)
  ADDI s11, zero, 1
  SUBW s6, s3, s11
  SW s6, 0(sp)
  XORI s3, s0, 43
  SLTIU s6, s3, 1
  BNE s6, zero, bb283
  JAL zero, bb284
bb266:
  ADD s3, s6, zero
  LW s11, 0(sp)
  ADDIW s2, s11, 1
  SW s2, 0(sp)
  ADDI s11, zero, 4
  MULW s1, s2, s11
  ADDI t6, sp, 0
  ADD s2, t6, s1
  SW s3, 0(s2)
  JAL zero, bb267
bb267:
  ADD s7, s5, zero
  ADD s8, s10, zero
  ADD s9, s0, zero
  JAL zero, bb264
bb268:
  LW s0, 1024(sp)
  ADDIW s1, s0, 1
  SW s1, 1024(sp)
  ADDI s0, zero, 4
  MULW s2, s1, s0
  ADDI t5, sp, 1024
  ADD s0, t5, s2
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  SW t4, 0(s0)
  LA s0, cur_token
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb273
  JAL zero, bb275
bb269:
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
  BNE s4, zero, bb316
  JAL zero, bb317
bb270:
  ADD s3, s4, zero
  LUI t4, 1
  ADDIW t4, t4, -1872
  ADD t4, t4, sp
  LW t4, 0(t4)
  SLT s6, s3, t4
  XORI s3, s6, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1728
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb272
bb271:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1728
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb272
bb272:
  LUI t4, 1
  ADDIW t4, t4, -1728
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb265
  JAL zero, bb268
bb273:
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
  JAL zero, bb274
bb274:
  ADDI t4, zero, -1
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb244
bb275:
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
  JAL zero, bb445
bb276:
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
  LUI t6, 1
  ADDIW t6, t6, -1864
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb257
bb277:
  LW s7, 1024(sp)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb278
  JAL zero, bb281
bb278:
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
  BNE s4, zero, bb293
  JAL zero, bb294
bb279:
  ADD s0, s4, zero
  LW s11, 0(sp)
  ADDIW s10, s11, 1
  SW s10, 0(sp)
  ADDI s11, zero, 4
  MULW s8, s10, s11
  ADDI t6, sp, 0
  ADD s10, t6, s8
  SW s0, 0(s10)
  JAL zero, bb280
bb280:
  JAL zero, bb277
bb281:
  LW s0, 0(sp)
  ADDI s4, zero, 4
  MULW s6, s0, s4
  ADDI t5, sp, 0
  ADD s0, t5, s6
  LW s4, 0(s0)
  JAL zero, bb282
bb282:
  ADD t4, s4, zero
  LUI t6, 1
  ADDIW t6, t6, -1840
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb244
bb283:
  ADDW s3, s10, s5
  ADD s6, s3, zero
  JAL zero, bb266
bb284:
  XORI s1, s0, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb285
  JAL zero, bb286
bb285:
  SUBW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb266
bb286:
  XORI s1, s0, 42
  SLTIU s2, s1, 1
  BNE s2, zero, bb287
  JAL zero, bb288
bb287:
  MULW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb266
bb288:
  XORI s1, s0, 47
  SLTIU s2, s1, 1
  BNE s2, zero, bb289
  JAL zero, bb290
bb289:
  DIVW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb266
bb290:
  XORI s1, s0, 37
  SLTIU s2, s1, 1
  BNE s2, zero, bb291
  JAL zero, bb292
bb291:
  REMW s1, s10, s5
  ADD s6, s1, zero
  JAL zero, bb266
bb292:
  ADD s6, zero, zero
  JAL zero, bb266
bb293:
  ADDW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb279
bb294:
  XORI s0, s9, 45
  SLTIU s8, s0, 1
  BNE s8, zero, bb295
  JAL zero, bb296
bb295:
  SUBW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb279
bb296:
  XORI s0, s9, 42
  SLTIU s8, s0, 1
  BNE s8, zero, bb297
  JAL zero, bb298
bb297:
  MULW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb279
bb298:
  XORI s0, s9, 47
  SLTIU s8, s0, 1
  BNE s8, zero, bb299
  JAL zero, bb300
bb299:
  DIVW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb279
bb300:
  XORI s0, s9, 37
  SLTIU s8, s0, 1
  BNE s8, zero, bb301
  JAL zero, bb302
bb301:
  REMW s0, s6, s7
  ADD s4, s0, zero
  JAL zero, bb279
bb302:
  ADD s4, zero, zero
  JAL zero, bb279
bb303:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1888
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb305
bb304:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t6, 1
  ADDIW t6, t6, -1888
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb305
bb305:
  LUI t4, 1
  ADDIW t4, t4, -1888
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb306
  JAL zero, bb307
bb306:
  ADDI t4, zero, 10
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb259
bb307:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb308
  JAL zero, bb309
bb308:
  ADDI s0, zero, 1
  JAL zero, bb310
bb309:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb310
bb310:
  ADD s1, s0, zero
  BNE s1, zero, bb311
  JAL zero, bb312
bb311:
  ADDI s1, zero, 1
  JAL zero, bb313
bb312:
  LUI t4, 1
  ADDIW t4, t4, -1920
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb313
bb313:
  ADD s2, s1, zero
  BNE s2, zero, bb314
  JAL zero, bb315
bb314:
  ADDI t4, zero, 20
  LUI t6, 1
  ADDIW t6, t6, -1880
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb259
bb315:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1880
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb259
bb316:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1712
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb318
bb317:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 45
  SLTIU s1, s0, 1
  ADD t4, s1, zero
  LUI t5, 1
  ADDIW t5, t5, -1712
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb318
bb318:
  LUI t4, 1
  ADDIW t4, t4, -1712
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb319
  JAL zero, bb320
bb319:
  ADDI s4, zero, 10
  JAL zero, bb270
bb320:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s0, t4, 42
  SLTIU s1, s0, 1
  BNE s1, zero, bb321
  JAL zero, bb322
bb321:
  ADDI s0, zero, 1
  JAL zero, bb323
bb322:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s1, t4, 47
  SLTIU s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb323
bb323:
  ADD s1, s0, zero
  BNE s1, zero, bb324
  JAL zero, bb325
bb324:
  ADDI s1, zero, 1
  JAL zero, bb326
bb325:
  LUI t4, 1
  ADDIW t4, t4, -1720
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s2, t4, 37
  SLTIU s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb326
bb326:
  ADD s2, s1, zero
  BNE s2, zero, bb327
  JAL zero, bb328
bb327:
  ADDI s4, zero, 20
  JAL zero, bb270
bb328:
  ADD s4, zero, zero
  JAL zero, bb270
bb329:
  JAL zero, bb330
bb330:
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
  BNE s3, zero, bb353
  JAL zero, bb354
bb331:
  LUI t4, 1
  ADDIW t4, t4, -2024
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s4, t4, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb332
  JAL zero, bb334
bb332:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  JAL zero, bb333
bb333:
  JAL zero, bb330
bb334:
  LA s4, last_char
  LW s5, 0(s4)
  SLTI s4, s5, 48
  XORI s6, s4, 1
  BNE s6, zero, bb343
  JAL zero, bb344
bb335:
  LUI t4, 1
  ADDIW t4, t4, -2008
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s6, t4, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb336
  JAL zero, bb338
bb336:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb339
bb337:
  JAL zero, bb241
bb338:
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
  JAL zero, bb337
bb339:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb348
  JAL zero, bb349
bb340:
  LUI t4, 1
  ADDIW t4, t4, -1992
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s8, t4, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb341
  JAL zero, bb342
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
  JAL zero, bb339
bb342:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb337
bb343:
  ADDI s4, zero, 57
  SLT s6, s4, s5
  XORI s4, s6, 1
  ADD t4, s4, zero
  LUI t5, 1
  ADDIW t5, t5, -2016
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb345
bb344:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2016
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb345
bb345:
  LUI t4, 1
  ADDIW t4, t4, -2016
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb346
  JAL zero, bb347
bb346:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2008
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb335
bb347:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2008
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb335
bb348:
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD t4, s6, zero
  LUI t5, 1
  ADDIW t5, t5, -2000
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb350
bb349:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2000
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb350
bb350:
  LUI t4, 1
  ADDIW t4, t4, -2000
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s6, t4, zero
  BNE s6, zero, bb351
  JAL zero, bb352
bb351:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1992
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb340
bb352:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1992
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb340
bb353:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2040
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb355
bb354:
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
  JAL zero, bb355
bb355:
  LUI t4, 1
  ADDIW t4, t4, -2040
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb356
  JAL zero, bb357
bb356:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -2024
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb331
bb357:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -2024
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb331
bb358:
  JAL zero, bb359
bb359:
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
  BNE s10, zero, bb382
  JAL zero, bb383
bb360:
  LUI t4, 1
  ADDIW t4, t4, -1960
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s2, s11, zero
  SLTU s11, zero, s2
  BNE s11, zero, bb361
  JAL zero, bb363
bb361:
  CALL getch
  ADD s2, a0, zero
  LA s11, last_char
  SW s2, 0(s11)
  JAL zero, bb362
bb362:
  JAL zero, bb359
bb363:
  LA s2, last_char
  LW s11, 0(s2)
  SLTI s2, s11, 48
  XORI s3, s2, 1
  BNE s3, zero, bb372
  JAL zero, bb373
bb364:
  LUI t4, 1
  ADDIW t4, t4, -1944
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s5, s11, zero
  SLTU s11, zero, s5
  BNE s11, zero, bb365
  JAL zero, bb367
bb365:
  LA s5, last_char
  LW s11, 0(s5)
  ADDI s5, zero, 48
  SUBW s4, s11, s5
  LA s5, num
  SW s4, 0(s5)
  JAL zero, bb368
bb366:
  JAL zero, bb256
bb367:
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
  JAL zero, bb366
bb368:
  CALL getch
  ADD s4, a0, zero
  LA s5, last_char
  SW s4, 0(s5)
  SLTI s5, s4, 48
  XORI s11, s5, 1
  BNE s11, zero, bb377
  JAL zero, bb378
bb369:
  LUI t4, 1
  ADDIW t4, t4, -1928
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s11, t4, zero
  XOR s7, s11, zero
  SLTU s11, zero, s7
  BNE s11, zero, bb370
  JAL zero, bb371
bb370:
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
  JAL zero, bb368
bb371:
  LA s6, cur_token
  SW zero, 0(s6)
  JAL zero, bb366
bb372:
  ADDI s2, zero, 57
  SLT s3, s2, s11
  XORI s2, s3, 1
  ADD t4, s2, zero
  LUI t6, 1
  ADDIW t6, t6, -1952
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb374
bb373:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1952
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb374
bb374:
  LUI t4, 1
  ADDIW t4, t4, -1952
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb375
  JAL zero, bb376
bb375:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1944
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb364
bb376:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1944
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb364
bb377:
  ADDI s5, zero, 57
  SLT s11, s5, s4
  XORI s4, s11, 1
  ADD t4, s4, zero
  LUI t6, 1
  ADDIW t6, t6, -1936
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb379
bb378:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1936
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb379
bb379:
  LUI t4, 1
  ADDIW t4, t4, -1936
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s4, t4, zero
  BNE s4, zero, bb380
  JAL zero, bb381
bb380:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1928
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb369
bb381:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1928
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb369
bb382:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1976
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb384
bb383:
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
  JAL zero, bb384
bb384:
  LUI t4, 1
  ADDIW t4, t4, -1976
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s10, t4, zero
  BNE s10, zero, bb385
  JAL zero, bb386
bb385:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1960
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb360
bb386:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1960
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb360
bb387:
  JAL zero, bb388
bb388:
  LA s4, last_char
  LW t4, 0(s4)
  LUI t6, 1
  ADDIW t6, t6, -1824
  ADD t6, t6, sp
  SW t4, 0(t6)
  LUI t4, 1
  ADDIW t4, t4, -1824
  ADD t4, t4, sp
  LW t4, 0(t4)
  XORI s4, t4, 32
  SLTIU s8, s4, 1
  BNE s8, zero, bb411
  JAL zero, bb412
bb389:
  LUI t4, 1
  ADDIW t4, t4, -1816
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s1, t4, zero
  XOR s9, s1, zero
  SLTU s1, zero, s9
  BNE s1, zero, bb390
  JAL zero, bb392
bb390:
  CALL getch
  ADD s1, a0, zero
  LA s9, last_char
  SW s1, 0(s9)
  JAL zero, bb391
bb391:
  JAL zero, bb388
bb392:
  LA s1, last_char
  LW s9, 0(s1)
  SLTI s1, s9, 48
  XORI s2, s1, 1
  BNE s2, zero, bb401
  JAL zero, bb402
bb393:
  ADD s9, s1, zero
  XOR s3, s9, zero
  SLTU s9, zero, s3
  BNE s9, zero, bb394
  JAL zero, bb396
bb394:
  LA s3, last_char
  LW s9, 0(s3)
  ADDI s3, zero, 48
  SUBW s5, s9, s3
  LA s3, num
  SW s5, 0(s3)
  JAL zero, bb397
bb395:
  JAL zero, bb277
bb396:
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
  JAL zero, bb395
bb397:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  SLTI s5, s3, 48
  XORI s9, s5, 1
  BNE s9, zero, bb406
  JAL zero, bb407
bb398:
  ADD s9, s3, zero
  XOR s11, s9, zero
  SLTU s9, zero, s11
  BNE s9, zero, bb399
  JAL zero, bb400
bb399:
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
  JAL zero, bb397
bb400:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb395
bb401:
  ADDI s1, zero, 57
  SLT s2, s1, s9
  XORI s1, s2, 1
  ADD s2, s1, zero
  JAL zero, bb403
bb402:
  ADD s2, zero, zero
  JAL zero, bb403
bb403:
  ADD s1, s2, zero
  BNE s1, zero, bb404
  JAL zero, bb405
bb404:
  ADDI s1, zero, 1
  JAL zero, bb393
bb405:
  ADD s1, zero, zero
  JAL zero, bb393
bb406:
  ADDI s5, zero, 57
  SLT s9, s5, s3
  XORI s3, s9, 1
  ADD s5, s3, zero
  JAL zero, bb408
bb407:
  ADD s5, zero, zero
  JAL zero, bb408
bb408:
  ADD s3, s5, zero
  BNE s3, zero, bb409
  JAL zero, bb410
bb409:
  ADDI s3, zero, 1
  JAL zero, bb398
bb410:
  ADD s3, zero, zero
  JAL zero, bb398
bb411:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1832
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb413
bb412:
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
  JAL zero, bb413
bb413:
  LUI t4, 1
  ADDIW t4, t4, -1832
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s8, t4, zero
  BNE s8, zero, bb414
  JAL zero, bb415
bb414:
  ADDI t4, zero, 1
  LUI t5, 1
  ADDIW t5, t5, -1816
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb389
bb415:
  ADD t4, zero, zero
  LUI t6, 1
  ADDIW t6, t6, -1816
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb389
bb416:
  JAL zero, bb417
bb417:
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
  BNE s2, zero, bb440
  JAL zero, bb441
bb418:
  LUI t4, 1
  ADDIW t4, t4, -1792
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s3, t4, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb419
  JAL zero, bb421
bb419:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb420
bb420:
  JAL zero, bb417
bb421:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb430
  JAL zero, bb431
bb422:
  LUI t4, 1
  ADDIW t4, t4, -1776
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s5, t4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb423
  JAL zero, bb425
bb423:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb426
bb424:
  JAL zero, bb263
bb425:
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
  JAL zero, bb424
bb426:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb435
  JAL zero, bb436
bb427:
  LUI t4, 1
  ADDIW t4, t4, -1760
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s7, t4, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb428
  JAL zero, bb429
bb428:
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
  JAL zero, bb426
bb429:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb424
bb430:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD t4, s3, zero
  LUI t6, 1
  ADDIW t6, t6, -1784
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb432
bb431:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1784
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb432
bb432:
  LUI t4, 1
  ADDIW t4, t4, -1784
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s3, t4, zero
  BNE s3, zero, bb433
  JAL zero, bb434
bb433:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1776
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb422
bb434:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1776
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb422
bb435:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD t4, s5, zero
  LUI t6, 1
  ADDIW t6, t6, -1768
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb437
bb436:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1768
  ADD t5, t5, sp
  SB t4, 0(t5)
  JAL zero, bb437
bb437:
  LUI t4, 1
  ADDIW t4, t4, -1768
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s5, t4, zero
  BNE s5, zero, bb438
  JAL zero, bb439
bb438:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1760
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb427
bb439:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1760
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb427
bb440:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1808
  ADD t6, t6, sp
  SB t4, 0(t6)
  JAL zero, bb442
bb441:
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
  JAL zero, bb442
bb442:
  LUI t4, 1
  ADDIW t4, t4, -1808
  ADD t4, t4, sp
  LB t4, 0(t4)
  ADD s2, t4, zero
  BNE s2, zero, bb443
  JAL zero, bb444
bb443:
  ADDI t4, zero, 1
  LUI t6, 1
  ADDIW t6, t6, -1792
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb418
bb444:
  ADD t4, zero, zero
  LUI t5, 1
  ADDIW t5, t5, -1792
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb418
bb445:
  JAL zero, bb446
bb446:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb469
  JAL zero, bb470
bb447:
  ADD s3, s2, zero
  XOR s5, s3, zero
  SLTU s3, zero, s5
  BNE s3, zero, bb448
  JAL zero, bb450
bb448:
  CALL getch
  ADD s3, a0, zero
  LA s5, last_char
  SW s3, 0(s5)
  JAL zero, bb449
bb449:
  JAL zero, bb446
bb450:
  LA s3, last_char
  LW s5, 0(s3)
  SLTI s3, s5, 48
  XORI s6, s3, 1
  BNE s6, zero, bb459
  JAL zero, bb460
bb451:
  ADD s6, s3, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb452
  JAL zero, bb454
bb452:
  LA s6, last_char
  LW s7, 0(s6)
  ADDI s6, zero, 48
  SUBW s8, s7, s6
  LA s6, num
  SW s8, 0(s6)
  JAL zero, bb455
bb453:
  JAL zero, bb276
bb454:
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
  JAL zero, bb453
bb455:
  CALL getch
  ADD s6, a0, zero
  LA s7, last_char
  SW s6, 0(s7)
  SLTI s7, s6, 48
  XORI s8, s7, 1
  BNE s8, zero, bb464
  JAL zero, bb465
bb456:
  ADD s8, s6, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb457
  JAL zero, bb458
bb457:
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
  JAL zero, bb455
bb458:
  LA s8, cur_token
  SW zero, 0(s8)
  JAL zero, bb453
bb459:
  ADDI s3, zero, 57
  SLT s6, s3, s5
  XORI s3, s6, 1
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
  ADDI s7, zero, 57
  SLT s8, s7, s6
  XORI s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb466
bb465:
  ADD s7, zero, zero
  JAL zero, bb466
bb466:
  ADD s6, s7, zero
  BNE s6, zero, bb467
  JAL zero, bb468
bb467:
  ADDI s6, zero, 1
  JAL zero, bb456
bb468:
  ADD s6, zero, zero
  JAL zero, bb456
bb469:
  ADDI s0, zero, 1
  JAL zero, bb471
bb470:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb471
bb471:
  ADD s2, s0, zero
  BNE s2, zero, bb472
  JAL zero, bb473
bb472:
  ADDI s2, zero, 1
  JAL zero, bb447
bb473:
  ADD s2, zero, zero
  JAL zero, bb447
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
  JAL zero, bb476
bb476:
  LA s0, last_char
  LW s1, 0(s0)
  XORI s0, s1, 32
  SLTIU s2, s0, 1
  BNE s2, zero, bb499
  JAL zero, bb500
bb477:
  ADD s3, s2, zero
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb478
  JAL zero, bb480
bb478:
  CALL getch
  ADD s3, a0, zero
  LA s4, last_char
  SW s3, 0(s4)
  JAL zero, bb479
bb479:
  JAL zero, bb476
bb480:
  LA s3, last_char
  LW s4, 0(s3)
  SLTI s3, s4, 48
  XORI s5, s3, 1
  BNE s5, zero, bb489
  JAL zero, bb490
bb481:
  ADD s5, s3, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb482
  JAL zero, bb484
bb482:
  LA s5, last_char
  LW s6, 0(s5)
  ADDI s5, zero, 48
  SUBW s7, s6, s5
  LA s5, num
  SW s7, 0(s5)
  JAL zero, bb485
bb483:
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
bb484:
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
  JAL zero, bb483
bb485:
  CALL getch
  ADD s5, a0, zero
  LA s6, last_char
  SW s5, 0(s6)
  SLTI s6, s5, 48
  XORI s7, s6, 1
  BNE s7, zero, bb494
  JAL zero, bb495
bb486:
  ADD s7, s5, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb487
  JAL zero, bb488
bb487:
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
  JAL zero, bb485
bb488:
  LA s7, cur_token
  SW zero, 0(s7)
  JAL zero, bb483
bb489:
  ADDI s3, zero, 57
  SLT s5, s3, s4
  XORI s3, s5, 1
  ADD s4, s3, zero
  JAL zero, bb491
bb490:
  ADD s4, zero, zero
  JAL zero, bb491
bb491:
  ADD s3, s4, zero
  BNE s3, zero, bb492
  JAL zero, bb493
bb492:
  ADDI s3, zero, 1
  JAL zero, bb481
bb493:
  ADD s3, zero, zero
  JAL zero, bb481
bb494:
  ADDI s6, zero, 57
  SLT s7, s6, s5
  XORI s5, s7, 1
  ADD s6, s5, zero
  JAL zero, bb496
bb495:
  ADD s6, zero, zero
  JAL zero, bb496
bb496:
  ADD s5, s6, zero
  BNE s5, zero, bb497
  JAL zero, bb498
bb497:
  ADDI s5, zero, 1
  JAL zero, bb486
bb498:
  ADD s5, zero, zero
  JAL zero, bb486
bb499:
  ADDI s0, zero, 1
  JAL zero, bb501
bb500:
  XORI s2, s1, 10
  SLTIU s1, s2, 1
  ADD s0, s1, zero
  JAL zero, bb501
bb501:
  ADD s2, s0, zero
  BNE s2, zero, bb502
  JAL zero, bb503
bb502:
  ADDI s2, zero, 1
  JAL zero, bb477
bb503:
  ADD s2, zero, zero
  JAL zero, bb477
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
