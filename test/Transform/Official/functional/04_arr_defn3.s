.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -176
  SD ra, 160(sp)
  SD s0, 168(sp)
  ADDI s0, zero, 0
  SW s0, 128(sp)
  ADDI s0, zero, 0
  SW s0, 132(sp)
  ADDI s0, zero, 0
  SW s0, 136(sp)
  ADDI s0, zero, 0
  SW s0, 140(sp)
  ADDI s0, zero, 0
  SW s0, 144(sp)
  ADDI s0, zero, 0
  SW s0, 148(sp)
  ADDI s0, zero, 0
  SW s0, 152(sp)
  ADDI s0, zero, 0
  SW s0, 156(sp)
  ADDI s0, zero, 1
  SW s0, 96(sp)
  ADDI s0, zero, 2
  SW s0, 100(sp)
  ADDI s0, zero, 3
  SW s0, 104(sp)
  ADDI s0, zero, 4
  SW s0, 108(sp)
  ADDI s0, zero, 5
  SW s0, 112(sp)
  ADDI s0, zero, 6
  SW s0, 116(sp)
  ADDI s0, zero, 7
  SW s0, 120(sp)
  ADDI s0, zero, 8
  SW s0, 124(sp)
  ADDI s0, zero, 1
  SW s0, 64(sp)
  ADDI s0, zero, 2
  SW s0, 68(sp)
  ADDI s0, zero, 3
  SW s0, 72(sp)
  ADDI s0, zero, 4
  SW s0, 76(sp)
  ADDI s0, zero, 5
  SW s0, 80(sp)
  ADDI s0, zero, 6
  SW s0, 84(sp)
  ADDI s0, zero, 7
  SW s0, 88(sp)
  ADDI s0, zero, 8
  SW s0, 92(sp)
  ADDI s0, zero, 1
  SW s0, 32(sp)
  ADDI s0, zero, 2
  SW s0, 36(sp)
  ADDI s0, zero, 3
  SW s0, 40(sp)
  ADDI s0, zero, 0
  SW s0, 44(sp)
  ADDI s0, zero, 5
  SW s0, 48(sp)
  ADDI s0, zero, 0
  SW s0, 52(sp)
  ADDI s0, zero, 7
  SW s0, 56(sp)
  ADDI s0, zero, 8
  SW s0, 60(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 6
  SW s0, 4(sp)
  ADDI s0, zero, 3
  SW s0, 8(sp)
  ADDI s0, zero, 4
  SW s0, 12(sp)
  ADDI s0, zero, 5
  SW s0, 16(sp)
  ADDI s0, zero, 6
  SW s0, 20(sp)
  ADDI s0, zero, 7
  SW s0, 24(sp)
  ADDI s0, zero, 8
  SW s0, 28(sp)
  ADDI s0, zero, 8
  ADDW s0, s0, zero
  ADDIW s0, s0, 6
  ADDW s0, s0, zero
  ADD a0, s0, zero
  LD ra, 160(sp)
  LD s0, 168(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
