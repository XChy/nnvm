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
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb15
  # implict jump to bb2
bb2:
  LUI a0, 1
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 1
  SW s0, 0(a0)
  ADDI a0, zero, 1023
  # implict jump to bb3
bb3:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI s1, 1
  ADDIW s1, s1, 4
  ADDW s0, s0, s1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb14
  # implict jump to bb4
bb4:
  LUI a0, 2
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 2
  SW s0, 0(a0)
  LUI a0, 2
  ADDIW a0, a0, 4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 3
  SW s0, 0(a0)
  ADDI a0, zero, 1022
  # implict jump to bb5
bb5:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI s1, 2
  ADDIW s1, s1, 8
  ADDW s0, s0, s1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb13
  # implict jump to bb6
bb6:
  LUI a0, 3
  ADDIW a0, a0, 0
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 4
  SW s0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, 4
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 5
  SW s0, 0(a0)
  LUI a0, 3
  ADDIW a0, a0, 8
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD a0, t5, a0
  ADDI s0, zero, 6
  SW s0, 0(a0)
  ADDI a0, zero, 1021
  # implict jump to bb7
bb7:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  LUI s1, 3
  ADDIW s1, s1, 12
  ADDW s0, s0, s1
  LUI t5, 4
  ADDIW t5, t5, 0
  ADD t5, t5, sp
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb12
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
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 24
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SW zero, 0(s0)
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:
  LA a0, a
  LUI s0, 1
  ADDIW s0, s0, -96
  SW s0, 20(a0)
  LUI a0, 4
  ADDIW a0, a0, -384
  LA s0, a
  ADD a0, s0, a0
  ADDI s0, zero, 3
  SW s0, 0(a0)
  LUI s0, 4
  ADDIW s0, s0, -4
  LA s1, a
  ADD s0, s1, s0
  ADDI s1, zero, 7
  SW s1, 0(s0)
  LUI s0, 2
  ADDIW s0, s0, 672
  LA s1, a
  ADD s0, s1, s0
  LW s0, 0(s0)
  ADDIW s0, s0, 9
  SW s0, 28(sp)
  LW a0, 0(a0)
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
  JAL zero, bb9
bb12:
  JAL zero, bb7
bb13:
  JAL zero, bb5
bb14:
  JAL zero, bb3
bb15:
  JAL zero, bb1
