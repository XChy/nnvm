.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss



.section .data
size:
.word 0x000003e8
multi:
.word 0x00000002
loopCount:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  LA s0, loopCount
  CALL getint
  ADD t0, a0, zero
  ADDI s1, zero, 0
  ADDI a0, zero, 1016
  SW t0, 0(s0)
  CALL _sysy_starttime
  LW a0, 0(s0)
  BLT s1, a0, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 1031
  CALL _sysy_stoptime
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD t2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LA t0, multi
  LA a2, size
  ADDI a4, zero, 1000
  LW a1, 0(t0)
  ADD t1, zero, zero
  ADD t0, zero, zero
  MULW a1, t2, a1
  LW a2, 0(a2)
  SRAIW a3, a1, 31
  SRLIW a3, a3, 31
  ADD a1, a1, a3
  SRAIW a1, a1, 1
  MULW a1, a1, a4
  DIVW a1, a1, a2
  # implict jump to bb5
bb5:   # loop depth 2
  ADDIW t1, t1, 1
  ADDW t0, t0, a1
  SLTI a2, t1, 300
  BNE a2, zero, bb9
  # implict jump to bb6
bb6:   # loop depth 1
  ADDI t1, zero, 300
  LUI a1, 524264
  DIVW t0, t0, t1
  ADDIW a1, a1, 3
  ADDIW t2, t2, 1
  ADDW t0, s0, t0
  REMW s0, t0, a1
  BLT t2, a0, bb8
  # implict jump to bb7
bb7:   # loop depth 0
  JAL zero, bb2
bb8:   # loop depth 1
  JAL zero, bb4
bb9:   # loop depth 2
  JAL zero, bb5
