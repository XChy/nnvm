.global main
.section .bss
a:
.space 16384
.section .data

.section .text
main:
  LUI t0, 1048568
  ADDIW t0, t0, -32
  ADD sp, sp, t0
  LUI t5, 8
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  SD ra, 0(t5)
  LUI a0, 8
  ADDIW a0, a0, 8
  ADD a0, a0, sp
  SD s0, 0(a0)
  LUI a0, 8
  ADDIW a0, a0, 16
  ADD a0, a0, sp
  SD s1, 0(a0)
  ADDI a0, zero, 1024
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW a0, s1, 2
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s0)
  BNE s1, zero, bb15
  # implict jump to bb2
bb2:
  LUI a0, 1
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 1
  SW a0, 0(s0)
  ADDI a0, zero, 1023
  # implict jump to bb3
bb3:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW s0, s1, 2
  LUI a0, 1
  ADDIW a0, a0, 4
  ADDW a0, s0, a0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s1, zero, bb14
  # implict jump to bb4
bb4:
  LUI a0, 2
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 2
  SW a0, 0(s0)
  LUI a0, 2
  ADDIW a0, a0, 4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 3
  SW a0, 0(s0)
  ADDI a0, zero, 1022
  # implict jump to bb5
bb5:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW s0, s1, 2
  LUI a0, 2
  ADDIW a0, a0, 8
  ADDW a0, s0, a0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s1, zero, bb13
  # implict jump to bb6
bb6:
  LUI a0, 3
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 4
  SW a0, 0(s0)
  LUI a0, 3
  ADDIW a0, a0, 4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 5
  SW a0, 0(s0)
  LUI a0, 3
  ADDIW a0, a0, 8
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, a0
  ADDI a0, zero, 6
  SW a0, 0(s0)
  ADDI a0, zero, 1021
  # implict jump to bb7
bb7:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW s0, s1, 2
  LUI a0, 3
  ADDIW a0, a0, 12
  ADDW a0, s0, a0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s1, zero, bb12
  # implict jump to bb8
bb8:
  ADDI a0, zero, 1
  SW a0, 0(sp)
  ADDI a0, zero, 2
  SW a0, 4(sp)
  SW zero, 8(sp)
  SW zero, 12(sp)
  ADDI a0, zero, 3
  SW a0, 16(sp)
  ADDI a0, zero, 4
  SW a0, 20(sp)
  LUI a0, 1
  ADDIW a0, a0, -6
  ADD a0, zero, a0
  # implict jump to bb9
bb9:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDIW a0, a0, 24
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  BNE s0, zero, bb11
  # implict jump to bb10
bb10:
  LA s0, a
  LUI a0, 1
  ADDIW a0, a0, -96
  SW a0, 20(s0)
  LUI s0, 4
  ADDIW s0, s0, -384
  LA a0, a
  ADD s1, a0, s0
  ADDI a0, zero, 3
  SW a0, 0(s1)
  LUI s0, 4
  ADDIW s0, s0, -4
  LA a0, a
  ADD s0, a0, s0
  ADDI a0, zero, 7
  SW a0, 0(s0)
  LUI s0, 2
  ADDIW s0, s0, 672
  LA a0, a
  ADD a0, a0, s0
  LW a0, 0(a0)
  ADDIW a0, a0, 9
  SW a0, 28(sp)
  LW a0, 0(s1)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW t0, 32(sp)
  ADD a0, t0, zero
  LUI ra, 8
  ADDIW ra, ra, 0
  ADD ra, ra, sp
  LD ra, 0(ra)
  LUI t5, 8
  ADDIW t5, t5, 8
  ADD t5, t5, sp
  LD s0, 0(t5)
  LUI t5, 8
  ADDIW t5, t5, 16
  ADD t5, t5, sp
  LD s1, 0(t5)
  LUI t0, 8
  ADDIW t0, t0, 32
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb11:
  ADD a0, s0, zero
  JAL zero, bb9
bb12:
  ADD a0, s1, zero
  JAL zero, bb7
bb13:
  ADD a0, s1, zero
  JAL zero, bb5
bb14:
  ADD a0, s1, zero
  JAL zero, bb3
bb15:
  ADD a0, s1, zero
  JAL zero, bb1
