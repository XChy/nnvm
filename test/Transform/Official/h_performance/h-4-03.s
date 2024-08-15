.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
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
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
bb2:   # loop depth 0
  # implict jump to bb3
bb3:   # loop depth 1
  CALL getint
  ADD s0, a0, zero
  CALL getint
  ADD s1, a0, zero
  CALL getint
  BLT s0, s1, bb7
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
  ADD t0, zero, zero
  # implict jump to bb8
bb8:   # loop depth 2
  LUI t1, 524288
  ADDIW t1, t1, -1
  LUI t2, 262144
  SUBW t1, t1, s0
  ADDIW t2, t2, -1
  MIN t1, s0, t1
  LUI a1, 131072
  SUBW t2, t2, t1
  ADDIW a1, a1, 0
  MIN t1, t1, t2
  ADDI a2, zero, 3
  SUBW t2, a1, t1
  ADDI a1, zero, 1000
  MIN t1, t1, t2
  ADDI a3, zero, 1001
  MULW t2, t1, a2
  LUI a2, 4759
  ADDIW a2, a2, -1863
  LUI a4, 243712
  ADDIW a4, a4, 501
  DIVW t2, t2, a1
  ADDW s0, s0, a0
  MULW t2, t2, a3
  ADDW t1, t1, t2
  REMW t1, t1, a2
  ADDW t0, t0, t1
  REMW t0, t0, a4
  BLT s0, s1, bb10
  # implict jump to bb9
bb9:   # loop depth 1
  ADD a0, t0, zero
  JAL zero, bb5
bb10:   # loop depth 2
  JAL zero, bb8
