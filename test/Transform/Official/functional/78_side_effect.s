.global main
.section .bss


.section .data
b:
.word 0x00000001
a:
.word 0xffffffff
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADDI a0, zero, 5
  SLT a0, a0, zero
  XORI a0, a0, 1
  BNE a0, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, a
  LA s0, b
  LA s1, a
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s1)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb2:   # loop depth 0
  ADD s0, zero, zero
  ADDI s1, zero, 5
  # implict jump to bb3
bb3:   # loop depth 1
  LA a0, a
  LA s2, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
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
  LA s3, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SLTI s2, a0, 14
  SW a0, 0(s3)
  BNE s2, zero, bb18
  # implict jump to bb9
bb9:   # loop depth 1
  LA a0, a
  LA s0, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  BNE a0, zero, bb17
  # implict jump to bb10
bb10:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb11
bb11:   # loop depth 1
  ADD a0, s0, zero
  # implict jump to bb12
bb12:   # loop depth 1
  BNE a0, zero, bb16
  # implict jump to bb13
bb13:   # loop depth 1
  LA a0, a
  LA s2, a
  LW a0, 0(a0)
  ADDIW a0, a0, 1
  SW a0, 0(s2)
  # implict jump to bb14
bb14:   # loop depth 1
  ADDIW s1, s1, -1
  SLT a0, s1, zero
  XORI a0, a0, 1
  BNE a0, zero, bb15
  JAL zero, bb1
bb15:   # loop depth 1
  JAL zero, bb3
bb16:   # loop depth 1
  LA a0, a
  LA s2, b
  LA s3, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s2)
  SLLIW a0, a0, 1
  SW a0, 0(s3)
  JAL zero, bb14
bb17:   # loop depth 1
  LA a0, a
  LA s3, a
  LA s4, a
  LW a0, 0(a0)
  ADDIW s0, a0, 2
  ADDIW a0, a0, 1
  SUBW s2, a0, s0
  SW a0, 0(s3)
  ADDIW a0, s2, 1
  SW s0, 0(s4)
  SLTU s0, zero, a0
  JAL zero, bb11
bb18:   # loop depth 1
  ADDI a0, zero, 1
  JAL zero, bb12
bb19:   # loop depth 1
  LA a0, a
  LA s2, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s2)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb8
bb20:   # loop depth 1
  LA a0, a
  LA s3, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  SLTU a0, zero, s2
  SW s2, 0(s3)
  JAL zero, bb7
bb21:   # loop depth 1
  LA a0, a
  LA s3, a
  LW a0, 0(a0)
  ADDIW s2, a0, 1
  SLTU a0, zero, s2
  SW s2, 0(s3)
  JAL zero, bb5
