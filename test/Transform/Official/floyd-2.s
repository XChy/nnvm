.global mem_move
.global floyd
.global main
.global getvalue
.section .bss
c:
.space 8388608
dst:
.space 8388608
w:
.space 8388608
temp:
.space 8388608

.section .data




maxlen:
.word 0x00200000
.section .text
mem_move:
  ADDI sp, sp, -80
  SD ra, 16(sp)
  SD s4, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s2, 8(sp)
  ADDI s2, zero, 0
  SW s2, 0(sp)
  JAL zero, bb1
bb1:
  LW s2, 0(sp)
  LW s3, 8(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  LW s2, 0(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s0, s5
  LW s4, 0(s3)
  SW s4, 0(s2)
  LW s2, 0(sp)
  ADDIW s3, s2, 1
  SW s3, 0(sp)
  JAL zero, bb1
bb3:
  LD ra, 16(sp)
  LD s4, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
floyd:
  ADDI sp, sp, -112
  SD ra, 48(sp)
  SD s4, 56(sp)
  SD s3, 64(sp)
  SD s2, 72(sp)
  SD s6, 80(sp)
  SD s1, 88(sp)
  SD s5, 96(sp)
  SD s0, 104(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s2, 40(sp)
  ADDI s2, zero, 0
  SW s2, 32(sp)
  JAL zero, bb5
bb5:
  LW s2, 32(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s2, zero, 0
  SW s2, 24(sp)
  JAL zero, bb8
bb7:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb11
bb8:
  LW s2, 24(sp)
  LW s3, 40(sp)
  SLT s4, s2, s3
  XOR s2, s4, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  LW s2, 24(sp)
  LW s3, 40(sp)
  MULW s4, s2, s3
  LW s2, 32(sp)
  ADDW s3, s4, s2
  ADDI s2, zero, 4
  MULW s4, s3, s2
  LA s2, temp
  ADD s3, s2, s4
  LW s2, 40(sp)
  LW s4, 24(sp)
  LW s5, 32(sp)
  ADD a0, s0, zero
  ADD a1, s2, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL getvalue
  ADD s2, a0, zero
  SW s2, 0(s3)
  LW s2, 24(sp)
  ADDIW s3, s2, 1
  SW s3, 24(sp)
  JAL zero, bb8
bb10:
  LW s2, 32(sp)
  ADDIW s3, s2, 1
  SW s3, 32(sp)
  JAL zero, bb5
bb11:
  LW s0, 32(sp)
  LW s2, 40(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb14
bb13:
  LW s0, 40(sp)
  LW s2, 40(sp)
  MULW s3, s0, s2
  LA s0, temp
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s3, zero
  CALL mem_move
  LD ra, 48(sp)
  LD s4, 56(sp)
  LD s3, 64(sp)
  LD s2, 72(sp)
  LD s6, 80(sp)
  LD s1, 88(sp)
  LD s5, 96(sp)
  LD s0, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb14:
  LW s0, 16(sp)
  LW s2, 40(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb15
  JAL zero, bb16
bb15:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb17
bb16:
  LW s0, 32(sp)
  ADDIW s2, s0, 1
  SW s2, 32(sp)
  JAL zero, bb11
bb17:
  LW s0, 8(sp)
  LW s2, 40(sp)
  SLT s3, s0, s2
  XOR s0, s3, zero
  SLTU s2, zero, s0
  BNE s2, zero, bb18
  JAL zero, bb19
bb18:
  LW s0, 40(sp)
  LW s2, 16(sp)
  LW s3, 32(sp)
  LA s4, temp
  ADD a0, s4, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL getvalue
  ADD s0, a0, zero
  SLT s2, s0, zero
  XORI s0, s2, 1
  BNE s0, zero, bb20
  JAL zero, bb21
bb19:
  LW s0, 16(sp)
  ADDIW s2, s0, 1
  SW s2, 16(sp)
  JAL zero, bb14
bb20:
  LW s0, 40(sp)
  LW s2, 32(sp)
  LW s3, 8(sp)
  LA s4, temp
  ADD a0, s4, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL getvalue
  ADD s0, a0, zero
  SLT s2, s0, zero
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb22
bb21:
  SB zero, 0(sp)
  JAL zero, bb22
bb22:
  LB s0, 0(sp)
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  LW s0, 40(sp)
  LW s2, 16(sp)
  LW s3, 8(sp)
  LA s4, temp
  ADD a0, s4, zero
  ADD a1, s0, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  CALL getvalue
  ADD s0, a0, zero
  SLT s2, s0, zero
  BNE s2, zero, bb25
  JAL zero, bb27
bb24:
  LW s0, 8(sp)
  ADDIW s2, s0, 1
  SW s2, 8(sp)
  JAL zero, bb17
bb25:
  LW s0, 16(sp)
  LW s2, 40(sp)
  MULW s3, s0, s2
  LW s0, 8(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, temp
  ADD s2, s0, s3
  LW s0, 40(sp)
  LW s3, 16(sp)
  LW s4, 32(sp)
  LA s5, temp
  ADD a0, s5, zero
  ADD a1, s0, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL getvalue
  ADD s0, a0, zero
  LW s3, 40(sp)
  LW s4, 32(sp)
  LW s5, 8(sp)
  LA s6, temp
  ADD a0, s6, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL getvalue
  ADD s3, a0, zero
  ADDW s4, s0, s3
  SW s4, 0(s2)
  JAL zero, bb26
bb26:
  JAL zero, bb24
bb27:
  LW s0, 16(sp)
  LW s2, 40(sp)
  MULW s3, s0, s2
  LW s0, 8(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, temp
  ADD s2, s0, s3
  LW s0, 0(s2)
  LW s2, 40(sp)
  LW s3, 16(sp)
  LW s4, 32(sp)
  LA s5, temp
  ADD a0, s5, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL getvalue
  ADD s2, a0, zero
  LW s3, 40(sp)
  LW s4, 32(sp)
  LW s5, 8(sp)
  LA s6, temp
  ADD a0, s6, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL getvalue
  ADD s3, a0, zero
  ADDW s4, s2, s3
  SLT s2, s4, s0
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  LW s0, 16(sp)
  LW s2, 40(sp)
  MULW s3, s0, s2
  LW s0, 8(sp)
  ADDW s2, s3, s0
  ADDI s0, zero, 4
  MULW s3, s2, s0
  LA s0, temp
  ADD s2, s0, s3
  LW s0, 40(sp)
  LW s3, 16(sp)
  LW s4, 32(sp)
  LA s5, temp
  ADD a0, s5, zero
  ADD a1, s0, zero
  ADD a2, s3, zero
  ADD a3, s4, zero
  CALL getvalue
  ADD s0, a0, zero
  LW s3, 40(sp)
  LW s4, 32(sp)
  LW s5, 8(sp)
  LA s6, temp
  ADD a0, s6, zero
  ADD a1, s3, zero
  ADD a2, s4, zero
  ADD a3, s5, zero
  CALL getvalue
  ADD s3, a0, zero
  ADDW s4, s0, s3
  SW s4, 0(s2)
  JAL zero, bb29
bb29:
  JAL zero, bb26
main:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s0, w
  ADD a0, s0, zero
  CALL getarray
  ADD s0, a0, zero
  ADDI a0, zero, 62
  CALL _sysy_starttime
  LW s0, 0(sp)
  LA s1, w
  ADD a0, s1, zero
  LA s1, dst
  ADD a1, s1, zero
  ADD a2, s0, zero
  CALL floyd
  ADDI a0, zero, 64
  CALL _sysy_starttime
  LW s0, 0(sp)
  LW s1, 0(sp)
  MULW s2, s0, s1
  ADD a0, s2, zero
  LA s0, dst
  ADD a1, s0, zero
  CALL putarray
  ADD a0, zero, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
getvalue:
  ADDI sp, sp, -96
  SD ra, 48(sp)
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 40(sp)
  SW s2, 32(sp)
  SW s3, 24(sp)
  LW s1, 32(sp)
  SLT s2, s1, zero
  BNE s2, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s1, zero, 1
  SB s1, 16(sp)
  JAL zero, bb34
bb33:
  LW s1, 32(sp)
  LW s2, 40(sp)
  SLT s3, s1, s2
  XORI s1, s3, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  SB s1, 16(sp)
  JAL zero, bb34
bb34:
  LB s1, 16(sp)
  BNE s1, zero, bb35
  JAL zero, bb36
bb35:
  ADDI s1, zero, 1
  SB s1, 8(sp)
  JAL zero, bb37
bb36:
  LW s1, 24(sp)
  SLT s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  SB s2, 8(sp)
  JAL zero, bb37
bb37:
  LB s1, 8(sp)
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s1, zero, 1
  SB s1, 0(sp)
  JAL zero, bb40
bb39:
  LW s1, 24(sp)
  LW s2, 40(sp)
  SLT s3, s1, s2
  XORI s1, s3, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  SB s1, 0(sp)
  JAL zero, bb40
bb40:
  LB s1, 0(sp)
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s1, zero, 1
  SUB s2, zero, s1
  ADD a0, s2, zero
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb42:
  LW s1, 32(sp)
  LW s2, 40(sp)
  MULW s3, s1, s2
  LW s1, 24(sp)
  ADDW s2, s3, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADD s1, s0, s3
  LW s2, 0(s1)
  ADD a0, s2, zero
  LD ra, 48(sp)
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
