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
  ADDI sp, sp, -16
  SD ra, 0(sp)
  SD s0, 8(sp)
  CALL read_program
  LA s0, program
  ADD a0, s0, zero
  CALL interpret
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  ADDI sp, sp, 16
  JALR zero, 0(ra)
interpret:
  ADDI sp, sp, -112
  SD s11, 8(sp)
  SD s10, 16(sp)
  SD s9, 24(sp)
  SD s0, 32(sp)
  SD s5, 40(sp)
  SD s7, 48(sp)
  SD s1, 56(sp)
  SD s6, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  SD s8, 104(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb2
bb2:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW s5, 0(s4)
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb3
  JAL zero, bb4
bb3:
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s4, s0, s5
  LW t4, 0(s4)
  SW t4, 0(sp)
  LW t4, 0(sp)
  XORI s4, t4, 62
  SLTIU s6, s4, 1
  BNE s6, zero, bb5
  JAL zero, bb7
bb4:
  LD s11, 8(sp)
  LD s10, 16(sp)
  LD s9, 24(sp)
  LD s0, 32(sp)
  LD s5, 40(sp)
  LD s7, 48(sp)
  LD s1, 56(sp)
  LD s6, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  LD s8, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb5:
  LA s4, ptr
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LA s6, ptr
  SW s4, 0(s6)
  ADD s4, s1, zero
  ADD s6, s2, zero
  ADD s7, s3, zero
  JAL zero, bb6
bb6:
  ADDIW s8, s6, 1
  ADD s1, s4, zero
  ADD s2, s8, zero
  ADD s3, s7, zero
  JAL zero, bb2
bb7:
  LW t4, 0(sp)
  XORI s8, t4, 60
  SLTIU s9, s8, 1
  BNE s9, zero, bb8
  JAL zero, bb10
bb8:
  LA s8, ptr
  LW s9, 0(s8)
  ADDI s8, zero, 1
  SUBW s10, s9, s8
  LA s8, ptr
  SW s10, 0(s8)
  ADD s8, s1, zero
  ADD s9, s2, zero
  ADD s10, s3, zero
  LW t4, 0(sp)
  ADD s11, t4, zero
  JAL zero, bb9
bb9:
  ADD s4, s8, zero
  ADD s6, s9, zero
  ADD s7, s10, zero
  JAL zero, bb6
bb10:
  LW t4, 0(sp)
  XORI s4, t4, 43
  SLTIU s6, s4, 1
  BNE s6, zero, bb11
  JAL zero, bb13
bb11:
  LA s4, ptr
  LW s6, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s6, s4
  LA s4, tape
  ADD s6, s4, s7
  LA s4, ptr
  LW s7, 0(s4)
  ADDI s4, zero, 4
  MULW t0, s7, s4
  LA s4, tape
  ADD s7, s4, t0
  LW s4, 0(s7)
  ADDIW s7, s4, 1
  SW s7, 0(s6)
  ADD s4, s1, zero
  ADD s6, s2, zero
  ADD s7, s3, zero
  LW t4, 0(sp)
  ADD t0, t4, zero
  JAL zero, bb12
bb12:
  ADD s8, s4, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  ADD s11, t0, zero
  JAL zero, bb9
bb13:
  LW t4, 0(sp)
  XORI s8, t4, 45
  SLTIU s9, s8, 1
  BNE s9, zero, bb14
  JAL zero, bb16
bb14:
  LA s8, ptr
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LA s8, tape
  ADD s9, s8, s10
  LA s8, ptr
  LW s10, 0(s8)
  ADDI s8, zero, 4
  MULW s11, s10, s8
  LA s8, tape
  ADD s10, s8, s11
  LW s8, 0(s10)
  ADDI s10, zero, 1
  SUBW s11, s8, s10
  SW s11, 0(s9)
  ADD s8, s1, zero
  ADD s9, s2, zero
  ADD s10, s3, zero
  LW t4, 0(sp)
  ADD s11, t4, zero
  JAL zero, bb15
bb15:
  ADD s4, s8, zero
  ADD s6, s9, zero
  ADD s7, s10, zero
  ADD t0, s11, zero
  JAL zero, bb12
bb16:
  LW t4, 0(sp)
  XORI s4, t4, 46
  SLTIU s6, s4, 1
  BNE s6, zero, bb17
  JAL zero, bb19
bb17:
  LA s4, ptr
  LW s6, 0(s4)
  ADDI s4, zero, 4
  MULW s7, s6, s4
  LA s4, tape
  ADD s6, s4, s7
  LW s4, 0(s6)
  ADD a0, s4, zero
  CALL putch
  ADD s4, s1, zero
  ADD s6, s2, zero
  ADD s7, s3, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  JAL zero, bb18
bb18:
  ADD s8, s4, zero
  ADD s9, s6, zero
  ADD s10, s7, zero
  ADD s11, s5, zero
  JAL zero, bb15
bb19:
  LW t4, 0(sp)
  XORI s8, t4, 44
  SLTIU s9, s8, 1
  BNE s9, zero, bb20
  JAL zero, bb22
bb20:
  LA s8, ptr
  LW s9, 0(s8)
  ADDI s8, zero, 4
  MULW s10, s9, s8
  LA s8, tape
  ADD s9, s8, s10
  CALL getch
  ADD s8, a0, zero
  SW s8, 0(s9)
  ADD s8, s1, zero
  ADD s1, s2, zero
  ADD s9, s3, zero
  LW t4, 0(sp)
  ADD s10, t4, zero
  JAL zero, bb21
bb21:
  ADD s4, s8, zero
  ADD s6, s1, zero
  ADD s7, s9, zero
  ADD s5, s10, zero
  JAL zero, bb18
bb22:
  LW t4, 0(sp)
  XORI s4, t4, 93
  SLTIU s5, s4, 1
  BNE s5, zero, bb23
  JAL zero, bb24
bb23:
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
  JAL zero, bb25
bb24:
  ADD s5, zero, zero
  JAL zero, bb25
bb25:
  BNE s5, zero, bb26
  JAL zero, bb36
bb26:
  ADD s4, s2, zero
  ADDI s6, zero, 1
  LW t4, 0(sp)
  ADD s7, t4, zero
  JAL zero, bb28
bb27:
  ADD s8, s5, zero
  ADD s1, s11, zero
  ADD s9, s4, zero
  ADD s10, s6, zero
  JAL zero, bb21
bb28:
  SLT s11, zero, s6
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb29
  JAL zero, bb30
bb29:
  ADDI s11, zero, 1
  SUBW t0, s4, s11
  ADDI s11, zero, 4
  MULW t1, t0, s11
  ADD s11, s0, t1
  LW t1, 0(s11)
  XORI s11, t1, 91
  SLTIU t2, s11, 1
  BNE t2, zero, bb31
  JAL zero, bb33
bb30:
  ADD s11, s4, zero
  ADD s4, s6, zero
  ADD s6, s7, zero
  JAL zero, bb27
bb31:
  ADDI s11, zero, 1
  SUBW t2, s6, s11
  ADD s11, t2, zero
  JAL zero, bb32
bb32:
  ADD s4, t0, zero
  ADD s6, s11, zero
  ADD s7, t1, zero
  JAL zero, bb28
bb33:
  XORI t2, t1, 93
  SLTIU a0, t2, 1
  BNE a0, zero, bb34
  JAL zero, bb37
bb34:
  ADDIW t2, s6, 1
  ADD a0, t2, zero
  JAL zero, bb35
bb35:
  ADD s11, a0, zero
  JAL zero, bb32
bb36:
  ADD s11, s2, zero
  ADD s4, s3, zero
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb27
bb37:
  ADD a0, s6, zero
  JAL zero, bb35
read_program:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb39
bb39:
  SLT s2, s1, s0
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb40
  JAL zero, bb41
bb40:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  LA s2, program
  ADD s4, s2, s3
  CALL getch
  ADD s2, a0, zero
  SW s2, 0(s4)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb39
bb41:
  ADDI s0, zero, 4
  MULW s2, s1, s0
  LA s0, program
  ADD s1, s0, s2
  SW zero, 0(s1)
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
