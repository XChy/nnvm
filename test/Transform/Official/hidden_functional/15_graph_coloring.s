.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global graphColoring
.global main
.section .bss
.section .data
.section .text
graphColoring:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s0, a3, zero
  XORI t0, a2, 4
  ADD s4, a1, zero
  ADD s3, a0, zero
  BEQ t0, zero, bb7
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI s1, zero, 1
  ADDIW s5, a2, 1
  SH2ADD s2, a2, s0
  # implict jump to bb2
bb2:   # loop depth 1
  BGE s4, s1, bb4
  # implict jump to bb3
bb3:   # loop depth 0
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
bb4:   # loop depth 1
  ADD a3, s0, zero
  ADD a2, s5, zero
  ADD a1, s4, zero
  ADD a0, s3, zero
  SW s1, 0(s2)
  CALL graphColoring
  BNE a0, zero, bb6
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s1, s1, 1
  SW zero, 0(s2)
  JAL zero, bb2
bb6:   # loop depth 0
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADD a0, zero, zero
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 1
  SLTI t1, a0, 4
  BNE t1, zero, bb13
  # implict jump to bb9
bb9:   # loop depth 0
  ADDI t0, zero, 1
  # implict jump to bb10
bb10:   # loop depth 0
  BNE t0, zero, bb12
  # implict jump to bb11
bb11:   # loop depth 0
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
bb12:   # loop depth 0
  LW a0, 0(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 4(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 8(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW a0, 12(s0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb13:   # loop depth 1
  SLLIW a1, a0, 4
  ADDIW t2, a0, 1
  ADD t1, t2, zero
  SH2ADD a2, a0, s0
  ADD a0, s3, a1
  # implict jump to bb14
bb14:   # loop depth 2
  SLTI a1, t1, 4
  BNE a1, zero, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  ADD a0, t2, zero
  JAL zero, bb8
bb16:   # loop depth 2
  SH2ADD t0, t1, a0
  LW t0, 0(t0)
  BNE t0, zero, bb21
  # implict jump to bb17
bb17:   # loop depth 2
  ADD t0, zero, zero
  # implict jump to bb18
bb18:   # loop depth 2
  BNE t0, zero, bb20
  # implict jump to bb19
bb19:   # loop depth 2
  ADDIW t1, t1, 1
  JAL zero, bb14
bb20:   # loop depth 0
  ADD t0, zero, zero
  JAL zero, bb10
bb21:   # loop depth 2
  SH2ADD t0, t1, s0
  LW t0, 0(t0)
  LW a1, 0(a2)
  XOR t0, t0, a1
  SLTIU t0, t0, 1
  JAL zero, bb18
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 80(sp)
  ADDI t0, zero, 1
  SW zero, 16(sp)
  ADDI t1, zero, 1
  SW t0, 20(sp)
  ADDI t0, zero, 1
  SW t1, 24(sp)
  ADDI t1, zero, 1
  SW t0, 28(sp)
  SW t1, 32(sp)
  ADDI t0, zero, 1
  SW zero, 36(sp)
  ADDI t1, zero, 1
  SW t0, 40(sp)
  ADDI t0, zero, 1
  SW zero, 44(sp)
  ADDI t2, zero, 1
  SW t1, 48(sp)
  ADDI t1, zero, 1
  SW t0, 52(sp)
  ADDI t0, zero, 1
  SW zero, 56(sp)
  ADDI a3, sp, 0
  ADD a3, a3, zero
  SW t2, 60(sp)
  ADD a2, zero, zero
  SW t1, 64(sp)
  ADDI a1, zero, 3
  SW zero, 68(sp)
  ADDI a0, sp, 16
  ADD a0, a0, zero
  SW t0, 72(sp)
  SW zero, 76(sp)
  SW zero, 0(sp)
  SW zero, 4(sp)
  SW zero, 8(sp)
  SW zero, 12(sp)
  CALL graphColoring
  SLTU t0, zero, a0
  BEQ t0, zero, bb24
  # implict jump to bb23
bb23:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb24:   # loop depth 0
  ADDI a0, zero, 78
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 120
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 115
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  JAL zero, bb23
