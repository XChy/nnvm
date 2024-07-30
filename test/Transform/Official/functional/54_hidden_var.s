.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:
  ADDI sp, sp, -256
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
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
  ADDI s1, zero, 1
  SW s1, 8(s0)
  ADDI s1, zero, 0
  SW s1, 48(sp)
  ADDI s1, zero, 9
  SW s1, 52(sp)
  ADDI s1, zero, 0
  SW s1, 56(sp)
  ADDI s1, zero, 0
  SW s1, 60(sp)
  ADDI s1, zero, 0
  SW s1, 64(sp)
  ADDI s1, zero, 0
  SW s1, 68(sp)
  ADDI s1, zero, 0
  SW s1, 72(sp)
  ADDI s1, zero, 0
  SW s1, 76(sp)
  ADDI s1, zero, 8
  SW s1, 80(sp)
  ADDI s1, zero, 3
  SW s1, 84(sp)
  ADDI s1, zero, 0
  SW s1, 88(sp)
  ADDI s1, zero, 0
  SW s1, 92(sp)
  ADDI s1, zero, 0
  SW s1, 96(sp)
  ADDI s1, zero, 0
  SW s1, 100(sp)
  ADDI s1, zero, 0
  SW s1, 104(sp)
  ADDI s1, zero, 0
  SW s1, 108(sp)
  ADDI s1, zero, 0
  SW s1, 112(sp)
  ADDI s1, zero, 0
  SW s1, 116(sp)
  ADDI s1, zero, 0
  SW s1, 120(sp)
  ADDI s1, zero, 0
  SW s1, 124(sp)
  ADDI s1, zero, 0
  SW s1, 128(sp)
  ADDI s1, zero, 0
  SW s1, 132(sp)
  ADDI s1, zero, 0
  SW s1, 136(sp)
  ADDI s1, zero, 0
  SW s1, 140(sp)
  ADDI s1, zero, 0
  SW s1, 144(sp)
  ADDI s1, zero, 0
  SW s1, 148(sp)
  ADDI s1, zero, 2
  SW s1, 152(sp)
  ADDI s1, zero, 1
  SW s1, 156(sp)
  ADDI s1, zero, 8
  SW s1, 160(sp)
  ADDI s1, zero, 22
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  ADDI s3, zero, 1
  SUBW s2, s2, s3
  SLLIW s3, s2, 2
  ADDIW s3, s3, 52
  ADDI t5, sp, 112
  ADD s3, t5, s3
  ADDI s4, zero, 0
  SW s4, 0(s3)
  BNE s2, zero, bb3
  # implict jump to bb2
bb2:
  LW s3, 152(sp)
  ADD a0, s3, zero
  CALL putint
  LW s3, 156(sp)
  ADD a0, s3, zero
  CALL putint
  LW s3, 160(sp)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s3, b
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LA s3, c
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  LA s3, c
  LW s3, 4(s3)
  ADD a0, s3, zero
  CALL putint
  LW s3, 8(s0)
  ADD a0, s3, zero
  CALL putint
  LA s3, c
  LW s3, 12(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 256
  JALR zero, 0(ra)
bb3:
  ADD s1, s2, zero
  JAL zero, bb1
