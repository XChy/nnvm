.global main
.section .bss


.section .data
b:
.word 0x00000001
a:
.word 0xffffffff
.section .text
main:
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
bb1:
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
  LW t0, 0(t0)
  ADD a0, t0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:
  ADDI a0, zero, 5
  ADD s0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  ADD s0, a0, zero
  LA a0, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, a
  SW s2, 0(a0)
  BNE s2, zero, bb21
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  BNE a0, zero, bb20
  # implict jump to bb6
bb6:
  ADD a0, zero, zero
  # implict jump to bb7
bb7:
  BNE a0, zero, bb19
  # implict jump to bb8
bb8:
  LA a0, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, a
  SW s2, 0(a0)
  SLTI a0, s2, 14
  BNE a0, zero, bb18
  # implict jump to bb9
bb9:
  LA a0, a
  LW a0, 0(a0)
  ADDIW s1, a0, 1
  LA a0, a
  SW s1, 0(a0)
  BNE s1, zero, bb17
  # implict jump to bb10
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s1, a0, zero
  ADD a0, s1, zero
  # implict jump to bb12
bb12:
  ADD s2, a0, zero
  BNE s1, zero, bb16
  # implict jump to bb13
bb13:
  LA a0, a
  LW a0, 0(a0)
  ADDIW s1, a0, 1
  LA a0, a
  SW s1, 0(a0)
  # implict jump to bb14
bb14:
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLT a0, s0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb15
  JAL zero, bb1
bb15:
  ADD a0, s0, zero
  ADD s0, s2, zero
  JAL zero, bb3
bb16:
  LA a0, a
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  SLLIW s1, a0, 1
  LA a0, b
  SW s1, 0(a0)
  JAL zero, bb14
bb17:
  LA a0, a
  LW s1, 0(a0)
  ADDIW s2, s1, 1
  LA a0, a
  SW s2, 0(a0)
  ADDIW s1, s1, 2
  LA a0, a
  SW s1, 0(a0)
  SUBW a0, s2, s1
  ADDIW a0, a0, 1
  SLTU a0, zero, a0
  JAL zero, bb11
bb18:
  ADD a0, s1, zero
  ADDI s1, zero, 1
  JAL zero, bb12
bb19:
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
bb20:
  LA a0, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, a
  SW s2, 0(a0)
  SLTU a0, zero, s2
  JAL zero, bb7
bb21:
  LA a0, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  LA a0, a
  SW s2, 0(a0)
  SLTU a0, zero, s2
  JAL zero, bb5
