.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
lim:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  LA s0, lim
  CALL getint
  ADD t0, a0, zero
  ADDI a0, zero, 22
  SW t0, 0(s0)
  CALL _sysy_starttime
  LW a0, 0(s0)
  SLTI t0, a0, 1
  BEQ t0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 27
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI t1, zero, 1
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADD t2, zero, zero
  ADD t0, t1, zero
  # implict jump to bb5
bb5:   # loop depth 2
  XORI a1, t0, 1
  BEQ a1, zero, bb15
  # implict jump to bb6
bb6:   # loop depth 2
  ADDIW t2, t2, 1
  ANDI a1, t0, 1
  BEQ a1, zero, bb14
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI a1, zero, 3
  MULW t0, t0, a1
  ADDIW t0, t0, 1
  BGE a0, t0, bb12
  # implict jump to bb8
bb8:   # loop depth 1
  ADD t2, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LUI a1, 244141
  ADDIW a1, a1, -1529
  ADDW t0, s0, t2
  REMW s0, t0, a1
  ADDIW t1, t1, 1
  BGE a0, t1, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb4
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  JAL zero, bb5
bb14:   # loop depth 2
  SRAIW a1, t0, 31
  SRLIW a1, a1, 31
  ADD t0, t0, a1
  SRAIW t0, t0, 1
  JAL zero, bb5
bb15:   # loop depth 1
  JAL zero, bb9
