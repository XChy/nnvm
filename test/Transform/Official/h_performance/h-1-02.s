.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss

.section .data
lim:
.word 0x00000000
.section .text
main:   # loop depth 0
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  LA s1, lim
  CALL getint
  ADD s0, a0, zero
  LA s2, lim
  ADDI a0, zero, 22
  SW s0, 0(s1)
  CALL _sysy_starttime
  LW s3, 0(s2)
  SLTI a0, s3, 1
  XORI a0, a0, 1
  BNE a0, zero, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s2, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  ADDI a0, zero, 27
  CALL _sysy_stoptime
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADDI s0, zero, 1
  ADD s2, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  ADD s1, zero, zero
  ADD a0, s0, zero
  # implict jump to bb5
bb5:   # loop depth 2
  XORI s4, a0, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb15
  # implict jump to bb6
bb6:   # loop depth 2
  ANDI s4, a0, 1
  ADDIW s1, s1, 1
  SLTIU s4, s4, 1
  BNE s4, zero, bb14
  # implict jump to bb7
bb7:   # loop depth 2
  ADDI s4, zero, 3
  MULW a0, a0, s4
  ADDIW a0, a0, 1
  SLT s4, s3, a0
  XORI s4, s4, 1
  BNE s4, zero, bb12
  # implict jump to bb8
bb8:   # loop depth 1
  ADD s1, zero, zero
  # implict jump to bb9
bb9:   # loop depth 1
  LUI s4, 244141
  ADDIW s4, s4, -1529
  ADDW a0, s2, s1
  REMW s2, a0, s4
  ADDIW s0, s0, 1
  SLT a0, s3, s0
  XORI a0, a0, 1
  BNE a0, zero, bb11
  # implict jump to bb10
bb10:   # loop depth 0
  JAL zero, bb2
bb11:   # loop depth 1
  JAL zero, bb4
bb12:   # loop depth 2
  # implict jump to bb13
bb13:   # loop depth 2
  JAL zero, bb5
bb14:   # loop depth 2
  SRAIW s4, a0, 31
  SRLIW s4, s4, 31
  ADD a0, a0, s4
  SRAIW a0, a0, 1
  JAL zero, bb13
bb15:   # loop depth 1
  JAL zero, bb9
