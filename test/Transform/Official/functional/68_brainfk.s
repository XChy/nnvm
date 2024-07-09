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
  JAL zero, bb1
bb1:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, program
  ADD s5, s3, s4
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb1
bb3:
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, program
  ADD s2, s0, s1
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
interpret:
  ADDI sp, sp, -128
  SD s4, 16(sp)
  SD s5, 24(sp)
  SD s11, 32(sp)
  SD s0, 40(sp)
  SD s7, 48(sp)
  SD s10, 56(sp)
  SD s1, 64(sp)
  SD s6, 72(sp)
  SD s2, 80(sp)
  SD s3, 88(sp)
  SD s8, 96(sp)
  SD s9, 104(sp)
  SD ra, 112(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb5
bb5:
  ADD t4, s3, zero
  SW t4, 8(sp)
  ADD t4, s2, zero
  SW t4, 0(sp)
  ADD s6, s1, zero
  ADDI s7, zero, 4
  LW t4, 0(sp)
  MULW s8, t4, s7
  ADD s7, s0, s8
  LW s8, 0(s7)
  XOR s9, s8, zero
  SLTU s8, zero, s9
  BNE s8, zero, bb6
  JAL zero, bb7
bb6:
  LW s8, 0(s7)
  XORI s7, s8, 62
  SLTIU s9, s7, 1
  BNE s9, zero, bb8
  JAL zero, bb10
bb7:
  LD s4, 16(sp)
  LD s5, 24(sp)
  LD s11, 32(sp)
  LD s0, 40(sp)
  LD s7, 48(sp)
  LD s10, 56(sp)
  LD s1, 64(sp)
  LD s6, 72(sp)
  LD s2, 80(sp)
  LD s3, 88(sp)
  LD s8, 96(sp)
  LD s9, 104(sp)
  LD ra, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb8:
  LA s7, ptr
  LW s9, 0(s7)
  ADDIW s7, s9, 1
  LA s9, ptr
  SW s7, 0(s9)
  ADD s7, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 8(sp)
  ADD s10, t4, zero
  JAL zero, bb9
bb9:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s7, zero
  ADDIW t2, t0, 1
  ADD s1, t1, zero
  ADD s2, t2, zero
  ADD s3, s11, zero
  JAL zero, bb5
bb10:
  XORI s1, s8, 60
  SLTIU s2, s1, 1
  BNE s2, zero, bb11
  JAL zero, bb13
bb11:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  LA s1, ptr
  SW s3, 0(s1)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 8(sp)
  ADD s3, t4, zero
  JAL zero, bb12
bb12:
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s1, zero
  ADD s7, t1, zero
  ADD s9, t0, zero
  ADD s10, s11, zero
  JAL zero, bb9
bb13:
  XORI s7, s8, 43
  SLTIU s9, s7, 1
  BNE s9, zero, bb14
  JAL zero, bb16
bb14:
  LA s7, ptr
  LW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s10, s9, s7
  LA s7, tape
  ADD s9, s7, s10
  LA s7, ptr
  LW s10, 0(s7)
  ADDI s7, zero, 4
  MULW s11, s10, s7
  LA s7, tape
  ADD s10, s7, s11
  LW s7, 0(s10)
  ADDIW s10, s7, 1
  SW s10, 0(s9)
  ADD s7, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 8(sp)
  ADD s10, t4, zero
  JAL zero, bb15
bb15:
  ADD s11, s10, zero
  ADD t0, s9, zero
  ADD t1, s7, zero
  ADD s1, t1, zero
  ADD s2, t0, zero
  ADD s3, s11, zero
  JAL zero, bb12
bb16:
  XORI s1, s8, 45
  SLTIU s2, s1, 1
  BNE s2, zero, bb17
  JAL zero, bb19
bb17:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  LA s1, ptr
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s11, s3, s1
  LA s1, tape
  ADD s3, s1, s11
  LW s1, 0(s3)
  ADDI s3, zero, 1
  SUBW s11, s1, s3
  SW s11, 0(s2)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 8(sp)
  ADD s3, t4, zero
  JAL zero, bb18
bb18:
  ADD s11, s3, zero
  ADD t0, s2, zero
  ADD t1, s1, zero
  ADD s7, t1, zero
  ADD s9, t0, zero
  ADD s10, s11, zero
  JAL zero, bb15
bb19:
  XORI s7, s8, 46
  SLTIU s9, s7, 1
  BNE s9, zero, bb20
  JAL zero, bb22
bb20:
  LA s7, ptr
  LW s9, 0(s7)
  ADDI s7, zero, 4
  MULW s10, s9, s7
  LA s7, tape
  ADD s9, s7, s10
  LW s7, 0(s9)
  ADD a0, s7, zero
  CALL putch
  ADD s7, s6, zero
  LW t4, 0(sp)
  ADD s9, t4, zero
  LW t4, 8(sp)
  ADD s10, t4, zero
  JAL zero, bb21
bb21:
  ADD s11, s10, zero
  ADD s5, s9, zero
  ADD s4, s7, zero
  ADD s1, s4, zero
  ADD s2, s5, zero
  ADD s3, s11, zero
  JAL zero, bb18
bb22:
  XORI s1, s8, 44
  SLTIU s2, s1, 1
  BNE s2, zero, bb23
  JAL zero, bb25
bb23:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s2)
  ADD s1, s6, zero
  LW t4, 0(sp)
  ADD s2, t4, zero
  LW t4, 8(sp)
  ADD s3, t4, zero
  JAL zero, bb24
bb24:
  ADD s4, s3, zero
  ADD s5, s2, zero
  ADD s6, s1, zero
  ADD s7, s6, zero
  ADD s9, s5, zero
  ADD s10, s4, zero
  JAL zero, bb21
bb25:
  XORI s4, s8, 93
  SLTIU s5, s4, 1
  BNE s5, zero, bb26
  JAL zero, bb27
bb26:
  LA s4, ptr
  LW s5, 0(s4)
  ADDI s4, zero, 4
  MULW s6, s5, s4
  LA s4, tape
  ADD s5, s4, s6
  LW s4, 0(s5)
  XOR s5, s4, zero
  SLTU s4, zero, s5
  ADD s5, s4, zero
  JAL zero, bb28
bb27:
  ADD s5, zero, zero
  JAL zero, bb28
bb28:
  ADD s4, s5, zero
  BNE s4, zero, bb29
  JAL zero, bb39
bb29:
  LW t4, 0(sp)
  ADD s6, t4, zero
  ADDI s7, zero, 1
  JAL zero, bb31
bb30:
  ADD s8, s7, zero
  ADD s9, s6, zero
  ADD s1, s4, zero
  ADD s2, s9, zero
  ADD s3, s8, zero
  JAL zero, bb24
bb31:
  ADD s8, s7, zero
  ADD s9, s6, zero
  SLT s10, zero, s8
  BNE s10, zero, bb32
  JAL zero, bb33
bb32:
  ADDI s10, zero, 1
  SUBW s11, s9, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s0, t0
  LW t0, 0(s10)
  XORI s10, t0, 91
  SLTIU t1, s10, 1
  BNE t1, zero, bb34
  JAL zero, bb36
bb33:
  ADD s6, s9, zero
  ADD s7, s8, zero
  JAL zero, bb30
bb34:
  ADDI s10, zero, 1
  SUBW t1, s8, s10
  ADD s10, t1, zero
  JAL zero, bb35
bb35:
  ADD t1, s10, zero
  ADD s6, s11, zero
  ADD s7, t1, zero
  JAL zero, bb31
bb36:
  XORI s6, t0, 93
  SLTIU s7, s6, 1
  BNE s7, zero, bb37
  JAL zero, bb40
bb37:
  ADDIW s6, s8, 1
  ADD s7, s6, zero
  JAL zero, bb38
bb38:
  ADD s6, s7, zero
  ADD s10, s6, zero
  JAL zero, bb35
bb39:
  LW t4, 0(sp)
  ADD s6, t4, zero
  LW t4, 8(sp)
  ADD s7, t4, zero
  JAL zero, bb30
bb40:
  ADD s7, s8, zero
  JAL zero, bb38
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
  JAL zero, bb42
bb42:
  ADD s2, s1, zero
  SLT s3, s2, s0
  BNE s3, zero, bb43
  JAL zero, bb44
bb43:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  LA s3, program
  ADD s5, s3, s4
  CALL getch
  ADD s3, a0, zero
  SW s3, 0(s5)
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb42
bb44:
  ADDI s0, zero, 4
  MULW s1, s2, s0
  LA s0, program
  ADD s2, s0, s1
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
