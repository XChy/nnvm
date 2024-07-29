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
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADD t4, a3, zero
  SD t4, 104(sp)
  XORI s5, s3, 4
  SLTIU s5, s5, 1
  BNE s5, zero, bb7
  # implict jump to bb1
bb1:
  ADDI s5, zero, 1
  # implict jump to bb2
bb2:
  ADD s6, s5, zero
  SLT s7, s2, s6
  XORI s7, s7, 1
  BNE s7, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb4:
  SLLIW s7, s3, 2
  LD t4, 104(sp)
  ADD s7, t4, s7
  SW s6, 0(s7)
  ADDIW s8, s3, 1
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s8, zero
  LD t4, 104(sp)
  ADD a3, t4, zero
  CALL graphColoring
  ADD s8, a0, zero
  BNE s8, zero, bb6
  # implict jump to bb5
bb5:
  SW zero, 0(s7)
  ADDIW s6, s6, 1
  ADD s5, s6, zero
  JAL zero, bb2
bb6:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb7:
  ADD s2, zero, zero
  ADD s3, zero, zero
  # implict jump to bb8
bb8:
  ADD s5, s3, zero
  ADD s6, s2, zero
  SLTI s7, s5, 4
  BNE s7, zero, bb19
  # implict jump to bb9
bb9:
  ADDI s7, zero, 1
  # implict jump to bb10
bb10:
  BNE s7, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb12:
  SLTI s1, zero, 4
  BNE s1, zero, bb14
  # implict jump to bb13
bb13:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb14:
  # implict jump to bb15
bb15:
  ADD s1, zero, zero
  # implict jump to bb16
bb16:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  LD t4, 104(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s2, 1
  # implict jump to bb17
bb17:
  SLTI s2, s0, 4
  BNE s2, zero, bb18
  JAL zero, bb13
bb18:
  ADD s1, s0, zero
  JAL zero, bb16
bb19:
  ADDIW s8, s5, 1
  ADD s9, s8, zero
  # implict jump to bb20
bb20:
  ADD s10, s9, zero
  ADD s11, s6, zero
  SLTI s4, s10, 4
  BNE s4, zero, bb22
  # implict jump to bb21
bb21:
  ADD s2, s11, zero
  ADD s3, s8, zero
  JAL zero, bb8
bb22:
  SLLIW s2, s5, 4
  ADD s2, s1, s2
  SLLIW s3, s10, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  BNE s2, zero, bb27
  # implict jump to bb23
bb23:
  ADD s2, zero, zero
  # implict jump to bb24
bb24:
  BNE s2, zero, bb26
  # implict jump to bb25
bb25:
  ADDIW s3, s10, 1
  ADD s6, s2, zero
  ADD s9, s3, zero
  JAL zero, bb20
bb26:
  ADD s7, zero, zero
  JAL zero, bb10
bb27:
  LD t4, 104(sp)
  ADD s3, t4, s3
  LW s3, 0(s3)
  SLLIW s4, s5, 2
  LD t4, 104(sp)
  ADD s4, t4, s4
  LW s4, 0(s4)
  XOR s3, s3, s4
  SLTIU s3, s3, 1
  ADD s2, s3, zero
  JAL zero, bb24
main:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SW zero, 40(sp)
  ADDI s1, zero, 1
  SW s1, 44(sp)
  ADDI s1, zero, 1
  SW s1, 48(sp)
  ADDI s1, zero, 1
  SW s1, 52(sp)
  ADDI s1, zero, 1
  SW s1, 56(sp)
  SW zero, 60(sp)
  ADDI s1, zero, 1
  SW s1, 64(sp)
  SW zero, 68(sp)
  ADDI s1, zero, 1
  SW s1, 72(sp)
  ADDI s1, zero, 1
  SW s1, 76(sp)
  SW zero, 80(sp)
  ADDI s1, zero, 1
  SW s1, 84(sp)
  ADDI s1, zero, 1
  SW s1, 88(sp)
  SW zero, 92(sp)
  ADDI s1, zero, 1
  SW s1, 96(sp)
  SW zero, 100(sp)
  SLTI s1, zero, 4
  BNE s1, zero, bb32
  # implict jump to bb29
bb29:
  ADDI a0, sp, 40
  ADD a0, a0, zero
  ADDI a1, zero, 3
  ADD a2, zero, zero
  ADDI a3, sp, 104
  ADD a3, a3, zero
  CALL graphColoring
  ADD s2, a0, zero
  SLTU s2, zero, s2
  XORI s2, s2, 1
  BNE s2, zero, bb31
  # implict jump to bb30
bb30:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb31:
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
  JAL zero, bb30
bb32:
  # implict jump to bb33
bb33:
  ADD s1, zero, zero
  # implict jump to bb34
bb34:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 104
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb35
bb35:
  SLTI s2, s0, 4
  BNE s2, zero, bb36
  JAL zero, bb29
bb36:
  ADD s1, s0, zero
  JAL zero, bb34
isSafe:
  ADDI sp, sp, -96
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  SD s5, 48(sp)
  SD s6, 56(sp)
  SD s7, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb38
bb38:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 4
  BNE s5, zero, bb40
  # implict jump to bb39
bb39:
  ADDI a0, zero, 1
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  ADDIW s5, s3, 1
  ADD s6, s5, zero
  # implict jump to bb41
bb41:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLTI s9, s7, 4
  BNE s9, zero, bb43
  # implict jump to bb42
bb42:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb38
bb43:
  SLLIW s1, s3, 4
  ADD s1, s0, s1
  SLLIW s2, s7, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  BNE s1, zero, bb48
  # implict jump to bb44
bb44:
  ADD s1, zero, zero
  # implict jump to bb45
bb45:
  BNE s1, zero, bb47
  # implict jump to bb46
bb46:
  ADDIW s2, s7, 1
  ADD s4, s1, zero
  ADD s6, s2, zero
  JAL zero, bb41
bb47:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  LD s5, 48(sp)
  LD s6, 56(sp)
  LD s7, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb48:
  ADD s2, a1, s2
  LW s2, 0(s2)
  SLLIW s8, s3, 2
  ADD s8, a1, s8
  LW s8, 0(s8)
  XOR s2, s2, s8
  SLTIU s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb45
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
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SD s4, 40(sp)
  ADD s1, a0, zero
  SLTI s2, zero, 4
  BNE s2, zero, bb52
  # implict jump to bb51
bb51:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  LD s4, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb52:
  # implict jump to bb53
bb53:
  ADD s2, zero, zero
  # implict jump to bb54
bb54:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s3, 1
  # implict jump to bb55
bb55:
  SLTI s3, s0, 4
  BNE s3, zero, bb56
  JAL zero, bb51
bb56:
  ADD s2, s0, zero
  JAL zero, bb54
