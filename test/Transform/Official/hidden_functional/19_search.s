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
  ADDI sp, sp, -304
  SD s2, 192(sp)
  SD s10, 200(sp)
  SD s11, 208(sp)
  SD s1, 216(sp)
  SD s0, 224(sp)
  SD s7, 232(sp)
  SD s8, 240(sp)
  SD s9, 248(sp)
  SD s3, 256(sp)
  SD s4, 264(sp)
  SD ra, 272(sp)
  SD s5, 280(sp)
  SD s6, 288(sp)
  ADD t4, a0, zero
  SW t4, 96(sp)
  ADD t4, a1, zero
  SW t4, 88(sp)
  ADD t4, a2, zero
  SW t4, 80(sp)
  ADDI s3, zero, 10
  LW t4, 80(sp)
  SLT s4, s3, t4
  BNE s4, zero, bb1
  JAL zero, bb2
bb1:
  LUI s3, 262144
  ADDI s3, s3, 0
  ADD a0, zero, s3
  LD s2, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LD s1, 216(sp)
  LD s0, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD ra, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb2:
  ADD s3, zero, zero
  LUI s4, 262144
  ADDI s4, s4, 0
  ADD s5, zero, s4
  ADD s4, zero, zero
  ADD s6, zero, zero
  ADD s7, zero, zero
  ADD s8, zero, zero
  ADD s9, zero, zero
  JAL zero, bb3
bb3:
  ADD t4, s9, zero
  SW t4, 72(sp)
  ADD t4, s8, zero
  SW t4, 64(sp)
  ADD t4, s7, zero
  SB t4, 48(sp)
  ADD t4, s6, zero
  SB t4, 40(sp)
  ADD t4, s4, zero
  SB t4, 32(sp)
  ADD t4, s5, zero
  SW t4, 0(sp)
  ADD a4, s3, zero
  LW t4, 64(sp)
  SLTI a5, t4, 4
  BNE a5, zero, bb4
  JAL zero, bb5
bb4:
  ADD t4, a4, zero
  SB t4, 152(sp)
  ADD t4, zero, zero
  SW t4, 144(sp)
  LW t3, 96(sp)
  ADD t4, t3, zero
  SW t4, 136(sp)
  LW t3, 88(sp)
  ADD t4, t3, zero
  SW t4, 128(sp)
  JAL zero, bb6
bb5:
  ADDI s0, zero, 10
  LW t4, 0(sp)
  SLT s1, s0, t4
  BNE s1, zero, bb34
  JAL zero, bb35
bb6:
  LW t3, 128(sp)
  ADD t4, t3, zero
  SW t4, 24(sp)
  LW t3, 136(sp)
  ADD t4, t3, zero
  SW t4, 8(sp)
  LW t3, 144(sp)
  ADD t4, t3, zero
  SW t4, 16(sp)
  LB t3, 152(sp)
  ADD t4, t3, zero
  SB t4, 112(sp)
  ADDI t2, zero, 120
  LW t4, 8(sp)
  MULW t1, t4, t2
  LA t2, a
  ADD t0, t2, t1
  ADDI t1, zero, 4
  LW t4, 24(sp)
  MULW t2, t4, t1
  ADD t4, t0, t2
  SD t4, 56(sp)
  LD t4, 56(sp)
  LW t0, 0(t4)
  XORI t2, t0, 1
  SLTU t0, zero, t2
  BNE t0, zero, bb7
  JAL zero, bb36
bb7:
  LA t0, x_1
  LW t2, 0(t0)
  LW t4, 8(sp)
  XOR t0, t4, t2
  SLTIU t2, t0, 1
  BNE t2, zero, bb9
  JAL zero, bb10
bb8:
  LB t4, 104(sp)
  ADD s11, t4, zero
  LA s10, x_1
  LW s2, 0(s10)
  LW t4, 8(sp)
  XOR s10, t4, s2
  SLTIU s2, s10, 1
  BNE s2, zero, bb14
  JAL zero, bb15
bb9:
  LA t0, y_1
  LW t2, 0(t0)
  LW t4, 24(sp)
  XOR t0, t4, t2
  SLTIU t2, t0, 1
  ADD t4, t2, zero
  SB t4, 120(sp)
  JAL zero, bb11
bb10:
  ADD t4, zero, zero
  SB t4, 120(sp)
  JAL zero, bb11
bb11:
  LB t3, 120(sp)
  ADD t4, t3, zero
  SB t4, 168(sp)
  LB t4, 168(sp)
  BNE t4, zero, bb12
  JAL zero, bb13
bb12:
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  JAL zero, bb8
bb13:
  ADDI s0, zero, 8
  LW t4, 64(sp)
  MULW s1, t4, s0
  LA s0, step
  ADD s2, s0, s1
  LW s0, 0(s2)
  LW t4, 8(sp)
  ADDW s1, t4, s0
  ADDI s0, s2, 4
  LW s2, 0(s0)
  LW t4, 24(sp)
  ADDW s0, t4, s2
  LW t4, 16(sp)
  ADDIW s2, t4, 1
  LB t3, 168(sp)
  ADD t4, t3, zero
  SB t4, 152(sp)
  ADD t4, s2, zero
  SW t4, 144(sp)
  ADD t4, s1, zero
  SW t4, 136(sp)
  ADD t4, s0, zero
  SW t4, 128(sp)
  JAL zero, bb6
bb14:
  LA s2, y_1
  LW s10, 0(s2)
  LW t4, 24(sp)
  XOR s2, t4, s10
  SLTIU s10, s2, 1
  ADD s2, s10, zero
  JAL zero, bb16
bb15:
  ADD s2, zero, zero
  JAL zero, bb16
bb16:
  ADD s10, s2, zero
  BNE s10, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 1
  LD s2, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LD s1, 216(sp)
  LD s0, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD ra, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb18:
  ADDI s10, zero, 1
  LW t4, 16(sp)
  SLT s1, s10, t4
  XORI s10, s1, 1
  BNE s10, zero, bb19
  JAL zero, bb20
bb19:
  LW t4, 64(sp)
  ADDIW s1, t4, 1
  ADD s3, s11, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  LB t4, 32(sp)
  ADD s4, t4, zero
  LB t4, 40(sp)
  ADD s6, t4, zero
  LB t4, 48(sp)
  ADD s7, t4, zero
  ADD s8, s1, zero
  LW t4, 72(sp)
  ADD s9, t4, zero
  JAL zero, bb3
bb20:
  LW t4, 8(sp)
  XOR s1, t4, zero
  SLTIU s10, s1, 1
  BNE s10, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s1, zero, 1
  JAL zero, bb23
bb22:
  LA s0, h
  LW s3, 0(s0)
  ADDIW s0, s3, 1
  LW t4, 8(sp)
  XOR s3, t4, s0
  SLTIU s0, s3, 1
  ADD s1, s0, zero
  JAL zero, bb23
bb23:
  ADD s10, s1, zero
  BNE s10, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s0, zero, 1
  JAL zero, bb26
bb25:
  LW t4, 24(sp)
  XOR s3, t4, zero
  SLTIU s4, s3, 1
  ADD s0, s4, zero
  JAL zero, bb26
bb26:
  ADD t4, s0, zero
  SB t4, 176(sp)
  LB t4, 176(sp)
  BNE t4, zero, bb27
  JAL zero, bb28
bb27:
  ADDI t4, zero, 1
  SB t4, 184(sp)
  JAL zero, bb29
bb28:
  LA s3, w
  LW s4, 0(s3)
  ADDIW s3, s4, 1
  LW t4, 24(sp)
  XOR s4, t4, s3
  SLTIU s3, s4, 1
  ADD t4, s3, zero
  SB t4, 184(sp)
  JAL zero, bb29
bb29:
  LB t3, 184(sp)
  ADD t4, t3, zero
  SB t4, 160(sp)
  LB t4, 160(sp)
  BNE t4, zero, bb30
  JAL zero, bb31
bb30:
  LW t4, 64(sp)
  ADDIW a7, t4, 1
  ADD s3, s11, zero
  LW t4, 0(sp)
  ADD s5, t4, zero
  ADD s4, s10, zero
  LB t4, 176(sp)
  ADD s6, t4, zero
  LB t4, 160(sp)
  ADD s7, t4, zero
  ADD s8, a7, zero
  LW t4, 72(sp)
  ADD s9, t4, zero
  JAL zero, bb3
bb31:
  LD t4, 56(sp)
  SW zero, 0(t4)
  ADDI a7, zero, 8
  LW t4, 64(sp)
  MULW a6, t4, a7
  LA a7, step
  ADD a4, a7, a6
  LW a6, 0(a4)
  LW t4, 8(sp)
  SUBW a7, t4, a6
  ADDI a6, a4, 4
  LW a4, 0(a6)
  LW t4, 24(sp)
  SUBW a6, t4, a4
  LW t4, 80(sp)
  ADDIW a4, t4, 1
  ADD a0, a7, zero
  ADD a1, a6, zero
  ADD a2, a4, zero
  CALL search
  ADD t0, a0, zero
  ADDIW t1, t0, 1
  LW t4, 0(sp)
  SLT t0, t1, t4
  BNE t0, zero, bb32
  JAL zero, bb37
bb32:
  ADD t0, t1, zero
  JAL zero, bb33
bb33:
  ADD t2, t0, zero
  ADDI a1, zero, 1
  LD t4, 56(sp)
  SW a1, 0(t4)
  LW t4, 64(sp)
  ADDIW a1, t4, 1
  ADD s3, s11, zero
  ADD s5, t2, zero
  ADD s4, s10, zero
  LB t4, 176(sp)
  ADD s6, t4, zero
  LB t4, 160(sp)
  ADD s7, t4, zero
  ADD s8, a1, zero
  ADD s9, t1, zero
  JAL zero, bb3
bb34:
  LUI s0, 262144
  ADDI s0, s0, 0
  ADD a0, zero, s0
  LD s2, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LD s1, 216(sp)
  LD s0, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD ra, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb35:
  LW t4, 0(sp)
  ADD a0, t4, zero
  LD s2, 192(sp)
  LD s10, 200(sp)
  LD s11, 208(sp)
  LD s1, 216(sp)
  LD s0, 224(sp)
  LD s7, 232(sp)
  LD s8, 240(sp)
  LD s9, 248(sp)
  LD s3, 256(sp)
  LD s4, 264(sp)
  LD ra, 272(sp)
  LD s5, 280(sp)
  LD s6, 288(sp)
  ADDI sp, sp, 304
  JALR zero, 0(ra)
bb36:
  LB t3, 112(sp)
  ADD t4, t3, zero
  SB t4, 104(sp)
  JAL zero, bb8
bb37:
  LW t4, 0(sp)
  ADD t0, t4, zero
  JAL zero, bb33
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
  JAL zero, bb39
bb39:
  ADD s1, s0, zero
  LA s2, w
  LW s3, 0(s2)
  XOR s2, s3, zero
  SLTU s3, zero, s2
  BNE s3, zero, bb40
  JAL zero, bb41
bb40:
  ADD s2, s1, zero
  ADD s1, zero, zero
  JAL zero, bb42
bb41:
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
bb42:
  ADD s3, s1, zero
  ADD s4, s2, zero
  SLTI s5, s3, 30
  BNE s5, zero, bb43
  JAL zero, bb44
bb43:
  ADD s5, zero, zero
  JAL zero, bb45
bb44:
  ADD s1, s4, zero
  ADDI s2, zero, 1
  JAL zero, bb48
bb45:
  ADD s6, s5, zero
  SLTI s7, s6, 30
  BNE s7, zero, bb46
  JAL zero, bb47
bb46:
  ADDI s7, zero, 120
  MULW s8, s3, s7
  LA s7, a
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  ADDI s8, zero, 1
  SW s8, 0(s7)
  ADDIW s7, s6, 1
  ADD s5, s7, zero
  JAL zero, bb45
bb47:
  ADDIW s5, s3, 1
  ADD s2, s6, zero
  ADD s1, s5, zero
  JAL zero, bb42
bb48:
  ADD s3, s2, zero
  ADD s4, s1, zero
  LA s5, h
  LW s6, 0(s5)
  SLT s5, s6, s3
  XORI s6, s5, 1
  BNE s6, zero, bb49
  JAL zero, bb50
bb49:
  ADDI s5, zero, 1
  JAL zero, bb51
bb50:
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
  BNE s2, zero, bb59
  JAL zero, bb61
bb51:
  ADD s6, s5, zero
  LA s7, w
  LW s8, 0(s7)
  SLT s7, s8, s6
  XORI s8, s7, 1
  BNE s8, zero, bb52
  JAL zero, bb53
bb52:
  ADDI s7, zero, 120
  MULW s8, s3, s7
  LA s7, a
  ADD s9, s7, s8
  ADDI s7, zero, 4
  MULW s8, s6, s7
  ADD s7, s9, s8
  CALL getint
  ADD s8, a0, zero
  SW s8, 0(s7)
  LW s8, 0(s7)
  XORI s9, s8, 2
  SLTIU s8, s9, 1
  BNE s8, zero, bb54
  JAL zero, bb56
bb53:
  ADDIW s5, s3, 1
  ADD s1, s6, zero
  ADD s2, s5, zero
  JAL zero, bb48
bb54:
  LA s8, x_0
  SW s3, 0(s8)
  LA s8, y_0
  SW s6, 0(s8)
  JAL zero, bb55
bb55:
  ADDIW s8, s6, 1
  ADD s5, s8, zero
  JAL zero, bb51
bb56:
  LW s5, 0(s7)
  XORI s7, s5, 3
  SLTIU s5, s7, 1
  BNE s5, zero, bb57
  JAL zero, bb58
bb57:
  LA s5, x_1
  SW s3, 0(s5)
  LA s5, y_1
  SW s6, 0(s5)
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
  LA s2, w
  SW s1, 0(s2)
  CALL getint
  ADD s1, a0, zero
  LA s2, h
  SW s1, 0(s2)
  ADD s0, s4, zero
  JAL zero, bb39
bb61:
  ADDI a0, zero, -1
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb60
