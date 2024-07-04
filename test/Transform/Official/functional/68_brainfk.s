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
  ADDI sp, sp, -80
  SD s4, 32(sp)
  SD ra, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s1, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  SW zero, 8(sp)
  JAL zero, bb2
bb2:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb3
  JAL zero, bb4
bb3:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  SW s2, 24(sp)
  XORI s1, s2, 62
  SLTIU s2, s1, 1
  BNE s2, zero, bb5
  JAL zero, bb7
bb4:
  LD s4, 32(sp)
  LD ra, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s1, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LA s1, ptr
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  LA s2, ptr
  SW s1, 0(s2)
  JAL zero, bb6
bb6:
  LW s1, 8(sp)
  ADDIW s2, s1, 1
  SW s2, 8(sp)
  JAL zero, bb2
bb7:
  LW s1, 24(sp)
  XORI s2, s1, 60
  SLTIU s1, s2, 1
  BNE s1, zero, bb8
  JAL zero, bb10
bb8:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 1
  SUBW s3, s2, s1
  LA s1, ptr
  SW s3, 0(s1)
  JAL zero, bb9
bb9:
  JAL zero, bb6
bb10:
  LW s1, 24(sp)
  XORI s2, s1, 43
  SLTIU s1, s2, 1
  BNE s1, zero, bb11
  JAL zero, bb13
bb11:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  LA s1, ptr
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, tape
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDIW s3, s1, 1
  SW s3, 0(s2)
  JAL zero, bb12
bb12:
  JAL zero, bb9
bb13:
  LW s1, 24(sp)
  XORI s2, s1, 45
  SLTIU s1, s2, 1
  BNE s1, zero, bb14
  JAL zero, bb16
bb14:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  LA s1, ptr
  LW s3, 0(s1)
  ADDI s1, zero, 4
  MULW s4, s3, s1
  LA s1, tape
  ADD s3, s1, s4
  LW s1, 0(s3)
  ADDI s3, zero, 1
  SUBW s4, s1, s3
  SW s4, 0(s2)
  JAL zero, bb15
bb15:
  JAL zero, bb12
bb16:
  LW s1, 24(sp)
  XORI s2, s1, 46
  SLTIU s1, s2, 1
  BNE s1, zero, bb17
  JAL zero, bb19
bb17:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  LW s1, 0(s2)
  ADD a0, s1, zero
  CALL putch
  JAL zero, bb18
bb18:
  JAL zero, bb15
bb19:
  LW s1, 24(sp)
  XORI s2, s1, 44
  SLTIU s1, s2, 1
  BNE s1, zero, bb20
  JAL zero, bb22
bb20:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  CALL getch
  ADD s1, a0, zero
  SW s1, 0(s2)
  JAL zero, bb21
bb21:
  JAL zero, bb18
bb22:
  LW s1, 24(sp)
  XORI s2, s1, 93
  SLTIU s1, s2, 1
  BNE s1, zero, bb23
  JAL zero, bb24
bb23:
  LA s1, ptr
  LW s2, 0(s1)
  ADDI s1, zero, 4
  MULW s3, s2, s1
  LA s1, tape
  ADD s2, s1, s3
  LW s1, 0(s2)
  XOR s2, s1, zero
  SLTU s1, zero, s2
  SB s1, 0(sp)
  JAL zero, bb25
bb24:
  ADDI s1, zero, 0
  SB s1, 0(sp)
  JAL zero, bb25
bb25:
  LB s1, 0(sp)
  BNE s1, zero, bb26
  JAL zero, bb27
bb26:
  ADDI s1, zero, 1
  SW s1, 16(sp)
  JAL zero, bb28
bb27:
  JAL zero, bb21
bb28:
  LW s1, 16(sp)
  SLT s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb29
  JAL zero, bb30
bb29:
  LW s1, 8(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s3, s1
  ADD s1, s0, s2
  LW s2, 0(s1)
  SW s2, 24(sp)
  XORI s1, s2, 91
  SLTIU s2, s1, 1
  BNE s2, zero, bb31
  JAL zero, bb33
bb30:
  JAL zero, bb27
bb31:
  LW s1, 16(sp)
  ADDI s2, zero, 1
  SUBW s3, s1, s2
  SW s3, 16(sp)
  JAL zero, bb32
bb32:
  JAL zero, bb28
bb33:
  LW s1, 24(sp)
  XORI s2, s1, 93
  SLTIU s1, s2, 1
  BNE s1, zero, bb34
  JAL zero, bb35
bb34:
  LW s1, 16(sp)
  ADDIW s2, s1, 1
  SW s2, 16(sp)
  JAL zero, bb35
bb35:
  JAL zero, bb32
read_program:
  ADDI sp, sp, -48
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  SW zero, 8(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  JAL zero, bb37
bb37:
  LW s0, 8(sp)
  LW s1, 0(sp)
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, program
  ADD s1, s0, s2
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(s1)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb37
bb39:
  LW s0, 8(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  LA s0, program
  ADD s1, s0, s2
  SW zero, 0(s1)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
