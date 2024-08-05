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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA a0, a
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LA a0, b
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, a
  ADDI s0, zero, 0
  SW s0, 0(a0)
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, a
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LA a0, b
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LA a0, a
  SW zero, 0(a0)
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, d
  ADDI s0, zero, 2
  SW s0, 0(a0)
  ADDI a0, zero, 1
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb31
  # implict jump to bb1
bb1:
  LA a0, d
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 1
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  LA a0, d
  ADDI s0, zero, 4
  SW s0, 0(a0)
  # implict jump to bb3
bb3:
  LA a0, d
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 16
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb30
  # implict jump to bb4
bb4:
  ADDI s0, zero, 1
  XORI a0, s0, 1
  BNE a0, zero, bb29
  # implict jump to bb5
bb5:
  SLTIU a0, zero, 1
  BNE a0, zero, bb28
  # implict jump to bb6
bb6:
  ADDI a0, zero, 63
  SLTI a0, a0, 102
  XORI a0, a0, 1
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb7
bb7:
  SUBW a0, zero, s0
  XORI a0, a0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb8
bb8:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  SLTI a0, zero, 1
  XORI a0, a0, 1
  BNE a0, zero, bb25
  # implict jump to bb9
bb9:
  SLTI a0, zero, 1
  XORI a0, a0, 1
  # implict jump to bb10
bb10:
  BNE a0, zero, bb24
  # implict jump to bb11
bb11:
  ADDI a0, zero, 2
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb12
bb12:
  ADD a0, zero, zero
  # implict jump to bb13
bb13:
  BNE a0, zero, bb22
  # implict jump to bb14
bb14:
  ADDI a0, zero, 4
  SLTI a0, a0, 4
  XORI a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb15
bb15:
  SLTIU a0, zero, 1
  BNE a0, zero, bb20
  # implict jump to bb16
bb16:
  ADD a0, zero, zero
  # implict jump to bb17
bb17:
  BNE a0, zero, bb19
  # implict jump to bb18
bb18:
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb19:
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb18
bb20:
  ADDI a0, zero, 1
  JAL zero, bb17
bb21:
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb15
bb22:
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb14
bb23:
  ADDI a0, zero, 1
  JAL zero, bb13
bb24:
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb11
bb25:
  ADDI a0, zero, 1
  JAL zero, bb10
bb26:
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb8
bb27:
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb7
bb28:
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb6
bb29:
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb5
bb30:
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb4
bb31:
  LA a0, d
  ADDI s0, zero, 3
  SW s0, 0(a0)
  JAL zero, bb1
