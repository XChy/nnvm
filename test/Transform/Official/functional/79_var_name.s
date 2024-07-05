.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -144
  SD ra, 80(sp)
  SD s4, 88(sp)
  SD s3, 96(sp)
  SD s2, 104(sp)
  SD s6, 112(sp)
  SD s1, 120(sp)
  SD s5, 128(sp)
  SD s0, 136(sp)
  ADDI t5, sp, 0
  ADD s0, t5, zero
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 18
  JAL zero, bb1
bb1:
  XOR s1, s0, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  SUBW s2, s0, s1
  ADDI s1, zero, 4
  MULW s3, s2, s1
  ADDIW s1, s3, 8
  ADDI t6, sp, 0
  ADD s3, t6, s1
  SW zero, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  ADDI s1, zero, 2
  JAL zero, bb4
bb4:
  SLTI s2, s1, 20
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADDI s3, zero, 1
  SUBW s5, s1, s3
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADDI t5, sp, 0
  ADD s3, t5, s6
  LW s5, 0(s3)
  ADDW s3, s4, s5
  ADDI s4, zero, 2
  SUBW s5, s1, s4
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADDI t6, sp, 0
  ADD s4, t6, s6
  LW s5, 0(s4)
  ADDW s4, s3, s5
  SW s4, 0(s2)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  LW s3, 0(s2)
  ADDW s2, s0, s3
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADDI t6, sp, 0
  ADD s3, t6, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb4
bb6:
  ADD a0, s0, zero
  LD ra, 80(sp)
  LD s4, 88(sp)
  LD s3, 96(sp)
  LD s2, 104(sp)
  LD s6, 112(sp)
  LD s1, 120(sp)
  LD s5, 128(sp)
  LD s0, 136(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
