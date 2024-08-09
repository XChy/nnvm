.global main
.section .bss
a:
.space 16384
.section .data

.section .text
main:   # loop depth 0
  LUI t0, 1048572
  ADDIW t0, t0, -64
  ADD sp, sp, t0
  LUI t6, 4
  ADDIW t6, t6, 0
  ADD t6, t6, sp
  SD ra, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  SD s0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  SD s1, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  SD s2, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  SD s3, 0(t6)
  LUI a0, 4
  ADDIW a0, a0, 40
  ADD a0, a0, sp
  SD s4, 0(a0)
  LUI a0, 4
  ADDIW a0, a0, 48
  ADD a0, a0, sp
  SD s5, 0(a0)
  ADDI a0, zero, 1024
  # implict jump to bb1
bb1:   # loop depth 1
  ADDIW a0, a0, -1
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 1023
  # implict jump to bb3
bb3:   # loop depth 1
  ADDIW a0, a0, -1
  BNE a0, zero, bb14
  # implict jump to bb4
bb4:   # loop depth 0
  ADDI a0, zero, 1022
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW a0, a0, -1
  BNE a0, zero, bb13
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a0, zero, 1021
  # implict jump to bb7
bb7:   # loop depth 1
  ADDIW a0, a0, -1
  BNE a0, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 0
  ADDI a0, zero, 1
  ADDI s0, zero, 2
  SW a0, 0(sp)
  ADDI a0, zero, 3
  SW s0, 4(sp)
  LUI s1, 1
  SW zero, 8(sp)
  ADDI s0, zero, 4
  SW zero, 12(sp)
  ADDIW s1, s1, -6
  SW a0, 16(sp)
  ADD a0, zero, s1
  SW s0, 20(sp)
  # implict jump to bb9
bb9:   # loop depth 1
  ADDIW a0, a0, -1
  SLLIW s0, a0, 2
  ADDIW s0, s0, 24
  ADDI t6, sp, 0
  ADD s0, t6, s0
  SW zero, 0(s0)
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  LA a0, a
  LUI s0, 1
  LUI s1, 4
  LA s2, a
  LUI s4, 4
  LA s5, a
  ADDIW s0, s0, -96
  ADDIW s1, s1, -384
  ADDI s3, zero, 3
  ADDIW s4, s4, -4
  SW s0, 20(a0)
  ADD a0, s2, s1
  ADDI s1, zero, 7
  ADD s0, s5, s4
  SW s3, 0(a0)
  ADDI a0, zero, 3
  SW s1, 0(s0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 32(sp)
  LUI ra, 4
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t6, 4
  ADDIW t6, t6, 8
  ADD t6, t6, sp
  LD s0, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 16
  ADD t6, t6, sp
  LD s1, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 24
  ADD t6, t6, sp
  LD s2, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 32
  ADD t6, t6, sp
  LD s3, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 40
  ADD t6, t6, sp
  LD s4, 0(t6)
  LUI t6, 4
  ADDIW t6, t6, 48
  ADD t6, t6, sp
  LD s5, 0(t6)
  LUI t0, 4
  ADDIW t0, t0, 64
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
