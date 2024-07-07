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
  ADDI sp, sp, -80
  SD s8, 0(sp)
  SD s7, 8(sp)
  SD s4, 16(sp)
  SD ra, 24(sp)
  SD s3, 32(sp)
  SD s2, 40(sp)
  SD s6, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADDI s0, zero, 1
  JAL zero, bb1
bb1:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s2, zero, 1
  JAL zero, bb4
bb3:
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s4, 16(sp)
  LD ra, 24(sp)
  LD s3, 32(sp)
  LD s2, 40(sp)
  LD s6, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s7, s3, s4
  ADD s4, s6, s7
  LA s6, sheet2
  ADD s8, s6, s5
  ADD s5, s8, s7
  LW s6, 0(s5)
  SW s6, 0(s4)
  ADDIW s4, s3, 1
  ADD s2, s4, zero
  JAL zero, bb4
bb6:
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb1
put_map:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADDI s0, zero, 1
  JAL zero, bb8
bb8:
  ADD s1, s0, zero
  LA s2, height
  LW s3, 0(s2)
  SLT s2, s3, s1
  XORI s3, s2, 1
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb9
  JAL zero, bb10
bb9:
  ADDI s2, zero, 1
  JAL zero, bb11
bb10:
  LD s4, 0(sp)
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb11:
  ADD s3, s2, zero
  LA s4, width
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s4, zero, 2000
  MULW s5, s1, s4
  LA s4, sheet1
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  XORI s4, s5, 1
  SLTIU s5, s4, 1
  BNE s5, zero, bb14
  JAL zero, bb16
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb8
bb14:
  ADDI a0, zero, 35
  CALL putch
  JAL zero, bb15
bb15:
  ADDIW s4, s3, 1
  ADD s2, s4, zero
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
  SD ra, 16(sp)
  SD s0, 24(sp)
  SD s5, 32(sp)
  SD s7, 40(sp)
  SD s1, 48(sp)
  SD s6, 56(sp)
  SD s8, 64(sp)
  SD s2, 72(sp)
  SD s3, 80(sp)
  SD s4, 88(sp)
  SD s9, 96(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  ADDI s4, zero, 1
  JAL zero, bb27
bb27:
  ADD s5, s4, zero
  ADD s6, s3, zero
  ADD s7, s2, zero
  LA s8, height
  LW s9, 0(s8)
  SLT s8, s9, s5
  XORI s9, s8, 1
  XOR s8, s9, zero
  SLTU s9, zero, s8
  BNE s9, zero, bb28
  JAL zero, bb29
bb28:
  ADD s8, s7, zero
  ADD s7, s6, zero
  ADDI s6, zero, 1
  JAL zero, bb30
bb29:
  LD s11, 0(sp)
  LD s10, 8(sp)
  LD ra, 16(sp)
  LD s0, 24(sp)
  LD s5, 32(sp)
  LD s7, 40(sp)
  LD s1, 48(sp)
  LD s6, 56(sp)
  LD s8, 64(sp)
  LD s2, 72(sp)
  LD s3, 80(sp)
  LD s4, 88(sp)
  LD s9, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb30:
  ADD s9, s6, zero
  ADD s10, s7, zero
  ADD s11, s8, zero
  LA t0, width
  LW t1, 0(t0)
  SLT t0, t1, s9
  XORI t1, t0, 1
  XOR t0, t1, zero
  SLTU t1, zero, t0
  BNE t1, zero, bb31
  JAL zero, bb32
bb31:
  ADDI t0, zero, 1
  SUBW t1, s5, t0
  ADDI t0, zero, 2000
  MULW t2, t1, t0
  ADD t0, s0, t2
  ADDI t1, zero, 1
  SUBW t2, s9, t1
  ADDI t1, zero, 4
  MULW a0, t2, t1
  ADD t1, t0, a0
  LW t2, 0(t1)
  ADDI t1, zero, 4
  MULW a1, s9, t1
  ADD t1, t0, a1
  LW a2, 0(t1)
  ADDW t1, t2, a2
  ADDIW t2, s9, 1
  ADDI s9, zero, 4
  MULW a2, t2, s9
  ADD s9, t0, a2
  LW t0, 0(s9)
  ADDW s9, t1, t0
  ADDI t0, zero, 2000
  MULW t1, s5, t0
  ADD t0, s0, t1
  ADD a3, t0, a0
  LW a4, 0(a3)
  ADDW a3, s9, a4
  ADD s9, t0, a2
  LW a4, 0(s9)
  ADDW s9, a3, a4
  ADDIW a3, s5, 1
  ADDI a4, zero, 2000
  MULW a5, a3, a4
  ADD a3, s0, a5
  ADD a4, a3, a0
  LW a0, 0(a4)
  ADDW a4, s9, a0
  ADD s9, a3, a1
  LW a0, 0(s9)
  ADDW s9, a4, a0
  ADD a0, a3, a2
  LW a2, 0(a0)
  ADDW a0, s9, a2
  ADD s9, t0, a1
  LW t0, 0(s9)
  XORI s9, t0, 1
  SLTIU t0, s9, 1
  BNE t0, zero, bb33
  JAL zero, bb34
bb32:
  ADDIW s6, s5, 1
  ADD s2, s11, zero
  ADD s3, s10, zero
  ADD s4, s6, zero
  JAL zero, bb27
bb33:
  XORI s9, a0, 2
  SLTIU t0, s9, 1
  ADD s9, t0, zero
  JAL zero, bb35
bb34:
  ADD s9, zero, zero
  JAL zero, bb35
bb35:
  ADD t0, s9, zero
  BNE t0, zero, bb36
  JAL zero, bb38
bb36:
  ADD a2, s1, t1
  ADD a3, a2, a1
  ADDI a2, zero, 1
  SW a2, 0(a3)
  JAL zero, bb37
bb37:
  ADD s8, t0, zero
  ADD s7, a0, zero
  ADD s6, t2, zero
  JAL zero, bb30
bb38:
  XORI s6, a0, 3
  SLTIU s7, s6, 1
  BNE s7, zero, bb39
  JAL zero, bb41
bb39:
  ADD s6, s1, t1
  ADD s7, s6, a1
  ADDI s6, zero, 1
  SW s6, 0(s7)
  JAL zero, bb40
bb40:
  JAL zero, bb37
bb41:
  ADD s6, s1, t1
  ADD s7, s6, a1
  SW zero, 0(s7)
  JAL zero, bb40
read_map:
  ADDI sp, sp, -96
  SD s10, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s7, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  SD s8, 80(sp)
  SD s9, 88(sp)
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
  ADD s2, s1, zero
  ADD s3, s0, zero
  LA s4, height
  LW s5, 0(s4)
  SLT s4, s5, s2
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb44
  JAL zero, bb45
bb44:
  ADD s4, s3, zero
  ADDI s3, zero, 1
  JAL zero, bb46
bb45:
  LD s10, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s7, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  LD s8, 80(sp)
  LD s9, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb46:
  ADD s5, s3, zero
  ADD s6, s4, zero
  LA s7, width
  LW s8, 0(s7)
  SLT s7, s8, s5
  XORI s8, s7, 1
  XOR s7, s8, zero
  SLTU s8, zero, s7
  BNE s8, zero, bb47
  JAL zero, bb48
bb47:
  CALL getch
  ADD s7, a0, zero
  XORI s8, s7, 35
  SLTIU s9, s8, 1
  BNE s9, zero, bb49
  JAL zero, bb51
bb48:
  CALL getch
  ADD s3, a0, zero
  ADDIW s3, s2, 1
  ADD s0, s6, zero
  ADD s1, s3, zero
  JAL zero, bb43
bb49:
  ADDI s8, zero, 2000
  MULW s9, s2, s8
  LA s8, sheet1
  ADD s10, s8, s9
  ADDI s8, zero, 4
  MULW s9, s5, s8
  ADD s8, s10, s9
  ADDI s9, zero, 1
  SW s9, 0(s8)
  JAL zero, bb50
bb50:
  ADDIW s8, s5, 1
  ADD s4, s7, zero
  ADD s3, s8, zero
  JAL zero, bb46
bb51:
  ADDI s3, zero, 2000
  MULW s4, s2, s3
  LA s3, sheet1
  ADD s8, s3, s4
  ADDI s3, zero, 4
  MULW s4, s5, s3
  ADD s3, s8, s4
  SW zero, 0(s3)
  JAL zero, bb50
