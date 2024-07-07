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
  SD s8, 0(sp)
  SD s7, 8(sp)
  SD s0, 16(sp)
  SD s5, 24(sp)
  SD s1, 32(sp)
  SD s6, 40(sp)
  SD s2, 48(sp)
  SD s3, 56(sp)
  SD s4, 64(sp)
  SD ra, 72(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  XORI s4, s2, 4
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
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb4:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb5:
  ADD s5, s4, zero
  SLT s6, s1, s5
  XORI s7, s6, 1
  BNE s7, zero, bb6
  JAL zero, bb7
bb6:
  ADDI s6, zero, 4
  MULW s7, s2, s6
  ADD s6, s3, s7
  SW s5, 0(s6)
  ADDIW s7, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s7, zero
  ADD a3, s3, zero
  CALL graphColoring
  ADD s7, a0, zero
  XOR s8, s7, zero
  SLTU s7, zero, s8
  BNE s7, zero, bb8
  JAL zero, bb9
bb7:
  ADD a0, zero, zero
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb8:
  ADDI a0, zero, 1
  LD s8, 0(sp)
  LD s7, 8(sp)
  LD s0, 16(sp)
  LD s5, 24(sp)
  LD s1, 32(sp)
  LD s6, 40(sp)
  LD s2, 48(sp)
  LD s3, 56(sp)
  LD s4, 64(sp)
  LD ra, 72(sp)
  ADDI sp, sp, 80
  JALR zero, 0(ra)
bb9:
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
  SW zero, 16(sp)
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
  SLTI s2, s1, 4
  BNE s2, zero, bb12
  JAL zero, bb13
bb12:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
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
  SLTI s6, s4, 4
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
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLTI s10, s8, 4
  BNE s10, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s10, zero, 16
  MULW s11, s4, s10
  ADD s10, s0, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s10, t0
  LW s10, 0(s11)
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb23
  JAL zero, bb24
bb22:
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb17
bb23:
  ADD s10, s1, t0
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW t0, s4, s10
  ADD s10, s1, t0
  LW t0, 0(s10)
  XOR s10, s11, t0
  SLTIU s11, s10, 1
  ADD s10, s11, zero
  JAL zero, bb25
bb24:
  ADD s10, zero, zero
  JAL zero, bb25
bb25:
  ADD s11, s10, zero
  BNE s11, zero, bb26
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
  ADDIW t0, s8, 1
  ADD s7, s11, zero
  ADD s5, t0, zero
  JAL zero, bb20
printMessage:
  ADDI sp, sp, -16
  SD ra, 0(sp)
  ADDI a0, zero, 78
  CALL putch
  ADDI a0, zero, 111
  CALL putch
  ADDI a0, zero, 116
  CALL putch
  ADDI a0, zero, 32
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
  ADDI sp, sp, 16
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
  SLTI s3, s2, 4
  BNE s3, zero, bb31
  JAL zero, bb32
bb31:
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s3, s0, s4
  LW s4, 0(s3)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb30
bb32:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
