.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -160
  SD ra, 120(sp)
  SD s0, 128(sp)
  SD s1, 136(sp)
  SD s2, 144(sp)
  SD s3, 152(sp)
  LA a0, n
  ADDI s0, zero, 10
  SW s0, 0(a0)
  ADDI a0, zero, 4
  SW a0, 80(sp)
  ADDI a0, zero, 3
  SW a0, 84(sp)
  ADDI a0, zero, 9
  SW a0, 88(sp)
  ADDI a0, zero, 2
  SW a0, 92(sp)
  ADDI a0, zero, 0
  SW a0, 96(sp)
  ADDI a0, zero, 1
  SW a0, 100(sp)
  ADDI a0, zero, 6
  SW a0, 104(sp)
  ADDI a0, zero, 5
  SW a0, 108(sp)
  ADDI a0, zero, 7
  SW a0, 112(sp)
  ADDI a0, zero, 8
  SW a0, 116(sp)
  ADD a0, zero, zero
  # implict jump to bb1
bb1:
  SLLIW s0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  SW zero, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 10
  BNE s0, zero, bb16
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s0, a0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  LW s1, 0(s0)
  ADDIW s1, s1, 1
  SW s1, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 10
  BNE s0, zero, bb15
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  # implict jump to bb5
bb5:
  SLLIW s0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, s0
  LW s1, 0(s0)
  ADDI s2, zero, 1
  SUBW s2, a0, s2
  SLLIW s2, s2, 2
  ADDI t5, sp, 0
  ADD s2, t5, s2
  LW s2, 0(s2)
  ADDW s1, s1, s2
  SW s1, 0(s0)
  ADDIW a0, a0, 1
  SLTI s0, a0, 10
  BNE s0, zero, bb14
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  # implict jump to bb7
bb7:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDI t5, sp, 80
  ADD s0, t5, s0
  LW s0, 0(s0)
  SLLIW s1, s0, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SW s2, 0(s1)
  LW s1, 0(s1)
  SLLIW s1, s1, 2
  ADDI t5, sp, 40
  ADD s1, t5, s1
  SW s0, 0(s1)
  BLT zero, a0, bb13
  # implict jump to bb8
bb8:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb10
  # implict jump to bb9
bb9:
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb10:
  ADD a0, zero, zero
  # implict jump to bb11
bb11:
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 40
  ADD a0, t5, a0
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW a0, s0, 1
  LA s0, n
  LW s0, 0(s0)
  BLT a0, s0, bb12
  JAL zero, bb9
bb12:
  JAL zero, bb11
bb13:
  JAL zero, bb7
bb14:
  JAL zero, bb5
bb15:
  JAL zero, bb3
bb16:
  JAL zero, bb1
