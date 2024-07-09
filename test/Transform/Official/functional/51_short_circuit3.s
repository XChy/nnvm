.global set_d
.global set_b
.global main
.global set_a
.section .bss



.section .data
b:
.word 0x00000000
d:
.word 0x00000000
a:
.word 0x00000000
.section .text
set_d:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  LA s1, d
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
set_b:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  LA s1, b
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD s7, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  LA s0, a
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, b
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a
  ADDI s1, zero, 0
  SW s1, 0(s0)
  JAL zero, bb3
bb3:
  JAL zero, bb4
bb4:
  ADDI s0, zero, 0
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  JAL zero, bb6
bb6:
  LA s0, a
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, a
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, b
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a
  ADDI s1, zero, 0
  SW s1, 0(s0)
  JAL zero, bb7
bb7:
  JAL zero, bb8
bb8:
  ADDI s0, zero, 0
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  JAL zero, bb10
bb10:
  LA s0, a
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, d
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 1
  SLTI s1, s0, 1
  XORI s0, s1, 1
  BNE s0, zero, bb11
  JAL zero, bb13
bb11:
  LA s0, d
  ADDI s1, zero, 3
  SW s1, 0(s0)
  JAL zero, bb12
bb12:
  ADDI s0, zero, 1
  JAL zero, bb14
bb13:
  ADD s0, zero, zero
  JAL zero, bb14
bb14:
  ADD s1, s0, zero
  BNE s1, zero, bb15
  JAL zero, bb16
bb15:
  JAL zero, bb16
bb16:
  LA s1, d
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s1, zero, 1
  SLTI s2, s1, 1
  XORI s1, s2, 1
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s1, zero, 1
  JAL zero, bb20
bb18:
  LA s2, d
  ADDI s3, zero, 4
  SW s3, 0(s2)
  JAL zero, bb19
bb19:
  ADDI s1, zero, 1
  JAL zero, bb20
bb20:
  ADD s2, s1, zero
  BNE s2, zero, bb21
  JAL zero, bb22
bb21:
  JAL zero, bb22
bb22:
  LA s2, d
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s2, zero, 16
  SLT s3, s2, zero
  XORI s2, s3, 1
  BNE s2, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb24
bb24:
  ADDI s2, zero, 1
  XORI s3, s2, 1
  SLTU s2, zero, s3
  BNE s2, zero, bb25
  JAL zero, bb26
bb25:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb26
bb26:
  XOR s2, zero, zero
  SLTIU s3, s2, 1
  BNE s3, zero, bb27
  JAL zero, bb28
bb27:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb28
bb28:
  ADDI s2, zero, 63
  SLTI s3, s2, 102
  XORI s2, s3, 1
  XORI s3, s2, 1
  SLTIU s2, s3, 1
  BNE s2, zero, bb29
  JAL zero, bb30
bb29:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb30
bb30:
  XORI s2, zero, 1
  SUBW s3, zero, s2
  XORI s2, s3, -1
  SLTIU s3, s2, 1
  BNE s3, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb32
bb32:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  SLTI s2, zero, 1
  XORI s3, s2, 1
  BNE s3, zero, bb33
  JAL zero, bb34
bb33:
  ADDI s2, zero, 1
  JAL zero, bb35
bb34:
  SLTI s3, zero, 1
  XORI s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb35
bb35:
  ADD s3, s2, zero
  BNE s3, zero, bb36
  JAL zero, bb37
bb36:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb37
bb37:
  ADDI s3, zero, 2
  SLTI s4, s3, 1
  XORI s3, s4, 1
  BNE s3, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s3, zero, 1
  JAL zero, bb40
bb39:
  ADD s3, zero, zero
  JAL zero, bb40
bb40:
  ADD s4, s3, zero
  BNE s4, zero, bb41
  JAL zero, bb42
bb41:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb42
bb42:
  ADDI s4, zero, 1
  XORI s5, s4, 1
  XOR s4, zero, s5
  SLTIU s5, s4, 1
  BNE s5, zero, bb43
  JAL zero, bb44
bb43:
  ADD s4, zero, zero
  JAL zero, bb45
bb44:
  ADD s4, zero, zero
  JAL zero, bb45
bb45:
  ADD s6, s4, zero
  BNE s6, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s6, zero, 1
  JAL zero, bb48
bb47:
  ADDI s7, zero, 4
  SLTI s8, s7, 4
  XORI s7, s8, 1
  ADD s6, s7, zero
  JAL zero, bb48
bb48:
  ADD s7, s6, zero
  BNE s7, zero, bb49
  JAL zero, bb50
bb49:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb50
bb50:
  BNE s5, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s7, zero, 1
  JAL zero, bb53
bb52:
  JAL zero, bb54
bb53:
  ADD s8, s7, zero
  BNE s8, zero, bb55
  JAL zero, bb56
bb54:
  ADD s7, zero, zero
  JAL zero, bb53
bb55:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb56
bb56:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD s7, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
set_a:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADD s0, a0, zero
  LA s1, a
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
