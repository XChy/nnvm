.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
a:
.space 16384
.section .data

.section .text
main:   # loop depth 0
  LUI t0, 1048572
  ADDIW t0, t0, -16
  ADD sp, sp, t0
  LUI t0, 4
  ADDIW t0, t0, 0
  ADD t0, t0, sp
  SD ra, 0(t0)
  ADDI t0, zero, 1024
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW t0, t0, -1
  BNE t0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI t0, zero, 1023
  # implict jump to bb3
bb3:   # loop depth 1
  ADDIW t0, t0, -1
  BNE t0, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI t0, zero, 1022
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW t0, t0, -1
  BNE t0, zero, bb13
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI t0, zero, 1021
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW t0, t0, -1
  BNE t0, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI t0, zero, 1
  ADDI t1, zero, 2
  SW t0, 0(sp)
  LUI t2, 1
  SW t1, 4(sp)
  ADDI t0, zero, 3
  SW zero, 8(sp)
  ADDIW t2, t2, -6
  SW zero, 12(sp)
  ADDI t1, zero, 4
  SW t0, 16(sp)
  ADD t0, zero, t2
  SW t1, 20(sp)
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW t0, t0, -1
  SLLIW t1, t0, 2
  ADDIW t1, t1, 24
  ADDI t6, sp, 0
  ADD t1, t6, t1
  SW zero, 0(t1)
  BNE t0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  LUI t0, 4
  LUI t2, 1
  LA t1, a
  LUI a1, 4
  ADDIW t0, t0, -384
  ADDIW t2, t2, -96
  ADDIW a1, a1, -4
  ADDI a0, zero, 3
  ADD t0, t1, t0
  SW t2, 20(t1)
  ADDI t2, zero, 7
  ADD t1, t1, a1
  SW a0, 0(t0)
  ADDI a0, zero, 3
  SW t2, 0(t1)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 32(sp)
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t0, 4
  ADDIW t0, t0, 16
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:   # loop depth 1
  JAL zero, bb9
bb12:   # loop depth 1
  JAL zero, bb7
bb13:   # loop depth 1
  JAL zero, bb5
bb14:   # loop depth 1
  JAL zero, bb3
bb15:   # loop depth 1
  JAL zero, bb1
