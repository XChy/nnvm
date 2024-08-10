.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.global main
.global interpret
.section .bss

program:
.space 131072
tape:
.space 262144
.section .data
ptr:
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
  CALL getint
  ADDI s0, zero, 0
  ADD s3, a0, zero
  BLT s0, s3, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA s1, program
  LA a0, program
  ADD s0, s1, s0
  SW zero, 0(s0)
  CALL interpret
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
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LA s4, program
  CALL getch
  ADDIW s1, s1, 1
  ADD s2, a0, zero
  ADD s4, s4, s0
  SLLIW s0, s1, 2
  SW s2, 0(s4)
  BLT s1, s3, bb6
  # implict jump to bb5
bb5:   # loop depth 0
  JAL zero, bb2
bb6:   # loop depth 1
  JAL zero, bb4
interpret:   # loop depth 0
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  ADD s3, a0, zero
  LW s4, 0(s3)
  BNE s4, zero, bb9
  # implict jump to bb8
bb8:   # loop depth 0
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:   # loop depth 0
  ADD s2, zero, zero
  ADD s1, zero, zero
  ADD s0, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  XORI s5, s4, 62
  SLTIU s5, s5, 1
  BNE s5, zero, bb44
  # implict jump to bb11
bb11:   # loop depth 1
  XORI s5, s4, 60
  SLTIU s5, s5, 1
  BNE s5, zero, bb43
  # implict jump to bb12
bb12:   # loop depth 1
  XORI s5, s4, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb42
  # implict jump to bb13
bb13:   # loop depth 1
  XORI s5, s4, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb41
  # implict jump to bb14
bb14:   # loop depth 1
  XORI s5, s4, 46
  SLTIU s5, s5, 1
  BNE s5, zero, bb40
  # implict jump to bb15
bb15:   # loop depth 1
  XORI s5, s4, 44
  SLTIU s5, s5, 1
  BNE s5, zero, bb39
  # implict jump to bb16
bb16:   # loop depth 1
  XORI s2, s4, 93
  SLTIU s2, s2, 1
  BNE s2, zero, bb38
  # implict jump to bb17
bb17:   # loop depth 1
  ADD s2, zero, zero
  # implict jump to bb18
bb18:   # loop depth 1
  BNE s2, zero, bb28
  # implict jump to bb19
bb19:   # loop depth 1
  # implict jump to bb20
bb20:   # loop depth 1
  # implict jump to bb21
bb21:   # loop depth 1
  # implict jump to bb22
bb22:   # loop depth 1
  # implict jump to bb23
bb23:   # loop depth 1
  # implict jump to bb24
bb24:   # loop depth 1
  # implict jump to bb25
bb25:   # loop depth 1
  # implict jump to bb26
bb26:   # loop depth 1
  ADDIW s1, s1, 1
  SH2ADD s4, s1, s3
  LW s4, 0(s4)
  BNE s4, zero, bb27
  JAL zero, bb8
bb27:   # loop depth 1
  JAL zero, bb10
bb28:   # loop depth 1
  ADDI s0, zero, 1
  # implict jump to bb29
bb29:   # loop depth 2
  SH2ADD s4, s1, s3
  ADDIW s1, s1, -1
  LW s4, -4(s4)
  XORI s5, s4, 91
  SLTIU s5, s5, 1
  BNE s5, zero, bb37
  # implict jump to bb30
bb30:   # loop depth 2
  XORI s4, s4, 93
  SLTIU s4, s4, 1
  BNE s4, zero, bb36
  # implict jump to bb31
bb31:   # loop depth 2
  # implict jump to bb32
bb32:   # loop depth 2
  # implict jump to bb33
bb33:   # loop depth 2
  BLT zero, s0, bb35
  # implict jump to bb34
bb34:   # loop depth 1
  JAL zero, bb20
bb35:   # loop depth 2
  JAL zero, bb29
bb36:   # loop depth 2
  ADDIW s0, s0, 1
  JAL zero, bb32
bb37:   # loop depth 2
  ADDIW s0, s0, -1
  JAL zero, bb33
bb38:   # loop depth 1
  LA s2, ptr
  LA s4, tape
  LW s2, 0(s2)
  SH2ADD s2, s2, s4
  LW s2, 0(s2)
  SLTU s2, zero, s2
  JAL zero, bb18
bb39:   # loop depth 1
  LA s4, ptr
  LA s5, tape
  LW s4, 0(s4)
  CALL getch
  SH2ADD s5, s4, s5
  ADD s4, a0, zero
  SW s4, 0(s5)
  JAL zero, bb21
bb40:   # loop depth 1
  LA a0, ptr
  LA s4, tape
  LW a0, 0(a0)
  SH2ADD a0, a0, s4
  LW a0, 0(a0)
  CALL putch
  JAL zero, bb22
bb41:   # loop depth 1
  LA s4, ptr
  LA s5, tape
  LW s4, 0(s4)
  SH2ADD s4, s4, s5
  LW s5, 0(s4)
  ADDIW s5, s5, -1
  SW s5, 0(s4)
  JAL zero, bb23
bb42:   # loop depth 1
  LA s4, ptr
  LA s5, tape
  LW s4, 0(s4)
  SH2ADD s4, s4, s5
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  JAL zero, bb24
bb43:   # loop depth 1
  LA s4, ptr
  LA s5, ptr
  LW s4, 0(s4)
  ADDIW s4, s4, -1
  SW s4, 0(s5)
  JAL zero, bb25
bb44:   # loop depth 1
  LA s4, ptr
  LA s5, ptr
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  SW s4, 0(s5)
  JAL zero, bb26
