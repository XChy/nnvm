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
  ADD s1, s0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s2, a0, zero
  BLT s3, s0, bb7
  # implict jump to bb4
bb4:
  ADD a0, zero, zero
  # implict jump to bb5
bb5:
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADDI s0, zero, 1
  SUBW s0, s1, s0
  BNE s0, zero, bb6
  JAL zero, bb1
bb6:
  JAL zero, bb3
bb7:
  ADD s4, zero, zero
  ADD a0, s3, zero
  # implict jump to bb8
bb8:
  ADD s3, a0, zero
  LUI a0, 524288
  ADDIW a0, a0, -1
  SUBW a0, a0, s3
  BLT s3, a0, bb19
  # implict jump to bb9
bb9:
  # implict jump to bb10
bb10:
  ADD s5, a0, zero
  LUI a0, 262144
  ADDIW a0, a0, -1
  SUBW a0, a0, s5
  BLT s5, a0, bb18
  # implict jump to bb11
bb11:
  # implict jump to bb12
bb12:
  ADD s5, a0, zero
  LUI a0, 131072
  ADDIW a0, a0, 0
  SUBW a0, a0, s5
  BLT s5, a0, bb17
  # implict jump to bb13
bb13:
  # implict jump to bb14
bb14:
  ADD s6, a0, zero
  ADDI a0, zero, 3
  MULW s5, s6, a0
  ADDI a0, zero, 1000
  DIVW s5, s5, a0
  ADDI a0, zero, 1001
  MULW a0, s5, a0
  ADDW s5, s6, a0
  LUI a0, 4759
  ADDIW a0, a0, -1863
  REMW a0, s5, a0
  ADDW s4, s4, a0
  LUI a0, 243712
  ADDIW a0, a0, 501
  REMW a0, s4, a0
  ADDW s3, s3, s2
  BLT s3, s0, bb16
  # implict jump to bb15
bb15:
  JAL zero, bb5
bb16:
  ADD s4, a0, zero
  ADD a0, s3, zero
  JAL zero, bb8
bb17:
  ADD a0, s5, zero
  JAL zero, bb14
bb18:
  ADD a0, s5, zero
  JAL zero, bb12
bb19:
  ADD a0, s3, zero
  JAL zero, bb10
