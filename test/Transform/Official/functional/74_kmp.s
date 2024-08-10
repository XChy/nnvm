.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.section .bss
.section .data
.section .text
main:   # loop depth 0
  LUI t0, 1048564
  ADDIW t0, t0, -64
  ADD sp, sp, t0
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 10
  SW s0, 56(sp)
  SLTIU s0, s1, 1
  BNE s0, zero, bb34
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 1
  CALL getch
  ADDIW s0, s0, 1
  ADD s2, a0, zero
  SLLIW s1, s0, 2
  XORI s3, s2, 10
  ADDI t6, sp, 56
  ADD s1, t6, s1
  SLTIU s3, s3, 1
  SW s2, 0(s1)
  BNE s3, zero, bb4
  # implict jump to bb3
bb3:   # loop depth 1
  JAL zero, bb2
bb4:   # loop depth 0
  # implict jump to bb5
bb5:   # loop depth 0
  SW zero, 0(s1)
  CALL getch
  ADD s0, a0, zero
  XORI s1, s0, 10
  LUI t6, 4
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  SW s0, 0(t6)
  SLTIU s0, s1, 1
  BNE s0, zero, bb33
  # implict jump to bb6
bb6:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb7
bb7:   # loop depth 1
  CALL getch
  ADDIW s0, s0, 1
  ADD s2, a0, zero
  SLLIW s1, s0, 2
  XORI s3, s2, 10
  LUI t6, 4
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD s1, t6, s1
  SLTIU s3, s3, 1
  SW s2, 0(s1)
  BNE s3, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 1
  JAL zero, bb7
bb9:   # loop depth 0
  # implict jump to bb10
bb10:   # loop depth 0
  ADDI a0, zero, -1
  SW zero, 0(s1)
  LUI t6, 8
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  SW a0, 0(t6)
  LW s1, 56(sp)
  BNE s1, zero, bb24
  # implict jump to bb11
bb11:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb12
bb12:   # loop depth 1
  SLLIW a0, s1, 2
  LUI t6, 4
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD a0, t6, a0
  LW s2, 0(a0)
  BNE s2, zero, bb15
  # implict jump to bb13
bb13:   # loop depth 0
  ADDI a0, zero, -1
  # implict jump to bb14
bb14:   # loop depth 0
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
  LD s5, 48(sp)
  LUI t0, 12
  ADDIW t0, t0, 64
  ADD sp, sp, t0
  JALR zero, 0(ra)
bb15:   # loop depth 1
  SLLIW s3, s0, 2
  ADDIW a0, s1, 1
  ADDI t6, sp, 56
  ADD s4, t6, s3
  LW s5, 0(s4)
  XOR s2, s5, s2
  SLTIU s2, s2, 1
  BNE s2, zero, bb21
  # implict jump to bb16
bb16:   # loop depth 1
  LUI t6, 8
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD s0, t6, s3
  LW s0, 0(s0)
  XORI s2, s0, -1
  SLTIU s2, s2, 1
  BNE s2, zero, bb20
  # implict jump to bb17
bb17:   # loop depth 1
  # implict jump to bb18
bb18:   # loop depth 1
  # implict jump to bb19
bb19:   # loop depth 1
  JAL zero, bb12
bb20:   # loop depth 1
  ADDIW s0, s0, 1
  ADD s1, a0, zero
  JAL zero, bb18
bb21:   # loop depth 1
  LW s1, 4(s4)
  ADDIW s0, s0, 1
  SLTU s1, zero, s1
  XORI s1, s1, 1
  BNE s1, zero, bb23
  # implict jump to bb22
bb22:   # loop depth 1
  ADD s1, a0, zero
  JAL zero, bb19
bb23:   # loop depth 0
  JAL zero, bb14
bb24:   # loop depth 0
  ADDI s0, zero, -1
  ADD a0, zero, zero
  ADD s2, zero, zero
  # implict jump to bb25
bb25:   # loop depth 1
  XORI s3, s0, -1
  SLLIW s4, s0, 2
  SLTIU s3, s3, 1
  BNE s3, zero, bb32
  # implict jump to bb26
bb26:   # loop depth 1
  ADDI t6, sp, 56
  ADD s3, t6, s4
  LW s3, 0(s3)
  XOR s1, s1, s3
  SLTIU s1, s1, 1
  # implict jump to bb27
bb27:   # loop depth 1
  BNE s1, zero, bb31
  # implict jump to bb28
bb28:   # loop depth 1
  LUI t6, 8
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD s0, t6, s4
  LW s0, 0(s0)
  # implict jump to bb29
bb29:   # loop depth 1
  SLLIW s2, a0, 2
  ADDI t6, sp, 56
  ADD s1, t6, s2
  LW s1, 0(s1)
  BNE s1, zero, bb30
  JAL zero, bb11
bb30:   # loop depth 1
  JAL zero, bb25
bb31:   # loop depth 1
  LUI t6, 8
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD s2, t6, s2
  ADDIW a0, a0, 1
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  SW s1, 4(s2)
  JAL zero, bb29
bb32:   # loop depth 1
  ADDI s1, zero, 1
  JAL zero, bb27
bb33:   # loop depth 0
  LUI t6, 4
  ADDIW t6, t6, 56
  ADD t6, t6, sp
  ADD s1, t6, zero
  JAL zero, bb10
bb34:   # loop depth 0
  ADDI t6, sp, 56
  ADD s1, t6, zero
  JAL zero, bb5
