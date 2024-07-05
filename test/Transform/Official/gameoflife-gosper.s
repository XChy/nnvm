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
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s5, 40(sp)
  SD s0, 48(sp)
  ADDI s0, zero, 1
  JAL zero, bb1
bb1:
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s1, zero, 1
  JAL zero, bb4
bb3:
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s5, 40(sp)
  LD s0, 48(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s2, zero, 2000
  MULW s3, s0, s2
  LA s2, sheet1
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  ADDI s3, zero, 2000
  MULW s4, s0, s3
  LA s3, sheet2
  ADD s5, s3, s4
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s3, s5, s4
  LW s4, 0(s3)
  SW s4, 0(s2)
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb4
bb6:
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb1
put_map:
  ADDI sp, sp, -48
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADDI s0, zero, 1
  JAL zero, bb8
bb8:
  LA s1, height
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s2, s1, 1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s1, zero, 1
  JAL zero, bb11
bb10:
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb11:
  LA s2, width
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s2, zero, 2000
  MULW s3, s0, s2
  LA s2, sheet1
  ADD s4, s2, s3
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s4, s3
  LW s3, 0(s2)
  XORI s2, s3, 1
  SLTIU s3, s2, 1
  BNE s3, zero, bb14
  JAL zero, bb16
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb8
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
bb15:
  ADDIW s2, s1, 1
  ADD s1, s2, zero
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
  ADDI sp, sp, -112
  SD s11, 0(sp)
  SD s10, 8(sp)
  SD s9, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD ra, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb27
bb27:
  LA s5, height
  LW s6, 0(s5)
  SLT s5, s6, s4
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb28
  JAL zero, bb29
bb28:
  ADD s5, s2, zero
  ADD s6, s3, zero
  ADDI s7, zero, 1
  JAL zero, bb30
bb29:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD s9, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD ra, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb30:
  LA s8, width
  LW s9, 0(s8)
  SLT s8, s9, s7
  XORI s9, s8, 1
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s8, zero, 1
  SUBW s9, s4, s8
  ADDI s8, zero, 2000
  MULW s10, s9, s8
  ADD s8, s0, s10
  ADDI s9, zero, 1
  SUBW s10, s7, s9
  ADDI s9, zero, 4
  MULW s11, s10, s9
  ADD s9, s8, s11
  LW s8, 0(s9)
  ADDI s9, zero, 1
  SUBW s10, s4, s9
  ADDI s9, zero, 2000
  MULW s11, s10, s9
  ADD s9, s0, s11
  ADDI s10, zero, 4
  MULW s11, s7, s10
  ADD s10, s9, s11
  LW s9, 0(s10)
  ADDW s10, s8, s9
  ADDI s8, zero, 1
  SUBW s9, s4, s8
  ADDI s8, zero, 2000
  MULW s11, s9, s8
  ADD s8, s0, s11
  ADDIW s9, s7, 1
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s9, s8, t0
  LW s8, 0(s9)
  ADDW s9, s10, s8
  ADDI s8, zero, 2000
  MULW s10, s4, s8
  ADD s8, s0, s10
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s8, t0
  LW s8, 0(s10)
  ADDW s10, s9, s8
  ADDI s8, zero, 2000
  MULW s9, s4, s8
  ADD s8, s0, s9
  ADDIW s9, s7, 1
  ADDI s11, zero, 4
  MULW t0, s9, s11
  ADD s9, s8, t0
  LW s8, 0(s9)
  ADDW s9, s10, s8
  ADDIW s8, s4, 1
  ADDI s10, zero, 2000
  MULW s11, s8, s10
  ADD s8, s0, s11
  ADDI s10, zero, 1
  SUBW s11, s7, s10
  ADDI s10, zero, 4
  MULW t0, s11, s10
  ADD s10, s8, t0
  LW s8, 0(s10)
  ADDW s10, s9, s8
  ADDIW s8, s4, 1
  ADDI s9, zero, 2000
  MULW s11, s8, s9
  ADD s8, s0, s11
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s8, s11
  LW s8, 0(s9)
  ADDW s9, s10, s8
  ADDIW s8, s4, 1
  ADDI s10, zero, 2000
  MULW s11, s8, s10
  ADD s8, s0, s11
  ADDIW s10, s7, 1
  ADDI s11, zero, 4
  MULW t0, s10, s11
  ADD s10, s8, t0
  LW s8, 0(s10)
  ADDW s10, s9, s8
  ADDI s8, zero, 2000
  MULW s9, s4, s8
  ADD s8, s0, s9
  ADDI s9, zero, 4
  MULW s11, s7, s9
  ADD s9, s8, s11
  LW s8, 0(s9)
  XORI s9, s8, 1
  SLTIU s8, s9, 1
  BNE s8, zero, bb33
  JAL zero, bb34
bb32:
  ADDIW s7, s4, 1
  ADD s2, s5, zero
  ADD s3, s6, zero
  ADD s4, s7, zero
  JAL zero, bb27
bb33:
  XORI s8, s10, 2
  SLTIU s9, s8, 1
  ADD s8, s9, zero
  JAL zero, bb35
bb34:
  ADD s8, zero, zero
  JAL zero, bb35
bb35:
  BNE s8, zero, bb36
  JAL zero, bb38
bb36:
  ADDI s9, zero, 2000
  MULW s11, s4, s9
  ADD s9, s1, s11
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s9, t0
  ADDI s9, zero, 1
  SW s9, 0(s11)
  JAL zero, bb37
bb37:
  ADDIW s9, s7, 1
  ADD s5, s8, zero
  ADD s6, s10, zero
  ADD s7, s9, zero
  JAL zero, bb30
bb38:
  XORI s9, s10, 3
  SLTIU s11, s9, 1
  BNE s11, zero, bb39
  JAL zero, bb41
bb39:
  ADDI s9, zero, 2000
  MULW s11, s4, s9
  ADD s9, s1, s11
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s9, t0
  ADDI s9, zero, 1
  SW s9, 0(s11)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  ADDI s9, zero, 2000
  MULW s11, s4, s9
  ADD s9, s1, s11
  ADDI s11, zero, 4
  MULW t0, s7, s11
  ADD s11, s9, t0
  SW zero, 0(s11)
  JAL zero, bb40
read_map:
  ADDI sp, sp, -80
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s7, 48(sp)
  SD s5, 56(sp)
  SD s0, 64(sp)
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
  ADD s0, zero, zero
  ADDI s1, zero, 1
  JAL zero, bb43
bb43:
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb44
  JAL zero, bb45
bb44:
  ADD s2, s0, zero
  ADDI s3, zero, 1
  JAL zero, bb46
bb45:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s7, 48(sp)
  LD s5, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb46:
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb47
  JAL zero, bb48
bb47:
  CALL getch
  ADD s4, a0, zero
  XORI s5, s4, 35
  SLTIU s6, s5, 1
  BNE s6, zero, bb49
  JAL zero, bb51
bb48:
  CALL getch
  ADD s3, a0, zero
  ADDIW s3, s1, 1
  ADD s0, s2, zero
  ADD s1, s3, zero
  JAL zero, bb43
bb49:
  ADDI s5, zero, 2000
  MULW s6, s1, s5
  LA s5, sheet1
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s7, s6
  ADDI s6, zero, 1
  SW s6, 0(s5)
  JAL zero, bb50
bb50:
  ADDIW s5, s3, 1
  ADD s2, s4, zero
  ADD s3, s5, zero
  JAL zero, bb46
bb51:
  ADDI s5, zero, 2000
  MULW s6, s1, s5
  LA s5, sheet1
  ADD s7, s5, s6
  ADDI s5, zero, 4
  MULW s6, s3, s5
  ADD s5, s7, s6
  SW zero, 0(s5)
  JAL zero, bb50
