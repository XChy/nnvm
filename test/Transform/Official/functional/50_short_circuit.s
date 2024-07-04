.global main
.global func
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  ADDI s1, zero, 10
  SLT s2, s1, s0
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 32(sp)
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SB s0, 32(sp)
  JAL zero, bb3
bb3:
  LB s0, 32(sp)
  BNE s0, zero, bb4
  JAL zero, bb6
bb4:
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb5
bb5:
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  ADDI s1, zero, 11
  SLT s2, s1, s0
  BNE s2, zero, bb7
  JAL zero, bb8
bb6:
  SW zero, 40(sp)
  JAL zero, bb5
bb7:
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SB s0, 24(sp)
  JAL zero, bb9
bb9:
  LB s0, 24(sp)
  BNE s0, zero, bb10
  JAL zero, bb12
bb10:
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb11
bb11:
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  ADDI s1, zero, 99
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb12:
  SW zero, 40(sp)
  JAL zero, bb11
bb13:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb15
bb14:
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb15
bb15:
  LB s0, 16(sp)
  BNE s0, zero, bb16
  JAL zero, bb18
bb16:
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb17
bb17:
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  ADDI s1, zero, 100
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb18:
  SW zero, 40(sp)
  JAL zero, bb17
bb19:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb21
bb20:
  LW s0, 40(sp)
  ADD a0, s0, zero
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb21
bb21:
  LB s0, 8(sp)
  BNE s0, zero, bb22
  JAL zero, bb24
bb22:
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb23
bb23:
  ADDI a0, zero, 99
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb25
  JAL zero, bb26
bb24:
  SW zero, 40(sp)
  JAL zero, bb23
bb25:
  ADDI a0, zero, 100
  CALL func
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 0(sp)
  JAL zero, bb27
bb26:
  SB zero, 0(sp)
  JAL zero, bb27
bb27:
  LB s0, 0(sp)
  BNE s0, zero, bb28
  JAL zero, bb30
bb28:
  ADDI s0, zero, 1
  SW s0, 40(sp)
  JAL zero, bb29
bb29:
  ADD a0, zero, zero
  LD ra, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb30:
  SW zero, 40(sp)
  JAL zero, bb29
func:
  ADDI sp, sp, -48
  SD ra, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, g
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD ra, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
