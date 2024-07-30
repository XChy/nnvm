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
  ADDI s0, zero, 2
  SW s0, 4(sp)
  ADDI s0, zero, 18
  # implict jump to bb1
bb1:
  ADD s1, s0, zero
  ADDI s2, zero, 1
  SUBW s1, s1, s2
  SLLIW s2, s1, 2
  ADDIW s2, s2, 8
  ADDI t5, sp, 0
  ADD s2, t5, s2
  ADDI s3, zero, 0
  SW s3, 0(s2)
  BNE s1, zero, bb7
  # implict jump to bb2
bb2:
  ADDI s2, zero, 2
  ADD s3, zero, zero
  # implict jump to bb3
bb3:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLLIW s6, s5, 2
  ADDI t5, sp, 0
  ADD s6, t5, s6
  LW s7, 0(s6)
  ADDI s8, zero, 1
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI t5, sp, 0
  ADD s8, t5, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  ADDI s8, zero, 2
  SUBW s8, s5, s8
  SLLIW s8, s8, 2
  ADDI a0, sp, 0
  ADD s8, a0, s8
  LW s8, 0(s8)
  ADDW s7, s7, s8
  SW s7, 0(s6)
  ADDW s4, s4, s7
  ADD a0, s7, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s5, s5, 1
  SLTI s6, s5, 20
  BNE s6, zero, bb6
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD a0, s4, zero
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
bb6:
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb3
bb7:
  ADD s0, s1, zero
  JAL zero, bb1
