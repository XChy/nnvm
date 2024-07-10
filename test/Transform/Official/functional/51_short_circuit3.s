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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  LA s0, a
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, b
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a
  ADDI s1, zero, 0
  SW s1, 0(s0)
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
  BNE s0, zero, bb39
  # implict jump to bb3
bb3:
  LA s0, d
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s0, zero, 1
  SLTI s1, s0, 1
  XORI s0, s1, 1
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  LA s0, d
  ADDI s1, zero, 4
  SW s1, 0(s0)
  # implict jump to bb5
bb5:
  LA s0, d
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 16
  SLT s1, s0, zero
  XORI s0, s1, 1
  BNE s0, zero, bb38
  # implict jump to bb6
bb6:
  ADDI s0, zero, 1
  XORI s1, s0, 1
  SLTU s0, zero, s1
  BNE s0, zero, bb37
  # implict jump to bb7
bb7:
  XOR s0, zero, zero
  SLTIU s1, s0, 1
  BNE s1, zero, bb36
  # implict jump to bb8
bb8:
  ADDI s0, zero, 63
  SLTI s1, s0, 102
  XORI s0, s1, 1
  XORI s1, s0, 1
  SLTIU s0, s1, 1
  BNE s0, zero, bb35
  # implict jump to bb9
bb9:
  XORI s0, zero, 1
  SUBW s1, zero, s0
  XORI s0, s1, -1
  SLTIU s1, s0, 1
  BNE s1, zero, bb34
  # implict jump to bb10
bb10:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  SLTI s0, zero, 1
  XORI s1, s0, 1
  BNE s1, zero, bb33
  # implict jump to bb11
bb11:
  SLTI s1, zero, 1
  XORI s2, s1, 1
  ADD s0, s2, zero
  # implict jump to bb12
bb12:
  ADD s1, s0, zero
  BNE s1, zero, bb32
  # implict jump to bb13
bb13:
  ADDI s1, zero, 2
  SLTI s2, s1, 1
  XORI s1, s2, 1
  BNE s1, zero, bb31
  # implict jump to bb14
bb14:
  ADD s1, zero, zero
  # implict jump to bb15
bb15:
  ADD s2, s1, zero
  BNE s2, zero, bb30
  # implict jump to bb16
bb16:
  ADDI s2, zero, 1
  XORI s3, s2, 1
  XOR s2, zero, s3
  SLTIU s3, s2, 1
  BNE s3, zero, bb29
  # implict jump to bb17
bb17:
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  ADD s4, s2, zero
  BNE s4, zero, bb28
  # implict jump to bb19
bb19:
  ADDI s5, zero, 4
  SLTI s6, s5, 4
  XORI s5, s6, 1
  ADD s4, s5, zero
  # implict jump to bb20
bb20:
  ADD s5, s4, zero
  BNE s5, zero, bb27
  # implict jump to bb21
bb21:
  BNE s3, zero, bb26
  # implict jump to bb22
bb22:
  ADD s5, zero, zero
  # implict jump to bb23
bb23:
  ADD s6, s5, zero
  BNE s6, zero, bb25
  # implict jump to bb24
bb24:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb25:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb24
bb26:
  ADDI s5, zero, 1
  JAL zero, bb23
bb27:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb21
bb28:
  ADDI s4, zero, 1
  JAL zero, bb20
bb29:
  ADD s2, zero, zero
  JAL zero, bb18
bb30:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb16
bb31:
  ADDI s1, zero, 1
  JAL zero, bb15
bb32:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb13
bb33:
  ADDI s0, zero, 1
  JAL zero, bb12
bb34:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb10
bb35:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb9
bb36:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb8
bb37:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb7
bb38:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb6
bb39:
  LA s0, d
  ADDI s1, zero, 3
  SW s1, 0(s0)
  JAL zero, bb3
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
