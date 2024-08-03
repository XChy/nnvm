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
  ADD s0, a0, zero
  ADDI a0, zero, 1
  SUBW s1, s0, a0
  SLLIW a0, s1, 2
  ADDIW a0, a0, 8
  ADDI t5, sp, 0
  ADD s0, t5, a0
  ADDI a0, zero, 0
  SW a0, 0(s0)
  BNE s1, zero, bb7
  # implict jump to bb2
bb2:
  ADDI s0, zero, 2
  ADD a0, zero, zero
  # implict jump to bb3
bb3:
  ADD s1, a0, zero
  SLLIW a0, s0, 2
  ADDI t5, sp, 0
  ADD s3, t5, a0
  LW s2, 0(s3)
  ADDI a0, zero, 1
  SUBW a0, s0, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW s2, s2, a0
  ADDI a0, zero, 2
  SUBW a0, s0, a0
  SLLIW a0, a0, 2
  ADDI t5, sp, 0
  ADD a0, t5, a0
  LW a0, 0(a0)
  ADDW a0, s2, a0
  SW a0, 0(s3)
  ADDW s1, s1, a0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s0, 1
  SLTI a0, s0, 20
  BNE a0, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD a0, s1, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb6:
  ADD a0, s1, zero
  JAL zero, bb3
bb7:
  ADD a0, s1, zero
  JAL zero, bb1
