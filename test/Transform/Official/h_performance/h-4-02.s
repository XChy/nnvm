.global main
.section .bss
.section .data
.section .text
main:
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
  ADD s0, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  BNE s0, zero, bb2
  # implict jump to bb1
bb1:
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
bb2:
  # implict jump to bb3
bb3:
  CALL getint
  ADD s1, a0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  BLT s1, s2, bb7
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s1, zero, 1
  SUBW s0, s0, s1
  BNE s0, zero, bb6
  JAL zero, bb1
bb6:
  JAL zero, bb3
bb7:
  ADD s4, zero, zero
  # implict jump to bb8
bb8:
  ADD s3, s1, zero
  ADD s1, s4, zero
  LUI s4, 524288
  ADDIW s4, s4, -1
  SUBW s4, s4, s3
  BLT s3, s4, bb19
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LUI s5, 262144
  ADDIW s5, s5, -1
  SUBW s5, s5, s4
  BLT s4, s5, bb18
  # implict jump to bb11
bb11:
  ADD s4, s5, zero
  # implict jump to bb12
bb12:
  LUI s5, 131072
  ADDIW s5, s5, 0
  SUBW s5, s5, s4
  BLT s4, s5, bb17
  # implict jump to bb13
bb13:
  ADD s4, s5, zero
  # implict jump to bb14
bb14:
  ADDI s5, zero, 3
  MULW s5, s4, s5
  ADDI s6, zero, 1000
  DIVW s5, s5, s6
  ADDI s6, zero, 1001
  MULW s5, s5, s6
  ADDW s4, s4, s5
  LUI s5, 4759
  ADDIW s5, s5, -1863
  REMW s4, s4, s5
  ADDW s1, s1, s4
  LUI s4, 243712
  ADDIW s4, s4, 501
  REMW s1, s1, s4
  ADDW s3, s3, a0
  BLT s3, s2, bb16
  # implict jump to bb15
bb15:
  ADD a0, s1, zero
  JAL zero, bb5
bb16:
  ADD s4, s1, zero
  ADD s1, s3, zero
  JAL zero, bb8
bb17:
  JAL zero, bb14
bb18:
  JAL zero, bb12
bb19:
  ADD s4, s3, zero
  JAL zero, bb10
