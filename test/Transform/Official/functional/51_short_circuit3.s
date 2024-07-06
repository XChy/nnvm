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
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s11, 24(sp)
  SD s10, 32(sp)
  SD s0, 40(sp)
  SD s5, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s4, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
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
  ADD t4, s0, zero
  SB t4, 0(sp)
  JAL zero, bb5
bb4:
  ADD t4, zero, zero
  SB t4, 0(sp)
  JAL zero, bb5
bb5:
  LB t4, 0(sp)
  ADD s0, t4, zero
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
  ADD t4, s0, zero
  SB t4, 8(sp)
  JAL zero, bb10
bb9:
  ADD t4, zero, zero
  SB t4, 8(sp)
  JAL zero, bb10
bb10:
  LB t4, 8(sp)
  ADD s0, t4, zero
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
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s0, s1, zero
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
  ADDI s4, zero, 3
  ADDI s5, zero, 6
  MULW s6, s4, s5
  ADDI s4, zero, 36
  SUBW s5, s4, s6
  XORI s4, s5, 18
  SLTU s5, zero, s4
  BNE s5, zero, bb25
  JAL zero, bb26
bb25:
  ADDI a0, zero, 66
  CALL putch
  JAL zero, bb26
bb26:
  ADDI s4, zero, 1
  SLTI s5, s4, 8
  ADDI s4, zero, 7
  ADDI s6, zero, 2
  REMW s7, s4, s6
  ADD s4, s5, zero
  XOR s5, s4, s7
  SLTU s4, zero, s5
  BNE s4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb28
bb28:
  ADDI s4, zero, 4
  SLTI s5, s4, 3
  ADD s4, s5, zero
  XOR s5, s4, zero
  SLTIU s4, s5, 1
  BNE s4, zero, bb29
  JAL zero, bb30
bb29:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb30
bb30:
  ADDI s4, zero, 63
  SLTI s5, s4, 102
  XORI s4, s5, 1
  ADD s5, s4, zero
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb32
bb32:
  XOR s4, zero, zero
  SLTU s5, zero, s4
  XORI s4, s5, 1
  ADD s5, s4, zero
  SUBW s4, zero, s5
  XORI s5, s4, -1
  SLTIU s4, s5, 1
  BNE s4, zero, bb33
  JAL zero, bb34
bb33:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb34
bb34:
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb35
bb35:
  XOR s4, zero, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb38
  JAL zero, bb39
bb36:
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb35
bb37:
  XOR s5, zero, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb41
  JAL zero, bb42
bb38:
  XORI s4, zero, 1
  SLTU s5, zero, s4
  ADD s4, s5, zero
  JAL zero, bb40
bb39:
  ADD s4, zero, zero
  JAL zero, bb40
bb40:
  ADD s5, s4, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb36
  JAL zero, bb37
bb41:
  ADDI s5, zero, 1
  JAL zero, bb43
bb42:
  XORI s1, zero, 1
  SLTU s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s5, s2, zero
  JAL zero, bb43
bb43:
  ADD s6, s5, zero
  BNE s6, zero, bb44
  JAL zero, bb45
bb44:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb45
bb45:
  SLTI s6, zero, 1
  XORI s7, s6, 1
  BNE s7, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s6, zero, 1
  JAL zero, bb48
bb47:
  SLTI s1, zero, 1
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  ADD s6, s2, zero
  JAL zero, bb48
bb48:
  ADD s7, s6, zero
  BNE s7, zero, bb49
  JAL zero, bb50
bb49:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb50
bb50:
  ADDI s7, zero, 2
  SLTI s8, s7, 1
  XORI s7, s8, 1
  BNE s7, zero, bb51
  JAL zero, bb52
bb51:
  ADDI s7, zero, 3
  XORI s8, s7, 4
  SLTU s7, zero, s8
  ADD s8, s7, zero
  JAL zero, bb53
bb52:
  ADD s8, zero, zero
  JAL zero, bb53
bb53:
  ADD s7, s8, zero
  BNE s7, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb55
bb55:
  XORI s7, zero, 1
  SLTU s9, zero, s7
  XORI s7, s9, 1
  ADD s9, s7, zero
  XOR s7, zero, s9
  SLTIU s9, s7, 1
  BNE s9, zero, bb56
  JAL zero, bb57
bb56:
  ADDI s7, zero, 3
  SLTI s9, s7, 3
  ADD s7, s9, zero
  JAL zero, bb58
bb57:
  ADD s7, zero, zero
  JAL zero, bb58
bb58:
  ADD s9, s7, zero
  BNE s9, zero, bb59
  JAL zero, bb60
bb59:
  ADDI s9, zero, 1
  JAL zero, bb61
bb60:
  ADDI s1, zero, 4
  SLTI s2, s1, 4
  XORI s1, s2, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s9, s1, zero
  JAL zero, bb61
bb61:
  ADD s10, s9, zero
  BNE s10, zero, bb62
  JAL zero, bb63
bb62:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb63
bb63:
  XORI s10, zero, 1
  SLTU s11, zero, s10
  XORI s10, s11, 1
  ADD s11, s10, zero
  XOR s10, zero, s11
  SLTIU s11, s10, 1
  BNE s11, zero, bb64
  JAL zero, bb65
bb64:
  ADDI s10, zero, 1
  JAL zero, bb66
bb65:
  ADDI s11, zero, 3
  SLTI s1, s11, 3
  BNE s1, zero, bb67
  JAL zero, bb68
bb66:
  ADD s11, s10, zero
  BNE s11, zero, bb70
  JAL zero, bb71
bb67:
  ADDI s1, zero, 4
  SLTI s11, s1, 4
  XORI s1, s11, 1
  ADD s11, s1, zero
  JAL zero, bb69
bb68:
  ADD s11, zero, zero
  JAL zero, bb69
bb69:
  ADD s1, s11, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  ADD s10, s1, zero
  JAL zero, bb66
bb70:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb71
bb71:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 16(sp)
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s0, 40(sp)
  LD s5, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s4, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  ADDI sp, sp, 128
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
