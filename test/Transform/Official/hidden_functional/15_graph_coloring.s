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
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s0, 64(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  SW s1, 16(sp)
  SW s2, 8(sp)
  LA s1, V
  LW s4, 0(s1)
  XOR s1, s2, s4
  SLTIU s2, s1, 1
  BNE s2, zero, bb1
  JAL zero, bb2
bb1:
  ADD a0, s0, zero
  ADD a1, s3, zero
  CALL isSafe
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb3
  JAL zero, bb4
bb2:
  ADDI s1, zero, 1
  SW s1, 0(sp)
  JAL zero, bb5
bb3:
  ADD a0, s3, zero
  CALL printSolution
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  LW s1, 0(sp)
  LW s2, 16(sp)
  SLT s4, s2, s1
  XORI s1, s4, 1
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb6
  JAL zero, bb7
bb6:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  LW s2, 0(sp)
  SW s2, 0(s1)
  LW s1, 16(sp)
  LW s2, 8(sp)
  ADDIW s4, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s4, zero
  ADD a3, s3, zero
  CALL graphColoring
  ADD s1, a0, zero
  XOR s2, s1, zero
  SLTU s1, zero, s2
  BNE s1, zero, bb8
  JAL zero, bb9
bb7:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s0, 64(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s4, s1, s2
  ADD s1, s3, s4
  SW zero, 0(s1)
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb5
main:
  ADDI sp, sp, -128
  SD ra, 96(sp)
  SD s2, 104(sp)
  SD s1, 112(sp)
  SD s0, 120(sp)
  ADDI t5, sp, 32
  ADD s0, t5, zero
  SW zero, 0(s0)
  ADDI s0, sp, 36
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 40
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 44
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 48
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 52
  SW zero, 0(s0)
  ADDI s0, sp, 56
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 60
  SW zero, 0(s0)
  ADDI s0, sp, 64
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 68
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 72
  SW zero, 0(s0)
  ADDI s0, sp, 76
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 80
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 84
  SW zero, 0(s0)
  ADDI s0, sp, 88
  ADDI s1, zero, 1
  SW s1, 0(s0)
  ADDI s0, sp, 92
  SW zero, 0(s0)
  ADDI s0, zero, 3
  SW s0, 24(sp)
  SW zero, 0(sp)
  JAL zero, bb11
bb11:
  LW s0, 0(sp)
  LA s1, V
  LW s2, 0(s1)
  SLT s1, s0, s2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb12
  JAL zero, bb13
bb12:
  LW s0, 0(sp)
  ADDI s1, zero, 4
  MULW s2, s0, s1
  ADDI t6, sp, 8
  ADD s0, t6, s2
  SW zero, 0(s0)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb11
bb13:
  LW s0, 24(sp)
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADD a1, s0, zero
  ADD a2, zero, zero
  ADDI a3, sp, 8
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
  LD ra, 96(sp)
  LD s2, 104(sp)
  LD s1, 112(sp)
  LD s0, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
isSafe:
  ADDI sp, sp, -80
  SD ra, 24(sp)
  SD s4, 32(sp)
  SD s3, 40(sp)
  SD s2, 48(sp)
  SD s1, 56(sp)
  SD s5, 64(sp)
  SD s0, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW zero, 16(sp)
  JAL zero, bb17
bb17:
  LW s2, 16(sp)
  LA s3, V
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb18
  JAL zero, bb19
bb18:
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
  JAL zero, bb20
bb19:
  ADDI a0, zero, 1
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb20:
  LW s2, 8(sp)
  LA s3, V
  LW s4, 0(s3)
  SLT s3, s2, s4
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb21
  JAL zero, bb22
bb21:
  LW s2, 16(sp)
  ADDI s3, zero, 16
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s3, 8(sp)
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s3, s2, s5
  LW s2, 0(s3)
  XOR s3, s2, zero
  SLTU s2, zero, s3
  BNE s2, zero, bb23
  JAL zero, bb24
bb22:
  LW s2, 16(sp)
  ADDIW s3, s2, 1
  SW s3, 16(sp)
  JAL zero, bb17
bb23:
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s1, s4
  LW s3, 0(s2)
  LW s2, 16(sp)
  ADDI s4, zero, 4
  MULW s5, s2, s4
  ADD s2, s1, s5
  LW s4, 0(s2)
  XOR s2, s3, s4
  SLTIU s3, s2, 1
  SB s3, 0(sp)
  JAL zero, bb25
bb24:
  SB zero, 0(sp)
  JAL zero, bb25
bb25:
  LB s2, 0(sp)
  BNE s2, zero, bb26
  JAL zero, bb27
bb26:
  ADD a0, zero, zero
  LD ra, 24(sp)
  LD s4, 32(sp)
  LD s3, 40(sp)
  LD s2, 48(sp)
  LD s1, 56(sp)
  LD s5, 64(sp)
  LD s0, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb27:
  LW s2, 8(sp)
  ADDIW s3, s2, 1
  SW s3, 8(sp)
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
  SD ra, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
  ADD s0, a0, zero
  SW zero, 0(sp)
  JAL zero, bb30
bb30:
  LW s1, 0(sp)
  LA s2, V
  LW s3, 0(s2)
  SLT s2, s1, s3
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb31
  JAL zero, bb32
bb31:
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putint
  LA s1, space
  LW s2, 0(s1)
  ADD a0, s2, zero
  CALL putch
  LW s1, 0(sp)
  ADDIW s2, s1, 1
  SW s2, 0(sp)
  JAL zero, bb30
bb32:
  LA s0, LF
  LW s1, 0(s0)
  ADD a0, s1, zero
  CALL putch
  LD ra, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
