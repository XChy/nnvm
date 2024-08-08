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
  CALL getint
  ADD s2, a0, zero
  ADDI s0, zero, 0
  BLT s0, s2, bb3
  # implict jump to bb1
bb1:   # loop depth 0
  ADD s0, zero, zero
  # implict jump to bb2
bb2:   # loop depth 0
  LA a0, program
  ADD a0, a0, s0
  SW zero, 0(a0)
  LA a0, program
  CALL interpret
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb3:   # loop depth 0
  ADD s0, zero, zero
  ADD s1, zero, zero
  # implict jump to bb4
bb4:   # loop depth 1
  LA s3, program
  ADD s3, s3, s0
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADDIW s1, s1, 1
  SLLIW s0, s1, 2
  BLT s1, s2, bb6
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
  ADD s4, a0, zero
  LW s2, 0(s4)
  BNE s2, zero, bb9
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
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s3, zero, zero
  # implict jump to bb10
bb10:   # loop depth 1
  XORI s5, s2, 62
  SLTIU s5, s5, 1
  BNE s5, zero, bb44
  # implict jump to bb11
bb11:   # loop depth 1
  XORI s5, s2, 60
  SLTIU s5, s5, 1
  BNE s5, zero, bb43
  # implict jump to bb12
bb12:   # loop depth 1
  XORI s5, s2, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb42
  # implict jump to bb13
bb13:   # loop depth 1
  XORI s5, s2, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb41
  # implict jump to bb14
bb14:   # loop depth 1
  XORI s5, s2, 46
  SLTIU s5, s5, 1
  BNE s5, zero, bb40
  # implict jump to bb15
bb15:   # loop depth 1
  XORI s5, s2, 44
  SLTIU s5, s5, 1
  BNE s5, zero, bb39
  # implict jump to bb16
bb16:   # loop depth 1
  XORI s2, s2, 93
  SLTIU s2, s2, 1
  BNE s2, zero, bb38
  # implict jump to bb17
bb17:   # loop depth 1
  ADD s3, zero, zero
  # implict jump to bb18
bb18:   # loop depth 1
  BNE s3, zero, bb28
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
  SLLIW s2, s1, 2
  ADD s2, s4, s2
  LW s2, 0(s2)
  BNE s2, zero, bb27
  JAL zero, bb8
bb27:   # loop depth 1
  JAL zero, bb10
bb28:   # loop depth 1
  ADDI s0, zero, 1
  ADD s2, s1, zero
  # implict jump to bb29
bb29:   # loop depth 2
  ADDIW s1, s2, -1
  SLLIW s2, s2, 2
  ADD s2, s4, s2
  LW s2, -4(s2)
  XORI s5, s2, 91
  SLTIU s5, s5, 1
  BNE s5, zero, bb37
  # implict jump to bb30
bb30:   # loop depth 2
  XORI s2, s2, 93
  SLTIU s2, s2, 1
  BNE s2, zero, bb36
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
  ADD s2, s1, zero
  JAL zero, bb29
bb36:   # loop depth 2
  ADDIW s0, s0, 1
  JAL zero, bb32
bb37:   # loop depth 2
  ADDIW s0, s0, -1
  JAL zero, bb33
bb38:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s3, tape
  ADD s2, s3, s2
  LW s2, 0(s2)
  SLTU s3, zero, s2
  JAL zero, bb18
bb39:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, tape
  ADD s5, s5, s2
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s5)
  JAL zero, bb21
bb40:   # loop depth 1
  LA a0, ptr
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s2, tape
  ADD a0, s2, a0
  LW a0, 0(a0)
  CALL putch
  JAL zero, bb22
bb41:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, tape
  ADD s2, s5, s2
  LW s5, 0(s2)
  ADDIW s5, s5, -1
  SW s5, 0(s2)
  JAL zero, bb23
bb42:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s5, tape
  ADD s2, s5, s2
  LW s5, 0(s2)
  ADDIW s5, s5, 1
  SW s5, 0(s2)
  JAL zero, bb24
bb43:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  ADDIW s2, s2, -1
  LA s5, ptr
  SW s2, 0(s5)
  JAL zero, bb25
bb44:   # loop depth 1
  LA s2, ptr
  LW s2, 0(s2)
  ADDIW s2, s2, 1
  LA s5, ptr
  SW s2, 0(s5)
  JAL zero, bb26
