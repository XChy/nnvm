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
  ADDI sp, sp, -176
  SD s4, 112(sp)
  SD s3, 120(sp)
  SD ra, 128(sp)
  SD s2, 136(sp)
  SD s1, 144(sp)
  SD s5, 152(sp)
  SD s0, 160(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  SW s0, 104(sp)
  SW s1, 96(sp)
  SW s2, 88(sp)
  ADDI s0, zero, 10
  SLT s1, s0, s2
  BNE s1, zero, bb1
  JAL zero, bb2
bb1:
  LA s0, INF
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s4, 112(sp)
  LD s3, 120(sp)
  LD ra, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  LD s5, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb2:
  LA s0, INF
  LW s1, 0(s0)
  SW s1, 80(sp)
  ADDI s0, zero, 0
  SW s0, 72(sp)
  JAL zero, bb3
bb3:
  LW s0, 72(sp)
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb4
  JAL zero, bb5
bb4:
  ADDI s0, zero, 0
  SW s0, 64(sp)
  LW s0, 104(sp)
  SW s0, 56(sp)
  LW s0, 96(sp)
  SW s0, 48(sp)
  JAL zero, bb6
bb5:
  LW s0, 80(sp)
  ADDI s1, zero, 10
  SLT s2, s1, s0
  BNE s2, zero, bb34
  JAL zero, bb35
bb6:
  LW s0, 56(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XORI s0, s1, 1
  SLTU s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb7
  JAL zero, bb8
bb7:
  LW s0, 56(sp)
  LA s1, x_1
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  BNE s0, zero, bb9
  JAL zero, bb10
bb8:
  LW s0, 56(sp)
  LA s1, x_1
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  BNE s0, zero, bb14
  JAL zero, bb15
bb9:
  LW s0, 48(sp)
  LA s1, y_1
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  SB s0, 40(sp)
  JAL zero, bb11
bb10:
  SB zero, 40(sp)
  JAL zero, bb11
bb11:
  LB s0, 40(sp)
  BNE s0, zero, bb12
  JAL zero, bb13
bb12:
  JAL zero, bb8
bb13:
  LW s0, 56(sp)
  LW s1, 72(sp)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  LA s1, step
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MULW s3, s1, zero
  ADD s1, s2, s3
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 56(sp)
  LW s0, 48(sp)
  LW s1, 72(sp)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  LA s1, step
  ADD s2, s1, s3
  ADDI s1, zero, 4
  ADDI s3, zero, 1
  MULW s4, s1, s3
  ADD s1, s2, s4
  LW s2, 0(s1)
  ADDW s1, s0, s2
  SW s1, 48(sp)
  LW s0, 64(sp)
  ADDIW s1, s0, 1
  SW s1, 64(sp)
  JAL zero, bb6
bb14:
  LW s0, 48(sp)
  LA s1, y_1
  LW s2, 0(s1)
  XOR s1, s0, s2
  SLTIU s0, s1, 1
  SB s0, 32(sp)
  JAL zero, bb16
bb15:
  SB zero, 32(sp)
  JAL zero, bb16
bb16:
  LB s0, 32(sp)
  BNE s0, zero, bb17
  JAL zero, bb18
bb17:
  ADDI a0, zero, 1
  LD s4, 112(sp)
  LD s3, 120(sp)
  LD ra, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  LD s5, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb18:
  LW s0, 64(sp)
  ADDI s1, zero, 1
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb19
  JAL zero, bb20
bb19:
  LW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 72(sp)
  JAL zero, bb3
bb20:
  LW s0, 56(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  BNE s0, zero, bb21
  JAL zero, bb22
bb21:
  ADDI s0, zero, 1
  SB s0, 24(sp)
  JAL zero, bb23
bb22:
  LW s0, 56(sp)
  LA s1, h
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 24(sp)
  JAL zero, bb23
bb23:
  LB s0, 24(sp)
  BNE s0, zero, bb24
  JAL zero, bb25
bb24:
  ADDI s0, zero, 1
  SB s0, 16(sp)
  JAL zero, bb26
bb25:
  LW s0, 48(sp)
  XOR s1, s0, zero
  SLTIU s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 16(sp)
  JAL zero, bb26
bb26:
  LB s0, 16(sp)
  BNE s0, zero, bb27
  JAL zero, bb28
bb27:
  ADDI s0, zero, 1
  SB s0, 8(sp)
  JAL zero, bb29
bb28:
  LW s0, 48(sp)
  LA s1, w
  LW s2, 0(s1)
  ADDIW s1, s2, 1
  XOR s2, s0, s1
  SLTIU s0, s2, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  SB s0, 8(sp)
  JAL zero, bb29
bb29:
  LB s0, 8(sp)
  BNE s0, zero, bb30
  JAL zero, bb31
bb30:
  LW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 72(sp)
  JAL zero, bb3
bb31:
  LW s0, 56(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  SW zero, 0(s0)
  LW s0, 56(sp)
  LW s1, 72(sp)
  ADDI s2, zero, 8
  MULW s3, s1, s2
  LA s1, step
  ADD s2, s1, s3
  ADDI s1, zero, 4
  MULW s3, zero, s1
  ADD s1, s2, s3
  LW s2, 0(s1)
  SUBW s1, s0, s2
  LW s0, 48(sp)
  LW s2, 72(sp)
  ADDI s3, zero, 8
  MULW s4, s2, s3
  LA s2, step
  ADD s3, s2, s4
  ADDI s2, zero, 4
  ADDI s4, zero, 1
  MULW s5, s2, s4
  ADD s2, s3, s5
  LW s3, 0(s2)
  SUBW s2, s0, s3
  LW s0, 88(sp)
  ADDIW s3, s0, 1
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADD a2, s3, zero
  CALL search
  ADD s0, a0, zero
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  LW s0, 80(sp)
  SLT s2, s1, s0
  BNE s2, zero, bb32
  JAL zero, bb33
bb32:
  LW s0, 0(sp)
  SW s0, 80(sp)
  JAL zero, bb33
bb33:
  LW s0, 56(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 48(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LW s0, 72(sp)
  ADDIW s1, s0, 1
  SW s1, 72(sp)
  JAL zero, bb3
bb34:
  LA s0, INF
  LW s1, 0(s0)
  ADD a0, s1, zero
  LD s4, 112(sp)
  LD s3, 120(sp)
  LD ra, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  LD s5, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
bb35:
  LW s0, 80(sp)
  ADD a0, s0, zero
  LD s4, 112(sp)
  LD s3, 120(sp)
  LD ra, 128(sp)
  LD s2, 136(sp)
  LD s1, 144(sp)
  LD s5, 152(sp)
  LD s0, 160(sp)
  ADDI sp, sp, 176
  JALR zero, 0(ra)
main:
  ADDI sp, sp, -64
  SD s3, 24(sp)
  SD s2, 32(sp)
  SD ra, 40(sp)
  SD s1, 48(sp)
  SD s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  JAL zero, bb37
bb37:
  LA s0, w
  LW s1, 0(s0)
  XOR s0, s1, zero
  SLTU s1, zero, s0
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  SW zero, 16(sp)
  JAL zero, bb40
bb39:
  ADD a0, zero, zero
  LD s3, 24(sp)
  LD s2, 32(sp)
  LD ra, 40(sp)
  LD s1, 48(sp)
  LD s0, 56(sp)
  ADDI sp, sp, 64
  JALR zero, 0(ra)
bb40:
  LW s0, 16(sp)
  SLTI s1, s0, 30
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  SW zero, 8(sp)
  JAL zero, bb43
bb42:
  ADDI s0, zero, 1
  SW s0, 16(sp)
  JAL zero, bb46
bb43:
  LW s0, 8(sp)
  SLTI s1, s0, 30
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb44
  JAL zero, bb45
bb44:
  LW s0, 16(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  ADDI s1, zero, 1
  SW s1, 0(s0)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb43
bb45:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb40
bb46:
  LW s0, 16(sp)
  LA s1, h
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s0, zero, 1
  SW s0, 8(sp)
  JAL zero, bb49
bb48:
  LA s0, x_0
  LW s1, 0(s0)
  LA s0, y_0
  LW s2, 0(s0)
  ADD a0, s1, zero
  ADD a1, s2, zero
  ADDI a2, zero, 1
  CALL search
  ADD s0, a0, zero
  SW s0, 0(sp)
  ADDI s1, zero, 10
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb57
  JAL zero, bb59
bb49:
  LW s0, 8(sp)
  LA s1, w
  LW s2, 0(s1)
  SLT s1, s2, s0
  XORI s0, s1, 1
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb50
  JAL zero, bb51
bb50:
  LW s0, 16(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  CALL getint
  ADD s1, a0, zero
  SW s1, 0(s0)
  LW s0, 16(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XORI s0, s1, 2
  SLTIU s1, s0, 1
  BNE s1, zero, bb52
  JAL zero, bb54
bb51:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb46
bb52:
  LW s0, 16(sp)
  LA s1, x_0
  SW s0, 0(s1)
  LW s0, 8(sp)
  LA s1, y_0
  SW s0, 0(s1)
  JAL zero, bb53
bb53:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb49
bb54:
  LW s0, 16(sp)
  ADDI s1, zero, 120
  MULW s2, s0, s1
  LA s0, a
  ADD s1, s0, s2
  LW s0, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(s0)
  XORI s0, s1, 3
  SLTIU s1, s0, 1
  BNE s1, zero, bb55
  JAL zero, bb56
bb55:
  LW s0, 16(sp)
  LA s1, x_1
  SW s0, 0(s1)
  LW s0, 8(sp)
  LA s1, y_1
  SW s0, 0(s1)
  JAL zero, bb56
bb56:
  JAL zero, bb53
bb57:
  LW s0, 0(sp)
  ADD a0, s0, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb58
bb58:
  CALL getint
  ADD s0, a0, zero
  LA s1, w
  SW s0, 0(s1)
  CALL getint
  ADD s0, a0, zero
  LA s1, h
  SW s0, 0(s1)
  JAL zero, bb37
bb59:
  ADDI s0, zero, 1
  SUB s1, zero, s0
  ADD a0, s1, zero
  CALL putint
  ADDI a0, zero, 10
  CALL putch
  JAL zero, bb58
