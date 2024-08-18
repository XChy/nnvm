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
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  LA s1, b
  ADDI t0, zero, 3
  LA s2, a
  ADDI t1, zero, 0
  SW t0, 0(s1)
  ADD a0, zero, zero
  SW t1, 0(s2)
  ADDI s4, zero, 3
  LA s0, d
  ADDI s3, zero, 1
  ADDI s5, zero, 2
  CALL putint
  ADDI a0, zero, 32
  SLTI s3, s3, 1
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  SW s4, 0(s1)
  ADD a0, zero, zero
  SW zero, 0(s2)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SW s5, 0(s0)
  BEQ s3, zero, bb14
  # implict jump to bb1
bb1:   # loop depth 0
  LW a0, 0(s0)
  ADDI t0, zero, 1
  SLTI s1, t0, 1
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BEQ s1, zero, bb3
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 4
  SW t0, 0(s0)
  # implict jump to bb3
bb3:   # loop depth 0
  LW a0, 0(s0)
  ADDI s0, zero, 16
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BGE s0, zero, bb13
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t0, zero, 63
  ADDI a0, zero, 68
  SLTI s0, t0, 102
  CALL putch
  XORI t0, s0, 1
  XORI t0, t0, 1
  BEQ t0, zero, bb12
  # implict jump to bb5
bb5:   # loop depth 0
  ADDI a0, zero, 70
  SLTI t0, zero, 1
  SLTI s1, zero, 1
  XORI s0, t0, 1
  CALL putch
  XORI t0, s1, 1
  ADDI a0, zero, 10
  OR s0, t0, s0
  CALL putch
  ADDI a0, zero, 67
  CALL putch
  BNE s0, zero, bb11
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 2
  SLTI t0, t0, 1
  BEQ t0, zero, bb10
  # implict jump to bb7
bb7:   # loop depth 0
  ADDI t0, zero, 4
  SLTI t0, t0, 4
  BEQ t0, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 75
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:   # loop depth 0
  ADDI a0, zero, 74
  CALL putch
  JAL zero, bb8
bb10:   # loop depth 0
  ADDI a0, zero, 73
  CALL putch
  JAL zero, bb7
bb11:   # loop depth 0
  ADDI a0, zero, 72
  CALL putch
  JAL zero, bb6
bb12:   # loop depth 0
  ADDI a0, zero, 69
  CALL putch
  JAL zero, bb5
bb13:   # loop depth 0
  ADDI a0, zero, 65
  CALL putch
  JAL zero, bb4
bb14:   # loop depth 0
  ADDI t0, zero, 3
  SW t0, 0(s0)
  JAL zero, bb1
