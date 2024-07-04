.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -160
  SD ra, 104(sp)
  SD s4, 112(sp)
  SD s3, 120(sp)
  SD s2, 128(sp)
  SD s1, 136(sp)
  SD s0, 144(sp)
  ADDI s0, zero, 2
  SW s0, 96(sp)
  ADDI t5, sp, 16
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 18
  SW s0, 8(sp)
  JAL zero, bb1
bb1:
  LW s0, 8(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  LW s0, 8(sp)
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  SW s2, 8(sp)
  ADDI s0, zero, 4
  MULW s1, s2, s0
  ADDIW s0, s1, 8
  ADDI t6, sp, 16
  ADD s1, t6, s0
  SW zero, 0(s1)
  JAL zero, bb1
bb3:
  SW zero, 0(sp)
  JAL zero, bb4
bb4:
  LW s0, 96(sp)
  SLTI s1, s0, 20
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 96(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t5, sp, 16
  ADD s0, t5, s2
  LW s1, 96(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 16
  ADD s1, t6, s3
  LW s2, 0(s1)
  LW s1, 96(sp)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  ADDI s1, zero, 4
  MULW s3, s4, s1
  ADDI t5, sp, 16
  ADD s1, t5, s3
  LW s3, 0(s1)
  ADDW s1, s2, s3
  LW s2, 96(sp)
  ADDI s3, zero, 2
  SUBW s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s4, s2
  ADDI t6, sp, 16
  ADD s2, t6, s3
  LW s3, 0(s2)
  ADDW s2, s1, s3
  SW s2, 0(s0)
  LW s0, 0(sp)
  LW s1, 96(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 16
  ADD s1, t5, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 0(sp)
  LW s0, 96(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 16
  ADD s0, t6, s2
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW s0, 96(sp)
  ADDIW s1, s0, 1
  SW s1, 96(sp)
  JAL zero, bb4
bb6:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 104(sp)
  LD s4, 112(sp)
  LD s3, 120(sp)
  LD s2, 128(sp)
  LD s1, 136(sp)
  LD s0, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
