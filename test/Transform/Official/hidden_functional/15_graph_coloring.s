.global graphColoring
.global main
.global isSafe
.global printMessage
.global printSolution
.section .bss



.section .data
LF:
.word 0x0000000a
space:
.word 0x00000020
V:
.word 0x00000004
.section .text
graphColoring:
  ADDI sp, sp, -64
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  LA s4, V
  LW s5, 0(s4)
  XOR s4, s2, s5
  SLTIU s5, s4, 1
  BNE s5, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL isSafe
  ADD s4, a0, zero
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb3
  JAL zero, bb4
bb2:
  ADDI s4, zero, 1
  JAL zero, bb5
bb3:
  ADD a0, s3, zero
  CALL printSolution
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb5:
  SLT s5, s1, s4
  XORI s6, s5, 1
  XOR s5, s6, zero
  SLTU s6, zero, s5
  BNE s6, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s3, s6
  SW s4, 0(s5)
  ADDIW s5, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s5, zero
  ADD a3, s3, zero
  CALL graphColoring
  ADD s5, a0, zero
  XOR s6, s5, zero
  SLTU s5, zero, s6
  BNE s5, zero, bb8
  JAL zero, bb9
bb7:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb9:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  ADD s5, s3, s6
  SW zero, 0(s5)
  ADDIW s5, s4, 1
  ADD s4, s5, zero
  JAL zero, bb5
main:
  ADDI sp, sp, -112
  SD ra, 80(sp)
  SD s2, 88(sp)
  SD s1, 96(sp)
  SD s0, 104(sp)
  ADDI t5, sp, 16
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 20
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 24
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 28
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 32
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 36
  SW zero, 0(s0)
  ADDI s0, sp, 40
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 44
  SW zero, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 52
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 56
  SW zero, 0(s0)
  ADDI s0, sp, 60
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 64
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 68
  SW zero, 0(s0)
  ADDI s0, sp, 72
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 76
  SW zero, 0(s0)
  ADD s0, zero, zero
  JAL zero, bb11
bb11:
  LA s1, V
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 0
  ADD s1, t6, s2
  SW zero, 0(s1)
  ADDIW s1, s0, 1
  ADD s0, s1, zero
  JAL zero, bb11
bb13:
  ADDI a0, sp, 16
  ADD a0, a0, zero
  ADDI a1, zero, 3
  ADD a2, zero, zero
  ADDI a3, sp, 0
  ADD a3, a3, zero
  CALL graphColoring
  ADD s0, a0, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  XORI s1, s0, 1
  ADD s0, s1, zero
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb14
  JAL zero, bb15
bb14:
  CALL printMessage
  JAL zero, bb15
bb15:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s2, 88(sp)
  LD s1, 96(sp)
  LD s0, 104(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
isSafe:
  ADDI sp, sp, -80
  SD ra, 0(sp)
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s8, 32(sp)
  SD s6, 40(sp)
  SD s1, 48(sp)
  SD s7, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, zero, zero
  ADD s3, zero, zero
  JAL zero, bb17
bb17:
  LA s4, V
  LW s5, 0(s4)
  SLT s4, s3, s5
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb18
  JAL zero, bb19
bb18:
  ADDIW s4, s3, 1
  ADD s5, s2, zero
  ADD s6, s4, zero
  JAL zero, bb20
bb19:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb20:
  LA s4, V
  LW s7, 0(s4)
  SLT s4, s6, s7
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s4, zero, 16
  MULW s7, s3, s4
  ADD s4, s0, s7
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s4, s8
  LW s4, 0(s7)
  XOR s7, s4, zero
  SLTU s4, zero, s7
  BNE s4, zero, bb23
  JAL zero, bb24
bb22:
  ADDIW s4, s3, 1
  ADD s2, s5, zero
  ADD s3, s4, zero
  JAL zero, bb17
bb23:
  ADDI s4, zero, 4
  MULW s7, s6, s4
  ADD s4, s1, s7
  LW s7, 0(s4)
  ADDI s4, zero, 4
  MULW s8, s3, s4
  ADD s4, s1, s8
  LW s8, 0(s4)
  XOR s4, s7, s8
  SLTIU s7, s4, 1
  ADD s4, s7, zero
  JAL zero, bb25
bb24:
  ADD s4, zero, zero
  JAL zero, bb25
bb25:
  BNE s4, zero, bb26
  JAL zero, bb27
bb26:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s8, 32(sp)
  LD s6, 40(sp)
  LD s1, 48(sp)
  LD s7, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  ADDIW s7, s6, 1
  ADD s5, s4, zero
  ADD s6, s7, zero
  JAL zero, bb20
printMessage:
  ADDI sp, sp, -32
  SD ra, 0(sp)
  SD s1, 8(sp)
  SD s0, 16(sp)
  ADDI a0, zero, 78
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  LA s0, space
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  ADDI a0, zero, 101
  CALL putch
  ADDI a0, zero, 120
  CALL putch
  ADDI a0, zero, 105
  CALL putch
  ADDI a0, zero, 115
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  LD ra, 0(sp)
  LD s1, 8(sp)
  LD s0, 16(sp)
  ADDI sp, sp, 32
  JALR zero, 0(ra)
printSolution:
  ADDI sp, sp, -48
  SD ra, 0(sp)
  SD s3, 8(sp)
  SD s2, 16(sp)
  SD s1, 24(sp)
  SD s0, 32(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb30
bb30:
  LA s2, V
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s2, s0, s3
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putint
  LA s2, space
  LW s3, 0(s2)
  ADD a0, s3, zero
  CALL putch
  ADDIW s2, s1, 1
  ADD s1, s2, zero
  JAL zero, bb30
bb32:
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  LD ra, 0(sp)
  LD s3, 8(sp)
  LD s2, 16(sp)
  LD s1, 24(sp)
  LD s0, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
