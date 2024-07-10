.global search
.global main
.section .bss







a:
.space 3600

.section .data
y_1:
.word 0x00000000
x_1:
.word 0x00000000
x_0:
.word 0x00000000
h:
.word 0x00000000
y_0:
.word 0x00000000
w:
.word 0x00000000
step:
.byte 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 255, 255, 255, 255

INF:
.word 0x40000000
.section .text
search:
  ADDI sp, sp, -192
  SD s2, 80(sp)
  SD s10, 88(sp)
  SD s11, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
  SD s7, 120(sp)
  SD s8, 128(sp)
  SD s9, 136(sp)
  SD s3, 144(sp)
  SD s4, 152(sp)
  SD ra, 160(sp)
  SD s5, 168(sp)
  SD s6, 176(sp)
  ADD t4, a0, zero
  SW t4, 52(sp)
  ADD t4, a1, zero
  SW t4, 48(sp)
  ADD t4, a2, zero
  SW t4, 44(sp)
  ADDI s3, zero, 10
  LW t4, 44(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb37
  # implict jump to bb1
bb1:
  ADD s3, zero, zero
  LUI s4, 262144
  ADDIW s4, s4, 0
  ADD s5, zero, s4
  ADD s4, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  # implict jump to bb2
bb2:
  ADD t4, s9, zero
  SW t4, 40(sp)
  ADD t4, s8, zero
  SW t4, 36(sp)
  ADD t4, s7, zero
  SB t4, 32(sp)
  ADD t4, s6, zero
  SB t4, 17(sp)
  ADD t4, s4, zero
  SB t4, 16(sp)
  ADD t4, s5, zero
  SW t4, 0(sp)
  ADD a4, s3, zero
  LW t4, 36(sp)
  SLTI a5, t4, 4
  BNE a5, zero, bb6
  # implict jump to bb3
bb3:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb5
  # implict jump to bb4
bb4:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s2, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD ra, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb5:
  LUI s0, 262144
  ADDIW s0, s0, 0
  ADD a0, zero, s0
  LD s2, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD ra, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb6:
  ADD t4, a4, zero
  SB t4, 69(sp)
  ADD t4, zero, zero
  SW t4, 72(sp)
  LW t3, 52(sp)
  ADD t4, t3, zero
  SW t4, 64(sp)
  LW t3, 48(sp)
  ADD t4, t3, zero
  SW t4, 60(sp)
  # implict jump to bb7
bb7:
  LW t3, 60(sp)
  ADD t4, t3, zero
  SW t4, 12(sp)
  LW t3, 64(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 72(sp)
  ADD t4, t3, zero
  SW t4, 4(sp)
  LB t3, 69(sp)
  ADD t4, t3, zero
  SB t4, 57(sp)
  ADDI t6, zero, 120
  LW t4, 8(sp)
  MULW t2, t4, t6
  LA t6, a
  ADD t1, t6, t2
  LW t4, 12(sp)
  SLLIW t2, t4, 2
  ADD t4, t1, t2
  SD t4, 24(sp)
  LD t4, 24(sp)
  LW t1, 0(t4)
  XORI t2, t1, 1
  SLTU t1, zero, t2
  BNE t1, zero, bb31
  # implict jump to bb8
bb8:
  LB t3, 57(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  # implict jump to bb9
bb9:
  LB t3, 56(sp)
  ADD t4, t3, zero
  SB t4, 68(sp)
  LA s11, x_1
  LW s10, 0(s11)
  LW t4, 8(sp)
  XOR s11, t4, s10
  SLTIU s10, s11, 1
  BNE s10, zero, bb30
  # implict jump to bb10
bb10:
  ADD s10, zero, zero
  # implict jump to bb11
bb11:
  ADD s11, s10, zero
  BNE s11, zero, bb29
  # implict jump to bb12
bb12:
  ADDI s11, zero, 1
  LW t4, 4(sp)
  SLT s2, s11, t4
  XORI s11, s2, 1
  BNE s11, zero, bb28
  # implict jump to bb13
bb13:
  LW t4, 8(sp)
  XOR s2, t4, zero
  SLTIU s11, s2, 1
  BNE s11, zero, bb27
  # implict jump to bb14
bb14:
  LA s0, h
  LW s1, 0(s0)
  ADDIW s0, s1, 1
  LW t4, 8(sp)
  XOR s1, t4, s0
  SLTIU s0, s1, 1
  ADD s2, s0, zero
  # implict jump to bb15
bb15:
  ADD s11, s2, zero
  BNE s11, zero, bb26
  # implict jump to bb16
bb16:
  LW t4, 12(sp)
  XOR s0, t4, zero
  SLTIU s3, s0, 1
  ADD s1, s3, zero
  # implict jump to bb17
bb17:
  ADD s0, s1, zero
  BNE s0, zero, bb25
  # implict jump to bb18
bb18:
  LA s3, w
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LW t4, 12(sp)
  XOR s4, t4, s3
  SLTIU s3, s4, 1
  ADD t4, s3, zero
  SB t4, 76(sp)
  # implict jump to bb19
bb19:
  LB t3, 76(sp)
  ADD t4, t3, zero
  SB t4, 70(sp)
  LB t4, 70(sp)
  BNE t4, zero, bb24
  # implict jump to bb20
bb20:
  LD t4, 24(sp)
  SW zero, 0(t4)
  LW t4, 36(sp)
  SLLIW t1, t4, 3
  LA a7, step
  ADD a6, a7, t1
  LW t1, 0(a6)
  LW t4, 8(sp)
  SUBW a7, t4, t1
  ADDI t1, a6, 4
  LW a6, 0(t1)
  LW t4, 12(sp)
  SUBW t1, t4, a6
  LW t4, 44(sp)
  ADDIW a6, t4, 1
  ADD a0, a7, zero
  ADD a1, t1, zero
  ADD a2, a6, zero
  CALL search
  ADD t0, a0, zero
  ADDIW t1, t0, 1
  LW t4, 0(sp)
  SLT t0, t1, t4
  BNE t0, zero, bb23
  # implict jump to bb21
bb21:
  LW t4, 0(sp)
  ADD t0, t4, zero
  # implict jump to bb22
bb22:
  ADD t2, t0, zero
  ADDI a1, zero, 1
  LD t4, 24(sp)
  SW a1, 0(t4)
  LW t4, 36(sp)
  ADDIW a1, t4, 1
  LB t4, 68(sp)
  ADD s3, t4, zero
  ADD s5, t2, zero
  ADD s4, s11, zero
  ADD s6, s0, zero
  LB t4, 70(sp)
  ADD s7, t4, zero
  ADD s8, a1, zero
  ADD s9, t1, zero
  JAL zero, bb2
bb23:
  ADD t0, t1, zero
  JAL zero, bb22
bb24:
  LW t4, 36(sp)
  ADDIW t1, t4, 1
  LB t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s4, s11, zero
  ADD s6, s0, zero
  LB t4, 70(sp)
  ADD s7, t4, zero
  ADD s8, t1, zero
  LW t4, 40(sp)
  ADD s9, t4, zero
  JAL zero, bb2
bb25:
  ADDI t4, zero, 1
  SB t4, 76(sp)
  JAL zero, bb19
bb26:
  ADDI s1, zero, 1
  JAL zero, bb17
bb27:
  ADDI s2, zero, 1
  JAL zero, bb15
bb28:
  LW t4, 36(sp)
  ADDIW s2, t4, 1
  LB t4, 68(sp)
  ADD s3, t4, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  LB t4, 16(sp)
  ADD s4, t4, zero
  LB t4, 17(sp)
  ADD s6, t4, zero
  LB t4, 32(sp)
  ADD s7, t4, zero
  ADD s8, s2, zero
  LW t4, 40(sp)
  ADD s9, t4, zero
  JAL zero, bb2
bb29:
  ADDI a0, zero, 1
  LD s2, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD ra, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb30:
  LA s10, y_1
  LW s11, 0(s10)
  LW t4, 12(sp)
  XOR s10, t4, s11
  SLTIU s11, s10, 1
  ADD s10, s11, zero
  JAL zero, bb11
bb31:
  LA t1, x_1
  LW t2, 0(t1)
  LW t4, 8(sp)
  XOR t1, t4, t2
  SLTIU t2, t1, 1
  BNE t2, zero, bb36
  # implict jump to bb32
bb32:
  ADD t4, zero, zero
  SB t4, 58(sp)
  # implict jump to bb33
bb33:
  LB t3, 58(sp)
  ADD t4, t3, zero
  SB t4, 71(sp)
  LB t4, 71(sp)
  BNE t4, zero, bb35
  # implict jump to bb34
bb34:
  LW t4, 36(sp)
  SLLIW s0, t4, 3
  LA s1, step
  ADD s2, s1, s0
  LW s0, 0(s2)
  LW t4, 8(sp)
  ADDW s1, t4, s0
  ADDI s0, s2, 4
  LW s2, 0(s0)
  LW t4, 12(sp)
  ADDW s0, t4, s2
  LW t4, 4(sp)
  ADDIW s2, t4, 1
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 69(sp)
  ADD t4, s2, zero
  SW t4, 72(sp)
  ADD t4, s1, zero
  SW t4, 64(sp)
  ADD t4, s0, zero
  SW t4, 60(sp)
  JAL zero, bb7
bb35:
  LB t3, 71(sp)
  ADD t4, t3, zero
  SB t4, 56(sp)
  JAL zero, bb9
bb36:
  LA t1, y_1
  LW t2, 0(t1)
  LW t4, 12(sp)
  XOR t1, t4, t2
  SLTIU t2, t1, 1
  ADD t4, t2, zero
  SB t4, 58(sp)
  JAL zero, bb33
bb37:
  LUI s3, 262144
  ADDIW s3, s3, 0
  ADD a0, zero, s3
  LD s2, 80(sp)
  LD s10, 88(sp)
  LD s11, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  LD s7, 120(sp)
  LD s8, 128(sp)
  LD s9, 136(sp)
  LD s3, 144(sp)
  LD s4, 152(sp)
  LD ra, 160(sp)
  LD s5, 168(sp)
  LD s6, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -96
  SD s0, 0(sp)
  SD s5, 8(sp)
  SD s7, 16(sp)
  SD s1, 24(sp)
  SD s6, 32(sp)
  SD s2, 40(sp)
  SD s3, 48(sp)
  SD ra, 56(sp)
  SD s4, 64(sp)
  SD s8, 72(sp)
  SD s9, 80(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  ADD s0, zero, zero
  # implict jump to bb39
bb39:
  ADD s1, s0, zero
  LA s2, w
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb41
  # implict jump to bb40
bb40:
  ADD a0, zero, zero
  LD s0, 0(sp)
  LD s5, 8(sp)
  LD s7, 16(sp)
  LD s1, 24(sp)
  LD s6, 32(sp)
  LD s2, 40(sp)
  LD s3, 48(sp)
  LD ra, 56(sp)
  LD s4, 64(sp)
  LD s8, 72(sp)
  LD s9, 80(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb41:
  ADD s2, s1, zero
  ADD s1, zero, zero
  # implict jump to bb42
bb42:
  ADD s3, s1, zero
  ADD s4, s2, zero
  SLTI s5, s3, 30
  BNE s5, zero, bb57
  # implict jump to bb43
bb43:
  ADD s1, s4, zero
  ADDI s2, zero, 1
  # implict jump to bb44
bb44:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, h
  LW s6, 0(s5)
  SLT s5, s6, s3
  XORI s6, s5, 1
  BNE s6, zero, bb49
  # implict jump to bb45
bb45:
  LA s1, x_0
  LW s2, 0(s1)
  LA s1, y_0
  LW s3, 0(s1)
  ADD a0, s2, zero
  ADD a1, s3, zero
  ADDI a2, zero, 1
  CALL search
  ADD s1, a0, zero
  ADDI s2, zero, 10
  SLT s3, s2, s1
  XORI s2, s3, 1
  BNE s2, zero, bb48
  # implict jump to bb46
bb46:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  # implict jump to bb47
bb47:
  CALL getint
  ADD s1, a0, zero
  LA s2, w
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  LA s2, h
  SW s1, 0(s2)
  ADD s0, s4, zero
  JAL zero, bb39
bb48:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb47
bb49:
  ADDI s5, zero, 1
  # implict jump to bb50
bb50:
  ADD s6, s5, zero
  LA s7, w
  LW s8, 0(s7)
  SLT s7, s8, s6
  XORI s8, s7, 1
  BNE s8, zero, bb52
  # implict jump to bb51
bb51:
  ADDIW s5, s3, 1
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb44
bb52:
  ADDI s7, zero, 120
  MULW s8, s3, s7
  LA s7, a
  ADD s9, s7, s8
  SLLIW s7, s6, 2
  ADD s8, s9, s7
  CALL getint
  ADD s7, a0, zero
  SW s7, 0(s8)
  XORI s9, s7, 2
  SLTIU s7, s9, 1
  BNE s7, zero, bb56
  # implict jump to bb53
bb53:
  LW s5, 0(s8)
  XORI s7, s5, 3
  SLTIU s5, s7, 1
  BNE s5, zero, bb55
  # implict jump to bb54
bb54:
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb50
bb55:
  LA s5, x_1
  SW s3, 0(s5)
  LA s5, y_1
  SW s6, 0(s5)
  JAL zero, bb54
bb56:
  LA s7, x_0
  SW s3, 0(s7)
  LA s7, y_0
  SW s6, 0(s7)
  JAL zero, bb54
bb57:
  ADD s5, zero, zero
  # implict jump to bb58
bb58:
  ADD s6, s5, zero
  SLTI s7, s6, 30
  BNE s7, zero, bb60
  # implict jump to bb59
bb59:
  ADDIW s5, s3, 1
  ADD s2, s6, zero
  ADD s1, s5, zero
  JAL zero, bb42
bb60:
  ADDI s7, zero, 120
  MULW s8, s3, s7
  LA s7, a
  ADD s9, s7, s8
  SLLIW s7, s6, 2
  ADD s8, s9, s7
  ADDI s7, zero, 1
  SW s7, 0(s8)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb58
