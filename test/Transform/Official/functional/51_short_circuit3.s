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
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  LA a0, a
  ADDI s0, zero, 2
  LA s1, b
  ADDI s2, zero, 3
  LA s3, a
  SW s0, 0(a0)
  ADDI s0, zero, 0
  SW s2, 0(s1)
  ADD a0, zero, zero
  SW s0, 0(s3)
  LA s9, b
  LA s1, a
  ADDI s2, zero, 2
  LA s3, b
  ADDI s4, zero, 3
  LA s5, a
  LA s8, b
  LA s6, d
  ADDI s0, zero, 1
  ADDI s7, zero, 2
  CALL putint
  SLTI s0, s0, 1
  ADDI a0, zero, 32
  XORI s0, s0, 1
  CALL putch
  LW a0, 0(s9)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  SW s2, 0(s1)
  ADD a0, zero, zero
  SW s4, 0(s3)
  SW zero, 0(s5)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s8)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SW s7, 0(s6)
  BNE s0, zero, bb31
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 1
  SLTI s0, s0, 1
  LW a0, 0(a0)
  XORI s0, s0, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BNE s0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 4
  SW s0, 0(a0)
  # implict jump to bb3
bb3:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 16
  SLT s0, s0, zero
  LW a0, 0(a0)
  XORI s0, s0, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s0, zero, bb30
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI s0, zero, 1
  XORI a0, s0, 1
  BNE a0, zero, bb29
  # implict jump to bb5
bb5:   # loop depth 0
  SLTIU a0, zero, 1
  BNE a0, zero, bb28
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 63
  SLTI a0, a0, 102
  XORI a0, a0, 1
  XORI a0, a0, 1
  SLTIU a0, a0, 1
  BNE a0, zero, bb27
  # implict jump to bb7
bb7:   # loop depth 0
  SUBW a0, zero, s0
  XORI a0, a0, -1
  SLTIU a0, a0, 1
  BNE a0, zero, bb26
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 10
  SLTI s0, zero, 1
  XORI s0, s0, 1
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  BNE s0, zero, bb25
  # implict jump to bb9
bb9:   # loop depth 0
  SLTI a0, zero, 1
  XORI a0, a0, 1
  # implict jump to bb10
bb10:   # loop depth 0
  BNE a0, zero, bb24
  # implict jump to bb11
bb11:   # loop depth 0
  ADDI a0, zero, 2
  SLTI a0, a0, 1
  XORI a0, a0, 1
  BNE a0, zero, bb23
  # implict jump to bb12
bb12:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb13
bb13:   # loop depth 0
  BNE a0, zero, bb22
  # implict jump to bb14
bb14:   # loop depth 0
  ADDI a0, zero, 4
  SLTI a0, a0, 4
  XORI a0, a0, 1
  BNE a0, zero, bb21
  # implict jump to bb15
bb15:   # loop depth 0
  SLTIU a0, zero, 1
  BNE a0, zero, bb20
  # implict jump to bb16
bb16:   # loop depth 0
  ADD a0, zero, zero
  # implict jump to bb17
bb17:   # loop depth 0
  BNE a0, zero, bb19
  # implict jump to bb18
bb18:   # loop depth 0
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb19:   # loop depth 0
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb18
bb20:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb17
bb21:   # loop depth 0
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb15
bb22:   # loop depth 0
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb14
bb23:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb13
bb24:   # loop depth 0
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb11
bb25:   # loop depth 0
  ADDI a0, zero, 1
  JAL zero, bb10
bb26:   # loop depth 0
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb8
bb27:   # loop depth 0
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb7
bb28:   # loop depth 0
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb6
bb29:   # loop depth 0
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb5
bb30:   # loop depth 0
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb4
bb31:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 3
  SW s0, 0(a0)
  JAL zero, bb1
