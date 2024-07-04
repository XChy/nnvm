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
  ADDI t5, t5, -1968
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  SD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  SD s0, 0(t6)
  ADDI s0, zero, 256
  SW s0, 1096(sp)
  JAL zero, bb1
bb1:
  LW s0, 1096(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 1096(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 1096(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t5, sp, 1104
  ADD s1, t5, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  ADDI s0, zero, 256
  SW s0, 64(sp)
  JAL zero, bb4
bb4:
  LW s0, 64(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 64(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 64(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDW s0, zero, s1
  ADDI t6, sp, 72
  ADD s1, t6, s0
  SW zero, 0(s1)
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
  LUI ra, 1
  ADDI ra, ra, -1968
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb8:
  LA s0, num
  LW s1, 0(s0)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  ADD a1, s1, zero
  CALL stack_push
  CALL next_token
  ADD s0, a0, zero
  JAL zero, bb9
bb9:
  LA s0, cur_token
  LW s1, 0(s0)
  LA s0, TOKEN_OTHER
  LW s2, 0(s0)
  XOR s0, s1, s2
  SLTIU s1, s0, 1
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb10
  JAL zero, bb11
bb10:
  LA s0, other
  LW s1, 0(s0)
  SW s1, 56(sp)
  ADD a0, s1, zero
  CALL get_op_prec
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb11:
  CALL next_token
  ADD s0, a0, zero
  JAL zero, bb22
bb12:
  JAL zero, bb11
bb13:
  CALL next_token
  ADD s0, a0, zero
  JAL zero, bb14
bb14:
  ADDI a0, sp, 72
  ADD a0, a0, zero
  CALL stack_size
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb17
  JAL zero, bb18
bb15:
  ADDI a0, sp, 72
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 40(sp)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 32(sp)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 24(sp)
  LW s1, 40(sp)
  LW s2, 32(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  CALL eval_op
  ADD s0, a0, zero
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  ADD a1, s0, zero
  CALL stack_push
  JAL zero, bb14
bb16:
  LW s0, 56(sp)
  ADDI a0, sp, 72
  ADD a0, a0, zero
  ADD a1, s0, zero
  CALL stack_push
  LA s0, cur_token
  LW s1, 0(s0)
  LA s0, TOKEN_NUM
  LW s2, 0(s0)
  XOR s0, s1, s2
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb17:
  ADDI a0, sp, 72
  ADD a0, a0, zero
  CALL stack_peek
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL get_op_prec
  ADD s0, a0, zero
  LW s1, 56(sp)
  ADD a0, s1, zero
  CALL get_op_prec
  ADD s1, a0, zero
  SLT s2, s0, s1
  XORI s0, s2, 1
  SB s0, 48(sp)
  JAL zero, bb19
bb18:
  SB zero, 48(sp)
  JAL zero, bb19
bb19:
  LB s0, 48(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb15
  JAL zero, bb16
bb20:
  CALL panic
  ADD s0, a0, zero
  ADD a0, s0, zero
  LUI ra, 1
  ADDI ra, ra, -1968
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 1
  ADDI t6, t6, -1960
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1952
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1944
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb21:
  LA s0, num
  LW s1, 0(s0)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  ADD a1, s1, zero
  CALL stack_push
  CALL next_token
  ADD s0, a0, zero
  JAL zero, bb9
bb22:
  ADDI a0, sp, 72
  ADD a0, a0, zero
  CALL stack_size
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, sp, 72
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 16(sp)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  CALL stack_pop
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  CALL eval_op
  ADD s0, a0, zero
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  ADD a1, s0, zero
  CALL stack_push
  JAL zero, bb22
bb24:
  ADDI a0, sp, 1104
  ADD a0, a0, zero
  CALL stack_peek
  ADD s0, a0, zero
  ADD a0, s0, zero
  LUI ra, 1
  ADDI ra, ra, -1968
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 1
  ADDI t5, t5, -1960
  ADD t5, t5, sp
  LD s2, 0(t5)
  LUI t6, 1
  ADDI t6, t6, -1952
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t5, 1
  ADDI t5, t5, -1944
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t0, 1
  ADDI t0, t0, -1936
  ADD sp, sp, t0
  JALR zero, 0(ra)
eval_op:
  ADDI sp, sp, -64
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 16(sp)
  SW s1, 8(sp)
  SW s2, 0(sp)
  LW s0, 16(sp)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb26
  JAL zero, bb27
bb26:
  LW s0, 8(sp)
  LW s1, 0(sp)
  ADDW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb27:
  LW s0, 16(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb28
  JAL zero, bb29
bb28:
  LW s0, 8(sp)
  LW s1, 0(sp)
  SUBW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb29:
  LW s0, 16(sp)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb30
  JAL zero, bb31
bb30:
  LW s0, 8(sp)
  LW s1, 0(sp)
  MULW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb31:
  LW s0, 16(sp)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  BNE s0, zero, bb32
  JAL zero, bb33
bb32:
  LW s0, 8(sp)
  LW s1, 0(sp)
  DIVW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb33:
  LW s0, 16(sp)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb34:
  LW s0, 8(sp)
  LW s1, 0(sp)
  REMW s2, s0, s1
  ADD a0, s2, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb35:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
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
  SD ra, 8(sp)
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
  SW s2, 0(sp)
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s0, 0(s2)
  ADDI s2, zero, 1
  SUBW s3, s0, s2
  SW s3, 0(s1)
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
get_op_prec:
  ADDI sp, sp, -64
  SD ra, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  SW s0, 24(sp)
  XORI s1, s0, 43
  SLTIU s0, s1, 1
  BNE s0, zero, bb40
  JAL zero, bb41
bb40:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb42
bb41:
  LW s0, 24(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb42
bb42:
  LB s0, 16(sp)
  BNE s0, zero, bb43
  JAL zero, bb44
bb43:
  ADDI a0, zero, 10
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb44:
  LW s0, 24(sp)
  XORI s1, s0, 42
  SLTIU s0, s1, 1
  BNE s0, zero, bb45
  JAL zero, bb46
bb45:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb47
bb46:
  LW s0, 24(sp)
  XORI s1, s0, 47
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb47
bb47:
  LB s0, 8(sp)
  BNE s0, zero, bb48
  JAL zero, bb49
bb48:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb50
bb49:
  LW s0, 24(sp)
  XORI s1, s0, 37
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb50
bb50:
  LB s0, 0(sp)
  BNE s0, zero, bb51
  JAL zero, bb52
bb51:
  ADDI a0, zero, 20
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb52:
  ADD a0, zero, zero
  LD ra, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
stack_push:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s1, 0(sp)
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  ADDI s2, zero, 4
  MUL s3, zero, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADDIW s2, s3, 1
  SW s2, 0(s1)
  ADDI s1, zero, 4
  MUL s2, zero, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s0, 0(sp)
  SW s0, 0(s1)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
is_num:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb55
  JAL zero, bb56
bb55:
  LW s0, 8(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb57
bb56:
  SB zero, 0(sp)
  JAL zero, bb57
bb57:
  LB s0, 0(sp)
  BNE s0, zero, bb58
  JAL zero, bb60
bb58:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb59:
bb60:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
is_space:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  XORI s1, s0, 32
  SLTIU s0, s1, 1
  BNE s0, zero, bb62
  JAL zero, bb63
bb62:
  ADDI s0, zero, 1
  SB s0, 0(sp)
  JAL zero, bb64
bb63:
  LW s0, 8(sp)
  XORI s1, s0, 10
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb64
bb64:
  LB s0, 0(sp)
  BNE s0, zero, bb65
  JAL zero, bb67
bb65:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb66:
bb67:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  CALL getch
  ADD s0, a0, zero
  CALL next_token
  ADD s0, a0, zero
  JAL zero, bb69
bb69:
  LW s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb70
  JAL zero, bb71
bb70:
  CALL eval
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 0(sp)
  JAL zero, bb69
bb71:
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
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
