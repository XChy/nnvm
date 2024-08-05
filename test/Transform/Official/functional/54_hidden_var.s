.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -240
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s0, c
  ADDI a0, zero, 1
  SW a0, 8(s0)
  ADDI a0, zero, 0
  SW a0, 32(sp)
  ADDI a0, zero, 9
  SW a0, 36(sp)
  ADDI a0, zero, 0
  SW a0, 40(sp)
  ADDI a0, zero, 0
  SW a0, 44(sp)
  ADDI a0, zero, 0
  SW a0, 48(sp)
  ADDI a0, zero, 0
  SW a0, 52(sp)
  ADDI a0, zero, 0
  SW a0, 56(sp)
  ADDI a0, zero, 0
  SW a0, 60(sp)
  ADDI a0, zero, 8
  SW a0, 64(sp)
  ADDI a0, zero, 3
  SW a0, 68(sp)
  ADDI a0, zero, 0
  SW a0, 72(sp)
  ADDI a0, zero, 0
  SW a0, 76(sp)
  ADDI a0, zero, 0
  SW a0, 80(sp)
  ADDI a0, zero, 0
  SW a0, 84(sp)
  ADDI a0, zero, 0
  SW a0, 88(sp)
  ADDI a0, zero, 0
  SW a0, 92(sp)
  ADDI a0, zero, 0
  SW a0, 96(sp)
  ADDI a0, zero, 0
  SW a0, 100(sp)
  ADDI a0, zero, 0
  SW a0, 104(sp)
  ADDI a0, zero, 0
  SW a0, 108(sp)
  ADDI a0, zero, 0
  SW a0, 112(sp)
  ADDI a0, zero, 0
  SW a0, 116(sp)
  ADDI a0, zero, 0
  SW a0, 120(sp)
  ADDI a0, zero, 0
  SW a0, 124(sp)
  ADDI a0, zero, 0
  SW a0, 128(sp)
  ADDI a0, zero, 0
  SW a0, 132(sp)
  ADDI a0, zero, 2
  SW a0, 136(sp)
  ADDI a0, zero, 1
  SW a0, 140(sp)
  ADDI a0, zero, 8
  SW a0, 144(sp)
  ADDI a0, zero, 22
  # implict jump to bb1
bb1:
  ADDI s1, zero, 1
  SUBW a0, a0, s1
  SLLIW s1, a0, 2
  ADDIW s1, s1, 52
  ADDI t6, sp, 96
  ADD s1, t6, s1
  ADDI s2, zero, 0
  SW s2, 0(s1)
  BNE a0, zero, bb3
  # implict jump to bb2
bb2:
  LW a0, 136(sp)
  CALL putint
  LW a0, 140(sp)
  CALL putint
  LW a0, 144(sp)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, b
  LW a0, 0(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA a0, c
  LW a0, 0(a0)
  CALL putint
  LA a0, c
  LW a0, 4(a0)
  CALL putint
  LW a0, 8(s0)
  CALL putint
  LA a0, c
  LW a0, 12(a0)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 240
  JALR zero, 0(ra)
bb3:
  JAL zero, bb1
