.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
  ADD s2, a0, zero
  ADDI a0, zero, 33
  CALL _sysy_starttime
  BNE s2, zero, bb2
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
  ADD s1, a0, zero
  CALL getint
  ADD s3, a0, zero
  CALL getint
  BLT s1, s3, bb7
  # implict jump to bb4
bb4:   # loop depth 1
  ADD a0, zero, zero
  # implict jump to bb5
bb5:   # loop depth 1
  ADDIW s2, s2, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  BNE s2, zero, bb6
  JAL zero, bb1
bb6:   # loop depth 1
  JAL zero, bb3
bb7:   # loop depth 1
  ADD s0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 2
  LUI s4, 524288
  ADDIW s4, s4, -1
  LUI s5, 262144
  SUBW s4, s4, s1
  ADDIW s5, s5, -1
  MIN s4, s1, s4
  LUI s6, 131072
  SUBW s5, s5, s4
  ADDIW s6, s6, 0
  MIN s4, s4, s5
  ADDI s7, zero, 3
  SUBW s5, s6, s4
  ADDI s9, zero, 1000
  MIN s4, s4, s5
  ADDI s6, zero, 1001
  MULW s5, s4, s7
  LUI s7, 4759
  ADDIW s7, s7, -1863
  LUI s8, 243712
  ADDIW s8, s8, 501
  DIVW s5, s5, s9
  ADDW s1, s1, a0
  MULW s5, s5, s6
  ADDW s4, s4, s5
  REMW s4, s4, s7
  ADDW s0, s0, s4
  REMW s0, s0, s8
  BLT s1, s3, bb10
  # implict jump to bb9
bb9:   # loop depth 1
  ADD a0, s0, zero
  JAL zero, bb5
bb10:   # loop depth 2
  JAL zero, bb8
