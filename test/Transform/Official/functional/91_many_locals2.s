.global main
.section .bss

.section .data
n:
.word 0x00000000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADD s1, a0, zero
  XORI s2, s1, 5
  SLTIU s2, s2, 1
  BNE s2, zero, bb3
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  # implict jump to bb2
bb2:
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
  ADDI a0, zero, 16
  CALL putint
  ADDI a0, zero, 17
  CALL putint
  ADDI a0, zero, 18
  CALL putint
  ADDI a0, zero, 19
  CALL putint
  ADDI a0, zero, 20
  CALL putint
  ADDI a0, zero, 21
  CALL putint
  ADDI a0, zero, 22
  CALL putint
  ADDI a0, zero, 23
  CALL putint
  ADDI a0, zero, 24
  CALL putint
  ADDI a0, zero, 25
  CALL putint
  ADDI a0, zero, 26
  CALL putint
  ADDI a0, zero, 27
  CALL putint
  ADDI a0, zero, 28
  CALL putint
  ADDI a0, zero, 29
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 25
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:
  # implict jump to bb4
bb4:
  # implict jump to bb5
bb5:
  ADD s3, s1, zero
  ADDIW s0, s3, 1
  # implict jump to bb6
bb6:
  XORI s3, s0, 5
  SLTIU s3, s3, 1
  BNE s3, zero, bb8
  # implict jump to bb7
bb7:
  ADD s2, s0, zero
  JAL zero, bb2
bb8:
  ADD s1, s0, zero
  JAL zero, bb5
