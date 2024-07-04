.global loop3
.global loop2
.global loop1
.global main
.section .bss
arr2:
.space 107520
arr1:
.space 57600
.section .data


.section .text
loop3:
  ADDI sp, sp, -192
  SD ra, 120(sp)
  SD s6, 128(sp)
  SD s0, 136(sp)
  SD s5, 144(sp)
  SD s1, 152(sp)
  SD s2, 160(sp)
  SD s3, 168(sp)
  SD s4, 176(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  ADD s2, a2, zero
  ADD s3, a3, zero
  ADD s4, a4, zero
  ADD s5, a5, zero
  ADD s6, a6, zero
  SW s0, 112(sp)
  SW s1, 104(sp)
  SW s2, 96(sp)
  SW s3, 88(sp)
  SW s4, 80(sp)
  SW s5, 72(sp)
  SW s6, 64(sp)
  ADDI s0, zero, 0
  SW s0, 0(sp)
  ADDI s0, zero, 0
  SW s0, 56(sp)
  JAL zero, bb1
bb1:
  LW s0, 56(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb2
  JAL zero, bb3
bb2:
  ADDI s0, zero, 0
  SW s0, 48(sp)
  JAL zero, bb4
bb3:
  LW s0, 0(sp)
  ADD a0, s0, zero
  LD ra, 120(sp)
  LD s6, 128(sp)
  LD s0, 136(sp)
  LD s5, 144(sp)
  LD s1, 152(sp)
  LD s2, 160(sp)
  LD s3, 168(sp)
  LD s4, 176(sp)
  ADDI sp, sp, 192
  JALR zero, 0(ra)
bb4:
  LW s0, 48(sp)
  SLTI s1, s0, 100
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb5
  JAL zero, bb6
bb5:
  ADDI s0, zero, 0
  SW s0, 40(sp)
  JAL zero, bb7
bb6:
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  SW s1, 56(sp)
  LW s0, 112(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb34
  JAL zero, bb35
bb7:
  LW s0, 40(sp)
  SLTI s1, s0, 1000
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb8
  JAL zero, bb9
bb8:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb10
bb9:
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  LW s0, 104(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb32
  JAL zero, bb33
bb10:
  LW s0, 32(sp)
  LUI s1, 2
  ADDI s1, s1, 1808
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb11
  JAL zero, bb12
bb11:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb13
bb12:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  LW s0, 96(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb30
  JAL zero, bb31
bb13:
  LW s0, 24(sp)
  LUI s1, 24
  ADDI s1, s1, 1696
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb14
  JAL zero, bb15
bb14:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb16
bb15:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  LW s0, 88(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb28
  JAL zero, bb29
bb16:
  LW s0, 16(sp)
  LUI s1, 244
  ADDI s1, s1, 576
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb17
  JAL zero, bb18
bb17:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb19
bb18:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  LW s0, 80(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb26
  JAL zero, bb27
bb19:
  LW s0, 8(sp)
  LUI s1, 2441
  ADDI s1, s1, 1664
  SLT s2, s0, s1
  XOR s0, s2, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb20
  JAL zero, bb21
bb20:
  LW s0, 0(sp)
  ADDI s1, zero, 817
  REMW s2, s0, s1
  LW s0, 56(sp)
  LUI s1, 1
  ADDI s1, s1, 1664
  MULW s3, s0, s1
  LA s0, arr1
  ADD s1, s0, s3
  LW s0, 48(sp)
  LUI s3, 1
  ADDI s3, s3, -1216
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 40(sp)
  ADDI s3, zero, 960
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s0, 32(sp)
  ADDI s3, zero, 240
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 24(sp)
  ADDI s3, zero, 48
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s0, 16(sp)
  ADDI s3, zero, 8
  MULW s4, s0, s3
  ADD s0, s1, s4
  LW s1, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s1, s3
  ADD s1, s0, s4
  LW s0, 0(s1)
  ADDW s1, s2, s0
  LW s0, 56(sp)
  LUI s2, 3
  ADDI s2, s2, -1536
  MULW s3, s0, s2
  LA s0, arr2
  ADD s2, s0, s3
  LW s0, 48(sp)
  LUI s3, 1
  ADDI s3, s3, 1280
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 40(sp)
  ADDI s3, zero, 1792
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 32(sp)
  ADDI s3, zero, 896
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 24(sp)
  ADDI s3, zero, 224
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 16(sp)
  ADDI s3, zero, 28
  MULW s4, s0, s3
  ADD s0, s2, s4
  LW s2, 8(sp)
  ADDI s3, zero, 4
  MULW s4, s2, s3
  ADD s2, s0, s4
  LW s0, 0(s2)
  ADDW s2, s1, s0
  SW s2, 0(sp)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  LW s0, 64(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb22
  JAL zero, bb23
bb21:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  LW s0, 72(sp)
  SLT s2, s1, s0
  XORI s0, s2, 1
  BNE s0, zero, bb24
  JAL zero, bb25
bb22:
  JAL zero, bb21
bb23:
  JAL zero, bb19
bb24:
  JAL zero, bb18
bb25:
  JAL zero, bb16
bb26:
  JAL zero, bb15
bb27:
  JAL zero, bb13
bb28:
  JAL zero, bb12
bb29:
  JAL zero, bb10
bb30:
  JAL zero, bb9
bb31:
  JAL zero, bb7
bb32:
  JAL zero, bb6
bb33:
  JAL zero, bb4
bb34:
  JAL zero, bb3
bb35:
  JAL zero, bb1
loop2:
  ADDI sp, sp, -96
  SD s3, 56(sp)
  SD s2, 64(sp)
  SD ra, 72(sp)
  SD s1, 80(sp)
  SD s0, 88(sp)
  ADDI s0, zero, 0
  SW s0, 48(sp)
  JAL zero, bb37
bb37:
  LW s0, 48(sp)
  SLTI s1, s0, 10
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb38
  JAL zero, bb39
bb38:
  ADDI s0, zero, 0
  SW s0, 40(sp)
  JAL zero, bb40
bb39:
  LD s3, 56(sp)
  LD s2, 64(sp)
  LD ra, 72(sp)
  LD s1, 80(sp)
  LD s0, 88(sp)
  ADDI sp, sp, 96
  JALR zero, 0(ra)
bb40:
  LW s0, 40(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb41
  JAL zero, bb42
bb41:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb43
bb42:
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb37
bb43:
  LW s0, 32(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb44
  JAL zero, bb45
bb44:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb46
bb45:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb40
bb46:
  LW s0, 24(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb47
  JAL zero, bb48
bb47:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb49
bb48:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb43
bb49:
  LW s0, 16(sp)
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb50
  JAL zero, bb51
bb50:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb52
bb51:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb46
bb52:
  LW s0, 8(sp)
  SLTI s1, s0, 8
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb53
  JAL zero, bb54
bb53:
  ADDI s0, zero, 0
  SW s0, 0(sp)
  JAL zero, bb55
bb54:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb49
bb55:
  LW s0, 0(sp)
  SLTI s1, s0, 7
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb56
  JAL zero, bb57
bb56:
  LW s0, 48(sp)
  LUI s1, 3
  ADDI s1, s1, -1536
  MULW s2, s0, s1
  LA s0, arr2
  ADD s1, s0, s2
  LW s0, 40(sp)
  LUI s2, 1
  ADDI s2, s2, 1280
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 32(sp)
  ADDI s2, zero, 1792
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 24(sp)
  ADDI s2, zero, 896
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 16(sp)
  ADDI s2, zero, 224
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 8(sp)
  ADDI s2, zero, 28
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 0(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 48(sp)
  LW s2, 40(sp)
  ADDW s3, s0, s2
  LW s0, 24(sp)
  ADDW s2, s3, s0
  LW s0, 0(sp)
  ADDW s3, s2, s0
  SW s3, 0(s1)
  LW s0, 0(sp)
  ADDIW s1, s0, 1
  SW s1, 0(sp)
  JAL zero, bb55
bb57:
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb52
loop1:
  ADDI sp, sp, -128
  SD s3, 80(sp)
  SD ra, 88(sp)
  SD s2, 96(sp)
  SD s1, 104(sp)
  SD s0, 112(sp)
  ADD s0, a0, zero
  ADD s1, a1, zero
  SW s0, 72(sp)
  SW s1, 64(sp)
  ADDI s0, zero, 0
  SW s0, 56(sp)
  JAL zero, bb59
bb59:
  LW s0, 56(sp)
  LW s1, 72(sp)
  SLT s2, s0, s1
  BNE s2, zero, bb62
  JAL zero, bb63
bb60:
  ADDI s0, zero, 0
  SW s0, 48(sp)
  JAL zero, bb65
bb61:
  LD s3, 80(sp)
  LD ra, 88(sp)
  LD s2, 96(sp)
  LD s1, 104(sp)
  LD s0, 112(sp)
  ADDI sp, sp, 128
  JALR zero, 0(ra)
bb62:
  LW s0, 56(sp)
  LW s1, 64(sp)
  SLT s2, s0, s1
  SB s2, 0(sp)
  JAL zero, bb64
bb63:
  SB zero, 0(sp)
  JAL zero, bb64
bb64:
  LB s0, 0(sp)
  XOR s1, s0, zero
  SLTU s0, zero, s1
  BNE s0, zero, bb60
  JAL zero, bb61
bb65:
  LW s0, 48(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb66
  JAL zero, bb67
bb66:
  ADDI s0, zero, 0
  SW s0, 40(sp)
  JAL zero, bb68
bb67:
  LW s0, 56(sp)
  ADDIW s1, s0, 1
  SW s1, 56(sp)
  JAL zero, bb59
bb68:
  LW s0, 40(sp)
  SLTI s1, s0, 3
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb69
  JAL zero, bb70
bb69:
  ADDI s0, zero, 0
  SW s0, 32(sp)
  JAL zero, bb71
bb70:
  LW s0, 48(sp)
  ADDIW s1, s0, 1
  SW s1, 48(sp)
  JAL zero, bb65
bb71:
  LW s0, 32(sp)
  SLTI s1, s0, 4
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb72
  JAL zero, bb73
bb72:
  ADDI s0, zero, 0
  SW s0, 24(sp)
  JAL zero, bb74
bb73:
  LW s0, 40(sp)
  ADDIW s1, s0, 1
  SW s1, 40(sp)
  JAL zero, bb68
bb74:
  LW s0, 24(sp)
  SLTI s1, s0, 5
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb75
  JAL zero, bb76
bb75:
  ADDI s0, zero, 0
  SW s0, 16(sp)
  JAL zero, bb77
bb76:
  LW s0, 32(sp)
  ADDIW s1, s0, 1
  SW s1, 32(sp)
  JAL zero, bb71
bb77:
  LW s0, 16(sp)
  SLTI s1, s0, 6
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb78
  JAL zero, bb79
bb78:
  ADDI s0, zero, 0
  SW s0, 8(sp)
  JAL zero, bb80
bb79:
  LW s0, 24(sp)
  ADDIW s1, s0, 1
  SW s1, 24(sp)
  JAL zero, bb74
bb80:
  LW s0, 8(sp)
  SLTI s1, s0, 2
  XOR s0, s1, zero
  SLTU s1, zero, s0
  BNE s1, zero, bb81
  JAL zero, bb82
bb81:
  LW s0, 56(sp)
  LUI s1, 1
  ADDI s1, s1, 1664
  MULW s2, s0, s1
  LA s0, arr1
  ADD s1, s0, s2
  LW s0, 48(sp)
  LUI s2, 1
  ADDI s2, s2, -1216
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 40(sp)
  ADDI s2, zero, 960
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 32(sp)
  ADDI s2, zero, 240
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 24(sp)
  ADDI s2, zero, 48
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 16(sp)
  ADDI s2, zero, 8
  MULW s3, s0, s2
  ADD s0, s1, s3
  LW s1, 8(sp)
  ADDI s2, zero, 4
  MULW s3, s1, s2
  ADD s1, s0, s3
  LW s0, 56(sp)
  LW s2, 48(sp)
  ADDW s3, s0, s2
  LW s0, 40(sp)
  ADDW s2, s3, s0
  LW s0, 32(sp)
  ADDW s3, s2, s0
  LW s0, 24(sp)
  ADDW s2, s3, s0
  LW s0, 16(sp)
  ADDW s3, s2, s0
  LW s0, 8(sp)
  ADDW s2, s3, s0
  LW s0, 72(sp)
  ADDW s3, s2, s0
  LW s0, 64(sp)
  ADDW s2, s3, s0
  SW s2, 0(s1)
  LW s0, 8(sp)
  ADDIW s1, s0, 1
  SW s1, 8(sp)
  JAL zero, bb80
bb82:
  LW s0, 16(sp)
  ADDIW s1, s0, 1
  SW s1, 16(sp)
  JAL zero, bb77
main:
  ADDI sp, sp, -144
  SD ra, 72(sp)
  SD s0, 80(sp)
  SD s5, 88(sp)
  SD s1, 96(sp)
  SD s6, 104(sp)
  SD s2, 112(sp)
  SD s3, 120(sp)
  SD s4, 128(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 64(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 56(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 48(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 40(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 32(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 24(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 16(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 8(sp)
  CALL getint
  ADD s0, a0, zero
  SW s0, 0(sp)
  LW s0, 64(sp)
  LW s1, 56(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  CALL loop1
  CALL loop2
  LW s0, 48(sp)
  LW s1, 40(sp)
  LW s2, 32(sp)
  LW s3, 24(sp)
  LW s4, 16(sp)
  LW s5, 8(sp)
  LW s6, 0(sp)
  ADD a0, s0, zero
  ADD a1, s1, zero
  ADD a2, s2, zero
  ADD a3, s3, zero
  ADD a4, s4, zero
  ADD a5, s5, zero
  ADD a6, s6, zero
  CALL loop3
  ADD s0, a0, zero
  ADD a0, s0, zero
  LD ra, 72(sp)
  LD s0, 80(sp)
  LD s5, 88(sp)
  LD s1, 96(sp)
  LD s6, 104(sp)
  LD s2, 112(sp)
  LD s3, 120(sp)
  LD s4, 128(sp)
  ADDI sp, sp, 144
  JALR zero, 0(ra)
