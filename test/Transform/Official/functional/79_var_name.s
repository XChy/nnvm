.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -160
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
  ADDI s0, zero, 1
  SW s0, 0(sp)
  ADDI s0, sp, 4
  ADDI s1, zero, 2
  SW s1, 0(s0)
  ADDI s0, zero, 18
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  BNE s1, zero, bb6
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
  ADDI sp, sp, 160
  JALR zero, 0(ra)
bb5:
  SLLIW s6, s4, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s8, s4, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, zero, 2
  SUBW s8, s4, s8
  SLLIW s8, s8, 2
  ADDI a0, sp, 0
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  SW s7, 0(s6)
  ADDW s5, s5, s7
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s4, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb3
bb6:
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  SLLIW s2, s1, 2
  ADDIW s2, s2, 8
  ADDI t5, sp, 0
  ADD s2, t5, s2
  SW zero, 0(s2)
  ADD s0, s1, zero
  JAL zero, bb1
