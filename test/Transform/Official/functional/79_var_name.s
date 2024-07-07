.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -160
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s7, 96(sp)
  SD s4, 104(sp)
  SD s3, 112(sp)
  SD s2, 120(sp)
  SD s6, 128(sp)
  SD s1, 136(sp)
  SD s5, 144(sp)
  SD s0, 152(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 18
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADDIW s1, s2, 8
  ADDI t5, sp, 0
  ADD s2, t5, s1
  SW zero, 0(s2)
  ADD s0, s3, zero
  JAL zero, bb1
bb3:
  ADD s0, zero, zero
  ADDI s1, zero, 2
  JAL zero, bb4
bb4:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 20
  BNE s4, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADDI t6, sp, 0
  ADD s4, t6, s5
  LW s5, 0(s4)
  ADDI s6, zero, 1
  SUBW s7, s2, s6
  ADDI s6, zero, 4
  MULW s8, s7, s6
  ADDI t5, sp, 0
  ADD s6, t5, s8
  LW s7, 0(s6)
  ADDW s6, s5, s7
  ADDI s5, zero, 2
  SUBW s7, s2, s5
  ADDI s5, zero, 4
  MULW s8, s7, s5
  ADDI t6, sp, 0
  ADD s5, t6, s8
  LW s7, 0(s5)
  ADDW s5, s6, s7
  SW s5, 0(s4)
  LW s5, 0(s4)
  ADDW s6, s3, s5
  LW s5, 0(s4)
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s2, 1
  ADD s0, s6, zero
  ADD s1, s4, zero
  JAL zero, bb4
bb6:
  ADD a0, s3, zero
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s7, 96(sp)
  LD s4, 104(sp)
  LD s3, 112(sp)
  LD s2, 120(sp)
  LD s6, 128(sp)
  LD s1, 136(sp)
  LD s5, 144(sp)
  LD s0, 152(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
