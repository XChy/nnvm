.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADD a0, zero, zero
  CALL putint
  ADDI a0, zero, 1
  CALL putint
  ADDI a0, zero, 2
  CALL putint
  ADDI a0, zero, 3
  CALL putint
  ADDI a0, zero, 4
  CALL putint
  ADDI a0, zero, 5
  CALL putint
  ADDI a0, zero, 6
  CALL putint
  ADDI a0, zero, 7
  CALL putint
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 9
  CALL putint
  ADDI a0, zero, 10
  CALL putint
  ADDI a0, zero, 11
  CALL putint
  ADDI a0, zero, 12
  CALL putint
  ADDI a0, zero, 13
  CALL putint
  ADDI a0, zero, 14
  CALL putint
  ADDI a0, zero, 15
  CALL putint
  ADD a0, zero, zero
  LD ra, 0(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
