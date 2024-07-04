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
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, d
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
set_b:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, b
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -176
  SD ra, 136(sp)
  SD s3, 144(sp)
  SD s2, 152(sp)
  SD s1, 160(sp)
  SD s0, 168(sp)
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
  SB s0, 128(sp)
  JAL zero, bb5
bb4:
  ADDI s0, zero, 0
  SB s0, 128(sp)
  JAL zero, bb5
bb5:
  LB s0, 128(sp)
  BNE s0, zero, bb6
  JAL zero, bb7
bb6:
  JAL zero, bb7
bb7:
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
  ADD a0, zero, zero
  CALL set_a
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb8
  JAL zero, bb9
bb8:
  ADDI a0, zero, 1
  CALL set_b
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 120(sp)
  JAL zero, bb10
bb9:
  ADDI s0, zero, 0
  SB s0, 120(sp)
  JAL zero, bb10
bb10:
  LB s0, 120(sp)
  BNE s0, zero, bb11
  JAL zero, bb12
bb11:
  JAL zero, bb12
bb12:
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
  BNE s0, zero, bb13
  JAL zero, bb14
bb13:
  ADDI a0, zero, 3
  CALL set_d
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 112(sp)
  JAL zero, bb15
bb14:
  ADDI s0, zero, 0
  SB s0, 112(sp)
  JAL zero, bb15
bb15:
  LB s0, 112(sp)
  BNE s0, zero, bb16
  JAL zero, bb17
bb16:
  JAL zero, bb17
bb17:
  LA s0, d
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s0, zero, 1
  SLTI s1, s0, 1
  XORI s0, s1, 1
  BNE s0, zero, bb18
  JAL zero, bb19
bb18:
  ADDI s0, zero, 1
  SB s0, 104(sp)
  JAL zero, bb20
bb19:
  ADDI a0, zero, 4
  CALL set_d
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 104(sp)
  JAL zero, bb20
bb20:
  LB s0, 104(sp)
  BNE s0, zero, bb21
  JAL zero, bb22
bb21:
  JAL zero, bb22
bb22:
  LA s0, d
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  ADDIW s1, s0, 2
  ADDI s0, zero, 3
  SUBW s2, s0, s1
  ADDI s0, zero, 16
  SLT s1, s0, s2
  XORI s0, s1, 1
  BNE s0, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb24
bb24:
  ADDI s0, zero, 25
  ADDI s1, zero, 7
  SUBW s2, s0, s1
  ADDI s0, zero, 3
  ADDI s1, zero, 6
  MULW s3, s0, s1
  ADDI s0, zero, 36
  SUBW s1, s0, s3
  XOR s0, s2, s1
  SLTU s1, zero, s0
  BNE s1, zero, bb25
  JAL zero, bb26
bb25:
  ADDI a0, zero, 66
  CALL putch
  JAL zero, bb26
bb26:
  ADDI s0, zero, 1
  SLTI s1, s0, 8
  ADDI s0, zero, 7
  ADDI s2, zero, 2
  REMW s3, s0, s2
  ADD s0, s1, zero
  XOR s1, s0, s3
  SLTU s0, zero, s1
  BNE s0, zero, bb27
  JAL zero, bb28
bb27:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb28
bb28:
  ADDI s0, zero, 4
  SLTI s1, s0, 3
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb29
  JAL zero, bb30
bb29:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb30
bb30:
  ADDI s0, zero, 63
  SLTI s1, s0, 102
  XORI s0, s1, 1
  ADD s1, s0, zero
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb31
  JAL zero, bb32
bb31:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb32
bb32:
  ADDI s0, zero, 5
  ADDI s1, zero, 6
  SUBW s2, s0, s1
  XOR s0, zero, zero
  SLTU s1, zero, s0
  XORI s0, s1, 1
  ADD s1, s0, zero
  SUBW s0, zero, s1
  XOR s1, s2, s0
  SLTIU s0, s1, 1
  BNE s0, zero, bb33
  JAL zero, bb34
bb33:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb34
bb34:
  ADDI a0, zero, 10
  CALL putch
  SW zero, 96(sp)
  ADDI s0, zero, 1
  SW s0, 88(sp)
  ADDI s0, zero, 2
  SW s0, 80(sp)
  ADDI s0, zero, 3
  SW s0, 72(sp)
  ADDI s0, zero, 4
  SW s0, 64(sp)
  JAL zero, bb35
bb35:
  LW s0, 96(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb38
  JAL zero, bb39
bb36:
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb35
bb37:
  LW s0, 96(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb41
  JAL zero, bb42
bb38:
  LW s0, 88(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 56(sp)
  JAL zero, bb40
bb39:
  SB zero, 56(sp)
  JAL zero, bb40
bb40:
  LB s0, 56(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb36
  JAL zero, bb37
bb41:
  ADDI s0, zero, 1
  SB s0, 48(sp)
  JAL zero, bb43
bb42:
  LW s0, 88(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 48(sp)
  JAL zero, bb43
bb43:
  LB s0, 48(sp)
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb45
bb45:
  LW s0, 96(sp)
  LW s1, 88(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  BNE s0, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s0, zero, 1
  SB s0, 40(sp)
  JAL zero, bb48
bb47:
  LW s0, 88(sp)
  LW s1, 96(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 40(sp)
  JAL zero, bb48
bb48:
  LB s0, 40(sp)
  BNE s0, zero, bb49
  JAL zero, bb50
bb49:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb50
bb50:
  LW s0, 80(sp)
  LW s1, 88(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  BNE s0, zero, bb51
  JAL zero, bb52
bb51:
  LW s0, 64(sp)
  LW s1, 72(sp)
  XOR s2, s0, s1
  SLTU s0, zero, s2
  SB s0, 32(sp)
  JAL zero, bb53
bb52:
  SB zero, 32(sp)
  JAL zero, bb53
bb53:
  LB s0, 32(sp)
  BNE s0, zero, bb54
  JAL zero, bb55
bb54:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb55
bb55:
  LW s0, 96(sp)
  LW s1, 88(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb56
  JAL zero, bb57
bb56:
  LW s0, 72(sp)
  LW s1, 72(sp)
  SLT s2, s0, s1
  SB s2, 24(sp)
  JAL zero, bb58
bb57:
  SB zero, 24(sp)
  JAL zero, bb58
bb58:
  LB s0, 24(sp)
  BNE s0, zero, bb59
  JAL zero, bb60
bb59:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb61
bb60:
  LW s0, 64(sp)
  LW s1, 64(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb61
bb61:
  LB s0, 16(sp)
  BNE s0, zero, bb62
  JAL zero, bb63
bb62:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb63
bb63:
  LW s0, 96(sp)
  LW s1, 88(sp)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  XORI s2, s1, 1
  ADD s1, s2, zero
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  BNE s0, zero, bb64
  JAL zero, bb65
bb64:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb66
bb65:
  LW s0, 72(sp)
  LW s1, 72(sp)
  SLT s2, s0, s1
  BNE s2, zero, bb67
  JAL zero, bb68
bb66:
  LB s0, 8(sp)
  BNE s0, zero, bb70
  JAL zero, bb71
bb67:
  LW s0, 64(sp)
  LW s1, 64(sp)
  SLT s2, s0, s1
  XORI s0, s2, 1
  SB s0, 0(sp)
  JAL zero, bb69
bb68:
  SB zero, 0(sp)
  JAL zero, bb69
bb69:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb66
bb70:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb71
bb71:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 136(sp)
  LD s3, 144(sp)
  LD s2, 152(sp)
  LD s1, 160(sp)
  LD s0, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
set_a:
  ADDI sp, sp, -32
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  ADD s0, a0, zero
  SW s0, 0(sp)
  LA s1, a
  SW s0, 0(s1)
  ADD a0, s0, zero
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
