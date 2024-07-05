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
  ADDI t0, t0, 1936
  ADD sp, sp, t0
  LUI t5, 1
  ADDI t5, t5, -2040
  ADD t5, t5, sp
  SD s7, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2032
  ADD t6, t6, sp
  SD s11, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2024
  ADD t5, t5, sp
  SD s10, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2016
  ADD t6, t6, sp
  SD s9, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2008
  ADD t5, t5, sp
  SD s0, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2000
  ADD t6, t6, sp
  SD s5, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1992
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1984
  ADD t6, t6, sp
  SD s6, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1976
  ADD t5, t5, sp
  SD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1968
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  SD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  SD s4, 0(t5)
  ADDI s0, zero, 256
  JAL zero, bb1
bb1:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDW s1, zero, s3
  ADDI t6, sp, 1024
  ADD s3, t6, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADDI s0, zero, 256
  JAL zero, bb4
bb4:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDW s1, zero, s3
  ADDI t5, sp, 0
  ADD s3, t5, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb4
bb6:
  LA s0, cur_token
  LW s1, 0(s0)
  LA s0, TOKEN_NUM
  LW s2, 0(s0)
  XOR s0, s1, s2
  SLTU s1, zero, s0
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  CALL panic
  ADD s0, a0, zero
  ADD a0, s0, zero
  LUI t6, 1
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDI ra, ra, -1960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb8:
  LA s0, num
  LW s1, 0(s0)
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  ADD a1, s1, zero
  CALL stack_push
  CALL next_token
  ADD s0, a0, zero
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb9
bb9:
  LA s4, cur_token
  LW s5, 0(s4)
  LA s4, TOKEN_OTHER
  LW s6, 0(s4)
  XOR s4, s5, s6
  SLTIU s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb10
  JAL zero, bb11
bb10:
  LA s4, other
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL get_op_prec
  ADD s4, a0, zero
  XOR s6, s4, zero
  SLTU s4, zero, s6
  XORI s6, s4, 1
  ADD s4, s6, zero
  XOR s6, s4, zero
  SLTU s4, zero, s6
  BNE s4, zero, bb12
  JAL zero, bb13
bb11:
  CALL next_token
  ADD s4, a0, zero
  JAL zero, bb22
bb12:
  JAL zero, bb11
bb13:
  CALL next_token
  ADD s4, a0, zero
  ADD s4, s0, zero
  ADD s6, s1, zero
  ADD t4, s2, zero
  LUI t6, 1
  ADDI t6, t6, -2048
  ADD t6, t6, sp
  SW t4, 0(t6)
  JAL zero, bb14
bb14:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL stack_size
  ADD s8, a0, zero
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb17
  JAL zero, bb18
bb15:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL stack_pop
  ADD s8, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  CALL stack_pop
  ADD s10, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  CALL stack_pop
  ADD s11, a0, zero
  ADD a0, s8, zero
  ADD a1, s11, zero
  ADD a2, s10, zero
  CALL eval_op
  ADD s7, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  ADD a1, s7, zero
  CALL stack_push
  ADD s4, s10, zero
  ADD s6, s11, zero
  ADD t4, s8, zero
  LUI t5, 1
  ADDI t5, t5, -2048
  ADD t5, t5, sp
  SW t4, 0(t5)
  JAL zero, bb14
bb16:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  ADD a1, s5, zero
  CALL stack_push
  LA s7, cur_token
  LW s8, 0(s7)
  LA s7, TOKEN_NUM
  LW s10, 0(s7)
  XOR s7, s8, s10
  SLTU s8, zero, s7
  BNE s8, zero, bb20
  JAL zero, bb21
bb17:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL stack_peek
  ADD s8, a0, zero
  ADD a0, s8, zero
  CALL get_op_prec
  ADD s8, a0, zero
  ADD a0, s5, zero
  CALL get_op_prec
  ADD s9, a0, zero
  SLT s10, s8, s9
  XORI s8, s10, 1
  ADD s9, s8, zero
  JAL zero, bb19
bb18:
  ADD s9, zero, zero
  JAL zero, bb19
bb19:
  XOR s8, s9, zero
  SLTU s10, zero, s8
  BNE s10, zero, bb15
  JAL zero, bb16
bb20:
  CALL panic
  ADD s7, a0, zero
  ADD a0, s7, zero
  LUI t6, 1
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDI ra, ra, -1960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  LA s7, num
  LW s8, 0(s7)
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  ADD a1, s8, zero
  CALL stack_push
  CALL next_token
  ADD s7, a0, zero
  ADD s0, s4, zero
  ADD s1, s6, zero
  LUI t4, 1
  ADDI t4, t4, -2048
  ADD t4, t4, sp
  LW t4, 0(t4)
  ADD s2, t4, zero
  ADD s3, s5, zero
  JAL zero, bb9
bb22:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL stack_size
  ADD s4, a0, zero
  XOR s6, s4, zero
  SLTU s4, zero, s6
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, sp, 0
  ADD a0, a0, zero
  CALL stack_pop
  ADD s4, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  CALL stack_pop
  ADD s6, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  CALL stack_pop
  ADD s7, a0, zero
  ADD a0, s4, zero
  ADD a1, s7, zero
  ADD a2, s6, zero
  CALL eval_op
  ADD s4, a0, zero
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  ADD a1, s4, zero
  CALL stack_push
  JAL zero, bb22
bb24:
  ADDI a0, sp, 1024
  ADD a0, a0, zero
  CALL stack_peek
  ADD s4, a0, zero
  ADD a0, s4, zero
  LUI t6, 1
  ADDI t6, t6, -2040
  ADD t6, t6, sp
  LD s7, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2032
  ADD t5, t5, sp
  LD s11, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2024
  ADD t6, t6, sp
  LD s10, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2016
  ADD t5, t5, sp
  LD s9, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -2008
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -2000
  ADD t5, t5, sp
  LD s5, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1992
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1984
  ADD t5, t5, sp
  LD s6, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1976
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  LD s3, 0(t5)
  LUI ra, 1
  ADDI ra, ra, -1960
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s8, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s4, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
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
  BNE s4, zero, bb26
  JAL zero, bb27
bb26:
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
bb27:
  XORI s3, s0, 45
  SLTIU s4, s3, 1
  BNE s4, zero, bb28
  JAL zero, bb29
bb28:
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
bb29:
  XORI s3, s0, 42
  SLTIU s4, s3, 1
  BNE s4, zero, bb30
  JAL zero, bb31
bb30:
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
bb31:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  BNE s4, zero, bb32
  JAL zero, bb33
bb32:
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
bb33:
  XORI s3, s0, 37
  SLTIU s0, s3, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
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
bb35:
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
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
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
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
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
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MUL s3, zero, s1
  ADD s1, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  LW s0, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s0, s3
  SW s4, 0(s1)
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
  BNE s2, zero, bb40
  JAL zero, bb41
bb40:
  ADDI s1, zero, 1
  JAL zero, bb42
bb41:
  XORI s2, s0, 45
  SLTIU s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  ADD s1, s3, zero
  JAL zero, bb42
bb42:
  BNE s1, zero, bb43
  JAL zero, bb44
bb43:
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
bb44:
  XORI s2, s0, 42
  SLTIU s3, s2, 1
  BNE s3, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s2, zero, 1
  JAL zero, bb47
bb46:
  XORI s3, s0, 47
  SLTIU s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  ADD s2, s4, zero
  JAL zero, bb47
bb47:
  BNE s2, zero, bb48
  JAL zero, bb49
bb48:
  ADDI s3, zero, 1
  JAL zero, bb50
bb49:
  XORI s4, s0, 37
  SLTIU s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  ADD s3, s5, zero
  JAL zero, bb50
bb50:
  BNE s3, zero, bb51
  JAL zero, bb52
bb51:
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
bb52:
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
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  ADDI s3, zero, 4
  MUL s4, zero, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  SW s3, 0(s2)
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
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
  BNE s2, zero, bb55
  JAL zero, bb56
bb55:
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  ADD s1, s0, zero
  JAL zero, bb57
bb56:
  ADD s1, zero, zero
  JAL zero, bb57
bb57:
  BNE s1, zero, bb58
  JAL zero, bb60
bb58:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb59:
bb60:
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
  BNE s2, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s1, zero, 1
  JAL zero, bb64
bb63:
  XORI s2, s0, 10
  SLTIU s0, s2, 1
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD s1, s0, zero
  JAL zero, bb64
bb64:
  BNE s1, zero, bb65
  JAL zero, bb67
bb65:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb66:
bb67:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  CALL getch
  ADD s1, a0, zero
  CALL next_token
  ADD s1, a0, zero
  ADD s1, s0, zero
  JAL zero, bb69
bb69:
  XOR s0, s1, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb70
  JAL zero, bb71
bb70:
  CALL eval
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  ADD s1, s2, zero
  JAL zero, bb69
bb71:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
panic:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
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
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
next_token:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  JAL zero, bb74
bb74:
  LA s0, last_char
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL is_space
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb75
  JAL zero, bb76
bb75:
  CALL next_char
  ADD s0, a0, zero
  JAL zero, bb74
bb76:
  LA s0, last_char
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL is_num
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb77
  JAL zero, bb79
bb77:
  LA s0, last_char
  LW s1, 0(s0)
  ADDI s0, zero, 48
  SUBW s2, s1, s0
  LA s0, num
  SW s2, 0(s0)
  JAL zero, bb80
bb78:
  LA s0, cur_token
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb79:
  LA s0, last_char
  LW s1, 0(s0)
  LA s0, other
  SW s1, 0(s0)
  CALL next_char
  ADD s0, a0, zero
  LA s0, TOKEN_OTHER
  LW s1, 0(s0)
  LA s0, cur_token
  SW s1, 0(s0)
  JAL zero, bb78
bb80:
  CALL next_char
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL is_num
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb81
  JAL zero, bb82
bb81:
  LA s0, num
  LW s1, 0(s0)
  ADDI s0, zero, 10
  MULW s2, s1, s0
  LA s0, last_char
  LW s1, 0(s0)
  ADDW s0, s2, s1
  ADDI s1, zero, 48
  SUBW s2, s0, s1
  LA s0, num
  SW s2, 0(s0)
  JAL zero, bb80
bb82:
  LA s0, TOKEN_NUM
  LW s1, 0(s0)
  LA s0, cur_token
  SW s1, 0(s0)
  JAL zero, bb78
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
