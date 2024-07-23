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
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD t4, a3, zero
  SD t4, 104(sp)
  XORI s4, s2, 4
  SLTIU s4, s4, 1
  BNE s4, zero, bb7
  # implict jump to bb1
bb1:
  SLLIW s4, s2, 2
  LD t4, 104(sp)
  ADD s4, t4, s4
  ADDIW s2, s2, 1
  ADDI s5, zero, 1
  # implict jump to bb2
bb2:
  ADD s6, s5, zero
  SLT s7, s1, s6
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
  SW s6, 0(s4)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  LD t4, 104(sp)
  ADD a3, t4, zero
  CALL graphColoring
  ADD s7, a0, zero
  BNE s7, zero, bb6
  # implict jump to bb5
bb5:
  SW zero, 0(s4)
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
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb8
bb8:
  ADD s4, s2, zero
  ADD s5, s1, zero
  SLTI s6, s4, 4
  BNE s6, zero, bb16
  # implict jump to bb9
bb9:
  ADDI s6, zero, 1
  # implict jump to bb10
bb10:
  BNE s6, zero, bb12
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
  ADD s0, zero, zero
  # implict jump to bb13
bb13:
  ADD s1, s0, zero
  SLTI s2, s1, 4
  BNE s2, zero, bb15
  # implict jump to bb14
bb14:
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
bb15:
  SLLIW s2, s1, 2
  LD t4, 104(sp)
  ADD s2, t4, s2
  LW s2, 0(s2)
  ADD a0, s2, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb13
bb16:
  ADDIW s7, s4, 1
  SLLIW s8, s4, 2
  LD t4, 104(sp)
  ADD s8, t4, s8
  SLLIW s4, s4, 4
  ADD s4, s0, s4
  ADD s9, s7, zero
  # implict jump to bb17
bb17:
  ADD s10, s9, zero
  ADD s11, s5, zero
  SLTI s3, s10, 4
  BNE s3, zero, bb19
  # implict jump to bb18
bb18:
  ADD s1, s11, zero
  ADD s2, s7, zero
  JAL zero, bb8
bb19:
  SLLIW s1, s10, 2
  ADD s2, s4, s1
  LW s2, 0(s2)
  BNE s2, zero, bb24
  # implict jump to bb20
bb20:
  ADD s2, zero, zero
  # implict jump to bb21
bb21:
  BNE s2, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s1, s10, 1
  ADD s5, s2, zero
  ADD s9, s1, zero
  JAL zero, bb17
bb23:
  ADD s6, zero, zero
  JAL zero, bb10
bb24:
  LD t4, 104(sp)
  ADD s1, t4, s1
  LW s1, 0(s1)
  LW s3, 0(s8)
  XOR s1, s1, s3
  SLTIU s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb21
main:
  ADDI sp, sp, -112
  SD ra, 0(sp)
  SD s0, 8(sp)
  SD s1, 16(sp)
  SD s2, 24(sp)
  SW zero, 32(sp)
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
  ADD s0, zero, zero
  # implict jump to bb26
bb26:
  ADD s1, s0, zero
  SLTI s2, s1, 4
  BNE s2, zero, bb30
  # implict jump to bb27
bb27:
  ADDI a0, sp, 32
  ADD a0, a0, zero
  ADDI a1, zero, 3
  ADD a2, zero, zero
  ADDI a3, sp, 96
  ADD a3, a3, zero
  CALL graphColoring
  ADD s2, a0, zero
  SLTU s2, zero, s2
  XORI s2, s2, 1
  BNE s2, zero, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  ADDI sp, sp, 112
  JALR zero, 0(ra)
bb29:
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
  JAL zero, bb28
bb30:
  SLLIW s2, s1, 2
  ADDI t5, sp, 96
  ADD s2, t5, s2
  SW zero, 0(s2)
  ADDIW s1, s1, 1
  ADD s0, s1, zero
  JAL zero, bb26
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
  SD s10, 88(sp)
  ADD s0, a0, zero
  ADD s1, zero, zero
  ADD s2, zero, zero
  # implict jump to bb32
bb32:
  ADD s3, s2, zero
  ADD s4, s1, zero
  SLTI s5, s3, 4
  BNE s5, zero, bb34
  # implict jump to bb33
bb33:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb34:
  ADDIW s5, s3, 1
  SLLIW s6, s3, 4
  ADD s6, s0, s6
  SLLIW s3, s3, 2
  ADD s3, a1, s3
  ADD s7, s5, zero
  # implict jump to bb35
bb35:
  ADD s8, s7, zero
  ADD s9, s4, zero
  SLTI s10, s8, 4
  BNE s10, zero, bb37
  # implict jump to bb36
bb36:
  ADD s1, s9, zero
  ADD s2, s5, zero
  JAL zero, bb32
bb37:
  SLLIW s1, s8, 2
  ADD s2, s6, s1
  LW s2, 0(s2)
  BNE s2, zero, bb42
  # implict jump to bb38
bb38:
  ADD s2, zero, zero
  # implict jump to bb39
bb39:
  BNE s2, zero, bb41
  # implict jump to bb40
bb40:
  ADDIW s1, s8, 1
  ADD s4, s2, zero
  ADD s7, s1, zero
  JAL zero, bb35
bb41:
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
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb42:
  ADD s1, a1, s1
  LW s1, 0(s1)
  LW s9, 0(s3)
  XOR s1, s1, s9
  SLTIU s1, s1, 1
  ADD s2, s1, zero
  JAL zero, bb39
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
  ADD s0, a0, zero
  ADD s1, zero, zero
  # implict jump to bb45
bb45:
  ADD s2, s1, zero
  SLTI s3, s2, 4
  BNE s3, zero, bb47
  # implict jump to bb46
bb46:
  ADDI a0, zero, 10
  CALL putch
  LD ra, 0(sp)
  LD s0, 8(sp)
  LD s1, 16(sp)
  LD s2, 24(sp)
  LD s3, 32(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb47:
  SLLIW s3, s2, 2
  ADD s3, s0, s3
  LW s3, 0(s3)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s2, s2, 1
  ADD s1, s2, zero
  JAL zero, bb45
