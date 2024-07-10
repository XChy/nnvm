.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -160
  SD ra, 80(sp)
  SD s7, 88(sp)
  SD s4, 96(sp)
  SD s3, 104(sp)
  SD s2, 112(sp)
  SD s6, 120(sp)
  SD s1, 128(sp)
  SD s5, 136(sp)
  SD s0, 144(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 18
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  XOR s2, s1, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb6
  # implict jump to bb2
bb2:
  ADD s0, zero, zero
  ADDI s1, zero, 2
  # implict jump to bb3
bb3:
  ADD s2, s1, zero
  ADD s3, s0, zero
  SLTI s4, s2, 20
  BNE s4, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s3, zero
  LD ra, 80(sp)
  LD s7, 88(sp)
  LD s4, 96(sp)
  LD s3, 104(sp)
  LD s2, 112(sp)
  LD s6, 120(sp)
  LD s1, 128(sp)
  LD s5, 136(sp)
  LD s0, 144(sp)
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  SLLIW s4, s2, 2
  ADDI t5, sp, 0
  ADD s5, t5, s4
  LW s4, 0(s5)
  ADDI s6, zero, 1
  SUBW s7, s2, s6
  SLLIW s6, s7, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDW s7, s4, s6
  ADDI s4, zero, 2
  SUBW s6, s2, s4
  SLLIW s4, s6, 2
  ADDI t5, sp, 0
  ADD s6, t5, s4
  LW s4, 0(s6)
  ADDW s6, s7, s4
  SW s6, 0(s5)
  ADDW s4, s3, s6
  ADD a0, s6, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s2, 1
  ADD s0, s4, zero
  ADD s1, s5, zero
  JAL zero, bb3
bb6:
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SLLIW s1, s3, 2
  ADDIW s2, s1, 8
  ADDI t5, sp, 0
  ADD s1, t5, s2
  SW zero, 0(s1)
  ADD s0, s3, zero
  JAL zero, bb1
