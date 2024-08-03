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
  ADDI a0, zero, 0
  SW a0, 0(sp)
  ADDI a0, zero, 0
  SW a0, 4(sp)
  ADDI a0, zero, 0
  SW a0, 8(sp)
  ADDI a0, zero, 0
  SW a0, 12(sp)
  ADDI a0, zero, 0
  SW a0, 16(sp)
  ADDI a0, zero, 0
  SW a0, 20(sp)
  ADDI a0, zero, 0
  SW a0, 24(sp)
  ADDI a0, zero, 0
  SW a0, 28(sp)
  ADDI a0, zero, 0
  SW a0, 32(sp)
  ADDI a0, zero, 0
  SW a0, 36(sp)
  LW a0, 80(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 84(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDIW s0, s0, 1
  SW s0, 0(a0)
  LW a0, 88(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 92(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDIW s0, s0, 1
  SW s0, 0(a0)
  LW a0, 96(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDIW s0, s0, 1
  SW s0, 0(a0)
  LW a0, 100(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 104(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 108(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 112(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD s0, t5, a0
  LW a0, 0(s0)
  ADDIW a0, a0, 1
  SW a0, 0(s0)
  LW a0, 116(sp)
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW s0, 0(a0)
  ADDIW s0, s0, 1
  SW s0, 0(a0)
  LW s0, 4(sp)
  LW a0, 0(sp)
  ADDW a0, s0, a0
  SW a0, 4(sp)
  LW s0, 8(sp)
  LW a0, 4(sp)
  ADDW a0, s0, a0
  SW a0, 8(sp)
  LW a0, 12(sp)
  LW s0, 8(sp)
  ADDW a0, a0, s0
  SW a0, 12(sp)
  LW s0, 16(sp)
  LW a0, 12(sp)
  ADDW a0, s0, a0
  SW a0, 16(sp)
  LW a0, 20(sp)
  LW s0, 16(sp)
  ADDW a0, a0, s0
  SW a0, 20(sp)
  LW s0, 24(sp)
  LW a0, 20(sp)
  ADDW a0, s0, a0
  SW a0, 24(sp)
  LW a0, 28(sp)
  LW s0, 24(sp)
  ADDW a0, a0, s0
  SW a0, 28(sp)
  LW s0, 32(sp)
  LW a0, 28(sp)
  ADDW a0, s0, a0
  SW a0, 32(sp)
  LW a0, 36(sp)
  LW s0, 32(sp)
  ADDW a0, a0, s0
  SW a0, 36(sp)
  ADDI a0, zero, 10
  # implict jump to bb1
bb1:
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s0, s0, a0
  SLLIW a0, s0, 2
  ADDI t5, sp, 80
  ADD a0, t5, a0
  LW s3, 0(a0)
  SLLIW a0, s3, 2
  ADDI t5, sp, 0
  ADD s2, t5, a0
  LW s1, 0(s2)
  ADDI a0, zero, 1
  SUBW a0, s1, a0
  SW a0, 0(s2)
  LW a0, 0(s2)
  SLLIW a0, a0, 2
  ADDI t5, sp, 40
  ADD a0, t5, a0
  SW s3, 0(a0)
  BLT zero, s0, bb7
  # implict jump to bb2
bb2:
  LA a0, n
  LW a0, 0(a0)
  BLT zero, a0, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 120(sp)
  LD s0, 128(sp)
  LD s1, 136(sp)
  LD s2, 144(sp)
  LD s3, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
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
  BLT s0, a0, bb6
  JAL zero, bb3
bb6:
  ADD a0, s0, zero
  JAL zero, bb5
bb7:
  ADD a0, s0, zero
  JAL zero, bb1
