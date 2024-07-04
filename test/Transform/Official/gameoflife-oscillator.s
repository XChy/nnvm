.global swap12
.global put_map
.global main
.global step
.global read_map
.section .bss




sheet2:
.space 1000000
sheet1:
.space 1000000
.section .data
steps:
.word 0x00000000
height:
.word 0x00000000
width:
.word 0x00000000
active:
.word 0x00000001


.section .text
swap12:
  ADDI sp, sp, -64
  SD s4, 16(sp)
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb1
bb1:
  LW s0, 0(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb4
bb3:
  LD s4, 16(sp)
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  LW s0, 8(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb5
  JAL zero, bb6
bb5:
  LW s0, 0(sp)
  ADDI s1, zero, 2000
  MULW s2, s0, s1
  LA s0, sheet1
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(sp)
  ADDI s2, zero, 2000
  MULW s3, s1, s2
  LA s1, sheet2
  ADD s2, s1, s3
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  SW s2, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb4
bb6:
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb1
put_map:
  ADDI sp, sp, -64
  SD s3, 16(sp)
  SD ra, 24(sp)
  SD s2, 32(sp)
  SD s1, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  ADDI s0, zero, 1
  SW s0, 0(sp)
  JAL zero, bb8
bb8:
  LW s0, 0(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb11
bb10:
  LD s3, 16(sp)
  LD ra, 24(sp)
  LD s2, 32(sp)
  LD s1, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  LW s0, 8(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDI s1, zero, 2000
  MULW s2, s0, s1
  LA s0, sheet1
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb14
  JAL zero, bb16
bb13:
  ADDI a0, zero, 10
  CALL putch
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb8
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
bb15:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb11
bb16:
  ADDI a0, zero, 46
  CALL putch
  JAL zero, bb15
main:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s2, 8(sp)
  SD s1, 16(sp)
  SD s0, 24(sp)
  CALL read_map
  ADDI a0, zero, 95
  CALL _sysy_starttime
  JAL zero, bb18
bb18:
  LA s0, steps
  LW s1, 0(s0)
  ADDI s0, zero, 0
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb19
  JAL zero, bb20
bb19:
  LA s0, active
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTIU s1, s0, 1
  BNE s1, zero, bb21
  JAL zero, bb23
bb20:
  ADDI a0, zero, 106
  CALL _sysy_stoptime
  LA s0, active
  LW s1, 0(s0)
  XORI s0, s1, 2
  SLTIU s1, s0, 1
  BNE s1, zero, bb24
  JAL zero, bb25
bb21:
  LA s0, sheet1
  ADD a0, s0, zero
  LA s0, sheet2
  ADD a1, s0, zero
  CALL step
  LA s0, active
  ADDI s1, zero, 2
  SW s1, 0(s0)
  JAL zero, bb22
bb22:
  LA s0, steps
  LW s1, 0(s0)
  ADDI s0, zero, 1
  SUBW s2, s1, s0
  LA s0, steps
  SW s2, 0(s0)
  JAL zero, bb18
bb23:
  LA s0, sheet2
  ADD a0, s0, zero
  LA s0, sheet1
  ADD a1, s0, zero
  CALL step
  LA s0, active
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb22
bb24:
  CALL swap12
  JAL zero, bb25
bb25:
  CALL put_map
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s2, 8(sp)
  LD s1, 16(sp)
  LD s0, 24(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
step:
  ADDI sp, sp, -96
  SD ra, 32(sp)
  SD s4, 40(sp)
  SD s3, 48(sp)
  SD s2, 56(sp)
  SD s6, 64(sp)
  SD s1, 72(sp)
  SD s5, 80(sp)
  SD s0, 88(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADDI s2, zero, 1
  SW s2, 24(sp)
  ADDI s2, zero, 1
  SW s2, 16(sp)
  JAL zero, bb27
bb27:
  LW s2, 16(sp)
  LA s3, height
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb28
  JAL zero, bb29
bb28:
  ADDI s2, zero, 1
  SW s2, 24(sp)
  JAL zero, bb30
bb29:
  LD ra, 32(sp)
  LD s4, 40(sp)
  LD s3, 48(sp)
  LD s2, 56(sp)
  LD s6, 64(sp)
  LD s1, 72(sp)
  LD s5, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb30:
  LW s2, 24(sp)
  LA s3, width
  LW s4, 0(s3)
  SLT s3, s4, s2
  XORI s2, s3, 1
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  LW s2, 16(sp)
  ADDI s3, zero, 1
  SUBW s4, s2, s3
  ADDI s2, zero, 2000
  MULW s3, s4, s2
  ADD s2, s0, s3
  LW s3, 24(sp)
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, s2, s4
  LW s2, 0(s3)
  LW s3, 16(sp)
  ADDI s4, zero, 1
  SUBW s5, s3, s4
  ADDI s3, zero, 2000
  MULW s4, s5, s3
  ADD s3, s0, s4
  LW s4, 24(sp)
  ADDI s5, zero, 4
  MULW s6, s4, s5
  ADD s4, s3, s6
  LW s3, 0(s4)
  ADDW s4, s2, s3
  LW s2, 16(sp)
  ADDI s3, zero, 1
  SUBW s5, s2, s3
  ADDI s2, zero, 2000
  MULW s3, s5, s2
  ADD s2, s0, s3
  LW s3, 24(sp)
  ADDIW s5, s3, 1
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDW s3, s4, s2
  LW s2, 16(sp)
  ADDI s4, zero, 2000
  MULW s5, s2, s4
  ADD s2, s0, s5
  LW s4, 24(sp)
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDW s4, s3, s2
  LW s2, 16(sp)
  ADDI s3, zero, 2000
  MULW s5, s2, s3
  ADD s2, s0, s5
  LW s3, 24(sp)
  ADDIW s5, s3, 1
  ADDI s3, zero, 4
  MULW s6, s5, s3
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDW s3, s4, s2
  LW s2, 16(sp)
  ADDIW s4, s2, 1
  ADDI s2, zero, 2000
  MULW s5, s4, s2
  ADD s2, s0, s5
  LW s4, 24(sp)
  ADDI s5, zero, 1
  SUBW s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s6, s4
  ADD s4, s2, s5
  LW s2, 0(s4)
  ADDW s4, s3, s2
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  ADDI s2, zero, 2000
  MULW s5, s3, s2
  ADD s2, s0, s5
  LW s3, 24(sp)
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s3, s2, s6
  LW s2, 0(s3)
  ADDW s3, s4, s2
  LW s2, 16(sp)
  ADDIW s4, s2, 1
  ADDI s2, zero, 2000
  MULW s5, s4, s2
  ADD s2, s0, s5
  LW s4, 24(sp)
  ADDIW s5, s4, 1
  ADDI s4, zero, 4
  MULW s6, s5, s4
  ADD s4, s2, s6
  LW s2, 0(s4)
  ADDW s4, s3, s2
  SW s4, 8(sp)
  LW s2, 16(sp)
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 24(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  XORI s3, s2, 1
  SLTIU s2, s3, 1
  BNE s2, zero, bb33
  JAL zero, bb34
bb32:
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  JAL zero, bb27
bb33:
  LW s2, 8(sp)
  XORI s3, s2, 2
  SLTIU s2, s3, 1
  SB s2, 0(sp)
  JAL zero, bb35
bb34:
  SB zero, 0(sp)
  JAL zero, bb35
bb35:
  LB s2, 0(sp)
  BNE s2, zero, bb36
  JAL zero, bb38
bb36:
  LW s2, 16(sp)
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 24(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  ADDI s2, zero, 1
  SW s2, 0(s3)
  JAL zero, bb37
bb37:
  LW s2, 24(sp)
  ADDIW s3, s2, 1
  SW s3, 24(sp)
  JAL zero, bb30
bb38:
  LW s2, 8(sp)
  XORI s3, s2, 3
  SLTIU s2, s3, 1
  BNE s2, zero, bb39
  JAL zero, bb41
bb39:
  LW s2, 16(sp)
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 24(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  ADDI s2, zero, 1
  SW s2, 0(s3)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  LW s2, 16(sp)
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 24(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  SW zero, 0(s3)
  JAL zero, bb40
read_map:
  ADDI sp, sp, -64
  SD s3, 24(sp)
  SD ra, 32(sp)
  SD s2, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, width
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, height
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, steps
  SW s0, 0(s1)
  CALL getch
  ADD s0, a0, zero
  ADDI s0, zero, 1
  SW s0, 16(sp)
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb43
bb43:
  LW s0, 8(sp)
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb46
bb45:
  LD s3, 24(sp)
  LD ra, 32(sp)
  LD s2, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb46:
  LW s0, 16(sp)
  LA s1, width
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb47
  JAL zero, bb48
bb47:
  CALL getch
  ADD s0, a0, zero
  SW s0, 0(sp)
  XORI s1, s0, 35
  SLTIU s0, s1, 1
  BNE s0, zero, bb49
  JAL zero, bb51
bb48:
  CALL getch
  ADD s0, a0, zero
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb43
bb49:
  LW s0, 8(sp)
  ADDI s1, zero, 2000
  MULW s2, s0, s1
  LA s0, sheet1
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  JAL zero, bb50
bb50:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb46
bb51:
  LW s0, 8(sp)
  ADDI s1, zero, 2000
  MULW s2, s0, s1
  LA s0, sheet1
  ADD s1, s0, s2
  LW s0, 16(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  SW zero, 0(s0)
  JAL zero, bb50
