.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADDI a0, zero, 3
  LUI s0, 1
  ADDIW s0, s0, -1512
  LUI s1, 1
  CALL putint
  ADDIW s1, s1, 85
  ADDI a0, zero, 10
  LUI s2, 2
  ADDIW s2, s2, -1427
  LUI s3, 3
  LUI s4, 7
  CALL putch
  ADDI a0, zero, 5
  ADDIW s3, s3, -1342
  ADDIW s4, s4, -20
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 8
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 13
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 21
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 34
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 55
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 89
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 144
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 233
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 377
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 610
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 987
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1597
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, s0
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, s1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, s2
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, s3
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, s4
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
