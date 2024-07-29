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
  LA s1, c
  ADDI s2, zero, 1
  SW s2, 8(s1)
  ADDI s2, zero, 0
  SW s2, 48(sp)
  ADDI s2, zero, 9
  SW s2, 52(sp)
  ADDI s2, zero, 0
  SW s2, 56(sp)
  ADDI s2, zero, 0
  SW s2, 60(sp)
  ADDI s2, zero, 0
  SW s2, 64(sp)
  ADDI s2, zero, 0
  SW s2, 68(sp)
  ADDI s2, zero, 0
  SW s2, 72(sp)
  ADDI s2, zero, 0
  SW s2, 76(sp)
  ADDI s2, zero, 8
  SW s2, 80(sp)
  ADDI s2, zero, 3
  SW s2, 84(sp)
  ADDI s2, zero, 0
  SW s2, 88(sp)
  ADDI s2, zero, 0
  SW s2, 92(sp)
  ADDI s2, zero, 0
  SW s2, 96(sp)
  ADDI s2, zero, 0
  SW s2, 100(sp)
  ADDI s2, zero, 0
  SW s2, 104(sp)
  ADDI s2, zero, 0
  SW s2, 108(sp)
  ADDI s2, zero, 0
  XORI s2, s2, 1
  BNE s2, zero, bb2
  # implict jump to bb1
bb1:
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
  LW s3, 8(s1)
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
bb2:
  ADDI s2, zero, 0
  SW s2, 112(sp)
  ADDI s2, zero, 0
  SW s2, 116(sp)
  ADDI s2, zero, 0
  SW s2, 120(sp)
  ADDI s2, zero, 0
  SW s2, 124(sp)
  ADDI s2, zero, 0
  SW s2, 128(sp)
  ADDI s2, zero, 0
  SW s2, 132(sp)
  ADDI s2, zero, 0
  SW s2, 136(sp)
  ADDI s2, zero, 0
  SW s2, 140(sp)
  ADDI s2, zero, 0
  SW s2, 144(sp)
  ADDI s2, zero, 0
  SW s2, 148(sp)
  ADDI s2, zero, 2
  SW s2, 152(sp)
  ADDI s2, zero, 1
  SW s2, 156(sp)
  ADDI s2, zero, 8
  SW s2, 160(sp)
  ADDI s2, zero, 0
  XORI s2, s2, 22
  BNE s2, zero, bb4
  # implict jump to bb3
bb3:
  LW s3, 152(sp)
  ADD a0, s3, zero
  CALL putint
  LW s3, 156(sp)
  ADD a0, s3, zero
  CALL putint
  LW s3, 160(sp)
  ADD a0, s3, zero
  CALL putint
  JAL zero, bb1
bb4:
  ADDI s2, zero, 22
  # implict jump to bb5
bb5:
  # implict jump to bb6
bb6:
  ADD s3, s2, zero
  ADDI s4, zero, 1
  SUBW s0, s3, s4
  SLLIW s3, s0, 2
  ADDIW s3, s3, 52
  ADDI t5, sp, 112
  ADD s3, t5, s3
  SW zero, 0(s3)
  # implict jump to bb7
bb7:
  BNE s0, zero, bb8
  JAL zero, bb3
bb8:
  ADD s2, s0, zero
  JAL zero, bb6
