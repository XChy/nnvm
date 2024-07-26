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
  BNE s7, zero, bb18
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
  ADD s1, zero, zero
  # implict jump to bb15
bb15:
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
  # implict jump to bb16
bb16:
  SLTI s2, s0, 4
  BNE s2, zero, bb17
  JAL zero, bb13
bb17:
  ADD s1, s0, zero
  JAL zero, bb15
bb18:
  ADDIW s8, s5, 1
  ADD s9, s8, zero
  # implict jump to bb19
bb19:
  ADD s10, s9, zero
  ADD s11, s6, zero
  SLTI s4, s10, 4
  BNE s4, zero, bb21
  # implict jump to bb20
bb20:
  ADD s2, s11, zero
  ADD s3, s8, zero
  JAL zero, bb8
bb21:
  SLLIW s2, s5, 4
  ADD s2, s1, s2
  SLLIW s3, s10, 2
  ADD s2, s2, s3
  LW s2, 0(s2)
  BNE s2, zero, bb26
  # implict jump to bb22
bb22:
  ADD s2, zero, zero
  # implict jump to bb23
bb23:
  BNE s2, zero, bb25
  # implict jump to bb24
bb24:
  ADDIW s3, s10, 1
  ADD s6, s2, zero
  ADD s9, s3, zero
  JAL zero, bb19
bb25:
  ADD s7, zero, zero
  JAL zero, bb10
bb26:
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
  JAL zero, bb23
main:
  ADDI sp, sp, -128
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SD s3, 32(sp)
  SW zero, 40(sp)
  ADDI s1, sp, 44
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 48
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 52
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 56
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 60
  SW zero, 0(s1)
  ADDI s1, sp, 64
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 68
  SW zero, 0(s1)
  ADDI s1, sp, 72
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 76
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 80
  SW zero, 0(s1)
  ADDI s1, sp, 84
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 88
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 92
  SW zero, 0(s1)
  ADDI s1, sp, 96
  ADDI s2, zero, 1
  SW s2, 0(s1)
  ADDI s1, sp, 100
  SW zero, 0(s1)
  SLTI s1, zero, 4
  BNE s1, zero, bb31
  # implict jump to bb28
bb28:
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
  BNE s2, zero, bb30
  # implict jump to bb29
bb29:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb30:
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
  JAL zero, bb29
bb31:
  ADD s1, zero, zero
  # implict jump to bb32
bb32:
  ADD s2, s1, zero
  SLLIW s3, s2, 2
  ADDI t5, sp, 104
  ADD s3, t5, s3
  SW zero, 0(s3)
  ADDIW s0, s2, 1
  # implict jump to bb33
bb33:
  SLTI s2, s0, 4
  BNE s2, zero, bb34
  JAL zero, bb28
bb34:
  ADD s1, s0, zero
  JAL zero, bb32
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
  # implict jump to bb36
bb36:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 4
  BNE s5, zero, bb38
  # implict jump to bb37
bb37:
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
bb38:
  ADDIW s5, s3, 1
  ADD s6, s5, zero
  # implict jump to bb39
bb39:
  ADD s7, s6, zero
  ADD s8, s4, zero
  SLTI s9, s7, 4
  BNE s9, zero, bb41
  # implict jump to bb40
bb40:
  ADD s1, s8, zero
  ADD s2, s5, zero
  JAL zero, bb36
bb41:
  SLLIW s1, s3, 4
  ADD s1, s0, s1
  SLLIW s2, s7, 2
  ADD s1, s1, s2
  LW s1, 0(s1)
  BNE s1, zero, bb46
  # implict jump to bb42
bb42:
  ADD s1, zero, zero
  # implict jump to bb43
bb43:
  BNE s1, zero, bb45
  # implict jump to bb44
bb44:
  ADDIW s2, s7, 1
  ADD s4, s1, zero
  ADD s6, s2, zero
  JAL zero, bb39
bb45:
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
bb46:
  ADD s2, a1, s2
  LW s2, 0(s2)
  SLLIW s8, s3, 2
  ADD s8, a1, s8
  LW s8, 0(s8)
  XOR s2, s2, s8
  SLTIU s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb43
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
  BNE s2, zero, bb50
  # implict jump to bb49
bb49:
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
bb50:
  ADD s2, zero, zero
  # implict jump to bb51
bb51:
  ADD s3, s2, zero
  SLLIW s4, s3, 2
  ADD s4, s1, s4
  LW s4, 0(s4)
  ADD a0, s4, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s0, s3, 1
  # implict jump to bb52
bb52:
  SLTI s3, s0, 4
  BNE s3, zero, bb53
  JAL zero, bb49
bb53:
  ADD s2, s0, zero
  JAL zero, bb51
