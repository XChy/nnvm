.global main
.section .bss


.section .data
b:
.word 0x00000001
a:
.word 0xffffffff
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI a0, zero, 5
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, a
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA t0, a
  LW a0, 0(t0)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADDI s1, zero, 5
  ADD s0, zero, zero
  # implict jump to bb3
bb3:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, a
  SW a0, 0(s2)
  BNE a0, zero, bb21
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  BNE a0, zero, bb20
  # implict jump to bb6
bb6:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  BNE a0, zero, bb19
  # implict jump to bb8
bb8:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, a
  SW a0, 0(s2)
  SLTI a0, a0, 14
  BNE a0, zero, bb18
  # implict jump to bb9
bb9:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s0, a
  SW a0, 0(s0)
  BNE a0, zero, bb17
  # implict jump to bb10
bb10:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  ADD s0, a0, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BNE a0, zero, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, a
  SW a0, 0(s2)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDI a0, zero, 1
  SUBW s1, s1, a0
  SLT a0, s1, zero
  XORI a0, a0, 1
  BNE a0, zero, bb15
  JAL zero, bb1
bb15:   # loop depth 0
  JAL zero, bb3
bb16:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  SLLIW a0, a0, 1
  LA s2, b
  SW a0, 0(s2)
  JAL zero, bb14
bb17:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW s0, a0, 1
  LA s2, a
  SW s0, 0(s2)
  ADDIW a0, a0, 2
  LA s2, a
  SW a0, 0(s2)
  SUBW a0, s0, a0
  ADDIW a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb11
bb18:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb12
bb19:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb8
bb20:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, a
  SW a0, 0(s2)
  SLTU a0, zero, a0
  JAL zero, bb7
bb21:   # loop depth 1
  LA a0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  LA s2, a
  SW a0, 0(s2)
  SLTU a0, zero, a0
  JAL zero, bb5
