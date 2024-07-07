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
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s10, 40(sp)
  SD s7, 48(sp)
  SD s2, 56(sp)
  SD s3, 64(sp)
  SD s4, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
  LA s0, a
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, b
  ADDI s1, zero, 3
  SW s1, 0(s0)
  ADD a0, zero, zero
  CALL set_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb3
  JAL zero, bb4
bb3:
  ADDI a0, zero, 1
  CALL set_b
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  ADD s1, s0, zero
  JAL zero, bb5
bb4:
  ADD s1, zero, zero
  JAL zero, bb5
bb5:
  ADD s0, s1, zero
  BNE s0, zero, bb6
  JAL zero, bb7
bb6:
  JAL zero, bb7
bb7:
  LA s0, a
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s2, 0(s0)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, a
  ADDI s2, zero, 2
  SW s2, 0(s0)
  LA s0, b
  ADDI s2, zero, 3
  SW s2, 0(s0)
  ADD a0, zero, zero
  CALL set_a
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a0, zero, 1
  CALL set_b
  ADD s0, a0, zero
  XOR s2, s0, zero
  SLTU s0, zero, s2
  ADD s2, s0, zero
  JAL zero, bb10
bb9:
  ADD s2, zero, zero
  JAL zero, bb10
bb10:
  ADD s0, s2, zero
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  JAL zero, bb12
bb12:
  LA s0, a
  LW s3, 0(s0)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s3, 0(s0)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, d
  ADDI s3, zero, 2
  SW s3, 0(s0)
  ADDI s0, zero, 1
  SLTI s3, s0, 1
  XORI s0, s3, 1
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  ADDI a0, zero, 3
  CALL set_d
  ADD s0, a0, zero
  XOR s3, s0, zero
  SLTU s0, zero, s3
  ADD s3, s0, zero
  JAL zero, bb15
bb14:
  ADD s3, zero, zero
  JAL zero, bb15
bb15:
  ADD s0, s3, zero
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  JAL zero, bb17
bb17:
  LA s0, d
  LW s4, 0(s0)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s0, zero, 1
  SLTI s4, s0, 1
  XORI s0, s4, 1
  BNE s0, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s0, zero, 1
  JAL zero, bb20
bb19:
  ADDI a0, zero, 4
  CALL set_d
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s0, s4, zero
  JAL zero, bb20
bb20:
  ADD s4, s0, zero
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  JAL zero, bb22
bb22:
  LA s4, d
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s4, zero, 16
  SLT s5, s4, zero
  XORI s4, s5, 1
  BNE s4, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb24
bb24:
  ADDI s4, zero, 1
  XORI s5, s4, 1
  SLTU s4, zero, s5
  BNE s4, zero, bb25
  JAL zero, bb26
bb25:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb26
bb26:
  ADD s4, zero, zero
  XOR s5, s4, zero
  SLTIU s4, s5, 1
  BNE s4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb28
bb28:
  ADDI s4, zero, 63
  SLTI s5, s4, 102
  XORI s4, s5, 1
  ADD s5, s4, zero
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb29
  JAL zero, bb30
bb29:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb30
bb30:
  XORI s4, zero, 1
  ADD s5, s4, zero
  SUBW s4, zero, s5
  XORI s5, s4, -1
  SLTIU s4, s5, 1
  BNE s4, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb32
bb32:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb33
bb33:
  JAL zero, bb36
bb34:
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb33
bb35:
  JAL zero, bb38
bb36:
  JAL zero, bb37
bb37:
  BNE zero, zero, bb34
  JAL zero, bb35
bb38:
  JAL zero, bb39
bb39:
  ADDI s4, zero, 1
  BNE s4, zero, bb40
  JAL zero, bb41
bb40:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb41
bb41:
  SLTI s4, zero, 1
  XORI s5, s4, 1
  BNE s5, zero, bb42
  JAL zero, bb43
bb42:
  ADDI s4, zero, 1
  JAL zero, bb44
bb43:
  SLTI s5, zero, 1
  XORI s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb44
bb44:
  ADD s5, s4, zero
  BNE s5, zero, bb45
  JAL zero, bb46
bb45:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb46
bb46:
  ADDI s5, zero, 2
  SLTI s6, s5, 1
  XORI s5, s6, 1
  BNE s5, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s5, zero, 1
  JAL zero, bb49
bb48:
  ADD s5, zero, zero
  JAL zero, bb49
bb49:
  ADD s6, s5, zero
  BNE s6, zero, bb50
  JAL zero, bb51
bb50:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb51
bb51:
  ADDI s6, zero, 1
  XORI s7, s6, 1
  ADD s6, s7, zero
  XOR s7, zero, s6
  SLTIU s6, s7, 1
  BNE s6, zero, bb52
  JAL zero, bb53
bb52:
  ADD s7, zero, zero
  JAL zero, bb54
bb53:
  ADD s7, zero, zero
  JAL zero, bb54
bb54:
  ADD s8, s7, zero
  BNE s8, zero, bb55
  JAL zero, bb56
bb55:
  ADDI s8, zero, 1
  JAL zero, bb57
bb56:
  ADDI s9, zero, 4
  SLTI s10, s9, 4
  XORI s9, s10, 1
  ADD s8, s9, zero
  JAL zero, bb57
bb57:
  ADD s9, s8, zero
  BNE s9, zero, bb58
  JAL zero, bb59
bb58:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb59
bb59:
  BNE s6, zero, bb60
  JAL zero, bb61
bb60:
  ADDI s9, zero, 1
  JAL zero, bb62
bb61:
  JAL zero, bb63
bb62:
  ADD s10, s9, zero
  BNE s10, zero, bb65
  JAL zero, bb66
bb63:
  JAL zero, bb64
bb64:
  ADD s9, zero, zero
  JAL zero, bb62
bb65:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb66
bb66:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s10, 40(sp)
  LD s7, 48(sp)
  LD s2, 56(sp)
  LD s3, 64(sp)
  LD s4, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
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
