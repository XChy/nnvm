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
  ADDI sp, sp, -80
  SD s7, 0(sp)
  SD s0, 8(sp)
  SD s5, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD s4, 56(sp)
  SD ra, 64(sp)
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
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  ADD s5, s4, zero
  SLT s6, s1, s5
  XORI s7, s6, 1
  XOR s6, s7, zero
  SLTU s7, zero, s6
  BNE s7, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s6, zero, 4
  MULW s7, s2, s6
  ADD s6, s3, s7
  SW s5, 0(s6)
  ADDIW s6, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s6, zero
  ADD a3, s3, zero
  CALL graphColoring
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb8
  JAL zero, bb9
bb7:
  ADD a0, zero, zero
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 1
  LD s7, 0(sp)
  LD s0, 8(sp)
  LD s5, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD s4, 56(sp)
  LD ra, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:
  ADDI s6, zero, 4
  MULW s7, s2, s6
  ADD s6, s3, s7
  SW zero, 0(s6)
  ADDIW s6, s5, 1
  ADD s4, s6, zero
  JAL zero, bb5
main:
  ADDI sp, sp, -128
  SD ra, 80(sp)
  SD s3, 88(sp)
  SD s2, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
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
  ADD s1, s0, zero
  LA s2, V
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t6, sp, 0
  ADD s2, t6, s3
  SW zero, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
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
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
isSafe:
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
  JAL zero, bb17
bb17:
  ADD s4, s3, zero
  ADD s5, s2, zero
  LA s6, V
  LW s7, 0(s6)
  SLT s6, s4, s7
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb18
  JAL zero, bb19
bb18:
  ADDIW s6, s4, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb20
bb19:
  ADDI a0, zero, 1
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
bb20:
  ADD s6, s5, zero
  ADD s8, s7, zero
  LA s9, V
  LW s10, 0(s9)
  SLT s9, s6, s10
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s9, zero, 16
  MULW s10, s4, s9
  ADD s9, s0, s10
  ADDI s10, zero, 4
  MULW s11, s6, s10
  ADD s10, s9, s11
  LW s9, 0(s10)
  XOR s10, s9, zero
  SLTU s9, zero, s10
  BNE s9, zero, bb23
  JAL zero, bb24
bb22:
  ADDIW s5, s4, 1
  ADD s2, s8, zero
  ADD s3, s5, zero
  JAL zero, bb17
bb23:
  ADDI s9, zero, 4
  MULW s10, s6, s9
  ADD s9, s1, s10
  LW s10, 0(s9)
  ADDI s9, zero, 4
  MULW s11, s4, s9
  ADD s9, s1, s11
  LW s11, 0(s9)
  XOR s9, s10, s11
  SLTIU s10, s9, 1
  ADD s9, s10, zero
  JAL zero, bb25
bb24:
  ADD s9, zero, zero
  JAL zero, bb25
bb25:
  ADD s10, s9, zero
  BNE s10, zero, bb26
  JAL zero, bb27
bb26:
  ADD a0, zero, zero
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
bb27:
  ADDIW s11, s6, 1
  ADD s7, s10, zero
  ADD s5, s11, zero
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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  JAL zero, bb30
bb30:
  ADD s2, s1, zero
  LA s3, V
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  LA s3, space
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putch
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb30
bb32:
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
