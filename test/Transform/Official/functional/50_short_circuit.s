.global main
.global func
.section .bss

.section .data
g:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 10
  SLT s2, s1, s0
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  LA s1, g
  LW s2, 0(s1)
  ADDW s1, s2, s0
  LA s0, g
  SW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  LA s0, g
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb3
bb2:
  ADD s0, zero, zero
  JAL zero, bb3
bb3:
  ADD s1, s0, zero
  BNE s1, zero, bb4
  JAL zero, bb6
bb4:
  JAL zero, bb5
bb5:
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 11
  SLT s3, s2, s1
  BNE s3, zero, bb7
  JAL zero, bb8
bb6:
  JAL zero, bb5
bb7:
  LA s2, g
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, g
  SW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  LA s1, g
  LW s2, 0(s1)
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s1, s2, zero
  JAL zero, bb9
bb8:
  ADD s1, zero, zero
  JAL zero, bb9
bb9:
  ADD s2, s1, zero
  BNE s2, zero, bb10
  JAL zero, bb12
bb10:
  JAL zero, bb11
bb11:
  CALL getint
  ADD s2, a0, zero
  ADDI s3, zero, 99
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb13
  JAL zero, bb14
bb12:
  JAL zero, bb11
bb13:
  ADDI s3, zero, 1
  JAL zero, bb15
bb14:
  LA s4, g
  LW s5, 0(s4)
  ADDW s4, s5, s2
  LA s2, g
  SW s4, 0(s2)
  ADD a0, s4, zero
  CALL putint
  LA s2, g
  LW s4, 0(s2)
  XOR s2, s4, zero
  SLTU s4, zero, s2
  ADD s3, s4, zero
  JAL zero, bb15
bb15:
  ADD s4, s3, zero
  BNE s4, zero, bb16
  JAL zero, bb18
bb16:
  JAL zero, bb17
bb17:
  CALL getint
  ADD s4, a0, zero
  ADDI s5, zero, 100
  SLT s6, s5, s4
  XORI s5, s6, 1
  BNE s5, zero, bb19
  JAL zero, bb20
bb18:
  JAL zero, bb17
bb19:
  ADDI s5, zero, 1
  JAL zero, bb21
bb20:
  LA s6, g
  LW s7, 0(s6)
  ADDW s6, s7, s4
  LA s4, g
  SW s6, 0(s4)
  ADD a0, s6, zero
  CALL putint
  LA s4, g
  LW s6, 0(s4)
  XOR s4, s6, zero
  SLTU s6, zero, s4
  ADD s5, s6, zero
  JAL zero, bb21
bb21:
  ADD s6, s5, zero
  BNE s6, zero, bb22
  JAL zero, bb24
bb22:
  JAL zero, bb23
bb23:
  LA s6, g
  LW s7, 0(s6)
  ADDIW s6, s7, 99
  LA s7, g
  SW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  LA s6, g
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTU s7, zero, s6
  XORI s6, s7, 1
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb25
  JAL zero, bb26
bb24:
  JAL zero, bb23
bb25:
  LA s6, g
  LW s7, 0(s6)
  ADDIW s6, s7, 100
  LA s7, g
  SW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  LA s6, g
  LW s7, 0(s6)
  XOR s6, s7, zero
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb27
bb26:
  ADD s6, zero, zero
  JAL zero, bb27
bb27:
  ADD s7, s6, zero
  BNE s7, zero, bb28
  JAL zero, bb30
bb28:
  JAL zero, bb29
bb29:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb30:
  JAL zero, bb29
func:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
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
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
