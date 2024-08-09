.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s3, 16(sp)
  SD s4, 24(sp)
  SD s5, 32(sp)
  SD s6, 40(sp)
  SD s7, 48(sp)
  SD s8, 56(sp)
  SD s9, 64(sp)
  SD s0, 72(sp)
  SD s1, 80(sp)
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
  LD s2, 8(sp)
  LD s3, 16(sp)
  LD s4, 24(sp)
  LD s5, 32(sp)
  LD s6, 40(sp)
  LD s7, 48(sp)
  LD s8, 56(sp)
  LD s9, 64(sp)
  LD s0, 72(sp)
  LD s1, 80(sp)
  ADDI sp, sp, 96
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
  ADDIW s4, s4, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
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
  ADDI s9, zero, 1000
  ADDI s6, zero, 1001
  LUI s7, 4759
  ADDIW s7, s7, -1863
  LUI s8, 243712
  DIVW s0, s0, s9
  ADDIW s8, s8, 501
  ADDW s2, s2, a0
  MULW s0, s0, s6
  ADDW s0, s1, s0
  REMW s0, s0, s7
  ADDW s0, s3, s0
  REMW s3, s0, s8
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
