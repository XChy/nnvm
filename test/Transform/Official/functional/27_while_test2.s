.global FourWhile
.global main
.section .bss
.section .data
.section .text
FourWhile:
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD s7, 72(sp)
  SD ra, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  ADDI s0, zero, 10
  ADDI s1, zero, 7
  ADDI s2, zero, 6
  ADDI s3, zero, 5
  JAL zero, bb1
bb1:
  SLTI s4, s3, 20
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb2
  JAL zero, bb3
bb2:
  ADDIW s4, s3, 3
  ADD s5, s0, zero
  ADD s6, s1, zero
  ADD s7, s2, zero
  JAL zero, bb4
bb3:
  ADDW s4, s2, s0
  ADDW s0, s3, s4
  ADDW s2, s0, s1
  ADD a0, s2, zero
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD s7, 72(sp)
  LD ra, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  SLTI s8, s7, 10
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb5
  JAL zero, bb6
bb5:
  ADDIW s8, s7, 1
  ADD s9, s5, zero
  ADD s10, s6, zero
  JAL zero, bb7
bb6:
  ADDI s8, zero, 2
  SUBW s9, s7, s8
  ADD s0, s5, zero
  ADD s1, s6, zero
  ADD s2, s9, zero
  ADD s3, s4, zero
  JAL zero, bb1
bb7:
  XORI s11, s10, 7
  SLTIU t0, s11, 1
  XOR s11, t0, zero
  SLTU t0, zero, s11
  BNE t0, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s11, zero, 1
  SUBW t0, s10, s11
  ADD s11, s9, zero
  JAL zero, bb10
bb9:
  ADDIW s11, s10, 1
  ADD s5, s9, zero
  ADD s6, s11, zero
  ADD s7, s8, zero
  JAL zero, bb4
bb10:
  SLTI t1, s11, 20
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb11
  JAL zero, bb12
bb11:
  ADDIW t1, s11, 3
  ADD s11, t1, zero
  JAL zero, bb10
bb12:
  ADDI t1, zero, 1
  SUBW t2, s11, t1
  ADD s9, t2, zero
  ADD s10, t0, zero
  JAL zero, bb7
main:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL FourWhile
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
