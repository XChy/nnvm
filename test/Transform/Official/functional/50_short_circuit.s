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
  JAL zero, bb3
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
  ADD s0, s1, zero
  JAL zero, bb2
bb2:
  ADD s1, s0, zero
  XOR s0, s1, zero
  SLTU s1, zero, s0
  ADD s0, s1, zero
  JAL zero, bb4
bb3:
  ADD s0, zero, zero
  JAL zero, bb4
bb4:
  ADD s1, s0, zero
  BNE s1, zero, bb5
  JAL zero, bb7
bb5:
  JAL zero, bb6
bb6:
  CALL getint
  ADD s1, a0, zero
  ADDI s2, zero, 11
  SLT s3, s2, s1
  BNE s3, zero, bb8
  JAL zero, bb10
bb7:
  JAL zero, bb6
bb8:
  LA s2, g
  LW s3, 0(s2)
  ADDW s2, s3, s1
  LA s1, g
  SW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  LA s1, g
  LW s2, 0(s1)
  ADD s1, s2, zero
  JAL zero, bb9
bb9:
  ADD s2, s1, zero
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s1, s2, zero
  JAL zero, bb11
bb10:
  ADD s1, zero, zero
  JAL zero, bb11
bb11:
  ADD s2, s1, zero
  BNE s2, zero, bb12
  JAL zero, bb14
bb12:
  JAL zero, bb13
bb13:
  CALL getint
  ADD s2, a0, zero
  ADDI s3, zero, 99
  SLT s4, s3, s2
  XORI s3, s4, 1
  BNE s3, zero, bb15
  JAL zero, bb16
bb14:
  JAL zero, bb13
bb15:
  ADDI s3, zero, 1
  JAL zero, bb18
bb16:
  LA s4, g
  LW s5, 0(s4)
  ADDW s4, s5, s2
  LA s2, g
  SW s4, 0(s2)
  ADD a0, s4, zero
  CALL putint
  LA s2, g
  LW s4, 0(s2)
  ADD s2, s4, zero
  JAL zero, bb17
bb17:
  ADD s4, s2, zero
  XOR s2, s4, zero
  SLTU s4, zero, s2
  ADD s3, s4, zero
  JAL zero, bb18
bb18:
  ADD s4, s3, zero
  BNE s4, zero, bb19
  JAL zero, bb21
bb19:
  JAL zero, bb20
bb20:
  CALL getint
  ADD s4, a0, zero
  ADDI s5, zero, 100
  SLT s6, s5, s4
  XORI s5, s6, 1
  BNE s5, zero, bb22
  JAL zero, bb23
bb21:
  JAL zero, bb20
bb22:
  ADDI s5, zero, 1
  JAL zero, bb25
bb23:
  LA s6, g
  LW s7, 0(s6)
  ADDW s6, s7, s4
  LA s4, g
  SW s6, 0(s4)
  ADD a0, s6, zero
  CALL putint
  LA s4, g
  LW s6, 0(s4)
  ADD s4, s6, zero
  JAL zero, bb24
bb24:
  ADD s6, s4, zero
  XOR s4, s6, zero
  SLTU s6, zero, s4
  ADD s5, s6, zero
  JAL zero, bb25
bb25:
  ADD s6, s5, zero
  BNE s6, zero, bb26
  JAL zero, bb29
bb26:
  JAL zero, bb27
bb27:
  LA s6, g
  LW s7, 0(s6)
  ADDIW s6, s7, 99
  LA s7, g
  SW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  LA s6, g
  LW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb28
bb28:
  ADD s7, s6, zero
  XOR s6, s7, zero
  SLTU s7, zero, s6
  XORI s6, s7, 1
  ADD s7, s6, zero
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb30
  JAL zero, bb32
bb29:
  JAL zero, bb27
bb30:
  LA s6, g
  LW s7, 0(s6)
  ADDIW s6, s7, 100
  LA s7, g
  SW s6, 0(s7)
  ADD a0, s6, zero
  CALL putint
  LA s6, g
  LW s7, 0(s6)
  ADD s6, s7, zero
  JAL zero, bb31
bb31:
  ADD s7, s6, zero
  XOR s6, s7, zero
  SLTU s7, zero, s6
  ADD s6, s7, zero
  JAL zero, bb33
bb32:
  ADD s6, zero, zero
  JAL zero, bb33
bb33:
  ADD s7, s6, zero
  BNE s7, zero, bb34
  JAL zero, bb36
bb34:
  JAL zero, bb35
bb35:
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
bb36:
  JAL zero, bb35
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
