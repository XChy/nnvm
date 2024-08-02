.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -128
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  ADDI a0, zero, 1
  SW a0, 0(sp)
  ADDI a0, zero, 2
  SW a0, 4(sp)
  ADDI a0, zero, 18
  # implict jump to bb1
bb1:
  ADDI s0, zero, 1
  SUBW a0, a0, s0
  SLLIW s0, a0, 2
  ADDIW s0, s0, 8
  ADDI t5, sp, 0
  ADD s0, t5, s0
  ADDI s1, zero, 0
  SW s1, 0(s0)
  BNE a0, zero, bb6
  # implict jump to bb2
bb2:
  ADDI s0, zero, 2
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  SLLIW s1, s0, 2
  ADDI t5, sp, 0
  ADD s1, t5, s1
  LW s2, 0(s1)
  ADDI s3, zero, 1
  SUBW s3, s0, s3
  SLLIW s3, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s2, s2, s3
  ADDI s3, zero, 2
  SUBW s3, s0, s3
  SLLIW s3, s3, 2
  ADDI t5, sp, 0
  ADD s3, t5, s3
  LW s3, 0(s3)
  ADDW s2, s2, s3
  SW s2, 0(s1)
  ADDW s1, a0, s2
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW a0, s0, 1
  SLTI s0, a0, 20
  BNE s0, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s1, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb5:
  ADD s0, a0, zero
  ADD a0, s1, zero
  JAL zero, bb3
bb6:
  JAL zero, bb1
