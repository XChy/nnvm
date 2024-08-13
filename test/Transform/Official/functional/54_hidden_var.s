.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss


.section .data
c:
.byte 6, 0, 0, 0, 7, 0, 0, 0, 8, 0, 0, 0, 9, 0, 0, 0
b:
.word 0x00000005
.section .text
main:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADDI a0, zero, 3
  LA s0, c
  ADDI s1, zero, 1
  LA s2, b
  LA s3, c
  LA s4, c
  LA s5, c
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
  ADDI a0, zero, 2
  SW s1, 8(s0)
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s2)
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  LW a0, 0(s3)
  CALL putint
  LW a0, 4(s4)
  CALL putint
  LW a0, 8(s0)
  CALL putint
  LW a0, 12(s5)
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
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
