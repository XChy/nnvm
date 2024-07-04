.global same
.global init
.global main
.global find
.global quick_read
.section .bss

fa:
.space 400020

.section .data
m:
.word 0x00000000

n:
.word 0x00000000
.section .text
same:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 8(sp)
  SW s1, 0(sp)
  LW s0, 8(sp)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  LW s1, 0(sp)
  ADD a0, s1, zero
  CALL find
  ADD s1, a0, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb1
  JAL zero, bb2
bb1:
  ADDI a0, zero, 1
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
init:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 0(sp)
  LA s1, n
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, fa
  ADD s1, s0, s2
  LW s0, 0(sp)
  SW s0, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb4
bb6:
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD ra, 64(sp)
  SD s1, 72(sp)
  SD s0, 80(sp)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, n
  SW s0, 0(s1)
  CALL quick_read
  ADD s0, a0, zero
  LA s1, m
  SW s0, 0(s1)
  CALL init
  JAL zero, bb8
bb8:
  LA s0, m
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb9
  JAL zero, bb10
bb9:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb11
bb10:
  ADD a0, zero, zero
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD ra, 64(sp)
  LD s1, 72(sp)
  LD s0, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb11:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTU s0, zero, s1
  BNE s0, zero, bb14
  JAL zero, bb15
bb12:
  CALL getch
  ADD s0, a0, zero
  SW s0, 40(sp)
  JAL zero, bb11
bb13:
  LW s0, 40(sp)
  XORI s1, s0, 81
  SLTIU s0, s1, 1
  BNE s0, zero, bb17
  JAL zero, bb19
bb14:
  LW s0, 40(sp)
  XORI s1, s0, 85
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb16
bb15:
  SB zero, 32(sp)
  JAL zero, bb16
bb16:
  LB s0, 32(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb17:
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL quick_read
  ADD s0, a0, zero
  SW s0, 16(sp)
  LW s1, 24(sp)
  ADD a0, s1, zero
  ADD a1, s0, zero
  CALL same
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb18
bb18:
  LA s0, m
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, m
  SW s2, 0(s0)
  JAL zero, bb8
bb19:
  CALL quick_read
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL quick_read
  ADD s0, a0, zero
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, fa
  ADD s2, s1, s3
  SW s0, 0(s2)
  JAL zero, bb18
find:
  ADDI sp, sp, -64
  SD ra, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADD s0, a0, zero
  SW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s1, fa
  ADD s3, s1, s2
  LW s1, 0(s3)
  XOR s2, s1, s0
  SLTIU s0, s2, 1
  BNE s0, zero, bb21
  JAL zero, bb23
bb21:
  LW s0, 8(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb22:
bb23:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, fa
  ADD s1, s0, s2
  LW s0, 0(s1)
  ADD a0, s0, zero
  CALL find
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s1, fa
  ADD s2, s1, s3
  SW s0, 0(s2)
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
quick_read:
  ADDI sp, sp, -80
  SD ra, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  SW zero, 24(sp)
  SW zero, 16(sp)
  JAL zero, bb25
bb25:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  BNE s1, zero, bb28
  JAL zero, bb29
bb26:
  LW s0, 32(sp)
  XORI s1, s0, 45
  SLTIU s0, s1, 1
  BNE s0, zero, bb31
  JAL zero, bb32
bb27:
  JAL zero, bb33
bb28:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb30
bb29:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XOR s0, s2, zero
  SLTU s1, zero, s0
  SB s1, 8(sp)
  JAL zero, bb30
bb30:
  LB s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb26
  JAL zero, bb27
bb31:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb32
bb32:
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb25
bb33:
  LW s0, 32(sp)
  SLTI s1, s0, 48
  XORI s0, s1, 1
  BNE s0, zero, bb36
  JAL zero, bb37
bb34:
  LW s0, 24(sp)
  ADDI s1, zero, 10
  MULW s2, s0, s1
  LW s0, 32(sp)
  ADDW s1, s2, s0
  ADDI s0, zero, 48
  SUBW s2, s1, s0
  SW s2, 24(sp)
  CALL getch
  ADD s0, a0, zero
  SW s0, 32(sp)
  JAL zero, bb33
bb35:
  LW s0, 16(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb39
  JAL zero, bb41
bb36:
  LW s0, 32(sp)
  ADDI s1, zero, 57
  SLT s2, s1, s0
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb38
bb37:
  SB zero, 0(sp)
  JAL zero, bb38
bb38:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb34
  JAL zero, bb35
bb39:
  LW s0, 24(sp)
  SUB s1, zero, s0
  ADD a0, s1, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb40:
bb41:
  LW s0, 24(sp)
  ADD a0, s0, zero
  LD ra, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
