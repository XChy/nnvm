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
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  CALL getint
  ADD s1, a0, zero
  ADDI s0, zero, 0
  BLT s0, s1, bb3
  # implict jump to bb1
bb1:
  ADD a0, zero, zero
  # implict jump to bb2
bb2:
  SLLIW s0, a0, 2
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
bb3:
  ADD s0, zero, zero
  # implict jump to bb4
bb4:
  ADD s3, s0, zero
  SLLIW s2, s3, 2
  LA s0, program
  ADD s2, s0, s2
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s2)
  ADDIW s0, s3, 1
  BLT s0, s1, bb6
  # implict jump to bb5
bb5:
  ADD a0, s0, zero
  JAL zero, bb2
bb6:
  JAL zero, bb4
interpret:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  ADD s1, a0, zero
  LW s0, 0(s1)
  BNE s0, zero, bb9
  # implict jump to bb8
bb8:
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
bb9:
  ADD s5, s0, zero
  ADD s3, zero, zero
  ADD s2, zero, zero
  ADD s0, zero, zero
  # implict jump to bb10
bb10:
  ADD s4, s0, zero
  XORI s0, s5, 62
  SLTIU s0, s0, 1
  BNE s0, zero, bb44
  # implict jump to bb11
bb11:
  XORI s0, s5, 60
  SLTIU s0, s0, 1
  BNE s0, zero, bb43
  # implict jump to bb12
bb12:
  XORI s0, s5, 43
  SLTIU s0, s0, 1
  BNE s0, zero, bb42
  # implict jump to bb13
bb13:
  XORI s0, s5, 45
  SLTIU s0, s0, 1
  BNE s0, zero, bb41
  # implict jump to bb14
bb14:
  XORI s0, s5, 46
  SLTIU s0, s0, 1
  BNE s0, zero, bb40
  # implict jump to bb15
bb15:
  XORI s0, s5, 44
  SLTIU s0, s0, 1
  BNE s0, zero, bb39
  # implict jump to bb16
bb16:
  XORI s0, s5, 93
  SLTIU s0, s0, 1
  BNE s0, zero, bb38
  # implict jump to bb17
bb17:
  ADD s0, zero, zero
  # implict jump to bb18
bb18:
  ADD s4, s0, zero
  BNE s4, zero, bb28
  # implict jump to bb19
bb19:
  ADD s0, s2, zero
  ADD s2, s3, zero
  # implict jump to bb20
bb20:
  ADD s3, s2, zero
  ADD s2, s0, zero
  ADD s0, s3, zero
  # implict jump to bb21
bb21:
  ADD s3, s4, zero
  ADD s4, s3, zero
  # implict jump to bb22
bb22:
  ADD s3, s4, zero
  ADD s4, s3, zero
  # implict jump to bb23
bb23:
  ADD s3, s4, zero
  ADD s4, s3, zero
  # implict jump to bb24
bb24:
  ADD s3, s4, zero
  ADD s4, s3, zero
  # implict jump to bb25
bb25:
  ADD s3, s0, zero
  ADD s0, s2, zero
  ADD s2, s4, zero
  ADD s4, s2, zero
  ADD s2, s3, zero
  # implict jump to bb26
bb26:
  ADD s3, s2, zero
  ADDIW s2, s0, 1
  SLLIW s0, s2, 2
  ADD s0, s1, s0
  LW s0, 0(s0)
  BNE s0, zero, bb27
  JAL zero, bb8
bb27:
  ADD s5, s0, zero
  ADD s0, s4, zero
  JAL zero, bb10
bb28:
  ADDI s0, zero, 1
  # implict jump to bb29
bb29:
  ADD s5, s0, zero
  ADDI s0, zero, 1
  SUBW s2, s2, s0
  SLLIW s0, s2, 2
  ADD s0, s1, s0
  LW s3, 0(s0)
  XORI s0, s3, 91
  SLTIU s0, s0, 1
  BNE s0, zero, bb37
  # implict jump to bb30
bb30:
  XORI s0, s3, 93
  SLTIU s0, s0, 1
  BNE s0, zero, bb36
  # implict jump to bb31
bb31:
  ADD s0, s5, zero
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  ADD s3, s0, zero
  BLT zero, s3, bb35
  # implict jump to bb34
bb34:
  ADD s0, s2, zero
  ADD s2, s3, zero
  JAL zero, bb20
bb35:
  ADD s0, s3, zero
  JAL zero, bb29
bb36:
  ADDIW s0, s5, 1
  JAL zero, bb32
bb37:
  ADDI s0, zero, 1
  SUBW s0, s5, s0
  JAL zero, bb33
bb38:
  LA s0, ptr
  LW s0, 0(s0)
  SLLIW s4, s0, 2
  LA s0, tape
  ADD s0, s0, s4
  LW s0, 0(s0)
  SLTU s0, zero, s0
  JAL zero, bb18
bb39:
  LA s0, ptr
  LW s0, 0(s0)
  SLLIW s5, s0, 2
  LA s0, tape
  ADD s0, s0, s5
  CALL getch
  ADD s5, a0, zero
  SW s5, 0(s0)
  ADD s0, s3, zero
  JAL zero, bb21
bb40:
  LA a0, ptr
  LW a0, 0(a0)
  SLLIW s0, a0, 2
  LA a0, tape
  ADD a0, a0, s0
  LW a0, 0(a0)
  CALL putch
  ADD s0, s3, zero
  JAL zero, bb22
bb41:
  LA s0, ptr
  LW s0, 0(s0)
  SLLIW s5, s0, 2
  LA s0, tape
  ADD s5, s0, s5
  LW s6, 0(s5)
  ADDI s0, zero, 1
  SUBW s0, s6, s0
  SW s0, 0(s5)
  ADD s0, s3, zero
  JAL zero, bb23
bb42:
  LA s0, ptr
  LW s0, 0(s0)
  SLLIW s5, s0, 2
  LA s0, tape
  ADD s5, s0, s5
  LW s0, 0(s5)
  ADDIW s0, s0, 1
  SW s0, 0(s5)
  ADD s0, s3, zero
  JAL zero, bb24
bb43:
  LA s0, ptr
  LW s5, 0(s0)
  ADDI s0, zero, 1
  SUBW s5, s5, s0
  LA s0, ptr
  SW s5, 0(s0)
  ADD s0, s3, zero
  JAL zero, bb25
bb44:
  LA s0, ptr
  LW s0, 0(s0)
  ADDIW s5, s0, 1
  LA s0, ptr
  SW s5, 0(s0)
  ADD s0, s2, zero
  ADD s2, s3, zero
  JAL zero, bb26
