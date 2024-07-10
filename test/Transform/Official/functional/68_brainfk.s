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
  SLLIW s3, s2, 2
  LA s4, program
  ADD s5, s4, s3
  SW zero, 0(s5)
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
  LD s5, 48(sp)
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
  ADDI sp, sp, -128
  SD ra, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  SD s10, 32(sp)
  SD s11, 40(sp)
  SD s7, 56(sp)
  SD s2, 64(sp)
  SD s3, 72(sp)
  SD s4, 80(sp)
  SD s5, 88(sp)
  SD s6, 96(sp)
  SD s8, 104(sp)
  SD s9, 112(sp)
  ADD t4, a0, zero
  SD t4, 48(sp)
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb5
bb5:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  SLLIW s7, s5, 2
  LD t4, 48(sp)
  ADD s8, t4, s7
  LW s7, 0(s8)
  XOR s9, s7, zero
  SLTU s7, zero, s9
  BNE s7, zero, bb7
  # implict jump to bb6
bb6:
  LD ra, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  LD s10, 32(sp)
  LD s11, 40(sp)
  LD s7, 56(sp)
  LD s2, 64(sp)
  LD s3, 72(sp)
  LD s4, 80(sp)
  LD s5, 88(sp)
  LD s6, 96(sp)
  LD s8, 104(sp)
  LD s9, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  LW s7, 0(s8)
  XORI s8, s7, 62
  SLTIU s9, s8, 1
  BNE s9, zero, bb40
  # implict jump to bb8
bb8:
  XORI s8, s7, 60
  SLTIU s9, s8, 1
  BNE s9, zero, bb39
  # implict jump to bb9
bb9:
  XORI s8, s7, 43
  SLTIU s9, s8, 1
  BNE s9, zero, bb38
  # implict jump to bb10
bb10:
  XORI s8, s7, 45
  SLTIU s9, s8, 1
  BNE s9, zero, bb37
  # implict jump to bb11
bb11:
  XORI s8, s7, 46
  SLTIU s9, s8, 1
  BNE s9, zero, bb36
  # implict jump to bb12
bb12:
  XORI s8, s7, 44
  SLTIU s9, s8, 1
  BNE s9, zero, bb35
  # implict jump to bb13
bb13:
  XORI s8, s7, 93
  SLTIU s7, s8, 1
  BNE s7, zero, bb34
  # implict jump to bb14
bb14:
  ADD s7, zero, zero
  # implict jump to bb15
bb15:
  ADD s8, s7, zero
  BNE s8, zero, bb24
  # implict jump to bb16
bb16:
  ADD s7, s5, zero
  ADD s9, s4, zero
  # implict jump to bb17
bb17:
  ADD t2, s9, zero
  ADD s9, s7, zero
  ADD s7, s8, zero
  ADD t4, s9, zero
  SW t4, 0(sp)
  ADD s9, t2, zero
  # implict jump to bb18
bb18:
  ADD s8, s9, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  ADD s10, s7, zero
  ADD s7, s10, zero
  ADD s10, s9, zero
  ADD s9, s8, zero
  # implict jump to bb19
bb19:
  ADD s0, s9, zero
  ADD s8, s10, zero
  ADD s9, s7, zero
  ADD s7, s9, zero
  ADD s9, s8, zero
  ADD s8, s0, zero
  # implict jump to bb20
bb20:
  ADD s0, s8, zero
  ADD s8, s9, zero
  ADD s9, s7, zero
  ADD s7, s9, zero
  ADD s9, s8, zero
  ADD s8, s0, zero
  # implict jump to bb21
bb21:
  ADD s0, s8, zero
  ADD s8, s9, zero
  ADD s9, s7, zero
  ADD s7, s9, zero
  ADD s9, s8, zero
  ADD s8, s0, zero
  # implict jump to bb22
bb22:
  ADD s0, s8, zero
  ADD s8, s9, zero
  ADD s9, s7, zero
  ADD s7, s9, zero
  ADD s9, s8, zero
  ADD s8, s0, zero
  # implict jump to bb23
bb23:
  ADD s0, s8, zero
  ADD s4, s9, zero
  ADD s5, s7, zero
  ADDIW s6, s4, 1
  ADD s1, s5, zero
  ADD s2, s6, zero
  ADD s3, s0, zero
  JAL zero, bb5
bb24:
  ADD s10, s5, zero
  ADDI s11, zero, 1
  # implict jump to bb25
bb25:
  ADD t0, s11, zero
  ADD t1, s10, zero
  SLT t2, zero, t0
  BNE t2, zero, bb27
  # implict jump to bb26
bb26:
  ADD s7, t1, zero
  ADD s9, t0, zero
  JAL zero, bb17
bb27:
  ADDI t2, zero, 1
  SUBW a2, t1, t2
  SLLIW t1, a2, 2
  LD t4, 48(sp)
  ADD t2, t4, t1
  LW t1, 0(t2)
  XORI t2, t1, 91
  SLTIU a3, t2, 1
  BNE a3, zero, bb33
  # implict jump to bb28
bb28:
  XORI t2, t1, 93
  SLTIU t1, t2, 1
  BNE t1, zero, bb32
  # implict jump to bb29
bb29:
  ADD t1, t0, zero
  # implict jump to bb30
bb30:
  ADD t2, t1, zero
  ADD t1, t2, zero
  # implict jump to bb31
bb31:
  ADD t0, t1, zero
  ADD s10, a2, zero
  ADD s11, t0, zero
  JAL zero, bb25
bb32:
  ADDIW t2, t0, 1
  ADD t1, t2, zero
  JAL zero, bb30
bb33:
  ADDI t2, zero, 1
  SUBW a3, t0, t2
  ADD t1, a3, zero
  JAL zero, bb31
bb34:
  LA s8, ptr
  LW s9, 0(s8)
  SLLIW s8, s9, 2
  LA s9, tape
  ADD s10, s9, s8
  LW s8, 0(s10)
  XOR s9, s8, zero
  SLTU s8, zero, s9
  ADD s7, s8, zero
  JAL zero, bb15
bb35:
  LA s8, ptr
  LW s10, 0(s8)
  SLLIW s8, s10, 2
  LA s10, tape
  ADD s11, s10, s8
  CALL getch
  ADD s8, a0, zero
  SW s8, 0(s11)
  ADD s7, s6, zero
  ADD t4, s5, zero
  SW t4, 0(sp)
  ADD s9, s4, zero
  JAL zero, bb18
bb36:
  LA s8, ptr
  LW s11, 0(s8)
  SLLIW s8, s11, 2
  LA s11, tape
  ADD s0, s11, s8
  LW s8, 0(s0)
  ADD a0, s8, zero
  CALL putch
  ADD s7, s6, zero
  ADD s10, s5, zero
  ADD s9, s4, zero
  JAL zero, bb19
bb37:
  LA s0, ptr
  LW s10, 0(s0)
  SLLIW s0, s10, 2
  LA s10, tape
  ADD s11, s10, s0
  LW s0, 0(s11)
  ADDI s10, zero, 1
  SUBW t0, s0, s10
  SW t0, 0(s11)
  ADD s7, s6, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  JAL zero, bb20
bb38:
  LA s0, ptr
  LW s10, 0(s0)
  SLLIW s0, s10, 2
  LA s10, tape
  ADD s11, s10, s0
  LW s0, 0(s11)
  ADDIW s10, s0, 1
  SW s10, 0(s11)
  ADD s7, s6, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  JAL zero, bb21
bb39:
  LA s0, ptr
  LW s10, 0(s0)
  ADDI s0, zero, 1
  SUBW s11, s10, s0
  LA s0, ptr
  SW s11, 0(s0)
  ADD s7, s6, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  JAL zero, bb22
bb40:
  LA s0, ptr
  LW s10, 0(s0)
  ADDIW s0, s10, 1
  LA s10, ptr
  SW s0, 0(s10)
  ADD s7, s6, zero
  ADD s9, s5, zero
  ADD s8, s4, zero
  JAL zero, bb23
read_program:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
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
  SLLIW s3, s2, 2
  LA s4, program
  ADD s5, s4, s3
  SW zero, 0(s5)
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
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
