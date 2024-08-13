.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  LA s1, b
  ADDI s0, zero, 2
  LA s3, a
  ADDI s2, zero, 3
  SW s0, 0(a0)
  ADDI s0, zero, 0
  SW s2, 0(s1)
  ADD a0, zero, zero
  SW s0, 0(s3)
  LA s9, b
  LA s1, a
  LA s3, b
  ADDI s2, zero, 2
  LA s5, a
  ADDI s4, zero, 3
  LA s8, b
  LA s6, d
  ADDI s0, zero, 1
  ADDI s7, zero, 2
  CALL putint
  SLTI s0, s0, 1
  ADDI a0, zero, 32
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
  BEQ s0, zero, bb22
  # implict jump to bb1
bb1:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 1
  SLTI s0, s0, 1
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BEQ s0, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 4
  SW s0, 0(a0)
  # implict jump to bb3
bb3:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 16
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BGE s0, zero, bb21
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI s0, zero, 1
  XORI a0, s0, 1
  BNE a0, zero, bb20
  # implict jump to bb5
bb5:   # loop depth 0
  BEQ zero, zero, bb19
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 63
  SLTI a0, a0, 102
  XORI a0, a0, 1
  XORI a0, a0, 1
  BEQ a0, zero, bb18
  # implict jump to bb7
bb7:   # loop depth 0
  SUBW a0, zero, s0
  XORI a0, a0, -1
  BEQ a0, zero, bb17
  # implict jump to bb8
bb8:   # loop depth 0
  SLTI s1, zero, 1
  SLTI s0, zero, 1
  ADDI a0, zero, 10
  XORI s1, s1, 1
  XORI s0, s0, 1
  CALL putch
  ADDI a0, zero, 67
  OR s0, s0, s1
  CALL putch
  BNE s0, zero, bb16
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI a0, zero, 2
  SLTI a0, a0, 1
  BEQ a0, zero, bb15
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, 4
  SLTI a0, a0, 4
  BEQ a0, zero, bb14
  # implict jump to bb11
bb11:   # loop depth 0
  BEQ zero, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
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
bb13:   # loop depth 0
  ADDI a0, zero, 75
  CALL putch
  JAL zero, bb12
bb14:   # loop depth 0
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb11
bb15:   # loop depth 0
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb10
bb16:   # loop depth 0
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb9
bb17:   # loop depth 0
  ADDI a0, zero, 70
  CALL putch
  JAL zero, bb8
bb18:   # loop depth 0
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb7
bb19:   # loop depth 0
  ADDI a0, zero, 68
  CALL putch
  JAL zero, bb6
bb20:   # loop depth 0
  ADDI a0, zero, 67
  CALL putch
  JAL zero, bb5
bb21:   # loop depth 0
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb4
bb22:   # loop depth 0
  LA a0, d
  ADDI s0, zero, 3
  SW s0, 0(a0)
  JAL zero, bb1
