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
  ADDI sp, sp, -128
  SD s11, 24(sp)
  SD s10, 32(sp)
  SD s9, 40(sp)
  SD s8, 48(sp)
  SD s7, 56(sp)
  SD s6, 64(sp)
  SD ra, 72(sp)
  SD s3, 80(sp)
  SD s0, 88(sp)
  SD s5, 96(sp)
  SD s1, 104(sp)
  SD s2, 112(sp)
  SD s4, 120(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD t4, a3, zero
  SD t4, 16(sp)
  XORI s4, s2, 4
  SLTIU s5, s4, 1
  BNE s5, zero, bb7
  # implict jump to bb1
bb1:
  ADDI s3, zero, 1
  # implict jump to bb2
bb2:
  ADD s4, s3, zero
  SLT s5, s1, s4
  XORI s6, s5, 1
  BNE s6, zero, bb4
  # implict jump to bb3
bb3:
  ADD a0, zero, zero
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb4:
  SLLIW s5, s2, 2
  LD t4, 16(sp)
  ADD s6, t4, s5
  SW s4, 0(s6)
  ADDIW s5, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s5, zero
  LD t4, 16(sp)
  ADD a3, t4, zero
  CALL graphColoring
  ADD s5, a0, zero
  XOR s7, s5, zero
  SLTU s5, zero, s7
  BNE s5, zero, bb6
  # implict jump to bb5
bb5:
  SW zero, 0(s6)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb2
bb6:
  ADDI a0, zero, 1
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb7:
  ADD s4, zero, zero
  ADD s5, zero, zero
  # implict jump to bb8
bb8:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 4
  BNE s8, zero, bb16
  # implict jump to bb9
bb9:
  ADDI t4, zero, 1
  SW t4, 0(sp)
  # implict jump to bb10
bb10:
  LW t4, 0(sp)
  ADD a4, t4, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb12
  # implict jump to bb11
bb11:
  ADD a0, zero, zero
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb12:
  ADD t4, zero, zero
  SW t4, 8(sp)
  # implict jump to bb13
bb13:
  LW t3, 8(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t4, 12(sp)
  SLTI a6, t4, 4
  BNE a6, zero, bb15
  # implict jump to bb14
bb14:
  ADDI a0, zero, 10
  CALL putch
  ADDI a0, zero, 1
  LD s11, 24(sp)
  LD s10, 32(sp)
  LD s9, 40(sp)
  LD s8, 48(sp)
  LD s7, 56(sp)
  LD s6, 64(sp)
  LD ra, 72(sp)
  LD s3, 80(sp)
  LD s0, 88(sp)
  LD s5, 96(sp)
  LD s1, 104(sp)
  LD s2, 112(sp)
  LD s4, 120(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb15:
  LW t4, 12(sp)
  SLLIW a6, t4, 2
  LD t4, 16(sp)
  ADD a7, t4, a6
  LW a6, 0(a7)
  ADD a0, a6, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 12(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 8(sp)
  JAL zero, bb13
bb16:
  ADDIW s8, s6, 1
  ADD s9, s7, zero
  ADD s7, s8, zero
  # implict jump to bb17
bb17:
  ADD s10, s7, zero
  ADD s11, s9, zero
  SLTI t0, s10, 4
  BNE t0, zero, bb19
  # implict jump to bb18
bb18:
  ADD s4, s11, zero
  ADD s5, s8, zero
  JAL zero, bb8
bb19:
  SLLIW t0, s6, 4
  ADD t1, s0, t0
  SLLIW t0, s10, 2
  ADD t2, t1, t0
  LW t1, 0(t2)
  XOR t2, t1, zero
  SLTU t1, zero, t2
  BNE t1, zero, bb24
  # implict jump to bb20
bb20:
  ADD t4, zero, zero
  SB t4, 5(sp)
  # implict jump to bb21
bb21:
  LB t3, 5(sp)
  ADD t4, t3, zero
  SB t4, 4(sp)
  LB t4, 4(sp)
  BNE t4, zero, bb23
  # implict jump to bb22
bb22:
  ADDIW s3, s10, 1
  LB t4, 4(sp)
  ADD s9, t4, zero
  ADD s7, s3, zero
  JAL zero, bb17
bb23:
  ADD t4, zero, zero
  SW t4, 0(sp)
  JAL zero, bb10
bb24:
  LD t4, 16(sp)
  ADD t1, t4, t0
  LW t0, 0(t1)
  SLLIW t1, s6, 2
  LD t4, 16(sp)
  ADD t2, t4, t1
  LW t1, 0(t2)
  XOR t2, t0, t1
  SLTIU t0, t2, 1
  ADD t4, t0, zero
  SB t4, 5(sp)
  JAL zero, bb21
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
  # implict jump to bb26
bb26:
  ADD s1, s0, zero
  SLTI s2, s1, 4
  BNE s2, zero, bb30
  # implict jump to bb27
bb27:
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
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb29
  # implict jump to bb28
bb28:
  ADD a0, zero, zero
  LD ra, 80(sp)
  LD s3, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
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
  ADDI t5, sp, 0
  ADD s3, t5, s2
  SW zero, 0(s3)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb26
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
  # implict jump to bb32
bb32:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLTI s6, s4, 4
  BNE s6, zero, bb34
  # implict jump to bb33
bb33:
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
bb34:
  ADDIW s6, s4, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  # implict jump to bb35
bb35:
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLTI s10, s8, 4
  BNE s10, zero, bb37
  # implict jump to bb36
bb36:
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb32
bb37:
  SLLIW s10, s4, 4
  ADD s11, s0, s10
  SLLIW s10, s8, 2
  ADD t0, s11, s10
  LW s11, 0(t0)
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb42
  # implict jump to bb38
bb38:
  ADD s11, zero, zero
  # implict jump to bb39
bb39:
  ADD s10, s11, zero
  BNE s10, zero, bb41
  # implict jump to bb40
bb40:
  ADDIW t0, s8, 1
  ADD s7, s10, zero
  ADD s5, t0, zero
  JAL zero, bb35
bb41:
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
bb42:
  ADD s11, s1, s10
  LW s10, 0(s11)
  SLLIW s11, s4, 2
  ADD t0, s1, s11
  LW s11, 0(t0)
  XOR t0, s10, s11
  SLTIU s10, t0, 1
  ADD s11, s10, zero
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
  SD s4, 8(sp)
  SD s3, 16(sp)
  SD s2, 24(sp)
  SD s1, 32(sp)
  SD s0, 40(sp)
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
  LD s4, 8(sp)
  LD s3, 16(sp)
  LD s2, 24(sp)
  LD s1, 32(sp)
  LD s0, 40(sp)
  ADDI sp, sp, 48
  JALR zero, 0(ra)
bb47:
  SLLIW s3, s2, 2
  ADD s4, s0, s3
  LW s3, 0(s4)
  ADD a0, s3, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  ADDIW s3, s2, 1
  ADD s1, s3, zero
  JAL zero, bb45
