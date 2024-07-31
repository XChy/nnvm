.global main
.section .bss



.section .data
b:
.word 0x00000000
d:
.word 0x00000000
a:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, a
  ADDI s1, zero, 2
  SW s1, 0(s0)
  LA s0, b
  ADDI s1, zero, 3
  SW s1, 0(s0)
  LA s0, a
  ADDI s1, zero, 0
  SW s1, 0(s0)
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s0, 0(s0)
  ADD a0, s0, zero
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
  SW zero, 0(s0)
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA s0, b
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, d
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 1
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb37
  # implict jump to bb1
bb1:
  LA s0, d
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI s0, zero, 1
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb3
  # implict jump to bb2
bb2:
  LA s0, d
  ADDI s1, zero, 4
  SW s1, 0(s0)
  # implict jump to bb3
bb3:
  LA s0, d
  LW s0, 0(s0)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 16
  SLT s0, s0, zero
  XORI s0, s0, 1
  BNE s0, zero, bb36
  # implict jump to bb4
bb4:
  ADDI s0, zero, 1
  XORI s1, s0, 1
  BNE s1, zero, bb35
  # implict jump to bb5
bb5:
  SLTIU s1, zero, 1
  BNE s1, zero, bb34
  # implict jump to bb6
bb6:
  ADDI s1, zero, 63
  SLTI s1, s1, 102
  XORI s1, s1, 1
  XORI s1, s1, 1
  SLTIU s1, s1, 1
  BNE s1, zero, bb33
  # implict jump to bb7
bb7:
  SUBW s0, zero, s0
  XORI s0, s0, -1
  SLTIU s0, s0, 1
  BNE s0, zero, bb32
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  SLTI s0, zero, 1
  XORI s0, s0, 1
  BNE s0, zero, bb31
  # implict jump to bb9
bb9:
  SLTI s0, zero, 1
  XORI s0, s0, 1
  # implict jump to bb10
bb10:
  BNE s0, zero, bb30
  # implict jump to bb11
bb11:
  ADDI s0, zero, 2
  SLTI s0, s0, 1
  XORI s0, s0, 1
  BNE s0, zero, bb29
  # implict jump to bb12
bb12:
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  BNE s0, zero, bb28
  # implict jump to bb14
bb14:
  SLTIU s0, zero, 1
  BNE s0, zero, bb27
  # implict jump to bb15
bb15:
  ADD s1, zero, zero
  # implict jump to bb16
bb16:
  BNE s1, zero, bb26
  # implict jump to bb17
bb17:
  ADDI s1, zero, 4
  SLTI s1, s1, 4
  XORI s1, s1, 1
  # implict jump to bb18
bb18:
  BNE s1, zero, bb25
  # implict jump to bb19
bb19:
  BNE s0, zero, bb24
  # implict jump to bb20
bb20:
  ADD s0, zero, zero
  # implict jump to bb21
bb21:
  BNE s0, zero, bb23
  # implict jump to bb22
bb22:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb23:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb22
bb24:
  ADDI s0, zero, 1
  JAL zero, bb21
bb25:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb19
bb26:
  ADDI s1, zero, 1
  JAL zero, bb18
bb27:
  ADD s1, zero, zero
  JAL zero, bb16
bb28:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb14
bb29:
  ADDI s0, zero, 1
  JAL zero, bb13
bb30:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb11
bb31:
  ADDI s0, zero, 1
  JAL zero, bb10
bb32:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb8
bb33:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb7
bb34:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb6
bb35:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb5
bb36:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb4
bb37:
  LA s0, d
  ADDI s1, zero, 3
  SW s1, 0(s0)
  JAL zero, bb1
