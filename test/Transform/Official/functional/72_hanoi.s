.global main
.global hanoi
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  CALL getint
  ADD s0, a0, zero
  ADDI s1, zero, 0
  BLT s1, s0, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  CALL getint
  ADDI a1, zero, 1
  ADDI a2, zero, 2
  ADDI a3, zero, 3
  CALL hanoi
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  ADDI s1, zero, 0
  BLT s1, s0, bb4
  JAL zero, bb1
bb4:   # loop depth 0
  JAL zero, bb3
hanoi:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s0, a3, zero
  XORI s3, a0, 1
  SLTIU s3, s3, 1
  BNE s3, zero, bb8
  # implict jump to bb6
bb6:   # loop depth 0
  ADDI a1, zero, 1
  SUBW s3, a0, a1
  ADD a0, s3, zero
  ADD a1, s1, zero
  ADD a2, s0, zero
  ADD a3, s2, zero
  CALL hanoi
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s3, zero
  ADD a1, s2, zero
  ADD a2, s1, zero
  ADD a3, s0, zero
  CALL hanoi
  # implict jump to bb7
bb7:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb8:   # loop depth 0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 44
  CALL putch
  ADDI a0, zero, 32
  CALL putch
  JAL zero, bb7
