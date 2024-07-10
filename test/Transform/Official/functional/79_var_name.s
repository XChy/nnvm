.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -176
  SD ra, 80(sp)
  SD s0, 88(sp)
  SD s1, 96(sp)
  SD s2, 104(sp)
  SD s3, 112(sp)
  SD s4, 120(sp)
  SD s5, 128(sp)
  SD s6, 136(sp)
  SD s7, 144(sp)
  SD s8, 152(sp)
  SD s9, 160(sp)
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
  ADD s2, zero, zero
  ADDI s3, zero, 2
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLTI s6, s4, 20
  BNE s6, zero, bb5
  # implict jump to bb4
bb4:
  ADD a0, s5, zero
  LD ra, 80(sp)
  LD s0, 88(sp)
  LD s1, 96(sp)
  LD s2, 104(sp)
  LD s3, 112(sp)
  LD s4, 120(sp)
  LD s5, 128(sp)
  LD s6, 136(sp)
  LD s7, 144(sp)
  LD s8, 152(sp)
  LD s9, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb5:
  SLLIW s6, s4, 2
  ADDI t5, sp, 0
  ADD s7, t5, s6
  LW s6, 0(s7)
  ADDI s8, zero, 1
  SUBW s9, s4, s8
  SLLIW s8, s9, 2
  ADDI t5, sp, 0
  ADD s9, t5, s8
  LW s8, 0(s9)
  ADDW s9, s6, s8
  ADDI s6, zero, 2
  SUBW s8, s4, s6
  SLLIW s6, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s6
  LW s6, 0(s8)
  ADDW s8, s9, s6
  SW s8, 0(s7)
  ADDW s6, s5, s8
  ADD a0, s8, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s4, 1
  ADD s2, s6, zero
  ADD s3, s5, zero
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
