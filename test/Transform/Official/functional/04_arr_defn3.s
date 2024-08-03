.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -176
  SD ra, 160(sp)
  ADDI t0, zero, 0
  SW t0, 128(sp)
  ADDI t0, zero, 0
  SW t0, 132(sp)
  ADDI t0, zero, 0
  SW t0, 136(sp)
  ADDI t0, zero, 0
  SW t0, 140(sp)
  ADDI t0, zero, 0
  SW t0, 144(sp)
  ADDI t0, zero, 0
  SW t0, 148(sp)
  ADDI t0, zero, 0
  SW t0, 152(sp)
  ADDI t0, zero, 0
  SW t0, 156(sp)
  ADDI t0, zero, 1
  SW t0, 96(sp)
  ADDI t0, zero, 2
  SW t0, 100(sp)
  ADDI t0, zero, 3
  SW t0, 104(sp)
  ADDI t0, zero, 4
  SW t0, 108(sp)
  ADDI t0, zero, 5
  SW t0, 112(sp)
  ADDI t0, zero, 6
  SW t0, 116(sp)
  ADDI t0, zero, 7
  SW t0, 120(sp)
  ADDI t0, zero, 8
  SW t0, 124(sp)
  ADDI t0, zero, 1
  SW t0, 64(sp)
  ADDI t0, zero, 2
  SW t0, 68(sp)
  ADDI t0, zero, 3
  SW t0, 72(sp)
  ADDI t0, zero, 4
  SW t0, 76(sp)
  ADDI t0, zero, 5
  SW t0, 80(sp)
  ADDI t0, zero, 6
  SW t0, 84(sp)
  ADDI t0, zero, 7
  SW t0, 88(sp)
  ADDI t0, zero, 8
  SW t0, 92(sp)
  ADDI t0, zero, 1
  SW t0, 32(sp)
  ADDI t0, zero, 2
  SW t0, 36(sp)
  ADDI t0, zero, 3
  SW t0, 40(sp)
  ADDI t0, zero, 0
  SW t0, 44(sp)
  ADDI t0, zero, 5
  SW t0, 48(sp)
  ADDI t0, zero, 0
  SW t0, 52(sp)
  ADDI t0, zero, 7
  SW t0, 56(sp)
  ADDI t0, zero, 8
  SW t0, 60(sp)
  ADDI t0, zero, 0
  SW t0, 0(sp)
  ADDI t0, zero, 6
  SW t0, 4(sp)
  ADDI t0, zero, 3
  SW t0, 8(sp)
  ADDI t0, zero, 4
  SW t0, 12(sp)
  ADDI t0, zero, 5
  SW t0, 16(sp)
  ADDI t0, zero, 6
  SW t0, 20(sp)
  ADDI t0, zero, 7
  SW t0, 24(sp)
  ADDI t0, zero, 8
  SW t0, 28(sp)
  ADDI a0, zero, 14
  LD ra, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
