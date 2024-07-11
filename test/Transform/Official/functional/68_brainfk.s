.global main
.global interpret
.global read_program
.section .bss

program:
.space 131072
tape:
.space 262144


.section .data
ptr:
.word 0x00000000


BUFFER_LEN:
.word 0x00008000
TAPE_LEN:
.word 0x00010000
.section .text
main:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  BLT s2, s0, bb3
  # implict jump to bb2
bb2:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s3, s4, s3
  SW zero, 0(s3)
  LA s3, program
  ADD a0, s3, zero
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
bb3:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s3, s4, s3
  CALL getch
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb1
interpret:
  ADDI sp, sp, -112
  SD ra, 8(sp)
  SD s0, 16(sp)
  SD s1, 24(sp)
  SD s2, 32(sp)
  SD s3, 40(sp)
  SD s4, 48(sp)
  SD s5, 56(sp)
  SD s6, 64(sp)
  SD s7, 72(sp)
  SD s10, 80(sp)
  SD s9, 88(sp)
  SD s11, 96(sp)
  SD s8, 104(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLLIW s7, s5, 2
  ADD s7, s0, s7
  LW s8, 0(s7)
  BNE s8, zero, bb7
  # implict jump to bb6
bb6:
  LD ra, 8(sp)
  LD s0, 16(sp)
  LD s1, 24(sp)
  LD s2, 32(sp)
  LD s3, 40(sp)
  LD s4, 48(sp)
  LD s5, 56(sp)
  LD s6, 64(sp)
  LD s7, 72(sp)
  LD s10, 80(sp)
  LD s9, 88(sp)
  LD s11, 96(sp)
  LD s8, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb7:
  LW s7, 0(s7)
  XORI s8, s7, 62
  SLTIU s8, s8, 1
  BNE s8, zero, bb40
  # implict jump to bb8
bb8:
  XORI s8, s7, 60
  SLTIU s8, s8, 1
  BNE s8, zero, bb39
  # implict jump to bb9
bb9:
  XORI s8, s7, 43
  SLTIU s8, s8, 1
  BNE s8, zero, bb38
  # implict jump to bb10
bb10:
  XORI s8, s7, 45
  SLTIU s8, s8, 1
  BNE s8, zero, bb37
  # implict jump to bb11
bb11:
  XORI s8, s7, 46
  SLTIU s8, s8, 1
  BNE s8, zero, bb36
  # implict jump to bb12
bb12:
  XORI s8, s7, 44
  SLTIU s8, s8, 1
  BNE s8, zero, bb35
  # implict jump to bb13
bb13:
  XORI s7, s7, 93
  SLTIU s7, s7, 1
  BNE s7, zero, bb34
  # implict jump to bb14
bb14:
  ADD s7, zero, zero
  # implict jump to bb15
bb15:
  BNE s7, zero, bb24
  # implict jump to bb16
bb16:
  ADD s8, s5, zero
  ADD s9, s4, zero
  # implict jump to bb17
bb17:
  ADD t4, s7, zero
  SB t4, 0(sp)
  # implict jump to bb18
bb18:
  LB t4, 0(sp)
  ADD s7, t4, zero
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
  ADDIW s4, s8, 1
  ADD s1, s7, zero
  ADD s2, s4, zero
  ADD s3, s9, zero
  JAL zero, bb5
bb24:
  ADD s10, s5, zero
  ADDI s11, zero, 1
  # implict jump to bb25
bb25:
  ADD t0, s11, zero
  ADD t1, s10, zero
  BLT zero, t0, bb27
  # implict jump to bb26
bb26:
  ADD s8, t1, zero
  ADD s9, t0, zero
  JAL zero, bb17
bb27:
  ADDI a1, zero, 1
  SUBW t1, t1, a1
  SLLIW a1, t1, 2
  ADD a1, s0, a1
  LW a1, 0(a1)
  XORI a2, a1, 91
  SLTIU a2, a2, 1
  BNE a2, zero, bb33
  # implict jump to bb28
bb28:
  XORI a1, a1, 93
  SLTIU a1, a1, 1
  BNE a1, zero, bb32
  # implict jump to bb29
bb29:
  ADD a1, t0, zero
  # implict jump to bb30
bb30:
  # implict jump to bb31
bb31:
  ADD s10, t1, zero
  ADD s11, a1, zero
  JAL zero, bb25
bb32:
  ADDIW a2, t0, 1
  ADD a1, a2, zero
  JAL zero, bb30
bb33:
  ADDI a2, zero, 1
  SUBW t0, t0, a2
  ADD a1, t0, zero
  JAL zero, bb31
bb34:
  LA s8, ptr
  LW s8, 0(s8)
  SLLIW s8, s8, 2
  LA s9, tape
  ADD s8, s9, s8
  LW s8, 0(s8)
  SLTU s8, zero, s8
  ADD s7, s8, zero
  JAL zero, bb15
bb35:
  LA s7, ptr
  LW s7, 0(s7)
  SLLIW s7, s7, 2
  LA s10, tape
  ADD s7, s10, s7
  CALL getch
  ADD s10, a0, zero
  SW s10, 0(s7)
  ADD t4, s6, zero
  SB t4, 0(sp)
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb18
bb36:
  LA s10, ptr
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, tape
  ADD s10, s11, s10
  LW s10, 0(s10)
  ADD a0, s10, zero
  CALL putch
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb19
bb37:
  LA s10, ptr
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, tape
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDI t0, zero, 1
  SUBW s11, s11, t0
  SW s11, 0(s10)
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb20
bb38:
  LA s10, ptr
  LW s10, 0(s10)
  SLLIW s10, s10, 2
  LA s11, tape
  ADD s10, s11, s10
  LW s11, 0(s10)
  ADDIW s11, s11, 1
  SW s11, 0(s10)
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb21
bb39:
  LA s10, ptr
  LW s10, 0(s10)
  ADDI s11, zero, 1
  SUBW s10, s10, s11
  LA s11, ptr
  SW s10, 0(s11)
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb22
bb40:
  LA s10, ptr
  LW s10, 0(s10)
  ADDIW s10, s10, 1
  LA s11, ptr
  SW s10, 0(s11)
  ADD s7, s6, zero
  ADD s8, s5, zero
  ADD s9, s4, zero
  JAL zero, bb23
read_program:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb42
bb42:
  ADD s2, s1, zero
  BLT s2, s0, bb44
  # implict jump to bb43
bb43:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s3, s4, s3
  SW zero, 0(s3)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb44:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s3, s4, s3
  CALL getch
  SW a0, 0(s3)
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb42
