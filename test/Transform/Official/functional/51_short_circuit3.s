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
  SD s6, 56(sp)
  LA s2, a
  ADDI t0, zero, 2
  LA s1, b
  ADDI t1, zero, 3
  SW t0, 0(s2)
  ADDI t0, zero, 0
  SW t1, 0(s1)
  ADD a0, zero, zero
  SW t0, 0(s2)
  ADDI s4, zero, 2
  ADDI s5, zero, 3
  LA s0, d
  ADDI s3, zero, 1
  ADDI s6, zero, 2
  CALL putint
  SLTI s3, s3, 1
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  SW s4, 0(s2)
  ADD a0, zero, zero
  SW s5, 0(s1)
  SW zero, 0(s2)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  SW s6, 0(s0)
  BEQ s3, zero, bb22
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
  BGE s0, zero, bb21
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI s0, zero, 1
  XORI t0, s0, 1
  BNE t0, zero, bb20
  # implict jump to bb5
bb5:   # loop depth 0
  BEQ zero, zero, bb19
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 63
  SLTI t0, t0, 102
  XORI t0, t0, 1
  XORI t0, t0, 1
  BEQ t0, zero, bb18
  # implict jump to bb7
bb7:   # loop depth 0
  SUBW t0, zero, s0
  XORI t0, t0, -1
  BEQ t0, zero, bb17
  # implict jump to bb8
bb8:   # loop depth 0
  SLTI t1, zero, 1
  SLTI t0, zero, 1
  ADDI a0, zero, 10
  XORI s1, t1, 1
  XORI s0, t0, 1
  CALL putch
  ADDI a0, zero, 67
  OR s0, s0, s1
  CALL putch
  BNE s0, zero, bb16
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI t0, zero, 2
  SLTI t0, t0, 1
  BEQ t0, zero, bb15
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI t0, zero, 4
  SLTI t0, t0, 4
  BEQ t0, zero, bb14
  # implict jump to bb11
bb11:   # loop depth 0
  BEQ zero, zero, bb13
  # implict jump to bb12
bb12:   # loop depth 0
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
  LD s6, 56(sp)
  ADDI sp, sp, 64
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
  ADDI t0, zero, 3
  SW t0, 0(s0)
  JAL zero, bb1
