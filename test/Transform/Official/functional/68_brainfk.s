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
  ADD s1, a0, zero
  ADDI s2, zero, 0
  BLT s2, s1, bb3
  # implict jump to bb1
bb1:
  ADD s2, zero, zero
  # implict jump to bb2
bb2:
  SLLIW s2, s2, 2
  LA s4, program
  ADD s2, s4, s2
  ADDI s4, zero, 0
  SW s4, 0(s2)
  LA s2, program
  ADD a0, s2, zero
  CALL interpret
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
bb3:
  ADD s3, zero, zero
  # implict jump to bb4
bb4:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, program
  ADD s5, s6, s5
  CALL getch
  ADD s6, a0, zero
  SW s6, 0(s5)
  ADDIW s0, s4, 1
  # implict jump to bb5
bb5:
  BLT s0, s1, bb7
  # implict jump to bb6
bb6:
  ADD s2, s0, zero
  JAL zero, bb2
bb7:
  ADD s3, s0, zero
  JAL zero, bb4
interpret:
  ADDI sp, sp, -128
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s1, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD s5, 64(sp)
  SD s6, 72(sp)
  SD s7, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD s10, 104(sp)
  SD s11, 120(sp)
  ADD t4, a0, zero
  SD t4, 112(sp)
  SLLI s6, zero, 2
  LD t4, 112(sp)
  ADD s6, t4, s6
  LW s6, 0(s6)
  BNE s6, zero, bb10
  # implict jump to bb9
bb9:
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s1, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD s5, 64(sp)
  LD s6, 72(sp)
  LD s7, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD s10, 104(sp)
  LD s11, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb10:
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD t4, zero, zero
  SB t4, 1(sp)
  # implict jump to bb11
bb11:
  LB t4, 1(sp)
  ADD s10, t4, zero
  ADD s11, s8, zero
  ADD t4, s7, zero
  SW t4, 4(sp)
  ADD t1, s6, zero
  XORI t2, t1, 62
  SLTIU t2, t2, 1
  BNE t2, zero, bb50
  # implict jump to bb12
bb12:
  XORI t2, t1, 60
  SLTIU t2, t2, 1
  BNE t2, zero, bb49
  # implict jump to bb13
bb13:
  XORI t2, t1, 43
  SLTIU t2, t2, 1
  BNE t2, zero, bb48
  # implict jump to bb14
bb14:
  XORI t2, t1, 45
  SLTIU t2, t2, 1
  BNE t2, zero, bb47
  # implict jump to bb15
bb15:
  XORI t2, t1, 46
  SLTIU t2, t2, 1
  BNE t2, zero, bb46
  # implict jump to bb16
bb16:
  XORI t2, t1, 44
  SLTIU t2, t2, 1
  BNE t2, zero, bb45
  # implict jump to bb17
bb17:
  XORI t1, t1, 93
  SLTIU t1, t1, 1
  BNE t1, zero, bb44
  # implict jump to bb18
bb18:
  ADD t1, zero, zero
  # implict jump to bb19
bb19:
  BNE t1, zero, bb30
  # implict jump to bb20
bb20:
  ADD t2, s11, zero
  LW t4, 4(sp)
  ADD a1, t4, zero
  # implict jump to bb21
bb21:
  ADD t4, t1, zero
  SB t4, 0(sp)
  ADD t4, t2, zero
  SW t4, 8(sp)
  ADD t4, a1, zero
  SW t4, 12(sp)
  # implict jump to bb22
bb22:
  LW t4, 12(sp)
  ADD s0, t4, zero
  LW t4, 8(sp)
  ADD s4, t4, zero
  LB t4, 0(sp)
  ADD s5, t4, zero
  # implict jump to bb23
bb23:
  ADD s2, s5, zero
  # implict jump to bb24
bb24:
  # implict jump to bb25
bb25:
  # implict jump to bb26
bb26:
  # implict jump to bb27
bb27:
  ADD s1, s0, zero
  ADD t4, s2, zero
  SB t4, 2(sp)
  ADDIW s3, s4, 1
  # implict jump to bb28
bb28:
  SLLIW s0, s3, 2
  LD t4, 112(sp)
  ADD s0, t4, s0
  LW s0, 0(s0)
  BNE s0, zero, bb29
  JAL zero, bb9
bb29:
  ADD s6, s0, zero
  ADD s7, s1, zero
  ADD s8, s3, zero
  LB t3, 2(sp)
  ADD t4, t3, zero
  SB t4, 1(sp)
  JAL zero, bb11
bb30:
  SLTI a2, zero, 1
  BNE a2, zero, bb33
  # implict jump to bb31
bb31:
  ADDI a2, zero, 1
  ADD a3, s11, zero
  # implict jump to bb32
bb32:
  ADD t2, a3, zero
  ADD a1, a2, zero
  JAL zero, bb21
bb33:
  ADDI a4, zero, 1
  ADD a5, s11, zero
  # implict jump to bb34
bb34:
  ADD a6, a5, zero
  ADD a7, a4, zero
  ADDI t6, zero, 1
  SUBW s0, a6, t6
  SLLIW a6, s0, 2
  LD t4, 112(sp)
  ADD a6, t4, a6
  LW a6, 0(a6)
  XORI t6, a6, 91
  SLTIU t6, t6, 1
  BNE t6, zero, bb43
  # implict jump to bb35
bb35:
  XORI a6, a6, 93
  SLTIU a6, a6, 1
  BNE a6, zero, bb42
  # implict jump to bb36
bb36:
  ADD a6, a7, zero
  # implict jump to bb37
bb37:
  # implict jump to bb38
bb38:
  ADD s4, a6, zero
  # implict jump to bb39
bb39:
  BLT zero, s4, bb41
  # implict jump to bb40
bb40:
  ADD a2, s4, zero
  ADD a3, s0, zero
  JAL zero, bb32
bb41:
  ADD a4, s4, zero
  ADD a5, s0, zero
  JAL zero, bb34
bb42:
  ADDIW t6, a7, 1
  ADD a6, t6, zero
  JAL zero, bb37
bb43:
  ADDI t6, zero, 1
  SUBW a7, a7, t6
  ADD a6, a7, zero
  JAL zero, bb38
bb44:
  LA t2, ptr
  LW t2, 0(t2)
  SLLIW t2, t2, 2
  LA a1, tape
  ADD t2, a1, t2
  LW t2, 0(t2)
  SLTU t2, zero, t2
  ADD t1, t2, zero
  JAL zero, bb19
bb45:
  LA s0, ptr
  LW s0, 0(s0)
  SLLIW s0, s0, 2
  LA s4, tape
  ADD s0, s4, s0
  CALL getch
  ADD s4, a0, zero
  SW s4, 0(s0)
  ADD t4, s10, zero
  SB t4, 0(sp)
  ADD t4, s11, zero
  SW t4, 8(sp)
  LW t3, 4(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  JAL zero, bb22
bb46:
  LA s9, ptr
  LW s9, 0(s9)
  SLLIW s9, s9, 2
  LA s2, tape
  ADD s2, s2, s9
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putch
  ADD s5, s10, zero
  ADD s4, s11, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  JAL zero, bb23
bb47:
  LA s5, ptr
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s9, tape
  ADD s5, s9, s5
  LW s9, 0(s5)
  ADDI t0, zero, 1
  SUBW s9, s9, t0
  SW s9, 0(s5)
  ADD s2, s10, zero
  ADD s4, s11, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  JAL zero, bb24
bb48:
  LA s5, ptr
  LW s5, 0(s5)
  SLLIW s5, s5, 2
  LA s9, tape
  ADD s5, s9, s5
  LW s9, 0(s5)
  ADDIW s9, s9, 1
  SW s9, 0(s5)
  ADD s2, s10, zero
  ADD s4, s11, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  JAL zero, bb25
bb49:
  LA s5, ptr
  LW s5, 0(s5)
  ADDI s9, zero, 1
  SUBW s5, s5, s9
  LA s9, ptr
  SW s5, 0(s9)
  ADD s2, s10, zero
  ADD s4, s11, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  JAL zero, bb26
bb50:
  LA s5, ptr
  LW s5, 0(s5)
  ADDIW s5, s5, 1
  LA s9, ptr
  SW s5, 0(s9)
  ADD s2, s10, zero
  ADD s4, s11, zero
  LW t4, 4(sp)
  ADD s0, t4, zero
  JAL zero, bb27
read_program:
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
  ADD s1, a0, zero
  BLT zero, s1, bb54
  # implict jump to bb52
bb52:
  ADD s2, zero, zero
  # implict jump to bb53
bb53:
  SLLIW s2, s2, 2
  LA s4, program
  ADD s2, s4, s2
  SW zero, 0(s2)
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
bb54:
  ADD s3, zero, zero
  # implict jump to bb55
bb55:
  ADD s4, s3, zero
  SLLIW s5, s4, 2
  LA s6, program
  ADD s5, s6, s5
  CALL getch
  SW a0, 0(s5)
  ADDIW s0, s4, 1
  # implict jump to bb56
bb56:
  BLT s0, s1, bb58
  # implict jump to bb57
bb57:
  ADD s2, s0, zero
  JAL zero, bb53
bb58:
  ADD s3, s0, zero
  JAL zero, bb55
