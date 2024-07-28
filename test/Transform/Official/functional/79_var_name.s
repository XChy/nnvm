.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -192
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s11, 24(sp)
  SD s0, 32(sp)
  SD s1, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s5, 72(sp)
  SD s6, 80(sp)
  SD s7, 88(sp)
  SD s10, 96(sp)
  ADDI s3, zero, 1
  SW s3, 104(sp)
  ADDI s3, sp, 108
  ADDI s4, zero, 2
  SW s4, 0(s3)
  ADDI s3, zero, 0
  XORI s3, s3, 18
  BNE s3, zero, bb10
  # implict jump to bb1
bb1:
  ADDI s4, zero, 2
  SLTI s4, s4, 20
  BNE s4, zero, bb4
  # implict jump to bb2
bb2:
  ADD s4, zero, zero
  # implict jump to bb3
bb3:
  ADD a0, s4, zero
  LD ra, 0(sp)
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s11, 24(sp)
  LD s0, 32(sp)
  LD s1, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s5, 72(sp)
  LD s6, 80(sp)
  LD s7, 88(sp)
  LD s10, 96(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  ADDI s5, zero, 2
  # implict jump to bb5
bb5:
  ADD s6, zero, zero
  # implict jump to bb6
bb6:
  ADD s7, s6, zero
  ADD s8, s5, zero
  SLLIW s9, s8, 2
  ADDI t5, sp, 104
  ADD s9, t5, s9
  LW s10, 0(s9)
  ADDI s11, zero, 1
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  ADDI s11, zero, 2
  SUBW s11, s8, s11
  SLLIW s11, s11, 2
  ADDI t5, sp, 104
  ADD s11, t5, s11
  LW s11, 0(s11)
  ADDW s10, s10, s11
  SW s10, 0(s9)
  ADDW s1, s7, s10
  ADD a0, s10, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s0, s8, 1
  # implict jump to bb7
bb7:
  SLTI s7, s0, 20
  BNE s7, zero, bb9
  # implict jump to bb8
bb8:
  ADD s4, s1, zero
  JAL zero, bb3
bb9:
  ADD s5, s0, zero
  ADD s6, s1, zero
  JAL zero, bb6
bb10:
  ADDI s3, zero, 18
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD s4, s3, zero
  ADDI s5, zero, 1
  SUBW s2, s4, s5
  SLLIW s4, s2, 2
  ADDIW s4, s4, 8
  ADDI t5, sp, 104
  ADD s4, t5, s4
  SW zero, 0(s4)
  # implict jump to bb13
bb13:
  BNE s2, zero, bb14
  JAL zero, bb1
bb14:
  ADD s3, s2, zero
  JAL zero, bb12
