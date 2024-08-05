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
  ADD s2, a0, zero
  ADDI s0, zero, 0
  BLT s0, s2, bb3
  # implict jump to bb1
bb1:
  ADD s0, zero, zero
  # implict jump to bb2
bb2:
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
  ADD s1, zero, zero
  # implict jump to bb4
bb4:
  LA s3, program
  ADD s3, s3, s0
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s3)
  ADDIW s1, s1, 1
  SLLIW s0, s1, 2
  BLT s1, s2, bb6
  # implict jump to bb5
bb5:
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
  ADD s3, a0, zero
  LW s4, 0(s3)
  BNE s4, zero, bb9
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
  ADD s0, zero, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb10
bb10:
  XORI s5, s4, 62
  SLTIU s5, s5, 1
  BNE s5, zero, bb44
  # implict jump to bb11
bb11:
  XORI s5, s4, 60
  SLTIU s5, s5, 1
  BNE s5, zero, bb43
  # implict jump to bb12
bb12:
  XORI s5, s4, 43
  SLTIU s5, s5, 1
  BNE s5, zero, bb42
  # implict jump to bb13
bb13:
  XORI s5, s4, 45
  SLTIU s5, s5, 1
  BNE s5, zero, bb41
  # implict jump to bb14
bb14:
  XORI s5, s4, 46
  SLTIU s5, s5, 1
  BNE s5, zero, bb40
  # implict jump to bb15
bb15:
  XORI s5, s4, 44
  SLTIU s5, s5, 1
  BNE s5, zero, bb39
  # implict jump to bb16
bb16:
  XORI s2, s4, 93
  SLTIU s2, s2, 1
  BNE s2, zero, bb38
  # implict jump to bb17
bb17:
  ADD s2, zero, zero
  # implict jump to bb18
bb18:
  BNE s2, zero, bb28
  # implict jump to bb19
bb19:
  # implict jump to bb20
bb20:
  # implict jump to bb21
bb21:
  # implict jump to bb22
bb22:
  # implict jump to bb23
bb23:
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  ADDIW s1, s1, 1
  SLLIW s4, s1, 2
  ADD s4, s3, s4
  LW s4, 0(s4)
  BNE s4, zero, bb27
  JAL zero, bb8
bb27:
  JAL zero, bb10
bb28:
  ADDI s0, zero, 1
  # implict jump to bb29
bb29:
  ADDI s4, zero, 1
  SUBW s1, s1, s4
  SLLIW s4, s1, 2
  ADD s4, s3, s4
  LW s4, 0(s4)
  XORI s5, s4, 91
  SLTIU s5, s5, 1
  BNE s5, zero, bb37
  # implict jump to bb30
bb30:
  XORI s4, s4, 93
  SLTIU s4, s4, 1
  BNE s4, zero, bb36
  # implict jump to bb31
bb31:
  # implict jump to bb32
bb32:
  # implict jump to bb33
bb33:
  BLT zero, s0, bb35
  # implict jump to bb34
bb34:
  JAL zero, bb20
bb35:
  JAL zero, bb29
bb36:
  ADDIW s0, s0, 1
  JAL zero, bb32
bb37:
  ADDI s4, zero, 1
  SUBW s0, s0, s4
  JAL zero, bb33
bb38:
  LA s2, ptr
  LW s2, 0(s2)
  SLLIW s2, s2, 2
  LA s4, tape
  ADD s2, s4, s2
  LW s2, 0(s2)
  SLTU s2, zero, s2
  JAL zero, bb18
bb39:
  LA s4, ptr
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, tape
  ADD s5, s5, s4
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s5)
  JAL zero, bb21
bb40:
  LA a0, ptr
  LW a0, 0(a0)
  SLLIW a0, a0, 2
  LA s4, tape
  ADD a0, s4, a0
  LW a0, 0(a0)
  CALL putch
  JAL zero, bb22
bb41:
  LA s4, ptr
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, tape
  ADD s4, s5, s4
  LW s5, 0(s4)
  ADDI s6, zero, 1
  SUBW s5, s5, s6
  SW s5, 0(s4)
  JAL zero, bb23
bb42:
  LA s4, ptr
  LW s4, 0(s4)
  SLLIW s4, s4, 2
  LA s5, tape
  ADD s4, s5, s4
  LW s5, 0(s4)
  ADDIW s5, s5, 1
  SW s5, 0(s4)
  JAL zero, bb24
bb43:
  LA s4, ptr
  LW s4, 0(s4)
  ADDI s5, zero, 1
  SUBW s4, s4, s5
  LA s5, ptr
  SW s4, 0(s5)
  JAL zero, bb25
bb44:
  LA s4, ptr
  LW s4, 0(s4)
  ADDIW s4, s4, 1
  LA s5, ptr
  SW s4, 0(s5)
  JAL zero, bb26
