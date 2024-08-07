.global main
.section .bss
.section .data
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
  SD s6, 56(sp)
  CALL getint
  ADD s4, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  BNE s4, zero, bb2
  # implict jump to bb1
bb1:   # loop depth 0
  ADDI a0, zero, 42
  CALL _sysy_stoptime
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s5, a0, zero
  CALL getint
  BLT s2, s5, bb7
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDIW s4, s4, -1
  BNE s4, zero, bb6
  JAL zero, bb1
bb6:   # loop depth 1
  JAL zero, bb3
bb7:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb8
bb8:   # loop depth 2
  LUI s0, 524288
  ADDIW s0, s0, -1
  SUBW s1, s0, s2
  BLT s2, s1, bb19
  # implict jump to bb9
bb9:   # loop depth 2
  # implict jump to bb10
bb10:   # loop depth 2
  LUI s0, 262144
  ADDIW s0, s0, -1
  SUBW s0, s0, s1
  BLT s1, s0, bb18
  # implict jump to bb11
bb11:   # loop depth 2
  ADD s1, s0, zero
  # implict jump to bb12
bb12:   # loop depth 2
  LUI s0, 131072
  ADDIW s0, s0, 0
  SUBW s0, s0, s1
  BLT s1, s0, bb17
  # implict jump to bb13
bb13:   # loop depth 2
  ADD s1, s0, zero
  # implict jump to bb14
bb14:   # loop depth 2
  ADDI s0, zero, 3
  MULW s0, s1, s0
  ADDI s6, zero, 1000
  DIVW s0, s0, s6
  ADDI s6, zero, 1001
  MULW s0, s0, s6
  ADDW s0, s1, s0
  LUI s1, 4759
  ADDIW s1, s1, -1863
  REMW s0, s0, s1
  ADDW s0, s3, s0
  LUI s1, 243712
  ADDIW s1, s1, 501
  REMW s3, s0, s1
  ADDW s2, s2, a0
  BLT s2, s5, bb16
  # implict jump to bb15
bb15:   # loop depth 1
  ADD a0, s3, zero
  JAL zero, bb5
bb16:   # loop depth 2
  JAL zero, bb8
bb17:   # loop depth 2
  JAL zero, bb14
bb18:   # loop depth 2
  JAL zero, bb12
bb19:   # loop depth 2
  ADD s1, s2, zero
  JAL zero, bb10
