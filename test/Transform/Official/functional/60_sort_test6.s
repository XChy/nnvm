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
  LA s0, n
  ADDI a0, zero, 10
  SW a0, 0(s0)
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
  ADD s0, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  SW zero, 0(a0)
  ADDIW s0, s0, 1
  SLTI a0, s0, 10
  BNE a0, zero, bb16
  # implict jump to bb2
bb2:
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  ADDIW a0, s1, 1
  SLTI s0, a0, 10
  BNE s0, zero, bb15
  # implict jump to bb4
bb4:
  ADDI a0, zero, 1
  # implict jump to bb5
bb5:
  ADD s1, a0, zero
  SLLIW a0, s1, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW s2, 0(s0)
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s2, a0
  SW a0, 0(s0)
  ADDIW s0, s1, 1
  SLTI a0, s0, 10
  BNE a0, zero, bb14
  # implict jump to bb6
bb6:
  ADDI a0, zero, 10
  # implict jump to bb7
bb7:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW a0, s1, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s0, 0(a0)
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD s3, t5, a0
  LW s2, 0(s3)
  ADDI a0, zero, 1
  SUBW a0, s2, a0
  SW a0, 0(s3)
  LW a0, 0(s3)
  SLLIW a0, a0, 2
  ADDI t5, sp, 40
  ADD a0, t5, a0
  SW s0, 0(a0)
  BLT zero, s1, bb13
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
  ADDIW s0, s0, 1
  LA a0, n
  LW a0, 0(a0)
  BLT s0, a0, bb12
  JAL zero, bb9
bb12:
  ADD a0, s0, zero
  JAL zero, bb11
bb13:
  ADD a0, s1, zero
  JAL zero, bb7
bb14:
  ADD a0, s0, zero
  JAL zero, bb5
bb15:
  JAL zero, bb3
bb16:
  ADD a0, s0, zero
  JAL zero, bb1
