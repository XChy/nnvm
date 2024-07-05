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
  SD s10, 80(sp)
  SD s6, 88(sp)
  SD s0, 96(sp)
  SD s11, 104(sp)
  SD s9, 112(sp)
  SD s1, 120(sp)
  SD s7, 128(sp)
  SD s2, 136(sp)
  SD s8, 144(sp)
  SD s3, 152(sp)
  SD s4, 160(sp)
  SD s5, 168(sp)
  SD ra, 176(sp)
  ADD s1, a0, zero
  ADD s2, a1, zero
  ADD s3, a2, zero
  ADDI s4, zero, 10
  SLT s5, s4, s3
  BNE s5, zero, bb1
  JAL zero, bb2
bb1:
  LA s4, INF
  LW s5, 0(s4)
  ADD a0, s5, zero
  LD s10, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s11, 104(sp)
  LD s9, 112(sp)
  LD s1, 120(sp)
  LD s7, 128(sp)
  LD s2, 136(sp)
  LD s8, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb2:
  LA s4, INF
  LW s5, 0(s4)
  ADD s4, zero, zero
  ADD t4, s5, zero
  SW t4, 0(sp)
  ADD s5, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  ADD t4, zero, zero
  SW t4, 32(sp)
  JAL zero, bb3
bb3:
  SLTI s11, s9, 4
  XOR t0, s11, zero
  SLTU s11, zero, t0
  BNE s11, zero, bb4
  JAL zero, bb5
bb4:
  ADD s11, s4, zero
  ADD t4, zero, zero
  SW t4, 24(sp)
  ADD t4, s1, zero
  SW t4, 16(sp)
  ADD t4, s2, zero
  SW t4, 8(sp)
  JAL zero, bb6
bb5:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb34
  JAL zero, bb35
bb6:
  ADDI a3, zero, 120
  LW t4, 16(sp)
  MULW a4, t4, a3
  LA a3, a
  ADD a5, a3, a4
  ADDI a3, zero, 4
  LW t4, 8(sp)
  MULW a4, t4, a3
  ADD a3, a5, a4
  LW a4, 0(a3)
  XORI a3, a4, 1
  SLTU a4, zero, a3
  XOR a3, a4, zero
  SLTU a4, zero, a3
  BNE a4, zero, bb7
  JAL zero, bb36
bb7:
  LA a3, x_1
  LW a4, 0(a3)
  LW t4, 16(sp)
  XOR a3, t4, a4
  SLTIU a4, a3, 1
  BNE a4, zero, bb9
  JAL zero, bb10
bb8:
  LA a4, x_1
  LW a5, 0(a4)
  LW t4, 16(sp)
  XOR a4, t4, a5
  SLTIU a5, a4, 1
  BNE a5, zero, bb14
  JAL zero, bb15
bb9:
  LA a3, y_1
  LW a4, 0(a3)
  LW t4, 8(sp)
  XOR a3, t4, a4
  SLTIU a4, a3, 1
  ADD t4, a4, zero
  SB t4, 56(sp)
  JAL zero, bb11
bb10:
  ADD t4, zero, zero
  SB t4, 56(sp)
  JAL zero, bb11
bb11:
  LB t4, 56(sp)
  BNE t4, zero, bb12
  JAL zero, bb13
bb12:
  LB t4, 56(sp)
  ADD s0, t4, zero
  JAL zero, bb8
bb13:
  ADDI s4, zero, 8
  MULW s6, s9, s4
  LA s4, step
  ADD s10, s4, s6
  ADDI s4, zero, 4
  MULW s6, zero, s4
  ADD s4, s10, s6
  LW s6, 0(s4)
  LW t4, 16(sp)
  ADDW s4, t4, s6
  ADDI s6, zero, 8
  MULW s10, s9, s6
  LA s6, step
  ADD t0, s6, s10
  ADDI s6, zero, 4
  ADDI s10, zero, 1
  MULW t1, s6, s10
  ADD s6, t0, t1
  LW s10, 0(s6)
  LW t4, 8(sp)
  ADDW s6, t4, s10
  LW t4, 24(sp)
  ADDIW s10, t4, 1
  LB t4, 56(sp)
  ADD s11, t4, zero
  ADD t4, s10, zero
  SW t4, 24(sp)
  ADD t4, s4, zero
  SW t4, 16(sp)
  ADD t4, s6, zero
  SW t4, 8(sp)
  JAL zero, bb6
bb14:
  LA a4, y_1
  LW a5, 0(a4)
  LW t4, 8(sp)
  XOR a4, t4, a5
  SLTIU a5, a4, 1
  ADD t4, a5, zero
  SB t4, 72(sp)
  JAL zero, bb16
bb15:
  ADD t4, zero, zero
  SB t4, 72(sp)
  JAL zero, bb16
bb16:
  LB t4, 72(sp)
  BNE t4, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 1
  LD s10, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s11, 104(sp)
  LD s9, 112(sp)
  LD s1, 120(sp)
  LD s7, 128(sp)
  LD s2, 136(sp)
  LD s8, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb18:
  ADDI a5, zero, 1
  LW t4, 24(sp)
  SLT a6, a5, t4
  XORI a5, a6, 1
  BNE a5, zero, bb19
  JAL zero, bb20
bb19:
  ADDIW a5, s9, 1
  ADD s4, s0, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  ADD s5, s5, zero
  ADD s7, s7, zero
  ADD s8, s8, zero
  ADD s9, a5, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb3
bb20:
  LW t4, 16(sp)
  XOR a5, t4, zero
  SLTIU a6, a5, 1
  BNE a6, zero, bb21
  JAL zero, bb22
bb21:
  ADDI t4, zero, 1
  SB t4, 48(sp)
  JAL zero, bb23
bb22:
  LA s4, h
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LW t4, 16(sp)
  XOR s6, t4, s4
  SLTIU s4, s6, 1
  XOR s6, s4, zero
  SLTU s4, zero, s6
  ADD t4, s4, zero
  SB t4, 48(sp)
  JAL zero, bb23
bb23:
  LB t4, 48(sp)
  BNE t4, zero, bb24
  JAL zero, bb25
bb24:
  ADDI t4, zero, 1
  SB t4, 64(sp)
  JAL zero, bb26
bb25:
  LW t4, 8(sp)
  XOR s4, t4, zero
  SLTIU s6, s4, 1
  XOR s4, s6, zero
  SLTU s6, zero, s4
  ADD t4, s6, zero
  SB t4, 64(sp)
  JAL zero, bb26
bb26:
  LB t4, 64(sp)
  BNE t4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI t4, zero, 1
  SB t4, 40(sp)
  JAL zero, bb29
bb28:
  LA s4, w
  LW s6, 0(s4)
  ADDIW s4, s6, 1
  LW t4, 8(sp)
  XOR s6, t4, s4
  SLTIU s4, s6, 1
  XOR s6, s4, zero
  SLTU s4, zero, s6
  ADD t4, s4, zero
  SB t4, 40(sp)
  JAL zero, bb29
bb29:
  LB t4, 40(sp)
  BNE t4, zero, bb30
  JAL zero, bb31
bb30:
  ADDIW s6, s9, 1
  ADD s4, s0, zero
  LW t3, 0(sp)
  ADD t4, t3, zero
  SW t4, 0(sp)
  LB t4, 48(sp)
  ADD s5, t4, zero
  LB t4, 64(sp)
  ADD s7, t4, zero
  LB t4, 40(sp)
  ADD s8, t4, zero
  ADD s9, s6, zero
  LW t3, 32(sp)
  ADD t4, t3, zero
  SW t4, 32(sp)
  JAL zero, bb3
bb31:
  ADDI s6, zero, 120
  LW t4, 16(sp)
  MULW t2, t4, s6
  LA s6, a
  ADD t1, s6, t2
  ADDI s6, zero, 4
  LW t4, 8(sp)
  MULW t2, t4, s6
  ADD s6, t1, t2
  SW zero, 0(s6)
  ADDI s6, zero, 8
  MULW t1, s9, s6
  LA s6, step
  ADD t2, s6, t1
  ADDI s6, zero, 4
  MULW t1, zero, s6
  ADD s6, t2, t1
  LW t1, 0(s6)
  LW t4, 16(sp)
  SUBW s6, t4, t1
  ADDI t1, zero, 8
  MULW t2, s9, t1
  LA t1, step
  ADD t0, t1, t2
  ADDI t1, zero, 4
  ADDI t2, zero, 1
  MULW s10, t1, t2
  ADD t1, t0, s10
  LW s10, 0(t1)
  LW t4, 8(sp)
  SUBW t0, t4, s10
  ADDIW s10, s3, 1
  ADD a0, s6, zero
  ADD a1, t0, zero
  ADD a2, s10, zero
  CALL search
  ADD s6, a0, zero
  ADDIW s10, s6, 1
  LW t4, 0(sp)
  SLT s6, s10, t4
  BNE s6, zero, bb32
  JAL zero, bb37
bb32:
  ADD s6, s10, zero
  JAL zero, bb33
bb33:
  ADDI t0, zero, 120
  LW t4, 16(sp)
  MULW t1, t4, t0
  LA t0, a
  ADD t2, t0, t1
  ADDI t0, zero, 4
  LW t4, 8(sp)
  MULW t1, t4, t0
  ADD t0, t2, t1
  ADDI t1, zero, 1
  SW t1, 0(t0)
  ADDIW t0, s9, 1
  ADD s4, s0, zero
  ADD t4, s6, zero
  SW t4, 0(sp)
  LB t4, 48(sp)
  ADD s5, t4, zero
  LB t4, 64(sp)
  ADD s7, t4, zero
  LB t4, 40(sp)
  ADD s8, t4, zero
  ADD s9, t0, zero
  ADD t4, s10, zero
  SW t4, 32(sp)
  JAL zero, bb3
bb34:
  LA s0, INF
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s10, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s11, 104(sp)
  LD s9, 112(sp)
  LD s1, 120(sp)
  LD s7, 128(sp)
  LD s2, 136(sp)
  LD s8, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb35:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s10, 80(sp)
  LD s6, 88(sp)
  LD s0, 96(sp)
  LD s11, 104(sp)
  LD s9, 112(sp)
  LD s1, 120(sp)
  LD s7, 128(sp)
  LD s2, 136(sp)
  LD s8, 144(sp)
  LD s3, 152(sp)
  LD s4, 160(sp)
  LD s5, 168(sp)
  LD ra, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb36:
  ADD s0, s11, zero
  JAL zero, bb8
bb37:
  LW t4, 0(sp)
  ADD s6, t4, zero
  JAL zero, bb33
main:
  ADDI sp, sp, -64
  SD s4, 0(sp)
  SD s3, 8(sp)
  SD ra, 16(sp)
  SD s2, 24(sp)
  SD s6, 32(sp)
  SD s1, 40(sp)
  SD s5, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  ADD s0, zero, zero
  JAL zero, bb39
bb39:
  LA s1, w
  LW s2, 0(s1)
  XOR s1, s2, zero
  SLTU s2, zero, s1
  XOR s1, s2, zero
  SLTU s2, zero, s1
  BNE s2, zero, bb40
  JAL zero, bb41
bb40:
  ADD s1, s0, zero
  ADD s2, zero, zero
  JAL zero, bb42
bb41:
  ADD a0, zero, zero
  LD s4, 0(sp)
  LD s3, 8(sp)
  LD ra, 16(sp)
  LD s2, 24(sp)
  LD s6, 32(sp)
  LD s1, 40(sp)
  LD s5, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb42:
  SLTI s3, s2, 30
  XOR s4, s3, zero
  SLTU s3, zero, s4
  BNE s3, zero, bb43
  JAL zero, bb44
bb43:
  ADD s3, zero, zero
  JAL zero, bb45
bb44:
  ADD s2, s1, zero
  ADDI s1, zero, 1
  JAL zero, bb48
bb45:
  SLTI s4, s3, 30
  XOR s5, s4, zero
  SLTU s4, zero, s5
  BNE s4, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s4, zero, 120
  MULW s5, s2, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  ADDI s5, zero, 1
  SW s5, 0(s4)
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb45
bb47:
  ADDIW s4, s2, 1
  ADD s1, s3, zero
  ADD s2, s4, zero
  JAL zero, bb42
bb48:
  LA s3, h
  LW s4, 0(s3)
  SLT s3, s4, s1
  XORI s4, s3, 1
  XOR s3, s4, zero
  SLTU s4, zero, s3
  BNE s4, zero, bb49
  JAL zero, bb50
bb49:
  ADDI s3, zero, 1
  JAL zero, bb51
bb50:
  LA s1, x_0
  LW s3, 0(s1)
  LA s1, y_0
  LW s4, 0(s1)
  ADD a0, s3, zero
  ADD a1, s4, zero
  ADDI a2, zero, 1
  CALL search
  ADD s1, a0, zero
  ADDI s3, zero, 10
  SLT s4, s3, s1
  XORI s3, s4, 1
  BNE s3, zero, bb59
  JAL zero, bb61
bb51:
  LA s4, w
  LW s5, 0(s4)
  SLT s4, s5, s3
  XORI s5, s4, 1
  XOR s4, s5, zero
  SLTU s5, zero, s4
  BNE s5, zero, bb52
  JAL zero, bb53
bb52:
  ADDI s4, zero, 120
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  CALL getint
  ADD s5, a0, zero
  SW s5, 0(s4)
  ADDI s4, zero, 120
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  XORI s4, s5, 2
  SLTIU s5, s4, 1
  BNE s5, zero, bb54
  JAL zero, bb56
bb53:
  ADDIW s4, s1, 1
  ADD s2, s3, zero
  ADD s1, s4, zero
  JAL zero, bb48
bb54:
  LA s4, x_0
  SW s1, 0(s4)
  LA s4, y_0
  SW s3, 0(s4)
  JAL zero, bb55
bb55:
  ADDIW s4, s3, 1
  ADD s3, s4, zero
  JAL zero, bb51
bb56:
  ADDI s4, zero, 120
  MULW s5, s1, s4
  LA s4, a
  ADD s6, s4, s5
  ADDI s4, zero, 4
  MULW s5, s3, s4
  ADD s4, s6, s5
  LW s5, 0(s4)
  XORI s4, s5, 3
  SLTIU s5, s4, 1
  BNE s5, zero, bb57
  JAL zero, bb58
bb57:
  LA s4, x_1
  SW s1, 0(s4)
  LA s4, y_1
  SW s3, 0(s4)
  JAL zero, bb58
bb58:
  JAL zero, bb55
bb59:
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb60
bb60:
  CALL getint
  ADD s1, a0, zero
  LA s3, w
  SW s1, 0(s3)
  CALL getint
  ADD s1, a0, zero
  LA s3, h
  SW s1, 0(s3)
  ADD s0, s2, zero
  JAL zero, bb39
bb61:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb60
