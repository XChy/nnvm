.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global findSmallest
.global main
.section .bss
array:
.space 4000
.section .data

.section .text
findSmallest:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  BEQ a0, a1, bb19
  # implict jump to bb1
bb1:   # loop depth 0
  LA s0, array
  ADDIW t1, a0, 1
  SLLIW t0, a0, 2
  SH2ADD a4, a1, s0
  LW a5, 0(a4)
  BLT a0, a1, bb12
  # implict jump to bb2
bb2:   # loop depth 0
  ADD s2, a0, zero
  # implict jump to bb3
bb3:   # loop depth 0
  ADD t0, s0, t0
  LW t2, 0(t0)
  LW a5, 0(a4)
  SW a5, 0(t0)
  SW t2, 0(a4)
  BEQ a2, s2, bb8
  # implict jump to bb4
bb4:   # loop depth 0
  BLT a2, s2, bb7
  # implict jump to bb5
bb5:   # loop depth 0
  ADD a0, t1, zero
  CALL findSmallest
  # implict jump to bb6
bb6:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb7:   # loop depth 0
  ADDIW a1, s2, -1
  CALL findSmallest
  JAL zero, bb6
bb8:   # loop depth 0
  ADDI t0, zero, 0
  BLT t0, s2, bb9
  JAL zero, bb6
bb9:   # loop depth 0
  ADD s1, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  SH2ADD t0, s1, s0
  ADDIW s1, s1, 1
  LW a0, 0(t0)
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  BLT s1, s2, bb11
  JAL zero, bb6
bb11:   # loop depth 1
  JAL zero, bb10
bb12:   # loop depth 0
  ADD t2, a0, zero
  ADD s2, a0, zero
  # implict jump to bb13
bb13:   # loop depth 1
  SH2ADD a6, t2, s0
  LW a7, 0(a6)
  BGE a5, a7, bb18
  # implict jump to bb14
bb14:   # loop depth 1
  # implict jump to bb15
bb15:   # loop depth 1
  ADDIW t2, t2, 1
  ADDIW t1, s2, 1
  SLLIW t0, s2, 2
  BLT t2, a1, bb17
  # implict jump to bb16
bb16:   # loop depth 1
  JAL zero, bb3
bb17:   # loop depth 1
  JAL zero, bb13
bb18:   # loop depth 1
  LW a7, 0(a6)
  ADD t0, s0, t0
  ADD s2, t1, zero
  LW t1, 0(t0)
  SW t1, 0(a6)
  SW a7, 0(t0)
  JAL zero, bb15
bb19:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  BLT zero, s2, bb22
  # implict jump to bb21
bb21:   # loop depth 0
  ADDIW a1, s2, -1
  ADD a3, s2, zero
  ADD a2, s3, zero
  ADD a0, zero, zero
  CALL findSmallest
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb22:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb23
bb23:   # loop depth 1
  LA s1, array
  CALL getint
  ADDIW t0, s0, 1
  SH2ADD t1, s0, s1
  SW a0, 0(t1)
  BLT t0, s2, bb24
  JAL zero, bb21
bb24:   # loop depth 1
  ADD s0, t0, zero
  JAL zero, bb23
