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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb3
  # implict jump to bb2
bb2:
  SLLIW s0, s2, 2
  LA s1, program
  ADD s2, s1, s0
  SW zero, 0(s2)
  LA s0, program
  ADD a0, s0, zero
  CALL interpret
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb3:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s5, s4, s3
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
interpret:
  ADDI sp, sp, -112
  SD s4, 8(sp)
  SD s5, 16(sp)
  SD s11, 24(sp)
  SD s0, 32(sp)
  SD s7, 40(sp)
  SD s10, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s8, 88(sp)
  SD s9, 96(sp)
  SD ra, 104(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD t4, s3, zero
  SW t4, 4(sp)
  ADD t4, s2, zero
  SW t4, 0(sp)
  ADD s6, s1, zero
  LW t4, 0(sp)
  SLLIW s7, t4, 2
  ADD s8, s0, s7
  LW s7, 0(s8)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb7
  # implict jump to bb6
bb6:
  LD s4, 8(sp)
  LD s5, 16(sp)
  LD s11, 24(sp)
  LD s0, 32(sp)
  LD s7, 40(sp)
  LD s10, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s8, 88(sp)
  LD s9, 96(sp)
  LD ra, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb7:
  LW s7, 0(s8)
  XORI s8, s7, 62
  SLTIU s9, s8, 1
  BNE s9, zero, bb40
  # implict jump to bb8
bb8:
  XORI s1, s7, 60
  SLTIU s2, s1, 1
  BNE s2, zero, bb39
  # implict jump to bb9
bb9:
  XORI s8, s7, 43
  SLTIU s9, s8, 1
  BNE s9, zero, bb38
  # implict jump to bb10
bb10:
  XORI s1, s7, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb37
  # implict jump to bb11
bb11:
  XORI s8, s7, 46
  SLTIU s9, s8, 1
  BNE s9, zero, bb36
  # implict jump to bb12
bb12:
  XORI s1, s7, 44
  SLTIU s2, s1, 1
  BNE s2, zero, bb35
  # implict jump to bb13
bb13:
  XORI s4, s7, 93
  SLTIU s5, s4, 1
  BNE s5, zero, bb34
  # implict jump to bb14
bb14:
  ADD s5, zero, zero
  # implict jump to bb15
bb15:
  ADD s4, s5, zero
  BNE s4, zero, bb24
  # implict jump to bb16
bb16:
  LW t4, 0(sp)
  ADD s6, t4, zero
  LW t4, 4(sp)
  ADD s7, t4, zero
  # implict jump to bb17
bb17:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s1, s4, zero
  ADD s2, s9, zero
  ADD s3, s8, zero
  # implict jump to bb18
bb18:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s8, s6, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  # implict jump to bb19
bb19:
  ADD s11, s10, zero
  ADD s5, s9, zero
  ADD s4, s8, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s11, zero
  # implict jump to bb20
bb20:
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s1, zero
  ADD s8, t1, zero
  ADD s9, t0, zero
  ADD s10, s11, zero
  # implict jump to bb21
bb21:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  ADD s1, t1, zero
  ADD s2, t0, zero
  ADD s3, s11, zero
  # implict jump to bb22
bb22:
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s1, zero
  ADD s8, t1, zero
  ADD s9, t0, zero
  ADD s10, s11, zero
  # implict jump to bb23
bb23:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s8, zero
  ADDIW t2, t0, 1
  ADD s1, t1, zero
  ADD s2, t2, zero
  ADD s3, s11, zero
  JAL zero, bb5
bb24:
  LW t4, 0(sp)
  ADD s6, t4, zero
  ADDI s7, zero, 1
  # implict jump to bb25
bb25:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, zero, s8
  BNE s10, zero, bb27
  # implict jump to bb26
bb26:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb17
bb27:
  ADDI s10, zero, 1
  SUBW s11, s9, s10
  SLLIW s10, s11, 2
  ADD t0, s0, s10
  LW s10, 0(t0)
  XORI t0, s10, 91
  SLTIU t1, t0, 1
  BNE t1, zero, bb33
  # implict jump to bb28
bb28:
  XORI s6, s10, 93
  SLTIU s7, s6, 1
  BNE s7, zero, bb32
  # implict jump to bb29
bb29:
  ADD s7, s8, zero
  # implict jump to bb30
bb30:
  ADD s6, s7, zero
  ADD t0, s6, zero
  # implict jump to bb31
bb31:
  ADD t1, t0, zero
  ADD s6, s11, zero
  ADD s7, t1, zero
  JAL zero, bb25
bb32:
  ADDIW s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb30
bb33:
  ADDI t0, zero, 1
  SUBW t1, s8, t0
  ADD t0, t1, zero
  JAL zero, bb31
bb34:
  LA s4, ptr
  LW s5, 0(s4)
  SLLIW s4, s5, 2
  LA s5, tape
  ADD s6, s5, s4
  LW s4, 0(s6)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb15
bb35:
  LA s1, ptr
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, tape
  ADD s3, s2, s1
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s3)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb18
bb36:
  LA s8, ptr
  LW s9, 0(s8)
  SLLIW s8, s9, 2
  LA s9, tape
  ADD s10, s9, s8
  LW s8, 0(s10)
  ADD a0, s8, zero
  CALL putch
  ADD s8, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  JAL zero, bb19
bb37:
  LA s1, ptr
  LW s2, 0(s1)
  SLLIW s1, s2, 2
  LA s2, tape
  ADD s3, s2, s1
  LW s1, 0(s3)
  ADDI s2, zero, 1
  SUBW s11, s1, s2
  SW s11, 0(s3)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb20
bb38:
  LA s8, ptr
  LW s9, 0(s8)
  SLLIW s8, s9, 2
  LA s9, tape
  ADD s10, s9, s8
  LW s8, 0(s10)
  ADDIW s9, s8, 1
  SW s9, 0(s10)
  ADD s8, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  JAL zero, bb21
bb39:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  LA s1, ptr
  SW s3, 0(s1)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 4(sp)
  ADD s3, t4, zero
  JAL zero, bb22
bb40:
  LA s8, ptr
  LW s9, 0(s8)
  ADDIW s8, s9, 1
  LA s9, ptr
  SW s8, 0(s9)
  ADD s8, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 4(sp)
  ADD s10, t4, zero
  JAL zero, bb23
read_program:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb42
bb42:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb44
  # implict jump to bb43
bb43:
  SLLIW s0, s2, 2
  LA s1, program
  ADD s2, s1, s0
  SW zero, 0(s2)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb44:
  SLLIW s3, s2, 2
  LA s4, program
  ADD s5, s4, s3
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb42
