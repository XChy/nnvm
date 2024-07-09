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
  BNE s5, zero, bb1
  JAL zero, bb3
bb1:
  ADD s4, zero, zero
  ADD s5, zero, zero
  JAL zero, bb11
bb2:
  LW t4, 8(sp)
  ADD a4, t4, zero
  XOR a5, a4, zero
  SLTU a4, zero, a5
  BNE a4, zero, bb4
  JAL zero, bb5
bb3:
  ADDI s3, zero, 1
  JAL zero, bb6
bb4:
  ADD t4, zero, zero
  SW t4, 12(sp)
  JAL zero, bb22
bb5:
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
bb6:
  ADD s4, s3, zero
  SLT s5, s1, s4
  XORI s6, s5, 1
  BNE s6, zero, bb7
  JAL zero, bb8
bb7:
  ADDI s5, zero, 4
  MULW s6, s2, s5
  LD t4, 16(sp)
  ADD s5, t4, s6
  SW s4, 0(s5)
  ADDIW s6, s2, 1
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s6, zero
  LD t4, 16(sp)
  ADD a3, t4, zero
  CALL graphColoring
  ADD s6, a0, zero
  XOR s7, s6, zero
  SLTU s6, zero, s7
  BNE s6, zero, bb9
  JAL zero, bb10
bb8:
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
bb9:
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
bb10:
  SW zero, 0(s5)
  ADDIW s5, s4, 1
  ADD s3, s5, zero
  JAL zero, bb6
bb11:
  ADD s6, s5, zero
  ADD s7, s4, zero
  SLTI s8, s6, 4
  BNE s8, zero, bb12
  JAL zero, bb13
bb12:
  ADDIW s8, s6, 1
  ADD s9, s7, zero
  ADD s7, s8, zero
  JAL zero, bb14
bb13:
  ADDI t4, zero, 1
  SW t4, 8(sp)
  JAL zero, bb2
bb14:
  ADD s10, s7, zero
  ADD s11, s9, zero
  SLTI t0, s10, 4
  BNE t0, zero, bb15
  JAL zero, bb16
bb15:
  ADDI t0, zero, 16
  MULW t1, s6, t0
  ADD t0, s0, t1
  ADDI t1, zero, 4
  MULW t2, s10, t1
  ADD t1, t0, t2
  LW t0, 0(t1)
  XOR t1, t0, zero
  SLTU t0, zero, t1
  BNE t0, zero, bb17
  JAL zero, bb18
bb16:
  ADD s4, s11, zero
  ADD s5, s8, zero
  JAL zero, bb11
bb17:
  LD t4, 16(sp)
  ADD t0, t4, t2
  LW t1, 0(t0)
  ADDI t0, zero, 4
  MULW t2, s6, t0
  LD t4, 16(sp)
  ADD t0, t4, t2
  LW t2, 0(t0)
  XOR t0, t1, t2
  SLTIU t1, t0, 1
  ADD t4, t1, zero
  SB t4, 1(sp)
  JAL zero, bb19
bb18:
  ADD t4, zero, zero
  SB t4, 1(sp)
  JAL zero, bb19
bb19:
  LB t3, 1(sp)
  ADD t4, t3, zero
  SB t4, 0(sp)
  LB t4, 0(sp)
  BNE t4, zero, bb20
  JAL zero, bb21
bb20:
  ADD t4, zero, zero
  SW t4, 8(sp)
  JAL zero, bb2
bb21:
  ADDIW s3, s10, 1
  LB t4, 0(sp)
  ADD s9, t4, zero
  ADD s7, s3, zero
  JAL zero, bb14
bb22:
  LW t3, 12(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LW t4, 4(sp)
  SLTI a6, t4, 4
  BNE a6, zero, bb23
  JAL zero, bb24
bb23:
  ADDI a6, zero, 4
  LW t4, 4(sp)
  MULW a7, t4, a6
  LD t4, 16(sp)
  ADD a6, t4, a7
  LW a7, 0(a6)
  ADD a0, a7, zero
  CALL putint
  ADDI a0, zero, 32
  CALL putch
  LW t4, 4(sp)
  ADDIW s3, t4, 1
  ADD t4, s3, zero
  SW t4, 12(sp)
  JAL zero, bb22
bb24:
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
  JAL zero, bb26
bb26:
  ADD s1, s0, zero
  SLTI s2, s1, 4
  BNE s2, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADDI t5, sp, 0
  ADD s2, t5, s3
  SW zero, 0(s2)
  ADDIW s2, s1, 1
  ADD s0, s2, zero
  JAL zero, bb26
bb28:
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
  JAL zero, bb30
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
  JAL zero, bb30
bb30:
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
  JAL zero, bb32
bb32:
  ADD s4, s3, zero
  ADD s5, s2, zero
  SLTI s6, s4, 4
  BNE s6, zero, bb33
  JAL zero, bb34
bb33:
  ADDIW s6, s4, 1
  ADD s7, s5, zero
  ADD s5, s6, zero
  JAL zero, bb35
bb34:
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
bb35:
  ADD s8, s5, zero
  ADD s9, s7, zero
  SLTI s10, s8, 4
  BNE s10, zero, bb36
  JAL zero, bb37
bb36:
  ADDI s10, zero, 16
  MULW s11, s4, s10
  ADD s10, s0, s11
  ADDI s11, zero, 4
  MULW t0, s8, s11
  ADD s11, s10, t0
  LW s10, 0(s11)
  XOR s11, s10, zero
  SLTU s10, zero, s11
  BNE s10, zero, bb38
  JAL zero, bb39
bb37:
  ADD s2, s9, zero
  ADD s3, s6, zero
  JAL zero, bb32
bb38:
  ADD s10, s1, t0
  LW s11, 0(s10)
  ADDI s10, zero, 4
  MULW t0, s4, s10
  ADD s10, s1, t0
  LW t0, 0(s10)
  XOR s10, s11, t0
  SLTIU s11, s10, 1
  ADD s10, s11, zero
  JAL zero, bb40
bb39:
  ADD s10, zero, zero
  JAL zero, bb40
bb40:
  ADD s11, s10, zero
  BNE s11, zero, bb41
  JAL zero, bb42
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
  ADDIW t0, s8, 1
  ADD s7, s11, zero
  ADD s5, t0, zero
  JAL zero, bb35
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
  JAL zero, bb45
bb45:
  ADD s2, s1, zero
  SLTI s3, s2, 4
  BNE s3, zero, bb46
  JAL zero, bb47
bb46:
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
  JAL zero, bb45
bb47:
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
