.global main
.section .bss
.section .data
.section .text
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s8, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
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
  LD s8, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb2:
  # implict jump to bb3
bb3:
  ADD s1, s0, zero
  CALL getint
  ADD s2, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s4, a0, zero
  BLT s2, s3, bb7
  # implict jump to bb4
bb4:
  ADD s5, zero, zero
  # implict jump to bb5
bb5:
  ADD a0, s5, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s5, zero, 1
  SUBW s5, s1, s5
  BNE s5, zero, bb6
  JAL zero, bb1
bb6:
  ADD s0, s5, zero
  JAL zero, bb3
bb7:
  ADD s6, zero, zero
  # implict jump to bb8
bb8:
  ADD s7, s2, zero
  ADD s8, s6, zero
  LUI s9, 524288
  ADDIW s9, s9, -1
  SUBW s9, s9, s7
  BLT s7, s9, bb19
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  LUI s10, 262144
  ADDIW s10, s10, -1
  SUBW s10, s10, s9
  BLT s9, s10, bb18
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  LUI s9, 131072
  ADDIW s9, s9, 0
  SUBW s9, s9, s10
  BLT s10, s9, bb17
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADDI s10, zero, 3
  MULW s10, s9, s10
  ADDI s11, zero, 1000
  DIVW s10, s10, s11
  ADDI s11, zero, 1001
  MULW s10, s10, s11
  ADDW s9, s9, s10
  LUI s10, 4759
  ADDIW s10, s10, -1863
  REMW s9, s9, s10
  ADDW s8, s8, s9
  LUI s9, 243712
  ADDIW s9, s9, 501
  REMW s8, s8, s9
  ADDW s7, s7, s4
  BLT s7, s3, bb16
  # implict jump to bb15
bb15:
  ADD s5, s8, zero
  JAL zero, bb5
bb16:
  ADD s6, s8, zero
  ADD s2, s7, zero
  JAL zero, bb8
bb17:
  ADD s9, s10, zero
  JAL zero, bb14
bb18:
  ADD s10, s9, zero
  JAL zero, bb12
bb19:
  ADD s9, s7, zero
  JAL zero, bb10
